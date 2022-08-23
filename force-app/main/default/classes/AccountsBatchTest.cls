@isTest
public class AccountsBatchTest {
    @isTest
    private static void testMethod1() {
        List<account> listAcc = new list<account>();
        account a = new account();
         a.name = 'SI Test';
         a.Industry = 'Energy';
         a.Type = 'Customer - Direct';
         listAcc.add(a);

         account a2 = new account();
         a2.name = 'PI Test';
         a2.Industry = 'Banking';
         a2.Type = 'Customer - Direct';
         listAcc.add(a2);

         for (Integer i = 0; i < 500; i++) {
            account a3 = new account();
            a3.name = 'PI Test';
            a3.Industry = 'Banking';
            a3.Type = 'Customer - Direct';
            listAcc.add(a3);
         }
    
         insert listAcc;

         test.startTest();
         Database.executeBatch(new AccountsBatch(), 550);
         test.stopTest();

         //assert
         list<account> accounts = [select id, active__c, description from account where Active__c != 'No'];
         for (account an : accounts) {
             system.assert(an.Description.containsIgnoreCase('batch'));
         }
    
    }
}
