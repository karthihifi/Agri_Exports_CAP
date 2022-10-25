using Agri_exp as service from '../db/schema';

annotate service.Procurement with {
    Area              @title : 'Area';
    Year              @title : 'Area';
    Product           @title : 'Area';
    @Measures : {Unit : 'Hectare'}
    Area_size         @title : 'Area';
    Area_Qauality     @title : 'Area Quality';
    Utlization        @title : 'Utlization';
    Sapling_qty       @title : 'Sapling Qty';
    @Measures : {ISOCurrency : 'INR', }
    Sapling_price     @title : 'Sapling Price';

    Fertilizers_qty   @title : 'Fertilizers Qty';
    @Measures : {ISOCurrency : 'INR', }
    Fertilizers_price @title : 'Fertilizers Price';
    @Measures : {ISOCurrency : 'INR', }
    Labour_price      @title : 'Labour Price';
    @Measures : {ISOCurrency : 'INR', }
    Readiness_cost    @title : 'Readiness Cost';
    @Measures : {ISOCurrency : 'INR', }
    Water_cost        @title : 'Water Cost';
    @Measures : {ISOCurrency : 'INR', }
    Electricity_cost  @title : 'Electricity Cost';
    @Measures : {ISOCurrency : 'INR', }
    Govt_allowances   @title : 'Govt Allowances';
    @Measures : {ISOCurrency : 'INR', }
    Other_expenses    @title : 'Other Expenses';
    @Measures : {ISOCurrency : 'INR', }
    Total_cost        @title : 'Total Expenses';
}
