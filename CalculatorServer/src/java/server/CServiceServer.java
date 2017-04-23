/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author alumne
 */
@WebService(serviceName = "CServiceServer")
public class CServiceServer {

    /**
     * This is a sample web service operation
     */
     @WebMethod(operationName = "calc")
    public double aeroport(@WebParam(name = "n1") double n1,@WebParam(name = "n2") double n2,@WebParam(name = "operation") String op) {
        double res;
        
        switch(op){
            case "+":
                res = n1 + n2;
                break;
            case "-":
                res = n1 - n2;
                break;
            case "*":
                res = n1 * n2;
                break;
            case "/":
                res = n1 / n2;
                break;
            default:
                res=0;
        }
        return res;
    }
    
    @WebMethod(operationName = "suma")
    public double suma(@WebParam(name = "n1") double n1,@WebParam(name = "n2") double n2) {
        return n1+n2;
    }
    
    @WebMethod(operationName = "resta")
    public double resta(@WebParam(name = "n1") double n1,@WebParam(name = "n2") double n2) {
        return n1-n2;
    }
    
    @WebMethod(operationName = "multi")
    public double mult(@WebParam(name = "n1") double n1,@WebParam(name = "n2") double n2) {
        return n1*n2;
    }
    @WebMethod(operationName = "div")
    public double div(@WebParam(name = "n1") double n1,@WebParam(name = "n2") double n2) {
        return n1/n2;
    }
}
