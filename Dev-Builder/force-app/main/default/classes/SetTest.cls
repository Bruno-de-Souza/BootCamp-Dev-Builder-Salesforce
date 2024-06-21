/**
 * @author Bruno Moreira
 */
@isTest
public class SetTest {

    @isTest
    public static void shouldCreateSetCollection () {
        Set<Account> accounts = new Set<Account> ( ListTest.setupAccounts() );

        Assert.areEqual(20, accounts.size());

        accounts.add( new Account(Name = 'Test0', BillingState = 'MG'));
        accounts.add( new Account(Name = 'Test1', BillingState = 'SP'));

        Assert.areEqual(22, accounts.size());

        Account account = new Account();

        Set<String> states = new Set<String> { 'SP', 'RJ', 'MG' };

        if (states.contains(account.BillingState)){
            Assert.areEqual(3, states.size());
        }

    }

    @isTest
    public static void shouldIterateSetCollection () {

        Set<Account> accounts = new Set<Account> ( ListTest.setupAccounts() );

        accounts.add( new Account(Name = 'Test0', BillingState = 'MG'));
        accounts.add( new Account(Name = 'Test1', BillingState = 'SP'));

        for (Account account: accounts) {
            System.debug('Accounts: ' + account);
        }

    }

}