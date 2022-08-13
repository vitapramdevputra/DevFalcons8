@isTest
public class Calculator2Test {
    @isTest
   private static void testMethod1() {
       //we test our actual method
       string returnMsg = Calculator2.printAndReturnMessage('somthing else');
       //'this is from test...OK Cool'
       system.assertEquals('somthing else...OK Cool', returnMsg);
   }
   @isTest
   private static void testMethodAdd1() {
    integer sum1 = Calculator2.add(15, 150);
    //to verify we do asserts
    System.assertEquals(165, sum1);
   }
   @isTest
   private static void testMethodAdd2() {
    integer sum1 = Calculator2.add(15, 150,1);
    //to verify we do asserts
    System.assertEquals(166, sum1);
   }
}