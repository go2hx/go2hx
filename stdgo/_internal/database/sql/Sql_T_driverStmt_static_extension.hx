package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_driverStmt_asInterface) class T_driverStmt_static_extension {
    @:keep
    static public function close( _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):stdgo.Error {
        @:recv var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = _ds;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _ds.lock();
            {
                final __f__ = _ds.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_ds._closed) {
                {
                    final __ret__:stdgo.Error = _ds._closeErr;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _ds._closed = true;
            _ds._closeErr = _ds._si.close();
            {
                final __ret__:stdgo.Error = _ds._closeErr;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:embedded
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) __self__.unlock();
    @:embedded
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt) __self__.lock();
}
