trigger AccountUpdate on Account (before insert,before update) {
for(Account acnt : Trigger.new){
 if(acnt.Type == 'Prospect'){
   acnt.addError('Primary Consumable Market is not as Account Market. Please re-check the selected Consumable');
}
}
}