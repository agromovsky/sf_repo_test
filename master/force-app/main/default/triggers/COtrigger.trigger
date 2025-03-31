trigger COtrigger on X12_8_Custom_Object__c (before insert, before update) {
  for (X12_8_Custom_Object__c a : Trigger.new) {
    a.addError('Blocked by trigger updated');
  }
}