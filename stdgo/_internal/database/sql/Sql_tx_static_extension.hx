package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Tx_asInterface) class Tx_static_extension {
    @:keep
    @:tdfield
    static public function queryRow( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2529"
        return _tx.queryRowContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryRowContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = _tx.queryContext(_ctx, _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2516"
        return (stdgo.Go.setRef(({ _rows : _rows, _err : _err } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
    }
    @:keep
    @:tdfield
    static public function query( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2505"
        return _tx.queryContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2493"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2494"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2497"
        return (@:checkr _tx ?? throw "null pointer dereference")._db._queryDC(_ctx, (@:checkr _tx ?? throw "null pointer dereference")._ctx, _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function exec( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2487"
        return _tx.execContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function execContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2475"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2476"
            return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2478"
        return (@:checkr _tx ?? throw "null pointer dereference")._db._execDC(_ctx, _dc, _release, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function stmt( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2468"
        return _tx.stmtContext(stdgo._internal.context.Context_background.background(), _stmt);
    }
    @:keep
    @:tdfield
    static public function stmtContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2381"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2382"
                return (stdgo.Go.setRef(({ _stickyErr : _err } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            };
            {
                var _a0 = null;
                final __f__ = _release;
                __deferstack__.unshift({ ran : false, f : () -> __f__((null : stdgo.Error)) });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2386"
            if ((@:checkr _tx ?? throw "null pointer dereference")._db != ((@:checkr _stmt ?? throw "null pointer dereference")._db)) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2387"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2391"
            (@:checkr _stmt ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2392"
            if (((@:checkr _stmt ?? throw "null pointer dereference")._closed || ((@:checkr _stmt ?? throw "null pointer dereference")._cg != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2399"
                (@:checkr _stmt ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2400"
                stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    {
                        var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverprepare._ctxDriverPrepare(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, (@:checkr _stmt ?? throw "null pointer dereference")._query?.__copy__());
                        _si = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                });
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2403"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2404"
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
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2407"
                _stmt._removeClosedStmtLocked();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2410"
                for (__119 => _v in (@:checkr _stmt ?? throw "null pointer dereference")._css) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2411"
                    if (_v._dc == (_dc)) {
                        _si = (@:checkr _v._ds ?? throw "null pointer dereference")._si;
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2413"
                        break;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2417"
                (@:checkr _stmt ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2419"
                if (_si == null) {
                    var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2421"
                    stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                        {
                            var __tmp__ = _stmt._prepareOnConnLocked(_ctx, _dc);
                            _ds = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                    });
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2424"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2425"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2442"
            if (({
                final value = _parentStmt;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2443"
                (@:checkr _tx ?? throw "null pointer dereference")._db._addDep(stdgo.Go.asInterface(_parentStmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_txs)));
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2445"
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
            (@:checkr _tx ?? throw "null pointer dereference")._stmts._v = ((@:checkr _tx ?? throw "null pointer dereference")._stmts._v.__append__(_txs) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2447"
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2448"
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
                return (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function prepare( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2360"
        return _tx.prepareContext(stdgo._internal.context.Context_background.background(), _query?.__copy__());
    }
    @:keep
    @:tdfield
    static public function prepareContext( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __tmp__ = _tx._grabConn(_ctx), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _release:stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2336"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2337"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = (@:checkr _tx ?? throw "null pointer dereference")._db._prepareDC(_ctx, _dc, _release, stdgo.Go.asInterface(_tx), _query?.__copy__()), _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2341"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2342"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2344"
        (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
        (@:checkr _tx ?? throw "null pointer dereference")._stmts._v = ((@:checkr _tx ?? throw "null pointer dereference")._stmts._v.__append__(_stmt) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>>);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2346"
        (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2347"
        return { _0 : _stmt, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function rollback( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2321"
        return _tx._rollback(false);
    }
    @:keep
    @:tdfield
    static public function _rollback( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _discardConn:Bool):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2289"
        if (!(@:checkr _tx ?? throw "null pointer dereference")._done.compareAndSwap(false, true)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2290"
            return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2293"
        if (stdgo._internal.database.sql.Sql__rollbackhook._rollbackHook != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2294"
            stdgo._internal.database.sql.Sql__rollbackhook._rollbackHook();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2301"
        (@:checkr _tx ?? throw "null pointer dereference")._cancel();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2302"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.lock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2303"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.unlock();
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2306"
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _tx ?? throw "null pointer dereference")._dc), function():Void {
            _err = (@:checkr _tx ?? throw "null pointer dereference")._txi.rollback();
        });
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2309"
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2310"
            _tx._closePrepared();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2312"
        if (_discardConn) {
            _err = stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2315"
        _tx._close(_err);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2316"
        return _err;
    }
    @:keep
    @:tdfield
    static public function commit( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo.Error {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2253"
        {
            var __select__ = true;
            var __c__0 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _tx ?? throw "null pointer dereference")._ctx.done();
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2256"
                            if ((@:checkr _tx ?? throw "null pointer dereference")._done.load()) {
                                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2257"
                                return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2259"
                            return (@:checkr _tx ?? throw "null pointer dereference")._ctx.err();
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2261"
        if (!(@:checkr _tx ?? throw "null pointer dereference")._done.compareAndSwap(false, true)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2262"
            return stdgo._internal.database.sql.Sql_errtxdone.errTxDone;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2269"
        (@:checkr _tx ?? throw "null pointer dereference")._cancel();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2270"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.lock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2271"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.unlock();
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2274"
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface((@:checkr _tx ?? throw "null pointer dereference")._dc), function():Void {
            _err = (@:checkr _tx ?? throw "null pointer dereference")._txi.commit();
        });
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2277"
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2278"
            _tx._closePrepared();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2280"
        _tx._close(_err);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2281"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _closePrepared( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2241"
            (@:checkr _tx ?? throw "null pointer dereference")._stmts.lock();
            {
                final __f__ = (@:checkr _tx ?? throw "null pointer dereference")._stmts.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2243"
            for (__61 => _stmt in (@:checkr _tx ?? throw "null pointer dereference")._stmts._v) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2244"
                _stmt.close();
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closemuRUnlockRelease( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _0:stdgo.Error):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2236"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.rUnlock();
    }
    @:keep
    @:tdfield
    static public function _txCtx( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):stdgo._internal.context.Context_context.Context {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2228"
        return (@:checkr _tx ?? throw "null pointer dereference")._ctx;
    }
    @:keep
    @:tdfield
    static public function _grabConn( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo._internal.database.sql.Sql_t_releaseconn.T_releaseConn; var _2 : stdgo.Error; } {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2208"
        {
            var __select__ = true;
            var __c__0 = null;
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
                            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2211"
                            return { _0 : null, _1 : null, _2 : _ctx.err() };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2216"
        (@:checkr _tx ?? throw "null pointer dereference")._closemu.rLock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2217"
        if (_tx._isDone()) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2218"
            (@:checkr _tx ?? throw "null pointer dereference")._closemu.rUnlock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2219"
            return { _0 : null, _1 : null, _2 : stdgo._internal.database.sql.Sql_errtxdone.errTxDone };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2221"
        if (stdgo._internal.database.sql.Sql__hooktxgrabconn._hookTxGrabConn != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2222"
            stdgo._internal.database.sql.Sql__hooktxgrabconn._hookTxGrabConn();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2224"
        return { _0 : (@:checkr _tx ?? throw "null pointer dereference")._dc, _1 : _tx._closemuRUnlockRelease, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _close( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>, _err:stdgo.Error):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2198"
        (@:checkr _tx ?? throw "null pointer dereference")._releaseConn(_err);
        (@:checkr _tx ?? throw "null pointer dereference")._dc = null;
        (@:checkr _tx ?? throw "null pointer dereference")._txi = (null : stdgo._internal.database.sql.driver.Driver_tx.Tx);
    }
    @:keep
    @:tdfield
    static public function _isDone( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Bool {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2187"
        return (@:checkr _tx ?? throw "null pointer dereference")._done.load();
    }
    @:keep
    @:tdfield
    static public function _awaitDone( _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>):Void {
        @:recv var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = _tx;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2174"
        (@:checkr _tx ?? throw "null pointer dereference")._ctx.done().__get__();
        var _discardConnection = (!(@:checkr _tx ?? throw "null pointer dereference")._keepConnOnRollback : Bool);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2183"
        _tx._rollback(_discardConnection);
    }
}
