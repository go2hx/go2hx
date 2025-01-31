package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class StmtQueryContext_static_extension {
    @:interfacetypeffun
    static public function queryContext(t:stdgo._internal.database.sql.driver.Driver_StmtQueryContext.StmtQueryContext, _ctx:stdgo._internal.context.Context_Context.Context, _args:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo._internal.database.sql.driver.Driver_Rows.Rows; var _1 : stdgo.Error; } return t.queryContext(_ctx, _args);
}
