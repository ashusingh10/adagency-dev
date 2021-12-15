namespace adagency;

entity User {

    key profileId   : UUID                  @odata.Type : 'Edm.String'  @Core.Computed  @title : '{i18n>User ID}';
        // key profileId   : String @title : '{i18n>Profile Id}';
        firstName   : String                @title      : '{i18n>First Name}';
        lastName    : String                @title      : '{i18n>Last Name}';
        email       : String                @title      : '{i18n>Email}';
        gender      : Association to Gender @title      : '{i18n>Gender}';
        phoneNumber : String                @title      : '{i18n>Phone Number}';
        password    : String                @title      : '{i18n>Password}';
        street      : String                @title      : '{i18n>Street}';
        city        : String                @title      : '{i18n>City}';
        state       : String                @title      : '{i18n>State}';
        pinCode     : String                @title      : '{i18n>Pincode}';

}

// type GenderID: String enum {
// male         = 'M';
// female       = 'F';
// nonBinary    = 'N';
// };

entity Gender {
    key code : String;
}


// entity Gender {
//   //  key ID : Integer;
//     key Type   : String(1) enum {
//     male         = 'M';
//     female       = 'F';
//     nonBinary    = 'N';
//     noDisclosure = 'D';
//     selfDescribe = 'S';
// }
// }
