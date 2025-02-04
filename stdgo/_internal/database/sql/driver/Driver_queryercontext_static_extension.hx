package stdgo._internal.database.sql.driver;
@:keep class QueryerContext_static_extension {
    @:interfacetypeffun
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_rows.Rows; var _1 : stdgo.Error; } return t.queryContext(_ctx, _query, _args);
}
