/**
 * @author Bruno Moreira
 */
@isTest
public with sharing class ListTest {

    public static List<Account> setupAccounts () {

        List<Account> accounts = new List<Account>();

        for ( Integer i = 0; i < 20; i++ ) {
            accounts.add( new Account (Name = 'Test' + i) );
        }
        
        return accounts;

    }

    @isTest
    //Good name for collections
    public static void shoudlCreateListCollection () {

        //Using Good Names for Collections
        List<Account> accounts = setupAccounts();

        Assert.areEqual('Test0', accounts.get(0).Name);
        Assert.areEqual(20, accounts.size());
        
        System.debug('Accounts: ' + accounts.get(0).Name);

        //Variation of a list collection
        Account[] clonedAccounts = accounts.deepClone();
        Assert.areEqual('Test0', clonedAccounts[0].Name);
        Assert.areEqual(20, clonedAccounts.size());

        System.debug('Accounts: ' + clonedAccounts.get(0).Name);
         
    }

    @isTest
    public static void shouldIterateListCollection() {

        List<Account> accounts = setupAccounts();

        for ( Account account: accounts ) {
            system.debug( account );
        }

    }

}