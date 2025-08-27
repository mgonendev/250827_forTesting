trigger PhoneTrigger on Account (before Insert)
{
    if(trigger.isBefore && trigger.isInsert){
        
        if(!trigger.new.isEmpty()){
            for(Account acc : trigger.new){
                if(acc.Phone == null || acc.Phone == ''){
                acc.addError('You cannot insert account with phone field empty');
                }
            }
        }
    }
}