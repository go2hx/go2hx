package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Rows_asInterface) class Rows_static_extension {
    @:keep
    static public function _close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _rs._closemu.lock();
            {
                final __f__ = _rs._closemu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_rs._closed) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _rs._closed = true;
            if (_rs._lasterr == null) {
                _rs._lasterr = _err;
            };
            stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_rs._dc), function():Void {
                _err = _rs._rowsi.close();
            });
            {
                var _fn = stdgo._internal.database.sql.Sql__rowsCloseHook._rowsCloseHook();
                if (_fn != null) {
                    _fn(_rs, (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                };
            };
            if (_rs._cancel != null) {
                _rs._cancel();
            };
            if ((_rs._closeStmt != null && ((_rs._closeStmt : Dynamic).__nil__ == null || !(_rs._closeStmt : Dynamic).__nil__))) {
                _rs._closeStmt.close();
            };
            _rs._releaseConn(_err);
            _rs._lasterr = _rs._lasterrOrErrLocked(_err);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
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
    @:keep
    static public function close( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        _rs._closemuRUnlockIfHeldByScan();
        return _rs._close((null : stdgo.Error));
    }
    @:keep
    static public function _closemuRUnlockIfHeldByScan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        if (_rs._closemuScanHold) {
            _rs._closemuScanHold = false;
            _rs._closemu.runlock();
        };
    }
    @:keep
    static public function scan( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _dest = new stdgo.Slice<stdgo.AnyInterface>(_dest.length, 0, ..._dest);
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        if (_rs._closemuScanHold) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan called without calling Next (closemuScanHold)" : stdgo.GoString));
        };
        _rs._closemu.rlock();
        if (((_rs._lasterr != null) && (stdgo.Go.toInterface(_rs._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _rs._closemu.runlock();
            return _rs._lasterr;
        };
        if (_rs._closed) {
            var _err = (_rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errRowsClosed._errRowsClosed) : stdgo.Error);
            _rs._closemu.runlock();
            return _err;
        };
        if (stdgo._internal.database.sql.Sql__scanArgsContainRawBytes._scanArgsContainRawBytes(_dest)) {
            _rs._closemuScanHold = true;
        } else {
            _rs._closemu.runlock();
        };
        if (_rs._lastcols == null) {
            _rs._closemuRUnlockIfHeldByScan();
            return stdgo._internal.errors.Errors_new_.new_(("sql: Scan called without calling Next" : stdgo.GoString));
        };
        if ((_dest.length) != ((_rs._lastcols.length))) {
            _rs._closemuRUnlockIfHeldByScan();
            return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: expected %d destination arguments in Scan, not %d" : stdgo.GoString), stdgo.Go.toInterface((_rs._lastcols.length)), stdgo.Go.toInterface((_dest.length)));
        };
        for (_i => _sv in _rs._lastcols) {
            var _err = (stdgo._internal.database.sql.Sql__convertAssignRows._convertAssignRows(_dest[(_i : stdgo.GoInt)], stdgo.Go.toInterface(_sv), _rs) : stdgo.Error);
            if (_err != null) {
                _rs._closemuRUnlockIfHeldByScan();
                return stdgo._internal.fmt.Fmt_errorf.errorf(("sql: Scan error on column index %d, name %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_rs._rowsi.columns()[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_err));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function columnTypes( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _rs._closemu.rlock();
            {
                final __f__ = _rs._closemu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_rs._closed) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errRowsClosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_rs._rowsi == null) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errNoRows._errNoRows) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _rs._dc.lock();
            {
                final __f__ = _rs._dc.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.database.sql.Sql__rowsColumnInfoSetupConnLocked._rowsColumnInfoSetupConnLocked(_rs._rowsi), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_ColumnType.ColumnType>>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function columns( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _rs._closemu.rlock();
            {
                final __f__ = _rs._closemu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_rs._closed) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errRowsClosed._errRowsClosed) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if (_rs._rowsi == null) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _rs._lasterrOrErrLocked(stdgo._internal.database.sql.Sql__errNoRows._errNoRows) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _rs._dc.lock();
            {
                final __f__ = _rs._dc.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _rs._rowsi.columns(), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function err( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_rs._hitEOF) {
                {
                    var _errp = _rs._contextDone.load();
                    if ((_errp != null && ((_errp : Dynamic).__nil__ == null || !(_errp : Dynamic).__nil__))) {
                        return (_errp : stdgo.Error);
                    };
                };
            };
            _rs._closemu.rlock();
            {
                final __f__ = _rs._closemu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            {
                final __ret__:stdgo.Error = _rs._lasterrOrErrLocked((null : stdgo.Error));
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
    @:keep
    static public function nextResultSet( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _rs._closemuRUnlockIfHeldByScan();
            var _doClose:Bool = false;
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (_doClose) {
                            _rs.close();
                        };
                    };
                    a();
                }));
            };
            _rs._closemu.rlock();
            {
                final __f__ = _rs._closemu.runlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_rs._closed) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            _rs._lastcols = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rs._rowsi) : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet)) : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet), _1 : false };
            }, _nextResultSet = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _doClose = true;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            _rs._dc.lock();
            {
                final __f__ = _rs._dc.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _rs._lasterr = _nextResultSet.nextResultSet();
            if (_rs._lasterr != null) {
                _doClose = true;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return true;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function _nextLocked( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var __deferstack__:Array<Void -> Void> = [];
        var _doClose = false, _ok = false;
        try {
            if (_rs._closed) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
                    _doClose = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            _rs._dc.lock();
            {
                final __f__ = _rs._dc.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if (_rs._lastcols == null) {
                _rs._lastcols = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>((_rs._rowsi.columns().length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
            };
            _rs._lasterr = _rs._rowsi.next(_rs._lastcols);
            if (_rs._lasterr != null) {
                if (stdgo.Go.toInterface(_rs._lasterr) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    {
                        final __ret__:{ var _0 : Bool; var _1 : Bool; } = {
                            final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : false };
                            _doClose = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rs._rowsi) : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet)) : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet), _1 : false };
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
                            defer();
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
                        defer();
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
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _doClose, _1 : _ok };
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
            final __ret__:{ var _0 : Bool; var _1 : Bool; } = { _0 : _doClose, _1 : _ok };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function next( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>):Bool {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        _rs._closemuRUnlockIfHeldByScan();
        if ((_rs._contextDone.load() != null && ((_rs._contextDone.load() : Dynamic).__nil__ == null || !(_rs._contextDone.load() : Dynamic).__nil__))) {
            return false;
        };
        var __0:Bool = false, __1:Bool = false;
var _ok = __1, _doClose = __0;
        stdgo._internal.database.sql.Sql__withLock._withLock(_rs._closemu.rlocker(), function():Void {
            {
                var __tmp__ = _rs._nextLocked();
                _doClose = __tmp__._0;
                _ok = __tmp__._1;
            };
        });
        if (_doClose) {
            _rs.close();
        };
        if ((_doClose && !_ok : Bool)) {
            _rs._hitEOF = true;
        };
        return _ok;
    }
    @:keep
    static public function _awaitDone( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _closectx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        var _txctxDone:stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0> = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>);
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
                            _rs._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
                        };
                    };
                } else if (_txctxDone != null && _txctxDone.__isGet__()) {
                    __select__ = false;
                    {
                        _txctxDone.__get__();
                        {
                            var _err = (_txctx.err() : stdgo.Error);
                            _rs._contextDone.store((stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>));
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
        _rs._close(_ctx.err());
    }
    @:keep
    static public function _initContextClose( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        if (((_ctx.done() == null) && (((_txctx == null) || (_txctx.done() == null) : Bool)) : Bool)) {
            return;
        };
        if (stdgo._internal.database.sql.Sql__bypassRowsAwaitDone._bypassRowsAwaitDone) {
            return;
        };
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _closectx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        _rs._cancel = _cancel;
        stdgo.Go.routine(() -> _rs._awaitDone(_ctx, _txctx, _closectx));
    }
    @:keep
    static public function _lasterrOrErrLocked( _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>, _err:stdgo.Error):stdgo.Error {
        @:recv var _rs:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = _rs;
        if (((_rs._lasterr != null) && (stdgo.Go.toInterface(_rs._lasterr) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            return _rs._lasterr;
        };
        return _err;
    }
}
