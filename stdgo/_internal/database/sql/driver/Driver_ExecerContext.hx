package stdgo._internal.database.sql.driver;
typedef ExecerContext = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function execContext(_ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Result.Result; var _1 : stdgo.Error; };
};
