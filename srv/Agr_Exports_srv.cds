using Agri_exp from '../db/schema';

service AgriExports {

    entity Procurement   as projection on Agri_exp.Procurement;

    @odata.draft.enabled
    @cds.redirection.target
    entity Products      as projection on Agri_exp.Product

    // @odata.draft.enabled
    entity YieldPerArea1 as projection on Agri_exp.YieldPerArea

    // @cds.redirection.target
    @readonly
    entity YieldPerArea  as
        select from Agri_exp.Product {
            key Area        as Area,
            key Year        as Year,
            key Product     as Product,
                Variety     as Variety,
                count( * )  as TotalQty  : Integer,
                SUM(Weight) as NetWeight : Integer,
                AVG(Weight) as AvgWeight : Integer,
                Products                 : Association to many AgriExports.Products
                                               on Products.Area = $self.Area
        }
        group by
            Year,
            Area,
            Product;

    entity test          as
        select from AgriExports.YieldPerArea {
            *,
            Products : Association to many AgriExports.Products
                           on Products.Area = $self.Area
        }

}
