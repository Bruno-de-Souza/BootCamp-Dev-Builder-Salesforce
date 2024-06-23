@isTest
public class MapTest {
/**
 * @author Bruno Moreira
 */

    @isTest
    public static void shouldCreateMapCollection () {
        
        Map<Account, Contact> contactsByAccount = new Map<Account, Contact>();
        
        Account account = new Account(Name = 'Account Test');
        Contact contact = new Contact(FirstName = 'Contact Test');

        contactsByAccount.put(account, contact);

        Assert.areEqual(1, contactsByAccount.size());
        
        Contact correlatedContact = contactsByAccount.get(account);

        contactsByAccount.put(account, new Contact(FirstName = 'Teste 2'));

        Assert.areEqual(1, contactsByAccount.size());
        Assert.areNotEqual(contact, contactsByAccount.get(account));

        //Exemplos de criação de maps
        Map<String, Account> accounts;
        Map<String, Account> accountsByErpCode;
        
        Map<String,  Account> accountsGroupedByStatus;

        Map<String, List<Account>> groupedByAccounts;

        Map<Account, Contact> digitalContacts = new Map<Account, Contact> {
            account => contact
        };

        digitalContacts.containsKey(account);

    }

    @istest
    public static void shouldAgroupedAccountsByState () {

        Map<String, Account> accounts = setupAccounts();

        Map<String, List<Account>> accountsByState = new Map<String, List<Account>>();

        for (String key : accounts.keySet()) {
            
            Account account = accounts.get(key);

            if (!accountsByState.containsKey(account.BillingState)) {
                accountsByState.put(account.BillingState, new List<Account>());
            }

            accountsByState.get(account.BillingState).add(account);

        }

    }

    public static Map<String, Account> setupAccounts () {

        Map<String, Account> accounts = new Map<String, Account> ();

        for ( Integer i = 0; i < 20; i++ ) {

            String state = Math.mod(i, 2) == 0 ? 'SP' : 'RJ';

            accounts.put( '' + i, new Account (Name = 'Test' + i, BillingState = state) );
        }

        return accounts;

    }

}