package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Rows_asInterface) class Rows_static_extension {
    @:keep
    @:tdfield
    static public function _close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.lock();
            {
                final __f__ = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _rs ?? throw "null pointer dereference")._closed = true;
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr == null) {
                (@:checkr _rs ?? throw "null pointer dereference")._lasterr = _err;
            };
            stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _rs ?? throw "null pointer dereference")._dc), function():Void {
                _err = (@:checkr _rs ?? throw "null pointer dereference")._rowsi.close();
            });
            {
                var _fn = stdgo._internal.database.sql.Sql__rowsclosehook._rowsCloseHook();
                if (_fn != null) {
                    _fn(_rs, (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                };
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._cancel != null) {
                (@:checkr _rs ?? throw "null pointer dereference")._cancel();
            };
            if (((@:checkr _rs ?? throw "null pointer dereference")._closeStmt != null && (((@:checkr _rs ?? throw "null pointer dereference")._closeStmt : Dynamic).__nil__ == null || !((@:checkr _rs ?? throw "null pointer dereference")._closeStmt : Dynamic).__nil__))) {
                @:check2r (@:checkr _rs ?? throw "null pointer dereference")._closeStmt.close();
            };
            (@:checkr _rs ?? throw "null pointer dereference")._releaseConn(_err);
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = @:check2r _rs._lasterrOrErrLocked(_err);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    @:keep
    @:tdfield
    static public function close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        @:check2r _rs._closemuRUnlockIfHeldByScan();
        return @:check2r _rs._close((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function _closemuRUnlockIfHeldByScan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        if ((@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold) {
            (@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold = false;
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
        };
    }
    @:keep
    @:tdfield
    static public function scan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        if ((@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan called without calling Next (closemuScanHold)" : stdgo.GoString));
        };
        @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
        if ((((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) && (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
            return (@:checkr _rs ?? throw "null pointer dereference")._lasterr;
        };
        if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
            var _err = (@:check2r _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) : stdgo.Error);
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
            return _err;
        };
        if (stdgo._internal.database.sql.Sql__scanargscontainrawbytes._scanArgsContainRawBytes(_dest)) {
            (@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold = true;
        } else {
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
        };
        if ((@:checkr _rs ?? throw "null pointer dereference")._lastcols == null) {
            @:check2r _rs._closemuRUnlockIfHeldByScan();
            return stdgo._internal.errors.Errors_new_.new_(("sql: Scan called without calling Next" : stdgo.GoString));
        };
        if ((_dest.length) != (((@:checkr _rs ?? throw "null pointer dereference")._lastcols.length))) {
            @:check2r _rs._closemuRUnlockIfHeldByScan();
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d destination arguments in Scan, not %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _rs ?? throw "null pointer dereference")._lastcols.length)), stdgo.Go.toInterface((_dest.length)));
        };
        for (_i => _sv in (@:checkr _rs ?? throw "null pointer dereference")._lastcols) {
            var _err = (stdgo._internal.database.sql.Sql__convertassignrows._convertAssignRows(_dest[(_i : stdgo.GoInt)], stdgo.Go.toInterface(_sv), _rs) : stdgo.Error);
            if (_err != null) {
                @:check2r _rs._closemuRUnlockIfHeldByScan();
                return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan error on column index %d, name %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._rowsi.columns()[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function columnTypes( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : @:check2r _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._rowsi == null) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : @:check2r _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errnorows._errNoRows) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.database.sql.Sql__rowscolumninfosetupconnlocked._rowsColumnInfoSetupConnLocked((@:checkr _rs ?? throw "null pointer dereference")._rowsi), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function columns( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : @:check2r _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._rowsi == null) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : @:check2r _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errnorows._errNoRows) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (@:checkr _rs ?? throw "null pointer dereference")._rowsi.columns(), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function err( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (!(@:checkr _rs ?? throw "null pointer dereference")._hitEOF) {
                {
                    var _errp = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load();
                    if ((_errp != null && ((_errp : Dynamic).__nil__ == null || !(_errp : Dynamic).__nil__))) {
                        return (_errp : stdgo.Error);
                    };
                };
            };
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:stdgo.Error = @:check2r _rs._lasterrOrErrLocked((null : stdgo.Error));
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
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    @:keep
    @:tdfield
    static public function nextResultSet( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _rs._closemuRUnlockIfHeldByScan();
            var _doClose:Bool = false;
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (_doClose) {
                            @:check2r _rs.close();
                        };
                    };
                    a();
                }) });
            };
            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            (@:checkr _rs ?? throw "null pointer dereference")._lastcols = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._rowsi) : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet)) : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet), _1 : false };
            }, _nextResultSet = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _doClose = true;
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = _nextResultSet.nextResultSet();
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) {
                _doClose = true;
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
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
                return false;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextLocked( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _doClose = false, _ok = false;
        try {
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
                    _doClose = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = @:check2r (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _rs ?? throw "null pointer dereference")._lastcols == null) {
                (@:checkr _rs ?? throw "null pointer dereference")._lastcols = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>(((@:checkr _rs ?? throw "null pointer dereference")._rowsi.columns().length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
            };
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = (@:checkr _rs ?? throw "null pointer dereference")._rowsi.next((@:checkr _rs ?? throw "null pointer dereference")._lastcols);
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) {
                if (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    {
                        final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                            _doClose = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._rowsi) : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet)) : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_rowsnextresultset.RowsNextResultSet), _1 : false };
                }, _nextResultSet = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                            _doClose = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if (!_nextResultSet.hasNextResultSet()) {
                    _doClose = true;
                };
                {
                    final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                        final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _doClose, _1 : false };
                        _doClose = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                    final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : true };
                    _doClose = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
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
                return { _0 : _doClose, _1 : _ok };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                return { _0 : _doClose, _1 : _ok };
            };
        };
    }
    @:keep
    @:tdfield
    static public function next( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        @:check2r _rs._closemuRUnlockIfHeldByScan();
        if ((@:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load() != null && ((@:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load() : Dynamic).__nil__ == null || !(@:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load() : Dynamic).__nil__))) {
            return false;
        };
        var __0:Bool = false, __1:Bool = false;
var _ok = __1, _doClose = __0;
        stdgo._internal.database.sql.Sql__withlock._withLock(@:check2 (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLocker(), function():Void {
            {
                var __tmp__ = @:check2r _rs._nextLocked();
                _doClose = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
        });
        if (_doClose) {
            @:check2r _rs.close();
        };
        if ((_doClose && !_ok : Bool)) {
            (@:checkr _rs ?? throw "null pointer dereference")._hitEOF = true;
        };
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _awaitDone( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _ctx:stdgo._internal.context.Context_context.Context, _txctx:stdgo._internal.context.Context_context.Context, _closectx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var _txctxDone:stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0> = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0>);
        if (_txctx != null) {
            _txctxDone = _txctx.done();
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            var _err = (_ctx.err() : stdgo.Error);
                            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                        };
                    };
                } else if (_txctxDone != null && _txctxDone.__isGet__()) {
                    __select__ = false;
                    {
                        _txctxDone.__get__();
                        {
                            var _err = (_txctx.err() : stdgo.Error);
                            @:check2 (@:checkr _rs ?? throw "null pointer dereference")._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                        };
                    };
                } else if (_closectx.done() != null && _closectx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _closectx.done().__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        @:check2r _rs._close(_ctx.err());
    }
    @:keep
    @:tdfield
    static public function _initContextClose( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _ctx:stdgo._internal.context.Context_context.Context, _txctx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        if (((_ctx.done() == null) && (((_txctx == null) || (_txctx.done() == null) : Bool)) : Bool)) {
            return;
        };
        if (stdgo._internal.database.sql.Sql__bypassrowsawaitdone._bypassRowsAwaitDone) {
            return;
        };
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _closectx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        (@:checkr _rs ?? throw "null pointer dereference")._cancel = _cancel;
        stdgo.Go.routine(() -> @:check2r _rs._awaitDone(_ctx, _txctx, _closectx));
    }
    @:keep
    @:tdfield
    static public function _lasterrOrErrLocked( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        if ((((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) && (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            return (@:checkr _rs ?? throw "null pointer dereference")._lasterr;
        };
        return _err;
    }
}
