package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.T_driverConn_asInterface) class T_driverConn_static_extension {
    @:keep
    @:tdfield
    static public function _finalClose( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _openStmt:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>>);
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            _openStmt = (new stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>>((0 : stdgo.GoInt).toBasic(), ((@:checkr _dc ?? throw "null pointer dereference")._openStmt.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>>);
            for (_ds => _ in (@:checkr _dc ?? throw "null pointer dereference")._openStmt) {
                _openStmt = (_openStmt.__append__(_ds));
            };
            (@:checkr _dc ?? throw "null pointer dereference")._openStmt = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool>);
        });
        for (__19 => _ds in _openStmt) {
            @:check2r _ds.close();
        };
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            (@:checkr _dc ?? throw "null pointer dereference")._finalClosed = true;
            _err = (@:checkr _dc ?? throw "null pointer dereference")._ci.close();
            (@:checkr _dc ?? throw "null pointer dereference")._ci = (null : stdgo._internal.database.sql.driver.Driver_conn.Conn);
        });
        @:check2 (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.lock();
        (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._numOpen--;
        @:check2r (@:checkr _dc ?? throw "null pointer dereference")._db._maybeOpenNewConnections();
        @:check2 (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.unlock();
        @:check2 (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._numClosed.add((1i64 : stdgo.GoUInt64));
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        @:check2r _dc.lock();
        if ((@:checkr _dc ?? throw "null pointer dereference")._closed) {
            @:check2r _dc.unlock();
            return stdgo._internal.errors.Errors_new_.new_(("sql: duplicate driverConn close" : stdgo.GoString));
        };
        (@:checkr _dc ?? throw "null pointer dereference")._closed = true;
        @:check2r _dc.unlock();
        @:check2 (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _dc ?? throw "null pointer dereference")._dbmuClosed = true;
        var _fn = (@:check2r (@:checkr _dc ?? throw "null pointer dereference")._db._removeDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc))) : () -> stdgo.Error);
        @:check2 (@:checkr (@:checkr _dc ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.unlock();
        return _fn();
    }
    @:keep
    @:tdfield
    static public function _closeDBLocked( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):() -> stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _dc.lock();
            {
                final __f__ = @:check2r _dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _dc ?? throw "null pointer dereference")._closed) {
                {
                    final __ret__:() -> stdgo.Error = function():stdgo.Error {
                        return stdgo._internal.errors.Errors_new_.new_(("sql: duplicate driverConn close" : stdgo.GoString));
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _dc ?? throw "null pointer dereference")._closed = true;
            {
                final __ret__:() -> stdgo.Error = @:check2r (@:checkr _dc ?? throw "null pointer dereference")._db._removeDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
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
                return null;
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
                return null;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _prepareLocked( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _ctx:stdgo._internal.context.Context_context.Context, _cg:stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _1 : stdgo.Error; } {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverprepare._ctxDriverPrepare(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _query?.__copy__()), _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
        if (_cg != null) {
            return { _0 : _ds, _1 : (null : stdgo.Error) };
        };
        if ((@:checkr _dc ?? throw "null pointer dereference")._openStmt == null) {
            (@:checkr _dc ?? throw "null pointer dereference")._openStmt = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>, Bool>);
        };
        (@:checkr _dc ?? throw "null pointer dereference")._openStmt[_ds] = true;
        return { _0 : _ds, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _validateConnection( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _needsReset:Bool):Bool {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _dc.lock();
            {
                final __f__ = @:check2r _dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_needsReset) {
                (@:checkr _dc ?? throw "null pointer dereference")._needReset = true;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_validator.Validator)) : stdgo._internal.database.sql.driver.Driver_validator.Validator), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_validator.Validator), _1 : false };
                }, _cv = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        final __ret__:Bool = _cv.isValid();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
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
    static public function _resetSession( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _dc.lock();
            {
                final __f__ = @:check2r _dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!(@:checkr _dc ?? throw "null pointer dereference")._needReset) {
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
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter)) : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter), _1 : false };
                }, _cr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        final __ret__:stdgo.Error = _cr.resetSession(_ctx);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
    static public function _expired( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _timeout:stdgo._internal.time.Time_duration.Duration):Bool {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        if ((_timeout <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            return false;
        };
        return (@:checkr _dc ?? throw "null pointer dereference")._createdAt.add(_timeout).before(stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _removeOpenStmt( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>):Void {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _dc.lock();
            {
                final __f__ = @:check2r _dc.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _dc ?? throw "null pointer dereference")._openStmt != null) (@:checkr _dc ?? throw "null pointer dereference")._openStmt.__remove__(_ds);
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _releaseConn( _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _err:stdgo.Error):Void {
        @:recv var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = _dc;
        @:check2r (@:checkr _dc ?? throw "null pointer dereference")._db._putConn(_dc, _err, true);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _unlockSlow( __self__:stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn, _0:stdgo.GoInt32):Void return @:_5 __self__._unlockSlow(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _lockSlow( __self__:stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn):Void return @:_5 __self__._lockSlow();
    @:embedded
    @:embeddededffieldsffun
    public static function unlock( __self__:stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn):Void return @:_5 __self__.unlock();
    @:embedded
    @:embeddededffieldsffun
    public static function tryLock( __self__:stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn):Bool return @:_5 __self__.tryLock();
    @:embedded
    @:embeddededffieldsffun
    public static function lock( __self__:stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn):Void return @:_5 __self__.lock();
}
