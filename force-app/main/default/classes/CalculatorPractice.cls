public  class CalculatorPractice {
    public Decimal dynamicCalulationMethod(decimal d1, decimal d2, string operationType){
        decimal result = 0;
        operationType = operationType.toLowerCase();
        switch on operationType {
            when 'addition' {
                result = d1 + d2;
            }
            when 'subtraction'{
                result = d1 - d2;
            }
            when 'multiplication' {
                result = d1 * d2;
            }
            when 'division'{
                if(d2 != 0){
                    result = d1 / d2;
                } else {
                    system.debug('NOT ALLOWED. COME On...');
                }
            } 
            when else{
                system.debug('NOTHING MATCHED. TRY AGAIN.');
            }
        }
        return result;
    }
}
