@IsTest
public class AccountHandlerTest {
    @IsTest
    static void testUpdateAccountName() {
        Account testAcc = new Account(Name = 'Test Account');
        insert testAcc;
        
        String newName = 'Updated Account Name';
        AccountHandler.updateAccountName(testAcc.Id, newName);
        
        Account updatedAcc = [SELECT Name FROM Account WHERE Id = :testAcc.Id];
        
        System.assertEquals('Some Incorrect Name', updatedAcc.Name, 'The account name was not updated correctly!');
    }
}