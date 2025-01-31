package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class ConnPrepareContext_static_extension {
    @:interfacetypeffun
    static public function prepareContext(t:stdgo._internal.database.sql.driver.Driver_ConnPrepareContext.ConnPrepareContext, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt; var _1 : stdgo.Error; } return t.prepareContext(_ctx, _query);
}
