using from '../../srv/adagency-userprofile';

annotate UserProfile.User with @odata.draft.enabled;

annotate UserProfile.User with @(UI : {
    SelectionFields     : [
        profileId,
        email
    ],
    LineItem            : [
        // {
        //     $Type: 'UI.DataFieldForIntentBasedNavigation',
        //     SemanticObject : 'AdDetailsCategoryPage',
        //     Action : 'abc',
        //     NavigationAvailable,
        //     RequiresContext : true,
        //     // Mapping : [
        //     //     {
        //     //         $Type : 'Common.SemanticObjectMappingType',
        //     //         LocalProperty : profileId,
        //     //         SemanticObjectProperty : '',
        //     //     },
        //     //],
        //     Label : 'Select Ads',
        // },
        // {
        //     $Type : 'UI.DataFieldWithIntentBasedNavigation',
        //     SemanticObject : 'we',
        //     Action : 'erf',
        //     // Mapping : [
        //     //     {
        //     //         $Type : 'Common.SemanticObjectMappingType',
        //     //         LocalProperty : ,
        //     //         SemanticObjectProperty : '',
        //     //     },
        //     // ],
        //     Value : profileId,
        //     Label : 'Ad'
        // },
        {
            $Type : 'UI.DataField',
            Value : profileId
        },
        {
            $Type : 'UI.DataField',
            Value : firstName

        },
        {
            $Type : 'UI.DataField',
            Value : lastName
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        {
            $Type : 'UI.DataField',
            Value : phoneNumber
        },
        {
            $Type : 'UI.DataField',
            Value : gender_code
        },
        {
            $Type : 'UI.DataField',
            Value : street,
            Label : '{i18n>Street}'
        },
        {
            $Type : 'UI.DataField',
            Value : city,
            Label : '{i18n>City}'
        },
        {
            $Type : 'UI.DataField',
            Value : state,
            Label : '{i18n>State}'
        },
        {
            $Type : 'UI.DataField',
            Value : pinCode,
            Label : '{i18n>Pincode}'
        },


    ],
    HeaderInfo          : {
        $Type          : 'UI.HeaderInfoType',
        TypeName       : '{i18n>User Profile}',
        TypeNamePlural : '{i18n>Users List}',
        Title          : {Value : profileId},
    },


    Facets              : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>General}',
        Target : '@UI.FieldGroup#General'
    }],

    FieldGroup #General : {Data : [
        {Value : firstName},
        {Value : lastName},
        {Value : gender_code},
        {Value : email},
        {Value : phoneNumber},
        {Value : password},
        {
            $Type : 'UI.DataField',
            Value : street,
            Label : '{i18n>Street}'
        },
        {
            $Type : 'UI.DataField',
            Value : city,
            Label : '{i18n>City}'
        },
        {
            $Type : 'UI.DataField',
            Value : state,
            Label : '{i18n>State}'
        },
        {
            $Type : 'UI.DataField',
            Value : pinCode,
            Label : '{i18n>Pincode}'
        }

    ]}
}, );

annotate UserProfile.User with {
    @UI.MultiLineText street
};

annotate UserProfile.User with {
    gender @(Common : {
        //FieldControl : #Mandatory,
        ValueListWithFixedValues,
        ValueList : {
            CollectionPath : 'Gender',
            Label          : 'User Gender',
            Parameters     : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : 'gender_code',
                ValueListProperty : 'code'
            }]
        }
    });
}