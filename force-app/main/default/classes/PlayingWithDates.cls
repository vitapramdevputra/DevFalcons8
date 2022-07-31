public class PlayingWithDates {
    public void printDateOutput(){
        //1.
        date todayDate = date.today();
        system.debug('today date is ' + todayDate);

        //1 (2nd way).
        system.debug('today is ' + date.today());

        //2. year month day
        date futureDate = date.newInstance(2789, 11, 5);
        system.debug('a long long time after ' + futureDate);

        //3. past date new instance
        date longGoneDate = date.newInstance(1459, 3, 4);
        system.debug('a long long time AGO ' + longGoneDate);

        integer dayInt = 23;
        integer monthInt = 7;
        integer yearInt = 1960;
        date motherBirthdate = date.newInstance(yearInt, monthInt, dayInt);
        system.debug('date via variable = ' + motherBirthdate);
    }
}
