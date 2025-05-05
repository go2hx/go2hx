package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Rows_asInterface) class Rows_static_extension {
    @:keep
    @:tdfield
    static public function _close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3371"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.lock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._closemu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3374"
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3375"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3379"
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr == null) {
                (@:checkr _rs ?? throw "null pointer dereference")._lasterr = _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3383"
            stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _rs ?? throw "null pointer dereference")._dc), function():Void {
                _err = (@:checkr _rs ?? throw "null pointer dereference")._rowsi.close();
            });
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3386"
            {
                var _fn = stdgo._internal.database.sql.Sql__rowsclosehook._rowsCloseHook();
                if (_fn != null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3387"
                    _fn(_rs, (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3389"
            if ((@:checkr _rs ?? throw "null pointer dereference")._cancel != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3390"
                (@:checkr _rs ?? throw "null pointer dereference")._cancel();
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3393"
            if (({
                final value = (@:checkr _rs ?? throw "null pointer dereference")._closeStmt;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3394"
                (@:checkr _rs ?? throw "null pointer dereference")._closeStmt.close();
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3396"
            (@:checkr _rs ?? throw "null pointer dereference")._releaseConn(_err);
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = _rs._lasterrOrErrLocked(_err);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3399"
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
    @:keep
    @:tdfield
    static public function close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3365"
        _rs._closemuRUnlockIfHeldByScan();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3367"
        return _rs._close((null : stdgo.Error));
    }
    @:keep
    @:tdfield
    static public function _closemuRUnlockIfHeldByScan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3338"
        if ((@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold) {
            (@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold = false;
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3340"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
        };
    }
    @:keep
    @:tdfield
    static public function scan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3293"
        if ((@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3296"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan called without calling Next (closemuScanHold)" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3298"
        (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3300"
        if ((((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) && (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3301"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3302"
            return (@:checkr _rs ?? throw "null pointer dereference")._lasterr;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3304"
        if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
            var _err = (_rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3306"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3307"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3310"
        if (stdgo._internal.database.sql.Sql__scanargscontainrawbytes._scanArgsContainRawBytes(_dest)) {
            (@:checkr _rs ?? throw "null pointer dereference")._closemuScanHold = true;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3313"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3316"
        if ((@:checkr _rs ?? throw "null pointer dereference")._lastcols == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3317"
            _rs._closemuRUnlockIfHeldByScan();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3318"
            return stdgo._internal.errors.Errors_new_.new_(("sql: Scan called without calling Next" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3320"
        if ((_dest.length) != (((@:checkr _rs ?? throw "null pointer dereference")._lastcols.length))) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3321"
            _rs._closemuRUnlockIfHeldByScan();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3322"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d destination arguments in Scan, not %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _rs ?? throw "null pointer dereference")._lastcols.length)), stdgo.Go.toInterface((_dest.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3325"
        for (_i => _sv in (@:checkr _rs ?? throw "null pointer dereference")._lastcols) {
            var _err = (stdgo._internal.database.sql.Sql__convertassignrows._convertAssignRows(_dest[(_i : stdgo.GoInt)], stdgo.Go.toInterface(_sv), _rs) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3327"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3328"
                _rs._closemuRUnlockIfHeldByScan();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3329"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan error on column index %d, name %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._rowsi.columns()[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3332"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function columnTypes( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3128"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3130"
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3131"
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3133"
            if ((@:checkr _rs ?? throw "null pointer dereference")._rowsi == null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3134"
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_columntype.ColumnType>>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errnorows._errNoRows) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3136"
            (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3139"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3111"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3113"
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3114"
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errrowsclosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3116"
            if ((@:checkr _rs ?? throw "null pointer dereference")._rowsi == null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3117"
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errnorows._errNoRows) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3119"
            (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3122"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3094"
            if (!(@:checkr _rs ?? throw "null pointer dereference")._hitEOF) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3095"
                {
                    var _errp = (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load();
                    if (({
                        final value = _errp;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3096"
                        return (_errp : stdgo.Error);
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3100"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3102"
            {
                final __ret__:stdgo.Error = _rs._lasterrOrErrLocked((null : stdgo.Error));
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
    @:keep
    @:tdfield
    static public function nextResultSet( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3052"
            _rs._closemuRUnlockIfHeldByScan();
            var _doClose:Bool = false;
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3056"
                        if (_doClose) {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3057"
                            _rs.close();
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3060"
            (@:checkr _rs ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3063"
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3064"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3069"
            if (!_ok) {
                _doClose = true;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3071"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3076"
            (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = _nextResultSet.nextResultSet();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3080"
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) {
                _doClose = true;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3082"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3084"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3006"
            if ((@:checkr _rs ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3007"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
                    _doClose = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3012"
            (@:checkr _rs ?? throw "null pointer dereference")._dc.lock();
            {
                final __f__ = (@:checkr _rs ?? throw "null pointer dereference")._dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3015"
            if ((@:checkr _rs ?? throw "null pointer dereference")._lastcols == null) {
                (@:checkr _rs ?? throw "null pointer dereference")._lastcols = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>(((@:checkr _rs ?? throw "null pointer dereference")._rowsi.columns().length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>);
            };
            (@:checkr _rs ?? throw "null pointer dereference")._lasterr = (@:checkr _rs ?? throw "null pointer dereference")._rowsi.next((@:checkr _rs ?? throw "null pointer dereference")._lastcols);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3020"
            if ((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3022"
                if (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3023"
                    {
                        final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                            _doClose = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                        _doClose = __ret__._0;
                        _ok = __ret__._1;
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
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3026"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3027"
                    {
                        final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                            _doClose = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                        _doClose = __ret__._0;
                        _ok = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3032"
                if (!_nextResultSet.hasNextResultSet()) {
                    _doClose = true;
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3035"
                {
                    final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _doClose, _1 : false };
                        _doClose = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _doClose = __ret__._0;
                    _ok = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3037"
            {
                final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : true };
                    _doClose = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
                _doClose = __ret__._0;
                _ok = __ret__._1;
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
                return { _0 : _doClose, _1 : _ok };
            };
        };
    }
    @:keep
    @:tdfield
    static public function next( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2986"
        _rs._closemuRUnlockIfHeldByScan();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2988"
        if (({
            final value = (@:checkr _rs ?? throw "null pointer dereference")._contextDone.load();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2989"
            return false;
        };
        var _doClose:Bool = false, _ok:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2993"
        stdgo._internal.database.sql.Sql__withlock._withLock((@:checkr _rs ?? throw "null pointer dereference")._closemu.rLocker(), function():Void {
            {
                var __tmp__ = _rs._nextLocked();
                _doClose = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2996"
        if (_doClose) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2997"
            _rs.close();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2999"
        if ((_doClose && !_ok : Bool)) {
            (@:checkr _rs ?? throw "null pointer dereference")._hitEOF = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L3002"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _awaitDone( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _ctx:stdgo._internal.context.Context_context.Context, _txctx:stdgo._internal.context.Context_context.Context, _closectx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        var _txctxDone:stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0> = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0>);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2959"
        if (_txctx != null) {
            _txctxDone = _txctx.done();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2962"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _ctx.done();
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            var _err = (_ctx.err() : stdgo.Error);
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2965"
                            (@:checkr _rs ?? throw "null pointer dereference")._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = _txctxDone;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            var _err = (_txctx.err() : stdgo.Error);
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2968"
                            (@:checkr _rs ?? throw "null pointer dereference")._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                        };
                    };
                } else if ({
                    if (__c__2 == null) {
                        __c__2 = _closectx.done();
                    };
                    __c__2 != null && __c__2.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__2.__get__();
                        {};
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2973"
        _rs._close(_ctx.err());
    }
    @:keep
    @:tdfield
    static public function _initContextClose( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _ctx:stdgo._internal.context.Context_context.Context, _txctx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2941"
        if (((_ctx.done() == null) && (((_txctx == null) || (_txctx.done() == null) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2942"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2944"
        if (stdgo._internal.database.sql.Sql__bypassrowsawaitdone._bypassRowsAwaitDone) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2945"
            return;
        };
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _closectx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        (@:checkr _rs ?? throw "null pointer dereference")._cancel = _cancel;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2949"
        {
            final __tmp__0 = _ctx;
final __tmp__1 = _txctx;
final __tmp__2 = _closectx;
            stdgo.Go.routine(() -> _rs._awaitDone(__tmp__0, __tmp__1, __tmp__2));
        };
    }
    @:keep
    @:tdfield
    static public function _lasterrOrErrLocked( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = _rs;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2930"
        if ((((@:checkr _rs ?? throw "null pointer dereference")._lasterr != null) && (stdgo.Go.toInterface((@:checkr _rs ?? throw "null pointer dereference")._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2931"
            return (@:checkr _rs ?? throw "null pointer dereference")._lasterr;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2933"
        return _err;
    }
}
