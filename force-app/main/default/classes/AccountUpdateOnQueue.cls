public without sharing class AccountUpdateOnQueue implements Queueable {
    Id accountId;
    public AccountUpdateOnQueue(Id accountId){
        this.accountId = accountId;
    }
   public void execute(QueueableContext context){
        List<Account> accntLstUpdate = new List<Account>();
        for(Account accnt : [SELECT Id,Name,Type,AccountNumber FROM Account WHERE Id = :accountId]){
            accnt.Type = 'Prospect';
            accntLstUpdate.add(accnt);
        }
        update accntLstUpdate;
   }
}