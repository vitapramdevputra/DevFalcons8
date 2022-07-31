public with sharing class ReverseNumberExample1 {
    public static void printReverseNum(Integer revNumber) {
        integer reverse = 0;
        integer lastDigit = 0;
        
        while (revNumber > 0) {
            if(revNumber >= 1){
                system.debug('=== START1  ===');
                system.debug('***lastDigit =' + lastDigit);
                system.debug('***reverse =' + reverse);
                system.debug('***revNumber =' + revNumber);
                system.debug('=== END1 ===');
                lastDigit = Math.mod(revNumber, 10);
                reverse = reverse * 10 + lastDigit;
                revNumber = revNumber / 10;
                system.debug('==== START2  ====');
                system.debug('***lastDigit =' + lastDigit);
                system.debug('***reverse =' + reverse);
                system.debug('***revNumber =' + revNumber);
                system.debug('===== END2 =====');
            }
        }
        system.debug('reverse number : ' + reverse);
    }
}
