public class PrimitiveDataTypeDemo3 {
   public void printNewDate(){
       system.debug('create new date instance');
       //create date below:
       Date newDate = Date.newInstance(1993, 1, 14);
       system.debug('new date is ' + newDate);

       Date newDate2 = Date.newInstance(2022, 5, 25);
       system.debug('new date2 is ' + newDate2);

       Date todayDate = Date.today();
       system.debug('today\'s date is ' + todayDate);
   }

   public void printNewTime(){
       //create new time instances
       Time myTime = Time.newInstance(13, 00, 30, 30);
       Time meTime = Time.newInstance(6, 00, 00, 00);

       system.debug('myTime is ' + myTime);
       system.debug('meTime is ' + meTime);
   }

   public void printNewDateTime(){
       //Here we will create new date time instances
       Date newDate = date.today();
       //new time
       Time newTime = Time.newInstance(9, 9, 0, 0);

       //1. New Datetime from DATE and TIME
       Datetime dt1 = Datetime.newInstance(newDate, newTime);
       system.debug('dt1 is ' + dt1);

       //2. New datetime from YEAR, MONTH, DAY --> time will be midnight
       Datetime dt2 = Datetime.newInstance(2000, 02, 22);
       system.debug('dt2 is ' + dt2);

       //3. Datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
       Datetime dt3 = Datetime.newInstance(2022, 7, 7, 8, 0, 0);
       system.debug('dt3 = ' + dt3);

       //4. Datetime with LONG
       long longNumber = 0L;
       Datetime dt4 = Datetime.newInstance(longNumber);
       system.debug('dt4 = ' + dt4);

       long longNumber2 = 12339874361L;
       Datetime dt4_1 = Datetime.newInstance(longNumber2);
       system.debug('dt4_1 = ' + dt4_1);

       //6. Current Time
       Datetime dt6 = Datetime.now();
       system.debug('dt6 is ' + dt6);

       //5. newInstance GMT
       Datetime dt5 = Datetime.newInstanceGmt(2022, 2, 22, 2, 22, 22);
       system.debug('dt5 is ' + dt5);

       //newInstance
       //creates new datetime instance as per user's timezone.
            //displays in GMT
       //newInstanceGMT
       //creates new datetime instace as per GMT - Greenwich mean time
            //displays in GMT
       
   }
}
