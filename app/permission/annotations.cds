using first as service from '../../srv/permission';

annotate service.permission with @(
    // UI.SelectionVariant #all :{
    //     SelectOptions:[
    //         {
    //         $Type :'UI.SelectOptionType',
    //         PropertyName:persReminaderDay,
    //         Ranges:[]
    //         }
    //     ]
    // },








    UI.LineItem :
    // {$value:
     [
        
        {
            $Type : 'UI.DataField',
            Label : 'Personel Numarası',
            Value : persNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Personel Adı',
            Value : persName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Toplam Izin Gun',
            Value : perSumDay,
            Criticality:persReminaderDay,
            CriticalityRepresentation:#WithoutIcon
        },
        {
            $Type : 'UI.DataField',
            Label : 'Onaylanan Izın Gun',
            Value : persApprovalDay,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Kalan Iızın Gun',
            Value : persReminaderDay,
        },
    ],
    // ![@UI.Criticality]:persReminaderDay,
    // }
);
annotate service.permission with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persno}',
                Value : persNo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persname}',
                Value : persName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persumday}',
                Value : perSumDay,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persreminaderday}',
                Value : persReminaderDay,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persapprovalday}',
                Value : persApprovalDay,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Persunapprovedday}',
                Value : persUnapprovedDay,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Genel Bilgiler',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Detail',
            ID : 'detail',
            Target : 'detail/@UI.LineItem#detail',
        },
    ]
);
annotate service.permission with @(
    UI.SelectionFields : [
        persNo,
        persName,
    ]
);
annotate service.permission with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : persName,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : persNo,
        },
    }
);
// annotate service.permission with @(
//     UI.FieldGroup #Detail : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//         ],
//     }
// );

annotate service.detail with @(
//  UI.SelectionFields : [
//         Status,
//         perCreateDate,
//     ],
    UI.LineItem #detail : [
        {
            $Type : 'UI.DataField',
            Value : Status,
        },{
            $Type : 'UI.DataField',
            Value : perCreateDate,
        },{
            $Type : 'UI.DataField',
            Value : perCreateTime,
        },{
            $Type : 'UI.DataField',
            Value : perDay,
        },
        {
            $Type : 'UI.DataField',
            Value : perDesc,
        },]
);
