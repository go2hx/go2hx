package stdgo._internal.database.sql;
@:interface typedef T_stmtConnGrabber = stdgo.StructType & {
    @:interfacetypeffun
    function _grabConn(_0:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn; var _2 : stdgo.Error; };
    @:interfacetypeffun
    function _txCtx():stdgo._internal.context.Context_context.Context;
};
