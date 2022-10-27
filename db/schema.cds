namespace Agri_exp;

using {
    managed,
    Currency,

} from '@sap/cds/common';

entity Procurement : managed {
    key ID                  : UUID @(Core.Computed : true);
    key Year                : Integer;
    key Area                : String(10);
        Product             : String(10);
        Grade               : String(5);
        Area_size           : Integer;
        Area_Qauality       : Integer;
        Utlization          : Integer;
        Sapling_qty         : Integer;
        Sapling_price       : Integer;
        Fertilizers_qty     : Integer;
        Fertilizers_price   : Integer;
        Labour_price        : Integer;
        Readiness_cost      : Integer;
        Water_cost          : Integer;
        Electricity_cost    : Integer;
        Govt_allowances     : Integer;
        Other_expenses      : Integer;
        Total_cost          : Integer;
        Expense_curr_key    : Currency;
        Area_Dimen_key      : String(5);
        Fertilizer_Meas_key : String(5);
}

entity Harvesting : managed {
    key ID             : UUID @(Core.Computed : true);
    key Year           : Integer;
    key Area           : String(10);
        Product        : String(10);
        Variety        : String(10);
        Grade          : String(5);
        Color          : String(7);
        Maturity       : Integer;
        NetWeight      : Integer;
        Labour_cost    : Integer;
        Machinery_cost : Integer;
        Other_expenses : Integer;
        TotalExpense   : Integer;
}

@Aggregation.CustomAggregate #TotalQty : 'Edm.Decimal'
entity YieldPerArea : managed {
    key ID        : UUID       @(Core.Computed : true);
    key Year      : Integer    @(
            assert.range : [
                2000,
                9999
            ],
            title        : 'Year'
        );
    key Area      : String(10) @title : 'Area';
        Product   : String(10);
        Variety   : String(10);
        @Aggregation.default : #SUM
        NetWeight : Integer    @Common.IsUnit;
        TotalQty  : Integer;
        AvgWeight : Integer;
        Products  : Association to many Product
                        on Products.ProductItem = $self

}

entity Product : managed {
    key ID          : UUID @(Core.Computed : true);
    key Year        : Integer;
    key Area        : String(10);
    key Product     : String(10);
        Variety     : String(10);
        Weight      : Integer;
        NoofLeaves  : Integer;
        length      : Integer;
        ProductItem : Association to YieldPerArea
// up_        : Association to YieldPerArea;
}
