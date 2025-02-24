package stdgo._internal.database.sql.driver;
@:interface typedef ConnPrepareContext = stdgo.StructType & {
    @:interfacetypeffun
    function prepareContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_stmt.Stmt; var _1 : stdgo.Error; };
};
