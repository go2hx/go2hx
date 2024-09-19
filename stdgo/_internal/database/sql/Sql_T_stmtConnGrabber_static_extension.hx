package stdgo._internal.database.sql;
@:keep class T_stmtConnGrabber_static_extension {
    static public function _txCtx(t:T_stmtConnGrabber):stdgo._internal.context.Context_Context.Context return t._txCtx();
    static public function _grabConn(t:T_stmtConnGrabber, _0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; } return t._grabConn(_0);
}
