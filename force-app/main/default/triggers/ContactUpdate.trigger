trigger ContactUpdate on Contact (after insert, after update) {

List<Contact> conId = new List<Contact>();
 
if(Trigger.isUpdate){
 for(Contact cnt : Trigger.new){
   if(cnt.Salary__c != trigger.oldMap.get(cnt.Id).Salary__c){
    conId.add(cnt);
}
}
    
    
//List<Account> accntScope = [Select Id,Name,(Select Id,Salary__c from Contact) from Account WHERE Id IN (Select Id, AccountId, Salary__c from Contact Where Id IN :conId)];

 List<Account> lstAcnt = new List<Account>();
     
    for(Contact cnt : conId){
        Account acnt = [Select Id,Name,Total_Maintanence__c from Account Where Id = :cnt.AccountId];
        if(acnt.Total_Maintanence__c != null){
        acnt.Total_Maintanence__c = acnt.Total_Maintanence__c + cnt.Salary__c;
        }else{
            acnt.Total_Maintanence__c = cnt.Salary__c;
        }
        lstAcnt.add(acnt);
    }
    
    update lstAcnt;



}
}