@isTest
public class DmlDemoTest {
    @isTest
    private static void testInsertDML1() {
        //call method
        DmlDemo.dmlInsertDemo_stndObj();
        //how to verify if this method created a record or NOT?
        //assert.
        //what do we write in assert? SOQL.
        List<account> checkAcc = [select id, name from account]; //how many records?
        system.assertEquals(1, checkAcc.size());
        system.assertEquals('SoftInnovas', checkAcc[0].Name);
    }
}
