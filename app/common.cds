using Agri_exp as service from '../db/schema';

annotate service.Procurement with {
    Area                @title : 'Area';
    Year                @title : 'Area';
    Product             @title : 'Area';
    Grade               @title : 'Grade';
    @Measures : {Unit : 'Hectare'}
    Area_size           @title : 'Area';
    Area_Qauality       @title : 'Area Quality';
    Utlization          @title : 'Utlization';
    Sapling_qty         @title : 'Sapling Qty';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Sapling_price       @title : 'Sapling Price';

    Fertilizers_qty     @title : 'Fertilizers Qty';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Fertilizers_price   @title : 'Fertilizers Price';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Labour_price        @title : 'Labour Price';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Readiness_cost      @title : 'Readiness Cost';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Water_cost          @title : 'Water Cost';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Electricity_cost    @title : 'Electricity Cost';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Govt_allowances     @title : 'Govt Allowances';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Other_expenses      @title : 'Other Expenses';
    @Measures : {ISOCurrency : Expense_curr_key_code, }
    Total_cost          @title : 'Total Expenses';
    Expense_curr_key    @title : 'Expense Currency Key';
    Area_Dimen_key      @title : 'Area Dimension Key';
    Fertilizer_Meas_key @title : 'Fertilizer Meas Key'
}


annotate Service.YieldPerArea with {
    Year @title : 'Year'
}
