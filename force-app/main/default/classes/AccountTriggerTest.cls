@isTest
public with sharing class AccountTriggerTest {
    @istest
    private static void testMethod1() {
        List<account> listAcc = new list<account>();
        account a = new account();
         a.name = 'SI Test';
         a.Industry = 'Energy';
         a.Type = 'Customer - Direct';
         listAcc.add(a);
         account a1 = new account();
         a1.name = 'UI Test';
         a1.Industry = 'Energy';
         a1.Type = 'Customer - Direct';
         listAcc.add(a1);
 
         account a2 = new account();
         a2.name = 'PI Test';
         a2.Industry = 'Banking';
         a2.Type = 'Customer - Direct';
         listAcc.add(a2);
 
         insert listAcc;

         for (account acc : listAcc) {
             acc.Description = 'update';
         }
         update listAcc;
    }
}
