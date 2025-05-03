package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Row_asInterface) class Row_static_extension {
    @:keep
    @:tdfield
    static public function err( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> = _r;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3458"
        return (@:checkr _r ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function scan( _r:stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _r:stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3415"
            if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3416"
                return (@:checkr _r ?? throw "null pointer dereference")._err;
            };
            {
                final __f__ = (@:checkr _r ?? throw "null pointer dereference")._rows.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3433"
            for (__35 => _dp in _dest) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3434"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_dp : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rawbytes.RawBytes>), _1 : false };
                    }, __36 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3435"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("sql: RawBytes isn\'t allowed on Row.Scan" : stdgo.GoString));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3439"
            if (!(@:checkr _r ?? throw "null pointer dereference")._rows.next()) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3440"
                {
                    var _err = ((@:checkr _r ?? throw "null pointer dereference")._rows.err() : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3441"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3443"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.database.sql.Sql_errnorows.errNoRows;
                };
            };
            var _err = ((@:checkr _r ?? throw "null pointer dereference")._rows.scan(...(_dest : Array<stdgo.AnyInterface>)) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3446"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3447"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3450"
            {
                final __ret__:stdgo.Error = (@:checkr _r ?? throw "null pointer dereference")._rows.close();
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
}
