package stdgo.database.sql;
class T_driverConn_static_extension {
    static public function _finalClose(_dc:T_driverConn):stdgo.Error {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._finalClose(_dc);
    }
    static public function close(_dc:T_driverConn):stdgo.Error {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.close(_dc);
    }
    static public function _closeDBLocked(_dc:T_driverConn):() -> stdgo.Error {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return () -> stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._closeDBLocked(_dc)();
    }
    static public function _prepareLocked(_dc:T_driverConn, _ctx:stdgo._internal.context.Context_Context.Context, _cg:T_stmtConnGrabber, _query:String):stdgo.Tuple<T_driverStmt, stdgo.Error> {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._prepareLocked(_dc, _ctx, _cg, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _validateConnection(_dc:T_driverConn, _needsReset:Bool):Bool {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._validateConnection(_dc, _needsReset);
    }
    static public function _resetSession(_dc:T_driverConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._resetSession(_dc, _ctx);
    }
    static public function _expired(_dc:T_driverConn, _timeout:stdgo._internal.time.Time_Duration.Duration):Bool {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._expired(_dc, _timeout);
    }
    static public function _removeOpenStmt(_dc:T_driverConn, _ds:T_driverStmt):Void {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _ds = (_ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._removeOpenStmt(_dc, _ds);
    }
    static public function _releaseConn(_dc:T_driverConn, _err:stdgo.Error):Void {
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._releaseConn(_dc, _err);
    }
    public static function _unlockSlow(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Void {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Void {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Bool {
        return stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Void {
        stdgo._internal.database.sql.Sql_T_driverConn_static_extension.T_driverConn_static_extension.lock(__self__);
    }
}
