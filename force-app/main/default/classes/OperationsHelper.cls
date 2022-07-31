public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(Decimal d1, Decimal d2) {
        decimal returnMax;
        if(d1 >= d2){
            returnMax = d1;
        } else {
            returnMax = d2;
        }
        return returnMax;
    }

    public decimal smallestOutOfThreeNumbers(Decimal d1, Decimal d2, Decimal d3){
        //FIRST WAY
        Decimal d1d2Min = math.min(d1, d2);
        Decimal d1d2d3Min = math.min(d1d2Min, d3);
        return d1d2d3Min;
    }

    public integer sumOfPositiveInteger(integer n){
        integer sum;
        if(n < 0){
            system.debug('We are NOT calculating the sum of negative number. So, be positive, pass positive number.');
        } else {
            sum = 0;
            for (Integer i = 0; i <= n; i++) {
                sum += i;
            }
        }
        
        return sum;
    }
}
