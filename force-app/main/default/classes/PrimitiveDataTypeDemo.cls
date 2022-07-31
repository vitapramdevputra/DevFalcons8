//className is PrimitiveDataTypeDemo.
public class PrimitiveDataTypeDemo {
    //Only 1 method.
    //method name is 'printBasicDataType'
    public void printBasicDataType(){
        //method body
        string batchName = 'Falcons 8';
        integer totalCandidates = 40;
        boolean isAdminCompleted = true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' are the BESTEST.';
        system.debug(batchDescription);

    }

    public void printBasicDataType2(){
        //we will write some code here.
        Decimal decimalValue = 3655;
        system.debug('decimal value = ' + decimalValue);

        Long longValue = 2147483648L;
        system.debug('long value = ' + longValue);

        ID id1 = '0015i00000BFSCtAAP';
        system.debug('id is ' + id1);
    }

}


