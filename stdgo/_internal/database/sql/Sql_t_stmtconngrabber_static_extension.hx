package stdgo._internal.database.sql;
@:keep class T_stmtConnGrabber_static_extension {
    @:interfacetypeffun
    static public function _txCtx(t:stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber):stdgo._internal.context.Context_context.Context return t._txCtx();
    @:interfacetypeffun
    static public function _grabConn(t:stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber, _0:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn; var _2 : stdgo.Error; } return t._grabConn(_0);
}
