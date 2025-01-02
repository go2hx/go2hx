package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_driverResult_asInterface) class T_driverResult_static_extension {
    @:keep
    @:tdfield
    static public function rowsAffected( _dr:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _dr:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult = _dr?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dr.lock();
            {
                final __f__ = _dr.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = _dr._resi.rowsAffected();
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
                return { _0 : (0 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
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
            return { _0 : (0 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
    }
    @:keep
    @:tdfield
    static public function lastInsertId( _dr:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _dr:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult = _dr?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dr.lock();
            {
                final __f__ = _dr.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = _dr._resi.lastInsertId();
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
                return { _0 : (0 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
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
            return { _0 : (0 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):Void return @:_5 __self__.lock();
}
