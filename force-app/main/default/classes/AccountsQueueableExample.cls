public with sharing class AccountsQueueableExample implements Queueable {
    List<account> listAcc = new list<account>();
    public AccountsQueueableExample(List<account> accs) {
        listAcc = accs;
    }

    public void execute(QueueableContext qc){
        for (account acc : ListAcc) {
            acc.Name += '-- SI';
        }
        update listAcc;
    }

}
