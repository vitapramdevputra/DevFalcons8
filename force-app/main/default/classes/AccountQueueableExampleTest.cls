@isTest
public class AccountQueueableExampleTest {
    @isTest
    public static void testQueueable() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 500; i++) {
            account a3 = new account();
            a3.name = 'PI Test';
            a3.Industry = 'Banking';
            a3.Type = 'Customer - Direct';
            listAcc.add(a3);
         }
         insert listAcc;
         
         
         Test.startTest();
         AccountsQueueableExample aq = new AccountsQueueableExample(listAcc);
         ID jobId = system.enqueueJob(aq);
         Test.stopTest();

         list<account> accounts = [select name from account where name like '%SI%'];
         system.assertEquals(500, accounts.size());
    }
}
