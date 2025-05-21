public without sharing class CreditRatingUpdate {

    @InvocableMethod(label = 'AccountUpdate' description = 'updates Account fields' category = 'Account')
    public static void updateAccounts(List<Id> accountId){
        AccountUpdateOnQueue accountQueueInitiate = new AccountUpdateOnQueue(accountId[0]);
        ID jobID = System.enqueueJob(accountQueueInitiate);
    }

}