public class RankHanderAgain {
    public string rankPrize(integer rank){
        string prize = '';
        //we want to write logic to decide the prize.
        system.debug('rank = ' + rank);
        system.debug('rank >= 4 ===> ' + (rank >= 4));
        system.debug('rank <=10 ===> ' + (rank <=10));
        system.debug('rank >= 4 && rank <=10 ===> ' + (rank >= 4 && rank <=10));
        if(rank == 1){
            prize = 'Gold';
        } else if(rank ==2){
            prize = 'Silver';
        } else if(rank ==3){
            prize = 'Bronze';   
        } else if( rank >= 4 && rank <=10){
            prize = 'Top 10 maverick';
        }
        else {
            prize = 'Participation done';
        }

        return prize;
    }
}
