public with sharing class TestData {

    public List<Account> accounts{
        get{
            if(accounts == null){
                accounts = new List<Account>();
                for(integer i=0; i<201; i++){
                    Account iA = new Account();
                    iA.Name = 'Test Account ' + string.valueOf(i);
                    accounts.add(iA);
                }

                insert accounts;
            }
            return accounts;
        }
        set;
    }

    public List<Contact> contacts{
        get{
            if(contacts == null){
                contacts = new List<Contact>();
                integer counter = 0;
                for(Account a : this.accounts){
                    Contact iC = new Contact();
                    iC.AccountId = a.Id;
                    iC.FirstName = 'Test';
                    iC.LastName = 'Contact';
                    iC.Email = 'test@example' + string.valueOf(counter) + +'.com';
                    contacts.add(iC);
                    counter++;
                }
                insert contacts;
            }
            return contacts;
        }
        set;
    }

}