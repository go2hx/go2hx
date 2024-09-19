package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Row_asInterface) class Row_static_extension {
    @:keep
    static public function err( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> = _r;
        return _r._err;
    }
    @:keep
    static public function scan( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_r._err != null) {
                return _r._err;
            };
            __deferstack__.unshift(() -> _r._rows.close());
            for (__38 => _dp in _dest) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_dp : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : false };
                    }, __39 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("sql: RawBytes isn\'t allowed on Row.Scan" : stdgo.GoString));
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            if (!_r._rows.next()) {
                {
                    var _err = (_r._rows.err() : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo._internal.database.sql.Sql_errNoRows.errNoRows;
                };
            };
            var _err = (_r._rows.scan(...(_dest : Array<stdgo.AnyInterface>)) : stdgo.Error);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            {
                final __ret__:stdgo.Error = _r._rows.close();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
