/**
 * Created by rsieve on 3/28/18.
 */

@IsTest
private class TestData_Test {
    @IsTest
    static void testAccounts() {
        TestData td = new TestData();

        Test.startTest();

        List<Account> accounts = td.accounts;

        Test.stopTest();

        Integer acctSize = (Integer)[SELECT count(Id) nRecs FROM Account][0].get('nRecs');
        system.assertEquals(acctSize, accounts.size());

        Integer contactSize = (Integer)[SELECT count(Id) nRecs FROM Contact][0].get('nRecs');
        system.assertEquals(0, contactSize);

    }
}