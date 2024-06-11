/**
 * @author Bruno Moreira
 */
public with sharing class Customer {

    //Creating a constant
    public static final String PREMIUM_TYPE =  'Premium';

    //Atributs of the class Customer
    private String name;
    public String documentNumber;
    public Decimal creditAmount;
    public Boolean isActive;
    public Address bilingAddress;

    //Constructor of the class Customer
    public Customer () {

        this.name = 'Customer 1';
        this.documentNumber = '00000000001';
        this.creditAmount = 500.00;
        this.isActive = false;

    }

    //Method of the class Customer
    public void addCreditAmount (Decimal amount) {

    }

    public void accs () {
        Account accs = new Account();
    }

    //Inner class of the class Customer
    public class Address {

        public String street;

    }

}