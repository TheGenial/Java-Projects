package com.mbstu.ehcare.controller;



import com.mbstu.ehcare.dao.MessageRepository;
import com.mbstu.ehcare.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class messageController {
    @Autowired
    private MessageRepository messageRepository;


    @RequestMapping(value = "/upsertMessage", method = RequestMethod.GET)
    public String messageEdit(Model model, @RequestParam(value ="messageId", required=false) Integer messageId) {
        System.out.println("----------MessageEdit---------");
        if(messageId== null){
            Message message = new Message();
            model.addAttribute("message", message);
        }
        else {
            Message message = messageRepository.getMessageById(messageId);
            model.addAttribute("message", message);
        }
        return "message";
    }

    @RequestMapping(value = "/upsertMessage", method = RequestMethod.POST)
    public String messageUpdatePost(Model model, @ModelAttribute("message") Message message, HttpServletRequest request) {
        System.out.println("-----------messagePost-------------");
        System.out.println(message);
        try{
            messageRepository.save(message);
            request.setAttribute("message", "Edited successfully");
        }catch(Exception e){
            request.setAttribute("message", "Faild to save Edit");
        }
        return "redirect:./";
    }

    @RequestMapping(value = "/deleteMessage", method = RequestMethod.GET)
    public String deleteMessage(Model model, @RequestParam(value="messageId", required=false) Integer messageId) {
        System.out.println("-----------delete-------------messageId:"+messageId);
        Message message = messageRepository.getMessageById(messageId);
        messageRepository.delete(message);
        return "redirect:./messageList";
    }

    @RequestMapping(value = "/messageList", method = RequestMethod.GET)
    public String messageListView(Model model) {
        System.out.println("-----------messageListView-------------");

        List<Message> messageList=messageRepository.findAll();
        model.addAttribute("messageList",messageList);
        return "messageList";
    }
}
