CREATE OR REPLACE PACKAGE barclaysut as 
    --%suite(barclays test suite)
    
    --%beforetest(before_sales)
    --%aftertest(after_sales)
    --%test(test avg sales)
    --%rollback(auto)
    PROCEDURE  test_count_avg_sales; 
    
    --%test(total discounts)
    PROCEDURE  test_count_total_discounts;
    
    PROCEDURE before_sales; 
    procedure after_sales;
    
END barclaysut; 

