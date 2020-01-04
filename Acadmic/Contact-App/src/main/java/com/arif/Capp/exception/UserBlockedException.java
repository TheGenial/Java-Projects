/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.arif.Capp.exception;

/**
 *
 * @author Arif
 */
public class UserBlockedException extends Exception{
    /**
     * Create user object without error description
     */
    
    public  UserBlockedException(){
        
    } 
    /**
     * Create user object with error description
     * @param errDesc
     */
     public  UserBlockedException(String errDesc){
        super(errDesc);
    }
}
