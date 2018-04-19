global class SandboxCreateScript implements SandboxPostCopy {

    global void runApexClass(SandboxContext context){
        TestData td = new TestData();
        List<Account> accounts = td.accounts;
        List<Contact> contacts = td.contacts;
    }

}