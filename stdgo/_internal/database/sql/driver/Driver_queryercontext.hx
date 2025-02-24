package stdgo._internal.database.sql.driver;
@:interface typedef QueryerContext = stdgo.StructType & {
    @:interfacetypeffun
    function queryContext(_ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; };
};
