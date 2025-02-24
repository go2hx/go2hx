package stdgo._internal.database.sql.driver;
@:interface typedef StmtExecContext = stdgo.StructType & {
    @:interfacetypeffun
    function execContext(_ctx:stdgo._internal.context.Context_context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; };
};
