@isTest
public class CustomerServicesTest {
    @isTest
    static void canFetchCustomerFields() {
        customerServices.Customer contact = customerServices.getCustomerFields(
            'Contact'
        );
        system.assertNotEquals(contact, null, 'Assert that contact is not null.');
        customerServices.Customer lead = customerServices.getCustomerFields(
            'Lead'
        );
        system.assertNotEquals(lead, null, 'Assert that lead is not null.');
        system.assertNotEquals(contact, lead, 'Assert that the contacts are not equal.');
    }
}
