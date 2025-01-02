package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Row_asInterface) class Row_static_extension {
    @:keep
    @:tdfield
    static public function err( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function scan( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                return (@:checkr _r ?? throw "null pointer dereference")._err;
            };
            {
                final __f__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._rows.close;
                __deferstack__.unshift(() -> __f__());
            };
            for (__35 => _dp in _dest) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_dp : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : false };
                    }, __36 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("sql: RawBytes isn\'t allowed on Row.Scan" : stdgo.GoString));
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            if (!@:check2r (@:checkr _r ?? throw "null pointer dereference")._rows.next()) {
                {
                    var _err = (@:check2r (@:checkr _r ?? throw "null pointer dereference")._rows.err() : stdgo.Error);
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                __deferstack__.remove(defer);
                                defer();
                            };
                            return _err;
                        };
                    };
                };
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return stdgo._internal.database.sql.Sql_errNoRows.errNoRows;
                };
            };
            var _err = (@:check2r (@:checkr _r ?? throw "null pointer dereference")._rows.scan(...(_dest : Array<stdgo.AnyInterface>)) : stdgo.Error);
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return _err;
                };
            };
            {
                final __ret__:stdgo.Error = @:check2r (@:checkr _r ?? throw "null pointer dereference")._rows.close();
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
}
