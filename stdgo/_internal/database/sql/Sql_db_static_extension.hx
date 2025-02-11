package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.DB_asInterface) class DB_static_extension {
    @:keep
    @:tdfield
    static public function conn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_conn.Conn>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._conn(_ctx, _strategy);
                _dc = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _conn = (stdgo.Go.setRef(({ _db : _db, _dc : _dc } : stdgo._internal.database.sql.Sql_conn.Conn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_conn.Conn>);
        return { _0 : _conn, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function driver( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo._internal.database.sql.driver.Driver_driver.Driver {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return (@:checkr _db ?? throw "null pointer dereference")._connector.driver();
    }
    @:keep
    @:tdfield
    static public function _beginDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _release:stdgo.Error -> Void, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_txoptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _tx = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>), _err = (null : stdgo.Error);
        var _txi:stdgo._internal.database.sql.driver.Driver_tx.Tx = (null : stdgo._internal.database.sql.driver.Driver_tx.Tx);
        var _keepConnOnRollback = (false : Bool);
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter)) : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_sessionresetter.SessionResetter), _1 : false };
            }, __27 = __tmp__._0, _hasSessionResetter = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_validator.Validator)) : stdgo._internal.database.sql.driver.Driver_validator.Validator), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_validator.Validator), _1 : false };
            }, __36 = __tmp__._0, _hasConnectionValidator = __tmp__._1;
            _keepConnOnRollback = (_hasSessionResetter && _hasConnectionValidator : Bool);
            {
                var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverbegin._ctxDriverBegin(_ctx, _opts, (@:checkr _dc ?? throw "null pointer dereference")._ci);
                _txi = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        });
        if (_err != null) {
            _release(_err);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _tx = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        _tx = (stdgo.Go.setRef(({ _db : _db, _dc : _dc, _releaseConn : _release, _txi : _txi, _cancel : _cancel, _keepConnOnRollback : _keepConnOnRollback, _ctx : _ctx } : stdgo._internal.database.sql.Sql_tx.Tx)) : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>);
        stdgo.Go.routine(() -> @:check2r _tx._awaitDone());
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } = { _0 : _tx, _1 : (null : stdgo.Error) };
            _tx = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _begin( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_txoptions.TxOptions>, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _tx = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _tx = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _db._beginDC(_ctx, _dc, @:check2r _dc._releaseConn, _opts);
            _tx = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _tx, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function begin( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.beginTx(stdgo._internal.context.Context_background.background(), null);
    }
    @:keep
    @:tdfield
    static public function beginTx( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_txoptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_tx.Tx>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._begin(_ctx, _opts, _strategy);
                _tx = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        return { _0 : _tx, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function queryRow( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.queryRowContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryRowContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = @:check2r _db.queryContext(_ctx, _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return (stdgo.Go.setRef(({ _rows : _rows, _err : _err } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
    }
    @:keep
    @:tdfield
    static public function _queryDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _txctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _releaseConn:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext)) : stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.database.sql.driver.Driver_queryercontext.QueryerContext), _1 : false };
        }, _queryerCtx = __tmp__._0, _ok = __tmp__._1;
        var _queryer:stdgo._internal.database.sql.driver.Driver_queryer.Queryer = (null : stdgo._internal.database.sql.driver.Driver_queryer.Queryer);
        if (!_ok) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_queryer.Queryer)) : stdgo._internal.database.sql.driver.Driver_queryer.Queryer), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_queryer.Queryer), _1 : false };
                };
                _queryer = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
        };
        if (_ok) {
            var _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
            var _rowsi:stdgo._internal.database.sql.driver.Driver_rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_rows.Rows);
            var _err:stdgo.Error = (null : stdgo.Error);
            stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__driverargsconnlocked._driverArgsConnLocked((@:checkr _dc ?? throw "null pointer dereference")._ci, null, _args);
                    _nvdargs = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverquery._ctxDriverQuery(_ctx, _queryerCtx, _queryer, _query?.__copy__(), _nvdargs);
                    _rowsi = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            });
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                if (_err != null) {
                    _releaseConn(_err);
                    return { _0 : null, _1 : _err };
                };
                var _rows = (stdgo.Go.setRef(({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi } : stdgo._internal.database.sql.Sql_rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
                @:check2r _rows._initContextClose(_ctx, _txctx);
                return { _0 : _rows, _1 : (null : stdgo.Error) };
            };
        };
        var _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            {
                var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverprepare._ctxDriverPrepare(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _query?.__copy__());
                _si = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        });
        if (_err != null) {
            _releaseConn(_err);
            return { _0 : null, _1 : _err };
        };
        var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
        var __tmp__ = stdgo._internal.database.sql.Sql__rowsifromstatement._rowsiFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>)), _rowsi:stdgo._internal.database.sql.driver.Driver_rows.Rows = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _ds.close();
            _releaseConn(_err);
            return { _0 : null, _1 : _err };
        };
        var _rows = (stdgo.Go.setRef(({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi, _closeStmt : _ds } : stdgo._internal.database.sql.Sql_rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
        @:check2r _rows._initContextClose(_ctx, _txctx);
        return { _0 : _rows, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _query( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = @:check2r _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return @:check2r _db._queryDC(_ctx, (null : stdgo._internal.context.Context_context.Context), _dc, @:check2r _dc._releaseConn, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function query( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.queryContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._query(_ctx, _query?.__copy__(), _args, _strategy);
                _rows = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        return { _0 : _rows, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _execDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _release:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _res = (null : stdgo._internal.database.sql.Sql_result.Result), _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _release(_err);
                    };
                    a();
                }) });
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext)) : stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_execercontext.ExecerContext), _1 : false };
            }, _execerCtx = __tmp__._0, _ok = __tmp__._1;
            var _execer:stdgo._internal.database.sql.driver.Driver_execer.Execer = (null : stdgo._internal.database.sql.driver.Driver_execer.Execer);
            if (!_ok) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_execer.Execer)) : stdgo._internal.database.sql.driver.Driver_execer.Execer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.database.sql.driver.Driver_execer.Execer), _1 : false };
                    };
                    _execer = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
            };
            if (_ok) {
                var _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>);
                var _resi:stdgo._internal.database.sql.driver.Driver_result.Result = (null : stdgo._internal.database.sql.driver.Driver_result.Result);
                stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    {
                        var __tmp__ = stdgo._internal.database.sql.Sql__driverargsconnlocked._driverArgsConnLocked((@:checkr _dc ?? throw "null pointer dereference")._ci, null, _args);
                        _nvdargs = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return;
                    };
                    {
                        var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverexec._ctxDriverExec(_ctx, _execerCtx, _execer, _query?.__copy__(), _nvdargs);
                        _resi = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                });
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errskip.errSkip))) {
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : _err };
                                _res = __tmp__._0;
                                _err = __tmp__._1;
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
                        final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.database.sql.Sql_t_driverresult.T_driverResult(stdgo.Go.asInterface(_dc), _resi) : stdgo._internal.database.sql.Sql_t_driverresult.T_driverResult)), _1 : (null : stdgo.Error) };
                            _res = __tmp__._0;
                            _err = __tmp__._1;
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
            };
            var _si:stdgo._internal.database.sql.driver.Driver_stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_stmt.Stmt);
            stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__ctxdriverprepare._ctxDriverPrepare(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _query?.__copy__());
                    _si = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            });
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : _err };
                        _res = __tmp__._0;
                        _err = __tmp__._1;
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
            var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
            {
                final __f__ = @:check2r _ds.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = {
                    final __tmp__ = stdgo._internal.database.sql.Sql__resultfromstatement._resultFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _res = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _res, _1 : _err };
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
                return { _0 : _res, _1 : _err };
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
                return { _0 : _res, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _exec( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = @:check2r _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : _err };
        };
        return @:check2r _db._execDC(_ctx, _dc, @:check2r _dc._releaseConn, _query?.__copy__(), _args);
    }
    @:keep
    @:tdfield
    static public function exec( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.execContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function execContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _res:stdgo._internal.database.sql.Sql_result.Result = (null : stdgo._internal.database.sql.Sql_result.Result);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._exec(_ctx, _query?.__copy__(), _args, _strategy);
                _res = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        return { _0 : _res, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _prepareDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _release:stdgo.Error -> Void, _cg:stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>);
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        _release(_err);
                    };
                    a();
                }) });
            };
            stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                {
                    var __tmp__ = @:check2r _dc._prepareLocked(_ctx, _cg, _query?.__copy__());
                    _ds = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            });
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _stmt = (stdgo.Go.setRef(({ _db : _db, _query : _query?.__copy__(), _cg : _cg, _cgds : _ds } : stdgo._internal.database.sql.Sql_stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
            if (_cg == null) {
                (@:checkr _stmt ?? throw "null pointer dereference")._css = (new stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>(1, 1, ...[(new stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt(_dc, _ds) : stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt)])) : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
                (@:checkr _stmt ?? throw "null pointer dereference")._lastNumClosed = @:check2 (@:checkr _db ?? throw "null pointer dereference")._numClosed.load();
                @:check2r _db._addDep(stdgo.Go.asInterface(_stmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_stmt)));
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : _stmt, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _prepare( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = @:check2r _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return @:check2r _db._prepareDC(_ctx, _dc, @:check2r _dc._releaseConn, (null : stdgo._internal.database.sql.Sql_t_stmtconngrabber.T_stmtConnGrabber), _query?.__copy__());
    }
    @:keep
    @:tdfield
    static public function prepare( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.prepareContext(stdgo._internal.context.Context_background.background(), _query?.__copy__());
    }
    @:keep
    @:tdfield
    static public function prepareContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._prepare(_ctx, _query?.__copy__(), _strategy);
                _stmt = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        return { _0 : _stmt, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _retry( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _fn:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy -> stdgo.Error):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        {
            var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            while ((_i < (2i64 : stdgo.GoInt64) : Bool)) {
                var _err = (_fn((1 : stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy)) : stdgo.Error);
if (((_err == null) || !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn) : Bool)) {
                    return _err;
                };
                _i++;
            };
        };
        return _fn((0 : stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy));
    }
    @:keep
    @:tdfield
    static public function _putConnDBLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _err:stdgo.Error):Bool {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if ((@:checkr _db ?? throw "null pointer dereference")._closed) {
            return false;
        };
        if ((((@:checkr _db ?? throw "null pointer dereference")._maxOpen > (0 : stdgo.GoInt) : Bool) && ((@:checkr _db ?? throw "null pointer dereference")._numOpen > (@:checkr _db ?? throw "null pointer dereference")._maxOpen : Bool) : Bool)) {
            return false;
        };
        {
            var _c = ((@:checkr _db ?? throw "null pointer dereference")._connRequests.length : stdgo.GoInt);
            if ((_c > (0 : stdgo.GoInt) : Bool)) {
                var _req:stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest> = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>);
                var _reqKey:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                for (__key__ => __value__ in (@:checkr _db ?? throw "null pointer dereference")._connRequests) {
                    _req = __value__;
                    _reqKey = __key__;
                    break;
                };
                if ((@:checkr _db ?? throw "null pointer dereference")._connRequests != null) (@:checkr _db ?? throw "null pointer dereference")._connRequests.__remove__(_reqKey);
                if (_err == null) {
                    (@:checkr _dc ?? throw "null pointer dereference")._inUse = true;
                };
                _req.__send__(({ _conn : _dc, _err : _err } : stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest));
                return true;
            } else if (((_err == null) && !(@:checkr _db ?? throw "null pointer dereference")._closed : Bool)) {
                if ((@:check2r _db._maxIdleConnsLocked() > ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) : Bool)) {
                    (@:checkr _db ?? throw "null pointer dereference")._freeConn = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__append__(_dc));
                    @:check2r _db._startCleanerLocked();
                    return true;
                };
                (@:checkr _db ?? throw "null pointer dereference")._maxIdleClosed++;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _putConn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _err:stdgo.Error, _resetSession:Bool):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            if (!@:check2r _dc._validateConnection(_resetSession)) {
                _err = stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
            };
        };
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        if (!(@:checkr _dc ?? throw "null pointer dereference")._inUse) {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            if (false) {
                stdgo._internal.fmt.Fmt_printf.printf(("putConn(%v) DUPLICATE was: %s\n\nPREVIOUS was: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__stack._stack()), stdgo.Go.toInterface(((@:checkr _db ?? throw "null pointer dereference")._lastPut[_dc] ?? ("" : stdgo.GoString))));
            };
            throw stdgo.Go.toInterface(("sql: connection returned that was never out" : stdgo.GoString));
        };
        if ((!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn) && @:check2r _dc._expired((@:checkr _db ?? throw "null pointer dereference")._maxLifetime) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._maxLifetimeClosed++;
            _err = stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn;
        };
        if (false) {
            (@:checkr _db ?? throw "null pointer dereference")._lastPut[_dc] = stdgo._internal.database.sql.Sql__stack._stack()?.__copy__();
        };
        (@:checkr _dc ?? throw "null pointer dereference")._inUse = false;
        (@:checkr _dc ?? throw "null pointer dereference")._returnedAt = stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__();
        for (__75 => _fn in (@:checkr _dc ?? throw "null pointer dereference")._onPut) {
            _fn();
        };
        (@:checkr _dc ?? throw "null pointer dereference")._onPut = (null : stdgo.Slice<() -> Void>);
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
            @:check2r _db._maybeOpenNewConnections();
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            @:check2r _dc.close();
            return;
        };
        if (stdgo._internal.database.sql.Sql__putconnhook._putConnHook != null) {
            stdgo._internal.database.sql.Sql__putconnhook._putConnHook(_db, _dc);
        };
        var _added = (@:check2r _db._putConnDBLocked(_dc, (null : stdgo.Error)) : Bool);
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        if (!_added) {
            @:check2r _dc.close();
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _noteUnusedDriverStatement( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _c:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _c ?? throw "null pointer dereference")._inUse) {
                (@:checkr _c ?? throw "null pointer dereference")._onPut = ((@:checkr _c ?? throw "null pointer dereference")._onPut.__append__(function():Void {
                    @:check2r _ds.close();
                }));
            } else {
                @:check2r _c.lock();
                var _fc = ((@:checkr _c ?? throw "null pointer dereference")._finalClosed : Bool);
                @:check2r _c.unlock();
                if (!_fc) {
                    @:check2r _ds.close();
                };
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
    static public function _conn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr _db ?? throw "null pointer dereference")._closed) {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            return { _0 : null, _1 : stdgo._internal.database.sql.Sql__errdbclosed._errDBClosed };
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
                            return { _0 : null, _1 : _ctx.err() };
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
        var _lifetime = ((@:checkr _db ?? throw "null pointer dereference")._maxLifetime : stdgo._internal.time.Time_duration.Duration);
        var _last = (((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        if (((_strategy == (1 : stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy)) && (_last >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _conn = (@:checkr _db ?? throw "null pointer dereference")._freeConn[(_last : stdgo.GoInt)];
            (@:checkr _db ?? throw "null pointer dereference")._freeConn = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(0, _last) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
            (@:checkr _conn ?? throw "null pointer dereference")._inUse = true;
            if (@:check2r _conn._expired(_lifetime)) {
                (@:checkr _db ?? throw "null pointer dereference")._maxLifetimeClosed++;
                @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
                @:check2r _conn.close();
                return { _0 : null, _1 : stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn };
            };
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            {
                var _err = (@:check2r _conn._resetSession(_ctx) : stdgo.Error);
                if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errbadconn.errBadConn)) {
                    @:check2r _conn.close();
                    return { _0 : null, _1 : _err };
                };
            };
            return { _0 : _conn, _1 : (null : stdgo.Error) };
        };
        if ((((@:checkr _db ?? throw "null pointer dereference")._maxOpen > (0 : stdgo.GoInt) : Bool) && ((@:checkr _db ?? throw "null pointer dereference")._numOpen >= (@:checkr _db ?? throw "null pointer dereference")._maxOpen : Bool) : Bool)) {
            var _req = (new stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest)) : stdgo.Chan<stdgo._internal.database.sql.Sql_t_connrequest.T_connRequest>);
            var _reqKey = (@:check2r _db._nextRequestKeyLocked() : stdgo.GoUInt64);
            (@:checkr _db ?? throw "null pointer dereference")._connRequests[_reqKey] = _req;
            (@:checkr _db ?? throw "null pointer dereference")._waitCount++;
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            var _waitStart = (stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__() : stdgo._internal.time.Time_time.Time);
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
                                if ((@:checkr _db ?? throw "null pointer dereference")._connRequests != null) (@:checkr _db ?? throw "null pointer dereference")._connRequests.__remove__(_reqKey);
                                @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
                                @:check2 (@:checkr _db ?? throw "null pointer dereference")._waitDuration.add((stdgo._internal.time.Time_since.since(_waitStart?.__copy__()) : stdgo.GoInt64));
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        {
                                            __select__ = false;
                                            {};
                                        };
                                        #if !js Sys.sleep(0.01) #else null #end;
                                        stdgo._internal.internal.Async.tick();
                                    };
                                };
                                return { _0 : null, _1 : _ctx.err() };
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
        };
        (@:checkr _db ?? throw "null pointer dereference")._numOpen++;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        var __tmp__ = (@:checkr _db ?? throw "null pointer dereference")._connector.connect(_ctx), _ci:stdgo._internal.database.sql.driver.Driver_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            (@:checkr _db ?? throw "null pointer dereference")._numOpen--;
            @:check2r _db._maybeOpenNewConnections();
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            return { _0 : null, _1 : _err };
        };
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        var _dc = (stdgo.Go.setRef(({ _db : _db, _createdAt : stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__(), _returnedAt : stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__(), _ci : _ci, _inUse : true } : stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
        @:check2r _db._addDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        return { _0 : _dc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _nextRequestKeyLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo.GoUInt64 {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _next = ((@:checkr _db ?? throw "null pointer dereference")._nextRequest : stdgo.GoUInt64);
        (@:checkr _db ?? throw "null pointer dereference")._nextRequest++;
        return _next;
    }
    @:keep
    @:tdfield
    static public function _openNewConnection( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = (@:checkr _db ?? throw "null pointer dereference")._connector.connect(_ctx), _ci:stdgo._internal.database.sql.driver.Driver_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _db ?? throw "null pointer dereference")._closed) {
                if (_err == null) {
                    _ci.close();
                };
                (@:checkr _db ?? throw "null pointer dereference")._numOpen--;
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            if (_err != null) {
                (@:checkr _db ?? throw "null pointer dereference")._numOpen--;
                @:check2r _db._putConnDBLocked(null, _err);
                @:check2r _db._maybeOpenNewConnections();
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _dc = (stdgo.Go.setRef(({ _db : _db, _createdAt : stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__(), _returnedAt : stdgo._internal.database.sql.Sql__nowfunc._nowFunc()?.__copy__(), _ci : _ci } : stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
            if (@:check2r _db._putConnDBLocked(_dc, _err)) {
                @:check2r _db._addDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
            } else {
                (@:checkr _db ?? throw "null pointer dereference")._numOpen--;
                _ci.close();
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
    static public function _connectionOpener( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                return;
                            };
                        };
                    } else if ((@:checkr _db ?? throw "null pointer dereference")._openerCh != null && (@:checkr _db ?? throw "null pointer dereference")._openerCh.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _db ?? throw "null pointer dereference")._openerCh.__get__();
                            {
                                @:check2r _db._openNewConnection(_ctx);
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _maybeOpenNewConnections( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _numRequests = ((@:checkr _db ?? throw "null pointer dereference")._connRequests.length : stdgo.GoInt);
        if (((@:checkr _db ?? throw "null pointer dereference")._maxOpen > (0 : stdgo.GoInt) : Bool)) {
            var _numCanOpen = ((@:checkr _db ?? throw "null pointer dereference")._maxOpen - (@:checkr _db ?? throw "null pointer dereference")._numOpen : stdgo.GoInt);
            if ((_numRequests > _numCanOpen : Bool)) {
                _numRequests = _numCanOpen;
            };
        };
        while ((_numRequests > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._numOpen++;
            _numRequests--;
            if ((@:checkr _db ?? throw "null pointer dereference")._closed) {
                return;
            };
            (@:checkr _db ?? throw "null pointer dereference")._openerCh.__send__(({  } : stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0));
        };
    }
    @:keep
    @:tdfield
    static public function stats( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo._internal.database.sql.Sql_dbstats.DBStats {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _wait = (@:check2 (@:checkr _db ?? throw "null pointer dereference")._waitDuration.load() : stdgo.GoInt64);
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _stats = ({ maxOpenConnections : (@:checkr _db ?? throw "null pointer dereference")._maxOpen, idle : ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length), openConnections : (@:checkr _db ?? throw "null pointer dereference")._numOpen, inUse : ((@:checkr _db ?? throw "null pointer dereference")._numOpen - ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) : stdgo.GoInt), waitCount : (@:checkr _db ?? throw "null pointer dereference")._waitCount, waitDuration : (_wait : stdgo._internal.time.Time_duration.Duration), maxIdleClosed : (@:checkr _db ?? throw "null pointer dereference")._maxIdleClosed, maxIdleTimeClosed : (@:checkr _db ?? throw "null pointer dereference")._maxIdleTimeClosed, maxLifetimeClosed : (@:checkr _db ?? throw "null pointer dereference")._maxLifetimeClosed } : stdgo._internal.database.sql.Sql_dbstats.DBStats);
            {
                final __ret__:stdgo._internal.database.sql.Sql_dbstats.DBStats = _stats?.__copy__();
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
                return ({} : stdgo._internal.database.sql.Sql_dbstats.DBStats);
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
                return ({} : stdgo._internal.database.sql.Sql_dbstats.DBStats);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _connectionCleanerRunLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _d:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _idleClosing:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
        if (((@:checkr _db ?? throw "null pointer dereference")._maxIdleTime > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            var _idleSince = (stdgo._internal.database.sql.Sql__nowfunc._nowFunc().add(-(@:checkr _db ?? throw "null pointer dereference")._maxIdleTime)?.__copy__() : stdgo._internal.time.Time_time.Time);
            var _last = (((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            {
                var _i = (_last : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _c = (@:checkr _db ?? throw "null pointer dereference")._freeConn[(_i : stdgo.GoInt)];
if ((@:checkr _c ?? throw "null pointer dereference")._returnedAt.before(_idleSince.__copy__())) {
                        _i++;
                        _closing = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(0, _i, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
                        (@:checkr _db ?? throw "null pointer dereference")._freeConn = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
                        _idleClosing = (_closing.length : stdgo.GoInt64);
                        (@:checkr _db ?? throw "null pointer dereference")._maxIdleTimeClosed = ((@:checkr _db ?? throw "null pointer dereference")._maxIdleTimeClosed + (_idleClosing) : stdgo.GoInt64);
                        break;
                    };
                    _i--;
                };
            };
            if ((((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) > (0 : stdgo.GoInt) : Bool)) {
                var _c = (@:checkr _db ?? throw "null pointer dereference")._freeConn[(0 : stdgo.GoInt)];
                {
                    var _d2 = ((@:checkr _c ?? throw "null pointer dereference")._returnedAt.sub(_idleSince?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                    if ((_d2 < _d : Bool)) {
                        _d = _d2;
                    };
                };
            };
        };
        if (((@:checkr _db ?? throw "null pointer dereference")._maxLifetime > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            var _expiredSince = (stdgo._internal.database.sql.Sql__nowfunc._nowFunc().add(-(@:checkr _db ?? throw "null pointer dereference")._maxLifetime)?.__copy__() : stdgo._internal.time.Time_time.Time);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) : Bool)) {
                    var _c = (@:checkr _db ?? throw "null pointer dereference")._freeConn[(_i : stdgo.GoInt)];
if ((@:checkr _c ?? throw "null pointer dereference")._createdAt.before(_expiredSince.__copy__())) {
                        _closing = (_closing.__append__(_c));
                        var _last = (((@:checkr _db ?? throw "null pointer dereference")._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>).__copyTo__(((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>));
                        (@:checkr _db ?? throw "null pointer dereference")._freeConn[(_last : stdgo.GoInt)] = null;
                        (@:checkr _db ?? throw "null pointer dereference")._freeConn = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(0, _last) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
                        _i--;
                    } else {
                        var _d2 = ((@:checkr _c ?? throw "null pointer dereference")._createdAt.sub(_expiredSince.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                        if ((_d2 < _d : Bool)) {
                            _d = _d2;
                        };
                    };
                    _i++;
                };
            };
            (@:checkr _db ?? throw "null pointer dereference")._maxLifetimeClosed = ((@:checkr _db ?? throw "null pointer dereference")._maxLifetimeClosed + (((_closing.length : stdgo.GoInt64) - _idleClosing : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return { _0 : _d, _1 : _closing };
    }
    @:keep
    @:tdfield
    static public function _connectionCleaner( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        {};
        if ((_d < (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            _d = (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
        };
        var _t = stdgo._internal.time.Time_newtimer.newTimer(_d);
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _t ?? throw "null pointer dereference").c != null && (@:checkr _t ?? throw "null pointer dereference").c.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _t ?? throw "null pointer dereference").c.__get__();
                            {};
                        };
                    } else if ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null && (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__isGet__()) {
                        __select__ = false;
                        {
                            (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            _d = @:check2r _db._shortestIdleTimeLocked();
            if ((((@:checkr _db ?? throw "null pointer dereference")._closed || (@:checkr _db ?? throw "null pointer dereference")._numOpen == ((0 : stdgo.GoInt)) : Bool) || (_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                (@:checkr _db ?? throw "null pointer dereference")._cleanerCh = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0>);
                @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
                return;
            };
            var __tmp__ = @:check2r _db._connectionCleanerRunLocked(_d), _d:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>> = __tmp__._1;
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            for (__75 => _c in _closing) {
                @:check2r _c.close();
            };
            if ((_d < (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                _d = (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
            };
            if (!@:check2r _t.stop()) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _t ?? throw "null pointer dereference").c != null && (@:checkr _t ?? throw "null pointer dereference").c.__isGet__()) {
                            __select__ = false;
                            {
                                (@:checkr _t ?? throw "null pointer dereference").c.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            @:check2r _t.reset(_d);
        };
    }
    @:keep
    @:tdfield
    static public function _startCleanerLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if (((((((@:checkr _db ?? throw "null pointer dereference")._maxLifetime > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) || ((@:checkr _db ?? throw "null pointer dereference")._maxIdleTime > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) && ((@:checkr _db ?? throw "null pointer dereference")._numOpen > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh == null) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._cleanerCh = (new stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0>);
            stdgo.Go.routine(() -> @:check2r _db._connectionCleaner(@:check2r _db._shortestIdleTimeLocked()));
        };
    }
    @:keep
    @:tdfield
    static public function setConnMaxIdleTime( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_d < (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                _d = (0i64 : stdgo._internal.time.Time_duration.Duration);
            };
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_d < (@:checkr _db ?? throw "null pointer dereference")._maxIdleTime : Bool) : Bool) && ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null) : Bool)) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null && (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__isSend__()) {
                            __select__ = false;
                            {
                                (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__send__(({  } : stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0));
                                {};
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
            (@:checkr _db ?? throw "null pointer dereference")._maxIdleTime = _d;
            @:check2r _db._startCleanerLocked();
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
    static public function setConnMaxLifetime( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if ((_d < (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            _d = (0i64 : stdgo._internal.time.Time_duration.Duration);
        };
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        if ((((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && (_d < (@:checkr _db ?? throw "null pointer dereference")._maxLifetime : Bool) : Bool) && ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null) : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null && (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__isSend__()) {
                        __select__ = false;
                        {
                            (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__send__(({  } : stdgo._internal.database.sql.Sql_t__struct_0.T__struct_0));
                            {};
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
        };
        (@:checkr _db ?? throw "null pointer dereference")._maxLifetime = _d;
        @:check2r _db._startCleanerLocked();
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function setMaxOpenConns( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _n:stdgo.GoInt):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _db ?? throw "null pointer dereference")._maxOpen = _n;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._maxOpen = (0 : stdgo.GoInt);
        };
        var _syncMaxIdle = (((@:checkr _db ?? throw "null pointer dereference")._maxOpen > (0 : stdgo.GoInt) : Bool) && (@:check2r _db._maxIdleConnsLocked() > (@:checkr _db ?? throw "null pointer dereference")._maxOpen : Bool) : Bool);
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        if (_syncMaxIdle) {
            @:check2r _db.setMaxIdleConns(_n);
        };
    }
    @:keep
    @:tdfield
    static public function setMaxIdleConns( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _n:stdgo.GoInt):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._maxIdleCount = _n;
        } else {
            (@:checkr _db ?? throw "null pointer dereference")._maxIdleCount = (-1 : stdgo.GoInt);
        };
        if ((((@:checkr _db ?? throw "null pointer dereference")._maxOpen > (0 : stdgo.GoInt) : Bool) && (@:check2r _db._maxIdleConnsLocked() > (@:checkr _db ?? throw "null pointer dereference")._maxOpen : Bool) : Bool)) {
            (@:checkr _db ?? throw "null pointer dereference")._maxIdleCount = (@:checkr _db ?? throw "null pointer dereference")._maxOpen;
        };
        var _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
        var _idleCount = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length : stdgo.GoInt);
        var _maxIdle = (@:check2r _db._maxIdleConnsLocked() : stdgo.GoInt);
        if ((_idleCount > _maxIdle : Bool)) {
            _closing = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(_maxIdle) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
            (@:checkr _db ?? throw "null pointer dereference")._freeConn = ((@:checkr _db ?? throw "null pointer dereference")._freeConn.__slice__(0, _maxIdle) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
        };
        (@:checkr _db ?? throw "null pointer dereference")._maxIdleClosed = ((@:checkr _db ?? throw "null pointer dereference")._maxIdleClosed + ((_closing.length : stdgo.GoInt64)) : stdgo.GoInt64);
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        for (__91 => _c in _closing) {
            @:check2r _c.close();
        };
    }
    @:keep
    @:tdfield
    static public function _shortestIdleTimeLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if (((@:checkr _db ?? throw "null pointer dereference")._maxIdleTime <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            return (@:checkr _db ?? throw "null pointer dereference")._maxLifetime;
        };
        if (((@:checkr _db ?? throw "null pointer dereference")._maxLifetime <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            return (@:checkr _db ?? throw "null pointer dereference")._maxIdleTime;
        };
        var _min = ((@:checkr _db ?? throw "null pointer dereference")._maxIdleTime : stdgo._internal.time.Time_duration.Duration);
        if ((_min > (@:checkr _db ?? throw "null pointer dereference")._maxLifetime : Bool)) {
            _min = (@:checkr _db ?? throw "null pointer dereference")._maxLifetime;
        };
        return _min;
    }
    @:keep
    @:tdfield
    static public function _maxIdleConnsLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo.GoInt {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _n = ((@:checkr _db ?? throw "null pointer dereference")._maxIdleCount : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return (2 : stdgo.GoInt);
        } else if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        } else {
            return _n;
        };
    }
    @:keep
    @:tdfield
    static public function close( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr _db ?? throw "null pointer dereference")._closed) {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
            return (null : stdgo.Error);
        };
        if ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null) {
            if ((@:checkr _db ?? throw "null pointer dereference")._cleanerCh != null) (@:checkr _db ?? throw "null pointer dereference")._cleanerCh.__close__();
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _fns = (new stdgo.Slice<() -> stdgo.Error>((0 : stdgo.GoInt).toBasic(), ((@:checkr _db ?? throw "null pointer dereference")._freeConn.length)) : stdgo.Slice<() -> stdgo.Error>);
        for (__59 => _dc in (@:checkr _db ?? throw "null pointer dereference")._freeConn) {
            _fns = (_fns.__append__(@:check2r _dc._closeDBLocked()));
        };
        (@:checkr _db ?? throw "null pointer dereference")._freeConn = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>>);
        (@:checkr _db ?? throw "null pointer dereference")._closed = true;
        for (__84 => _req in (@:checkr _db ?? throw "null pointer dereference")._connRequests) {
            if (_req != null) _req.__close__();
        };
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        for (__93 => _fn in _fns) {
            var _err1 = (_fn() : stdgo.Error);
            if (_err1 != null) {
                _err = _err1;
            };
        };
        (@:checkr _db ?? throw "null pointer dereference")._stop();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _db ?? throw "null pointer dereference")._connector) : stdgo._internal.io.Io_closer.Closer)) : stdgo._internal.io.Io_closer.Closer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_closer.Closer), _1 : false };
            }, _c = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _err1 = (_c.close() : stdgo.Error);
                if (_err1 != null) {
                    _err = _err1;
                };
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function ping( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        return @:check2r _db.pingContext(stdgo._internal.context.Context_background.background());
    }
    @:keep
    @:tdfield
    static public function pingContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = @:check2r _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = @:check2r _db._conn(_ctx, _strategy);
                _dc = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            return _err;
        });
        if (_err != null) {
            return _err;
        };
        return @:check2r _db._pingDC(_ctx, _dc, @:check2r _dc._releaseConn);
    }
    @:keep
    @:tdfield
    static public function _pingDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>, _release:stdgo.Error -> Void):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _dc ?? throw "null pointer dereference")._ci) : stdgo._internal.database.sql.driver.Driver_pinger.Pinger)) : stdgo._internal.database.sql.driver.Driver_pinger.Pinger), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_pinger.Pinger), _1 : false };
            }, _pinger = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    _err = _pinger.ping(_ctx);
                });
            };
        };
        _release(_err);
        return _err;
    }
    @:keep
    @:tdfield
    static public function _removeDepLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _x:stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, _dep:stdgo.AnyInterface):() -> stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __tmp__ = ((@:checkr _db ?? throw "null pointer dereference")._dep != null && (@:checkr _db ?? throw "null pointer dereference")._dep.__exists__(_x) ? { _0 : (@:checkr _db ?? throw "null pointer dereference")._dep[_x], _1 : true } : { _0 : (null : stdgo._internal.database.sql.Sql_t_depset.T_depSet), _1 : false }), _xdep:stdgo._internal.database.sql.Sql_t_depset.T_depSet = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unpaired removeDep: no deps for %T" : stdgo.GoString), stdgo.Go.toInterface(_x)));
        };
        var _l0 = (_xdep.length : stdgo.GoInt);
        if (_xdep != null) _xdep.__remove__(_dep);
        {
            final __value__ = (_xdep.length);
            if (__value__ == (_l0)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unpaired removeDep: no %T dep on %T" : stdgo.GoString), _dep, stdgo.Go.toInterface(_x)));
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                if ((@:checkr _db ?? throw "null pointer dereference")._dep != null) (@:checkr _db ?? throw "null pointer dereference")._dep.__remove__(_x);
                return _x._finalClose;
            } else {
                return function():stdgo.Error {
                    return (null : stdgo.Error);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _removeDep( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _x:stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, _dep:stdgo.AnyInterface):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
        var _fn = (@:check2r _db._removeDepLocked(_x, _dep) : () -> stdgo.Error);
        @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock();
        return _fn();
    }
    @:keep
    @:tdfield
    static public function _addDepLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _x:stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, _dep:stdgo.AnyInterface):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        if ((@:checkr _db ?? throw "null pointer dereference")._dep == null) {
            (@:checkr _db ?? throw "null pointer dereference")._dep = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo._internal.database.sql.Sql_t_depset.T_depSet);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet>) : stdgo.GoMap<stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, stdgo._internal.database.sql.Sql_t_depset.T_depSet>);
        };
        var _xdep = ((@:checkr _db ?? throw "null pointer dereference")._dep[_x] ?? (null : stdgo._internal.database.sql.Sql_t_depset.T_depSet) : stdgo._internal.database.sql.Sql_t_depset.T_depSet);
        if (_xdep == null) {
            _xdep = (({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, Bool>) : stdgo._internal.database.sql.Sql_t_depset.T_depSet);
            (@:checkr _db ?? throw "null pointer dereference")._dep[_x] = _xdep;
        };
        _xdep[_dep] = true;
    }
    @:keep
    @:tdfield
    static public function _addDep( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB>, _x:stdgo._internal.database.sql.Sql_t_finalcloser.T_finalCloser, _dep:stdgo.AnyInterface):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_db.DB> = _db;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _db ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _db._addDepLocked(_x, _dep);
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
}
