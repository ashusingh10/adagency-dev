namespace adagency;

using {
    cuid,
    managed,
    Country
} from '@sap/cds/common';

entity Preferences : cuid {
    key ID             : UUID    @odata.Type : 'Edm.String'  @title : '{i18n>Preference Id}'  @Core.Computed;
        preferenceType : String  @title      : '{i18n>Preference Type}';
        preferenceCost : Integer @title      : '{i18n>Cost}';
        desc           : String
}

entity ContentDetails : cuid {
        ID                : UUID    @odata.Type : 'Edm.String'  @title : '{i18n>Content Id}'  @Core.Computed;
    key contentType       : String  @title      : '{i18n>Content Type}';
        contentSizeLimit  : Integer @title      : '{i18n>Content Size Limit}';
        contentCost       : Integer @title      : '{i18n>Content Cost(in Rs)}';
        desc              : String;
        unitOfMeasurement : String  @title      : '{i18n>Measurement Unit}'

}

entity PaymentPlan : cuid {
    key ID          : UUID   @odata.Type : 'Edm.String'  @title : '{i18n>Plan Id}'  @Core.Computed;
        content     : Association to ContentDetails;
      //  contName    : String @title      : 'Content Type';
        userID      : String;
        userName    : String @title      : 'User Name';
        adId        : String;
        adtitle     : String @title      : 'Ad Title';
        totalCost   : Integer;
        //content:String  @title : '{i18n>Contents}';
        preferences : Association to Preferences;
        prefName    : String @title      : 'Preference Type';
        startDate   : Date   @title      : '{i18n>Start Date}';
        endDate     : Date   @title      : '{i18n>End Date}';
        Country     : Country;

}
