using AgriExports as service from '../../srv/Agr_Exports_srv';

annotate service.Procurement with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'Area',
        Value : Area,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Year',
        Value : Year,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Product',
        Value : Product,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Grade',
        Value : Grade,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Area Size',
        Value : Area_size,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Area Quality',
        Value : Area_Qauality,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Utlization',
        Value : Utlization,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Sapling Qty',
        Value : Sapling_qty,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Sapling Price',
        Value : Sapling_price,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Fertilizers Qty',
        Value : Fertilizers_qty,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Fertilizers Price',
        Value : Fertilizers_price,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Labour Price',
        Value : Labour_price,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Readiness Cost',
        Value : Readiness_cost,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Water Cost',
        Value : Water_cost,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Electricity Cost',
        Value : Electricity_cost,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Govt Allowances',
        Value : Govt_allowances,
    },
    {
        $Type : 'UI.DataField',
        Label : 'Other Expenses',
        Value : Other_expenses,
        ![@UI.Hidden],
    },
    {
        $Type : 'UI.DataField',
        Label : 'Total Expenses',
        Value : Total_cost,
    }
]);

annotate service.Procurement with @(
    UI.HeaderInfo                           : {
        TypeName       : 'Cost Analysis',
        TypeNamePlural : 'Cost Analysis',
        ImageUrl       : 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg',
        Title          : {
            $Type : 'UI.DataField',
            Label : 'Area',
            Value : Area,
        },
        Description    : {
            $Type : 'UI.DataField',
            Label : 'Year',
            Value : Year,
        },
    },

    UI.FieldGroup #GeneratedGroup1          : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Year',
                Value : Year,
            },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'Area',
            //     Value : Area,
            // },
            {
                $Type : 'UI.DataField',
                Label : 'Product',
                Value : Product,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Grade',
                Value : Grade,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Area_size',
                Value : Area_size,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Area_Qauality',
                Value : Area_Qauality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Utlization',
                Value : Utlization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total_cost',
                Value : Total_cost,
            },
        ],
    },

    UI.FieldGroup #ProcurementData          : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Sapling Qty',
                Value : Sapling_qty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sapling Price',
                Value : Sapling_price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fertilizers Qty',
                Value : Fertilizers_qty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Fertilizers Price',
                Value : Fertilizers_price,
            },
        ]
    },
    UI.FieldGroup #ManualExpense            : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Labour Price',
                Value : Labour_price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Land Readiness Price',
                Value : Readiness_cost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Water Cost',
                Value : Water_cost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Electricity Cost',
                Value : Electricity_cost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Other Expenses',
                Value : Other_expenses,
            },
        ]
    },
    UI.Facets                               : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet1',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },

        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet2',
            Label  : 'Procurement Info',
            Target : '@UI.FieldGroup#ProcurementData',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet3',
            Label  : 'Manual Expenses',
            Target : '@UI.FieldGroup#ManualExpense',
        },
    ],

    UI.HeaderFacets                         : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Area Detail',
            Target : '@UI.FieldGroup#Details'
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.Chart#SpecificationWidthRadialChart'
        }
    ],
    UI.FieldGroup #Details                  : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                Label : 'Product',
                Value : Product
            },
            {
                Label : 'Total Expenses',
                Value : Total_cost,
                $Type : 'UI.DataField',
            },
        ]
    },
    UI.Chart #SpecificationWidthRadialChart : {
        $Type             : 'UI.ChartDefinitionType',
        Title             : 'Area Utilization',
        Description       : 'Total Area by utilization',
        ChartType         : #Donut,
        Measures          : [Utlization],
        MeasureAttributes : [{
            $Type     : 'UI.ChartMeasureAttributeType',
            Measure   : Utlization,
            Role      : #Axis1,
            DataPoint : '@UI.DataPoint#Width'
        }]
    },
    UI.DataPoint #Width                     : {
        Value         : Utlization,
        Title         : 'Day1',
        Description   : 'Radial Micro Chart',
        TargetValue   : 100,
        ForecastValue : Utlization,
        MinimumValue  : 0,
        MaximumValue  : 100,
        Criticality   : 3
    }
);

annotate service.YieldPerArea with @(
    UI.SelectionFields : [
        Area,
        Year
    ],
    UI.Identification  : [{
        Value : Area,
        Label : 'Area Name'
    }],
    UI.LineItem        : [
        // {
        //     $Type  : 'UI.DataFieldForAction',
        //     Label  : 'Review Data',
        //     Action : 'AgriExports.ReviewState',
        // },
        {
            $Type : 'UI.DataField',
            Label : 'Area',
            Value : Area,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Year',
            Value : Year,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product',
            Value : Product,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Grade',
            Value : Variety,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Net Weight',
            Value : NetWeight,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Total Qty',
            Value : TotalQty,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Average Weight',
            Value : AvgWeight,
        },
        {
            $Type       : 'UI.DataField',
            Label       : 'Reviewed',
            Value       : Reviews.Review_Stat,
            Criticality : Reviews.Review_Criticality,
        // CriticalityRepresentation : '',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Comments',
            Value : Reviews.Comments,
        },
    ]
);

annotate service.YieldPerArea with @(
    UI.HeaderInfo                  : {
        TypeName       : 'Yield Analysis',
        TypeNamePlural : 'yield Analysis',
        ImageUrl       : 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg',
        Title          : {
            $Type : 'UI.DataField',
            Label : 'Area',
            Value : Area,
        },
        Description    : {
            $Type : 'UI.DataField',
            Label : 'Year',
            Value : Year,
        },
        $Type          : 'UI.HeaderInfoType',
    },
    UI.Facets                      : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet5',
            Label  : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup5',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Product Details',
            Target : 'Products/@UI.LineItem'
        }
    ],
    UI.FieldGroup #GeneratedGroup5 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type  : 'UI.DataFieldForAction',
                Label  : 'Review Data',
                Action : 'AgriExports.ReviewState',
            },

            {
                $Type : 'UI.DataField',
                Label : 'Product',
                Value : Product,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Net Weight',
                Value : NetWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Average Weight',
                Value : AvgWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Total Quantity',
                Value : TotalQty,
            }
        ]
    },
);


annotate service.Products with @(UI : {
    SelectionFields : [
        Area,
        Year,
        Product,
        Variety
    ],
    Identification  : [{
        Value : Area,
        Label : 'Area Name'
    }],
    LineItem        : [
        {
            $Type : 'UI.DataField',
            Label : 'Area',
            Value : Area,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Year',
            Value : Year,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product',
            Value : Product,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Variety',
            Value : Variety,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Net Weight',
            Value : Weight,
        },
        {
            $Type : 'UI.DataField',
            Label : 'No of Leaves',
            Value : NoofLeaves,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Length',
            Value : length,
        }
    ]
});

annotate service.Products with @(
    UI.HeaderInfo                  : {
        TypeName       : 'Product Info',
        TypeNamePlural : 'Product Info',
        ImageUrl       : 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg',
        Title          : {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        Description    : {
            $Type : 'UI.DataField',
            Label : 'Product',
            Value : Product,
        },
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet5',
        Label  : 'Product Information',
        Target : '@UI.FieldGroup#GeneratedGroup5',
    }],
    UI.FieldGroup #GeneratedGroup5 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            // {
            //     $Type  : 'UI.DataFieldForAction',
            //     Label  : 'Review Data',
            //     Action : 'AgriExports.EntityContainer/ReviewState',
            // },
            {
                $Type : 'UI.DataField',
                Label : 'Year',
                Value : Year,
            // @cds.odata.bindingparameter.name : '_it'
            },
            {
                $Type : 'UI.DataField',
                Label : 'Variety',
                Value : Variety,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Net Weight',
                Value : Weight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'No of Leaves',
                Value : NoofLeaves,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Length of Product',
                Value : length,
            }
        ]
    },
);

annotate service.BuyerData with @(UI : {
    SelectionFields : [
        Region,
        CustomerName,
        Country.code,
        BuyerType,
        PaymentTerm
    ],
    Identification  : [{
        Value : CustomerName,
        Label : 'Buyer Name'
    }],
    LineItem        : [
        {
            $Type : 'UI.DataField',
            Label : 'Region',
            Value : Region,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Buyer Name',
            Value : CustomerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Buyer Type',
            Value : BuyerType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Contact No',
            Value : Contactno,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Buyer Rating',
            Value : Buyer_Rating,
        },
    ]
});


annotate service.BuyerData with @(
    UI.HeaderInfo                        : {
        TypeName       : 'Buyer Info',
        TypeNamePlural : 'Buyer Info',
        ImageUrl       : 'https://images.immediate.co.uk/production/volatile/sites/30/2017/01/Bananas-218094b-scaled.jpg',
        Title          : {
            $Type : 'UI.DataField',
            Label : 'Buyer Name',
            Value : CustomerName,
        },
        Description    : {
            $Type : 'UI.DataField',
            Label : 'Region',
            Value : Region,
        },
    },
    UI.HeaderFacets                      : [{
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Contact Detail',
        Target : '@UI.FieldGroup#GeneratedHeaderGroup1'
    }, ],
    UI.Facets                            : [
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet2',
            Label  : 'Buyer Information',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            ID     : 'GeneratedFacet1',
            Label  : 'Address Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        }
    ],
    UI.FieldGroup #GeneratedGroup2       : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Trading Commodity',
                Value : TradingCommodity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Trading Currency',
                Value : TradingCurrency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Nearest Port',
                Value : NearestPort,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Buyer Type',
                Value : BuyerType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Buyer Capacity',
                Value : BuyerCapacity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Buyer Frequency',
                Value : BuyingFrequency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Packing Requirements',
                Value : PackingType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Payment Term',
                Value : PaymentTerm,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Trade Activity Period',
                Value : Activity_months,
            }
        ]
    },
    UI.FieldGroup #GeneratedGroup1       : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Street',
                Value : Address_street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Town',
                Value : Address_town,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Region',
                Value : Address_region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : Address_country_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Zip Code',
                Value : Address_Pincode,
            }
        ]
    },
    UI.FieldGroup #GeneratedHeaderGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Website',
                Value : Website,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Contact Details',
                Value : Contactno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Rating',
                Value : Buyer_Rating,
            }
        ]
    },
);
