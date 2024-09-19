package stdgo._internal.database.sql.driver;
@:keep class QueryerContext_static_extension {
    static public function queryContext(t:QueryerContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } return t.queryContext(_ctx, _query, _args);
}
