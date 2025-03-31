@isTest (seeAllData = true )
private class AutoConvertLeadsTest {
    static testMethod void AutoConvertLeads() {
            List<id> LeadIds=new List<id>();
            for(LeadStatus a : [select id from LeadStatus]){
                LeadIds.add(a.id);
            }
        AutoConvertLeads Obj = new AutoConvertLeads();
    AutoConvertLeads.LeadAssign(LeadIds);
            
        }
}