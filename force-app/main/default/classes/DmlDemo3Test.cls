@isTest
public class DmlDemo3Test {
    @istest
   private static void testUpdateMultiple() {
       //1. Prepare DATA (more than 200)
       List<account> listAccount = new list<account>();

       for (Integer i = 0; i < 200; i++) {
           account acc = new account();
           acc.name = 'SoftInnovas 15Aug v'+i;
           acc.AccountNumber = 'Accis-'+i;
           acc.Active__c = 'Yes';
           listAccount.add(acc);
       }

       system.debug('size of list = ' + listAccount.size());
       if (!listAccount.isEmpty()) {
           insert listAccount;
       }

       //2.Call method
        DmlDemo3.dmlMultipleRecordUpdate_right();

        //3. verify using asserts
        //fetch accounts via soql
        list<account> accounts = [select id, name from account];
        system.assert(accounts[0].Name.contains('via B.0'));
   }    
}
