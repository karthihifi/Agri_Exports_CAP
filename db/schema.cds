namespace Agri_exp;

using {managed} from '@sap/cds/common';

entity Procurement : managed {
    key ID                : UUID @(Core.Computed : true);
    key Year              : Integer;
    key Area              : String(10);
        Product           : String(10);
        Area_size         : Integer;
        Area_Qauality     : Integer;
        Utlization        : Integer;
        Sapling_qty       : Integer;
        Sapling_price     : Integer;
        Fertilizers_qty   : Integer;
        Fertilizers_price : Integer;
        Labour_price      : Integer;
        Readiness_cost    : Integer;
        Water_cost        : Integer;
        Electricity_cost  : Integer;
        Govt_allowances   : Integer;
        Other_expenses    : Integer;
        Total_cost         : Integer;
}
