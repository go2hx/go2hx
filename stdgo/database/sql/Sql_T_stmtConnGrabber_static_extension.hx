package stdgo.database.sql;
class T_stmtConnGrabber_static_extension {
    static public function _txCtx(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.database.sql.Sql_T_stmtConnGrabber_static_extension.T_stmtConnGrabber_static_extension._txCtx(t);
    }
    static public function _grabConn(t:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_stmtConnGrabber_static_extension.T_stmtConnGrabber_static_extension._grabConn(t, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
