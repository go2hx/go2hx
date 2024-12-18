package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Conn_asInterface) class Conn_static_extension {
    @:keep
    static public function close( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        return _c._close((null : stdgo.Error));
    }
    @:keep
    static public function _close( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _err:stdgo.Error):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_c._done.compareAndSwap(false, true)) {
                return stdgo._internal.database.sql.Sql_errConnDone.errConnDone;
            };
            _c._closemu.lock();
            {
                final __f__ = _c._closemu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _c._dc._releaseConn(_err);
            _c._dc = null;
            _c._db = null;
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
    static public function _txCtx( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>):stdgo._internal.context.Context_Context.Context {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        return (null : stdgo._internal.context.Context_Context.Context);
    }
    @:keep
    static public function _closemuRUnlockCondReleaseConn( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _err:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        _c._closemu.runlock();
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn)) {
            _c._close(_err);
        };
    }
    @:keep
    static public function beginTx( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _c._db._beginDC(_ctx, _dc, _release, _opts);
    }
    @:keep
    static public function raw( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _f:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
            var _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = (null : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn);
            {
                var __tmp__ = _c._grabConn((null : stdgo._internal.context.Context_Context.Context));
                _dc = __tmp__._0;
                _release = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
            var _fPanic = (true : Bool);
            _dc.mutex.lock();
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        _dc.mutex.unlock();
                        if (_fPanic) {
                            _err = stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn;
                        };
                        _release(_err);
                    };
                    a();
                }));
            };
            _err = _f(stdgo.Go.toInterface(_dc._ci));
            _fPanic = false;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
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
            return _err;
        };
    }
    @:keep
    static public function prepareContext( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _c._db._prepareDC(_ctx, _dc, _release, stdgo.Go.asInterface(_c), _query?.__copy__());
    }
    @:keep
    static public function queryRowContext( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c.queryContext(_ctx, _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return (stdgo.Go.setRef(({ _rows : _rows, _err : _err } : stdgo._internal.database.sql.Sql_Row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
    }
    @:keep
    static public function queryContext( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _c._db._queryDC(_ctx, (null : stdgo._internal.context.Context_Context.Context), _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    static public function execContext( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
        };
        return _c._db._execDC(_ctx, _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    static public function pingContext( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        var __tmp__ = _c._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        return _c._db._pingDC(_ctx, _dc, _release);
    }
    @:keep
    static public function _grabConn( _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>, _0:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_T_releaseConn.T_releaseConn; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn> = _c;
        if (_c._done.load()) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.database.sql.Sql_errConnDone.errConnDone };
        };
        _c._releaseConnOnce.do_(function():Void {
            _c._releaseConnCache = _c._closemuRUnlockCondReleaseConn;
        });
        _c._closemu.rlock();
        return { _0 : _c._dc, _1 : _c._releaseConnCache, _2 : (null : stdgo.Error) };
    }
}
