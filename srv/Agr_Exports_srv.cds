using Agri_exp from '../db/schema';

service AgriExports {

    entity Procurement   as projection on Agri_exp.Procurement;

    @odata.draft.enabled
    @cds.redirection.target
    entity Products      as projection on Agri_exp.Product

    // @odata.draft.enabled
    entity YieldPerArea1 as projection on Agri_exp.YieldPerArea
    entity ReviewStatus  as projection on Agri_exp.ReviewStatus

    // @cds.redirection.target
    @readonly
    // @odata.draft.enabled
    entity YieldPerArea  as
        select from Agri_exp.Product {
            key Area        as Area,
            key Year        as Year,
            key Product     as Product,
                Variety     as Variety,
                count( * )  as TotalQty  : Integer,
                SUM(Weight) as NetWeight : Integer @Measures.Unit : 'Kg',
                AVG(Weight) as AvgWeight : Integer @Measures.Unit : 'Kg',
                Products                 : Association to many AgriExports.Products
                                               on Products.Area = $self.Area,
                Reviews                  : Association to AgriExports.YieldPerArea1
                                               on Reviews.Area = $self.Area
        }
        group by
            Year,
            Area,
            Product;

    action ReviewState(Review_Stat : Agri_exp.ReviewStatus:descr  @Common.ValueList : {
        $Type          : 'Common.ValueListType',
        CollectionPath : 'Products',
        Parameters     : [{
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : 'Review_Stat',
            ValueListProperty : 'Area',
        }, ]

    }  @title : 'Review Status',  Comments : String) returns {
        reviewd : Boolean
    }

// entity test          as
//     select from AgriExports.YieldPerArea {
//         *,
//         Products : Association to many AgriExports.Products
//                        on Products.Area = $self.Area
//     }

}
