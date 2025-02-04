package stdgo._internal.database.sql.driver;
@:keep class ExecerContext_static_extension {
    @:interfacetypeffun
    static public function execContext(t:stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_result.Result; var _1 : stdgo.Error; } return t.execContext(_ctx, _query, _args);
}
