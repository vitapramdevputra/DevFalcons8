@isTest
public class DmlDemo2Test {
    @isTest
    private static void dmlInsertRelatedTest() {
        //Prepare DATA
        Account acc = new account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        //call method
        DmlDemo2.dmlInsertRelatedDemo_1();

        //assert
        list<contact> contacts = [select id, accountId, name from contact];
        system.assertEquals(1, contacts.size());
        system.assertEquals(acc.id, contacts[0].AccountId);//checking if contacts account is acc
    }
}
