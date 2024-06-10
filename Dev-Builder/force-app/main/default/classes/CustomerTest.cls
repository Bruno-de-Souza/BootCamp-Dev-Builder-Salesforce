/*
*@author Bruno Moreira
**/
@isTest
public with sharing class CustomerTest {
    
    @isTest
    public static void shouldCreateCustomer () {
         
        Customer customer = new Customer();
        customer.documentNumber = '0000000000';
        
    }

}