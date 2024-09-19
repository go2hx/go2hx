package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_driverConn_asInterface) class T_driverConn_static_extension {
    @:keep
    static public function _finalClose( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _openStmt:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>>);
        stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            _openStmt = (new stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>>((0 : stdgo.GoInt).toBasic(), (_dc._openStmt.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>>);
            for (_ds => _ in _dc._openStmt) {
                _openStmt = (_openStmt.__append__(_ds));
            };
            _dc._openStmt = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>);
        });
        for (__22 => _ds in _openStmt) {
            _ds.close();
        };
        stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            _dc._finalClosed = true;
            _err = _dc._ci.close();
            _dc._ci = (null : stdgo._internal.database.sql.driver.Driver_Conn.Conn);
        });
        _dc._db._mu.lock();
        _dc._db._numOpen--;
        _dc._db._maybeOpenNewConnections();
        _dc._db._mu.unlock();
        _dc._db._numClosed.add((1i64 : stdgo.GoUInt64));
        return _err;
    }
    @:keep
    static public function close( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        _dc.lock();
        if (_dc._closed) {
            _dc.unlock();
            return stdgo._internal.errors.Errors_new_.new_(("sql: duplicate driverConn close" : stdgo.GoString));
        };
        _dc._closed = true;
        _dc.unlock();
        _dc._db._mu.lock();
        _dc._dbmuClosed = true;
        var _fn = (_dc._db._removeDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc))) : () -> stdgo.Error);
        _dc._db._mu.unlock();
        return _fn();
    }
    @:keep
    static public function _closeDBLocked( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>):() -> stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dc.lock();
            __deferstack__.unshift(() -> _dc.unlock());
            if (_dc._closed) {
                {
                    final __ret__:() -> stdgo.Error = function():stdgo.Error {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            {
                                final __ret__:stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("sql: duplicate driverConn close" : stdgo.GoString));
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
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _dc._closed = true;
            {
                final __ret__:() -> stdgo.Error = _dc._db._removeDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
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
                return null;
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
            return null;
        };
    }
    @:keep
    static public function _prepareLocked( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _ctx:stdgo._internal.context.Context_Context.Context, _cg:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>; var _1 : stdgo.Error; } {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverPrepare._ctxDriverPrepare(_ctx, _dc._ci, _query?.__copy__()), _si:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        if (_cg != null) {
            return { _0 : _ds, _1 : (null : stdgo.Error) };
        };
        if (_dc._openStmt == null) {
            _dc._openStmt = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>, Bool>);
        };
        _dc._openStmt[_ds] = true;
        return { _0 : _ds, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _validateConnection( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _needsReset:Bool):Bool {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dc.lock();
            __deferstack__.unshift(() -> _dc.unlock());
            if (_needsReset) {
                _dc._needReset = true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_Validator.Validator)) : stdgo._internal.database.sql.driver.Driver_Validator.Validator), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_Validator.Validator), _1 : false };
                }, _cv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        final __ret__:Bool = _cv.isValid();
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
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
    static public function _resetSession( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dc.lock();
            __deferstack__.unshift(() -> _dc.unlock());
            if (!_dc._needReset) {
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter)) : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter), _1 : false };
                }, _cr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        final __ret__:stdgo.Error = _cr.resetSession(_ctx);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function _expired( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _timeout:stdgo._internal.time.Time_Duration.Duration):Bool {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        if ((_timeout <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return false;
        };
        return _dc._createdAt.add(_timeout).before(stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__());
    }
    @:keep
    static public function _removeOpenStmt( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):Void {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _dc.lock();
            __deferstack__.unshift(() -> _dc.unlock());
            if (_dc._openStmt != null) _dc._openStmt.remove(_ds);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
    @:keep
    static public function _releaseConn( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _err:stdgo.Error):Void {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = _dc;
        _dc._db._putConn(_dc, _err, true);
    }
    @:embedded
    public static function _unlockSlow( __self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn, _r:stdgo.GoInt32) __self__._unlockSlow(_r);
    @:embedded
    public static function _lockSlow( __self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn) __self__.lock();
}
