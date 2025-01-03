package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_driverStmt_asInterface) class T_driverStmt_static_extension {
    @:keep
    @:tdfield
    static public function close( _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):stdgo.Error {
        @:recv var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = _ds;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            (@:checkr _ds ?? throw "null pointer dereference").lock();
            {
                final __f__ = (@:checkr _ds ?? throw "null pointer dereference").unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _ds ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:stdgo.Error = (@:checkr _ds ?? throw "null pointer dereference")._closeErr;
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            (@:checkr _ds ?? throw "null pointer dereference")._closed = true;
            (@:checkr _ds ?? throw "null pointer dereference")._closeErr = (@:checkr _ds ?? throw "null pointer dereference")._si.close();
            {
                final __ret__:stdgo.Error = (@:checkr _ds ?? throw "null pointer dereference")._closeErr;
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt):Void return @:_5 __self__.lock();
}
