package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Tx_asInterface) class Tx_static_extension {
    @:keep
    @:tdfield
    static public function queryRow( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx.queryRowContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryRowContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = @:check2r _tx.queryContext(_ctx, _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return (stdgo.Go.setRef(({ _rows : _rows, _err : _err } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
    }
    @:keep
    @:tdfield
    static public function query( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx.queryContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = @:check2r _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return @:check2r (@:checkr _tx ?? throw "null pointer dereference")._db._queryDC(_ctx, (@:checkr _tx ?? throw "null pointer dereference")._ctx, _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function exec( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx.execContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function execContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = @:check2r _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : _err };
        };
        return @:check2r (@:checkr _tx ?? throw "null pointer dereference")._db._execDC(_ctx, _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function stmt( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx.stmtContext(stdgo._internal.context.Context_background.background(), _stmt);
    }
    @:keep
    @:tdfield
    static public function stmtContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = @:check2r _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return (stdgo.Go.setRef(({ _stickyErr : _err } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            };
            {
                var _a0 = null;
                final __f__ = _release;
                __deferstack__.unshift({ ran : false, f : () -> __f__((null : stdgo.Error)) });
            };
            if ((@:checkr _tx ?? throw "null pointer dereference")._db != ((@:checkr _stmt ?? throw "null pointer dereference")._db)) {
                {
                    final __ret__:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (stdgo.Go.setRef(({ _stickyErr : stdgo._internal.errors.Errors_new_.new_(("sql: Tx.Stmt: statement from different database used" : stdgo.GoString)) } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
            var _parentStmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            @:check2 (@:checkr _stmt ?? throw "null pointer dereference")._mu.lock();
            if (((@:checkr _stmt ?? throw "null pointer dereference")._closed || ((@:checkr _stmt ?? throw "null pointer dereference")._cg != null) : Bool)) {
                @:check2 (@:checkr _stmt ?? throw "null pointer dereference")._mu.unlock();
                stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    {
                        var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverprepare._ctxDriverPrepare(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, (@:checkr _stmt ?? throw "null pointer dereference")._query?.__copy__());
                        _si = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                });
                if (_err != null) {
                    {
                        final __ret__:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (stdgo.Go.setRef(({ _stickyErr : _err } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            } else {
                @:check2r _stmt._removeClosedStmtLocked();
                for (__119 => _v in (@:checkr _stmt ?? throw "null pointer dereference")._css) {
                    if (_v._dc == (_dc)) {
                        _si = (@:checkr _v._ds ?? throw "null pointer dereference")._si;
                        break;
                    };
                };
                @:check2 (@:checkr _stmt ?? throw "null pointer dereference")._mu.unlock();
                if (_si == null) {
                    var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
                    stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                        {
                            var __tmp__ = @:check2r _stmt._prepareOnConnLocked(_ctx, _dc);
                            _ds = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                    });
                    if (_err != null) {
                        {
                            final __ret__:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (stdgo.Go.setRef(({ _stickyErr : _err } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _si = (@:checkr _ds ?? throw "null pointer dereference")._si;
                };
                _parentStmt = _stmt;
            };
            var _txs = (stdgo.Go.setRef(({ _db : (@:checkr _tx ?? throw "null pointer dereference")._db, _cg : stdgo.Go.asInterface(_tx), _cgds : (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>), _parentStmt : _parentStmt, _query : (@:checkr _stmt ?? throw "null pointer dereference")._query?.__copy__() } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            if ((_parentStmt != null && ((_parentStmt : Dynamic).__nil__ == null || !(_parentStmt : Dynamic).__nil__))) {
                @:check2r (@:checkr _tx ?? throw "null pointer dereference")._db._addDep(stdgo.Go.asInterface(_parentStmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_txs)));
            };
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
            (@:checkr _tx ?? throw "null pointer dereference")._stmts._v = ((@:checkr _tx ?? throw "null pointer dereference")._stmts._v.__append__(_txs));
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _txs;
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
                return (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
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
                return (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function prepare( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx.prepareContext(stdgo._internal.context.Context_background.background(), _query?.__copy__());
    }
    @:keep
    @:tdfield
    static public function prepareContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = @:check2r _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:check2r (@:checkr _tx ?? throw "null pointer dereference")._db._prepareDC(_ctx, _dc, _release, stdgo.Go.asInterface(_tx), _query?.__copy__()), _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
        (@:checkr _tx ?? throw "null pointer dereference")._stmts._v = ((@:checkr _tx ?? throw "null pointer dereference")._stmts._v.__append__(_stmt));
        (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock();
        return { _0 : _stmt, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function rollback( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2r _tx._rollback(false);
    }
    @:keep
    @:tdfield
    static public function _rollback( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _discardConn:Bool):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        if (!@:check2 (@:checkr _tx ?? throw "null pointer dereference")._done.compareAndSwap(false, true)) {
            return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
        };
        if (stdgo._internal.database.sql.Sql__rollbackhook._rollbackHook != null) {
            stdgo._internal.database.sql.Sql__rollbackhook._rollbackHook();
        };
        (@:checkr _tx ?? throw "null pointer dereference")._cancel();
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.lock();
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.unlock();
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _tx ?? throw "null pointer dereference")._dc), function():Void {
            _err = (@:checkr _tx ?? throw "null pointer dereference")._txi.rollback();
        });
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            @:check2r _tx._closePrepared();
        };
        if (_discardConn) {
            _err = stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
        };
        @:check2r _tx._close(_err);
        return _err;
    }
    @:keep
    @:tdfield
    static public function commit( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _tx ?? throw "null pointer dereference")._ctx.done() != null && (@:checkr _tx ?? throw "null pointer dereference")._ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        (@:checkr _tx ?? throw "null pointer dereference")._ctx.done().__get__();
                        {
                            if (@:check2 (@:checkr _tx ?? throw "null pointer dereference")._done.load()) {
                                return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
                            };
                            return (@:checkr _tx ?? throw "null pointer dereference")._ctx.err();
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        if (!@:check2 (@:checkr _tx ?? throw "null pointer dereference")._done.compareAndSwap(false, true)) {
            return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
        };
        (@:checkr _tx ?? throw "null pointer dereference")._cancel();
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.lock();
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.unlock();
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _tx ?? throw "null pointer dereference")._dc), function():Void {
            _err = (@:checkr _tx ?? throw "null pointer dereference")._txi.commit();
        });
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            @:check2r _tx._closePrepared();
        };
        @:check2r _tx._close(_err);
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closePrepared( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
            {
                final __f__ = (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            for (__61 => _stmt in (@:checkr _tx ?? throw "null pointer dereference")._stmts._v) {
                @:check2r _stmt.close();
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
    static public function _closemuRUnlockRelease( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _0:stdgo.Error):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.rUnlock();
    }
    @:keep
    @:tdfield
    static public function _txCtx( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo._internal.context.Context_context.Context {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return (@:checkr _tx ?? throw "null pointer dereference")._ctx;
    }
    @:keep
    @:tdfield
    static public function _grabConn( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn; var _2 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            return { _0 : null, _1 : null, _2 : _ctx.err() };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.rLock();
        if (@:check2r _tx._isDone()) {
            @:check2 (@:checkr _tx ?? throw "null pointer dereference")._closemu.rUnlock();
            return { _0 : null, _1 : null, _2 : stdgo._internal.database.sql.Sql_errtxdone.errTxDone };
        };
        if (stdgo._internal.database.sql.Sql__hooktxgrabconn._hookTxGrabConn != null) {
            stdgo._internal.database.sql.Sql__hooktxgrabconn._hookTxGrabConn();
        };
        return { _0 : (@:checkr _tx ?? throw "null pointer dereference")._dc, _1 : @:check2r _tx._closemuRUnlockRelease, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _close( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _err:stdgo.Error):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        (@:checkr _tx ?? throw "null pointer dereference")._releaseConn(_err);
        (@:checkr _tx ?? throw "null pointer dereference")._dc = null;
        (@:checkr _tx ?? throw "null pointer dereference")._txi = (null : stdgo._internal.database.sql.driver.Driver_tx.Tx);
    }
    @:keep
    @:tdfield
    static public function _isDone( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Bool {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        return @:check2 (@:checkr _tx ?? throw "null pointer dereference")._done.load();
    }
    @:keep
    @:tdfield
    static public function _awaitDone( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        (@:checkr _tx ?? throw "null pointer dereference")._ctx.done().__get__();
        var _discardConnection = (!(@:checkr _tx ?? throw "null pointer dereference")._keepConnOnRollback : Bool);
        @:check2r _tx._rollback(_discardConnection);
    }
}
