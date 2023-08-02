using AMDService as service from '../../srv/service';

annotate service.AMDDetails with @(
   
    UI:{
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Record Information',
            TypeNamePlural : 'Record Information',
        },
        SelectionFields  : [
            AMD_Id,
            MRC,
            Leagal_Entity,
            Created_By,
            Created_On,
            No_Of_Assets
        ],
    },
    UI.LineItem : [
        {
            $Type: 'UI.DataField',
            Label: 'AMD_Id',
            Value: AMD_Id
        },
        {
            $Type : 'UI.DataField',
            Label : 'MRC',
            Value : MRC,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Leagal_Entity',
            Value : Leagal_Entity,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Created_By',
            Value : Created_By,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Created_On',
            Value : Created_On,
        },
        {
            $Type:'UI.DataField',
            Label: 'No_Of_Assets',
            Value:No_Of_Assets
        },
    ]
);
annotate service.AMDDetails with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'MRC',
                Value : MRC,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Leagal_Entity',
                Value : Leagal_Entity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created_By',
                Value : Created_By,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created_On',
                Value : Created_On,
            },
            {
                $Type : 'UI.DataField',
                Label : 'No_Of_Assets',
                Value : No_Of_Assets,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

annotate service.AMDDetails with {
    MRC @Common.Text : newTables.MRC
};
annotate service.AMDDetails with {
    MRC @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'NewTables',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : MRC,
                    ValueListProperty : 'MRC',
                },
            ],
            Label : 'MRC',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    Leagal_Entity @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'NewTables',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Leagal_Entity,
                    ValueListProperty : 'Leagal_Entity',
                },
            ],
            Label : 'Leagal Entity',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.AMDDetails with {
    Leagal_Entity @Common.Text : newTables.Leagal_Entity
};

