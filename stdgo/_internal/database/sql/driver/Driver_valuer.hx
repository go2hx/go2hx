package stdgo._internal.database.sql.driver;
@:interface typedef Valuer = stdgo.StructType & {
    /**
        * Value returns a driver Value.
        * Value must not panic.
        
        
    **/
    @:interfacetypeffun
    public dynamic function value():{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; };
};
