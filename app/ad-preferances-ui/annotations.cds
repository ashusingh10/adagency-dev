using from 'adagency../../../home/user/projects/adagency-proj/srv/adagency-service';


annotate AdAgencyServices.preferences with @odata.draft.enabled;

annotate AdAgencyServices.preferences with @(


UI : {
    SelectionFields     : [preferenceType],
    LineItem            : [

        // {
        //     // $Type : 'UI.DataField',
        //     // Value : ID,
        //     // Label : '{i18n>ID}'
        // },
        {
            $Type : 'UI.DataField',
            Value : preferenceType,
            Label : '{i18n>Type}'
        },
        {
            $Type : 'UI.DataField',
            Value : preferenceCost,
            Label : '{i18n>Cost}'
        },

    ],
    HeaderInfo          : {
        TypeName       : '{i18n>Preference}',
        TypeNamePlural : '{i18n>Preferences List}',
        Title          : {Value : preferenceType}
        


    },
Facets              : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Preference Details}',
        Target : '@UI.FieldGroup#General'
    },
    {
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Description}',
        Target : '@UI.FieldGroup#Details'
    }
],
    FieldGroup #General : {Data : [
        {
            Value : preferenceType,
            Label : '{i18n>Preference Type}',

        },
        {
            Value : preferenceCost,
            Label : '{i18n>Cost}',
        },
    ]},


FieldGroup #Details : {Data : [
        {
            Value : desc,
            Label : '{i18n>Description}',

        },
    ]},

},

);


annotate AdAgencyServices.preferences with {
    preference @(Common : {
        FieldControl : #Mandatory,
        ValueList    : {
            CollectionPath : 'Preferences',
            Label          : 'Preferences',
            //SearchSupported : true,
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterOut',
                    LocalDataProperty : 'preferenceType',
                    ValueListProperty : 'preferenceType',
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'preferenceCost'
                },

            ]
        }
    });


}