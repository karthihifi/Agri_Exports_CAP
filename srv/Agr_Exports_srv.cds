using Agri_exp from '../db/schema';

service AgriExports {

    entity Procurement  as projection on Agri_exp.Procurement;
    // @odata.draft.enabled
    entity Products     as projection on Agri_exp.Product

    @odata.draft.enabled
    entity YieldPerArea as projection on Agri_exp.YieldPerArea
}
