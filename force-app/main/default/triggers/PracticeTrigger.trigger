trigger PracticeTrigger on Opportunity (after insert) {
    Set<Id> accntId = new Set<Id>();
    for(Opportunity opp : Trigger.new){
        accntId.add(opp.AccountId);
    }
    List<Account> accountToUpdate = new List<Account>();
    for(AggregateResults ar : [SELECT COUNT(Id)TotalCount FROM Opportunity WHERE AccountId IN :accntId AND StageName = 'Open']){
        Account acc = new Account();
        acc.Id = oppty.AccountId;
        acc.TotalOpportunity__c = (Integer)ar.get('TotalCount');
        accountToUpdate.add(acc);
    }
    try{
        update accountToUpdate;
    }catch(Exception e){
        System.debug(e.getMessage());
    }
}