using Agri_exp from '../db/schema';

service AgriExports {

    entity Procurement as projection on Agri_exp.Procurement;

}
