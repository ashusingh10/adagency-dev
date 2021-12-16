using from 'adagency../../../home/user/projects/adagency-proj/srv/adagency-service';

annotate AdAgencyServices.contentDetails with @(

UI : {
    SelectionFields     : [contentType],
    LineItem            : [
       // {Value : ID},
        {Value : contentType},
        {Value : contentSizeLimit},
        {Value : contentCost},
        {Value:unitOfMeasurement}


    ],
    HeaderInfo          : {
        TypeName       : '{i18n>Contents}',
        TypeNamePlural : '{i18n>ContentDetails List}',
        //  Title: {Value: title},
        //Description: {Value:},
        Title          : {Value : contentType}


    },


    Facets              : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n>Content Details}',
        Target : '@UI.FieldGroup#General'
    },
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : '{i18n> Description}',
        Target : '@UI.FieldGroup#Details'
    },

    ],
    FieldGroup #General : {Data : [
        {Value : contentType},
        {Value : contentSizeLimit},
        {Value : contentCost},
        {Value: unitOfMeasurement}

    ]},
    FieldGroup #Details : {Data : [
        {Value : desc},
        

    ]},


},

);


annotate AdAgencyServices.ContentDetails with {
    content @(Common : {
        FieldControl : #Mandatory,
        ValueList    : {
            CollectionPath : 'ContentDetails',
            Label          : 'Content Details',
            //SearchSupported : true,
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterOut',
                    LocalDataProperty : 'contentType',
                    ValueListProperty : 'contentType',
                },

                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'contentSize'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'contentCost'
                },
                {
                   $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'unitOfMeasurement' 
                }
            ]
        }
    });


}