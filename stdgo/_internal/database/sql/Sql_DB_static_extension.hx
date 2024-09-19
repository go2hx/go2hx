package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.DB_asInterface) class DB_static_extension {
    @:keep
    static public function conn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._conn(_ctx, _strategy);
                _dc = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _conn = (stdgo.Go.setRef(({ _db : _db, _dc : _dc } : stdgo._internal.database.sql.Sql_Conn.Conn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        return { _0 : _conn, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function driver( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo._internal.database.sql.driver.Driver_Driver.Driver {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db._connector.driver();
    }
    @:keep
    static public function _beginDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _tx = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>), _err = (null : stdgo.Error);
        var _txi:stdgo._internal.database.sql.driver.Driver_Tx.Tx = (null : stdgo._internal.database.sql.driver.Driver_Tx.Tx);
        var _keepConnOnRollback = (false : Bool);
        stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter)) : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_SessionResetter.SessionResetter), _1 : false };
            }, __30 = __tmp__._0, _hasSessionResetter = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_Validator.Validator)) : stdgo._internal.database.sql.driver.Driver_Validator.Validator), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_Validator.Validator), _1 : false };
            }, __39 = __tmp__._0, _hasConnectionValidator = __tmp__._1;
            _keepConnOnRollback = (_hasSessionResetter && _hasConnectionValidator : Bool);
            {
                var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverBegin._ctxDriverBegin(_ctx, _opts, _dc._ci);
                _txi = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _release(_err);
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
        _tx = (stdgo.Go.setRef(({ _db : _db, _dc : _dc, _releaseConn : _release, _txi : _txi, _cancel : _cancel, _keepConnOnRollback : _keepConnOnRollback, _ctx : _ctx } : stdgo._internal.database.sql.Sql_Tx.Tx)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        stdgo.Go.routine(() -> _tx._awaitDone());
        return { _0 : _tx, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _begin( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _tx = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>), _err = (null : stdgo.Error);
        var __tmp__ = _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _db._beginDC(_ctx, _dc, _dc._releaseConn, _opts);
    }
    @:keep
    static public function begin( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.beginTx(stdgo._internal.context.Context_background.background(), null);
    }
    @:keep
    static public function beginTx( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _opts:stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _tx:stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._begin(_ctx, _opts, _strategy);
                _tx = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        return { _0 : _tx, _1 : _err };
    }
    @:keep
    static public function queryRow( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.queryRowContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function queryRowContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = _db.queryContext(_ctx, _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return (stdgo.Go.setRef(({ _rows : _rows, _err : _err } : stdgo._internal.database.sql.Sql_Row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
    }
    @:keep
    static public function _queryDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _releaseConn:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext)) : stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.database.sql.driver.Driver_QueryerContext.QueryerContext), _1 : false };
        }, _queryerCtx = __tmp__._0, _ok = __tmp__._1;
        var _queryer:stdgo._internal.database.sql.driver.Driver_Queryer.Queryer = (null : stdgo._internal.database.sql.driver.Driver_Queryer.Queryer);
        if (!_ok) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_Queryer.Queryer)) : stdgo._internal.database.sql.driver.Driver_Queryer.Queryer), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.database.sql.driver.Driver_Queryer.Queryer), _1 : false };
                };
                _queryer = __tmp__._0;
                _ok = __tmp__._1;
            };
        };
        if (_ok) {
            var _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
            var _rowsi:stdgo._internal.database.sql.driver.Driver_Rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows);
            var _err:stdgo.Error = (null : stdgo.Error);
            stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__driverArgsConnLocked._driverArgsConnLocked(_dc._ci, null, _args);
                    _nvdargs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverQuery._ctxDriverQuery(_ctx, _queryerCtx, _queryer, _query?.__copy__(), _nvdargs);
                    _rowsi = __tmp__._0;
                    _err = __tmp__._1;
                };
            });
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errSkip.errSkip))) {
                if (_err != null) {
                    _releaseConn(_err);
                    return { _0 : null, _1 : _err };
                };
                var _rows = (stdgo.Go.setRef(({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi } : stdgo._internal.database.sql.Sql_Rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
                _rows._initContextClose(_ctx, _txctx);
                return { _0 : _rows, _1 : (null : stdgo.Error) };
            };
        };
        var _si:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
        var _err:stdgo.Error = (null : stdgo.Error);
        stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            {
                var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverPrepare._ctxDriverPrepare(_ctx, _dc._ci, _query?.__copy__());
                _si = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _releaseConn(_err);
            return { _0 : null, _1 : _err };
        };
        var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        var __tmp__ = stdgo._internal.database.sql.Sql__rowsiFromStatement._rowsiFromStatement(_ctx, _dc._ci, _ds, ...(_args : Array<stdgo.AnyInterface>)), _rowsi:stdgo._internal.database.sql.driver.Driver_Rows.Rows = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _ds.close();
            _releaseConn(_err);
            return { _0 : null, _1 : _err };
        };
        var _rows = (stdgo.Go.setRef(({ _dc : _dc, _releaseConn : _releaseConn, _rowsi : _rowsi, _closeStmt : _ds } : stdgo._internal.database.sql.Sql_Rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        _rows._initContextClose(_ctx, _txctx);
        return { _0 : _rows, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _query( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _db._queryDC(_ctx, (null : stdgo._internal.context.Context_Context.Context), _dc, _dc._releaseConn, _query?.__copy__(), _args);
    }
    @:keep
    static public function query( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.queryContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function queryContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._query(_ctx, _query?.__copy__(), _args, _strategy);
                _rows = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        return { _0 : _rows, _1 : _err };
    }
    @:keep
    static public function _execDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        var _res = (null : stdgo._internal.database.sql.Sql_Result.Result), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _release(_err);
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
                };
                a();
            });
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext)) : stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_ExecerContext.ExecerContext), _1 : false };
            }, _execerCtx = __tmp__._0, _ok = __tmp__._1;
            var _execer:stdgo._internal.database.sql.driver.Driver_Execer.Execer = (null : stdgo._internal.database.sql.driver.Driver_Execer.Execer);
            if (!_ok) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_Execer.Execer)) : stdgo._internal.database.sql.driver.Driver_Execer.Execer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.database.sql.driver.Driver_Execer.Execer), _1 : false };
                    };
                    _execer = __tmp__._0;
                    _ok = __tmp__._1;
                };
            };
            if (_ok) {
                var _nvdargs:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue> = (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>);
                var _resi:stdgo._internal.database.sql.driver.Driver_Result.Result = (null : stdgo._internal.database.sql.driver.Driver_Result.Result);
                stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var __tmp__ = stdgo._internal.database.sql.Sql__driverArgsConnLocked._driverArgsConnLocked(_dc._ci, null, _args);
                            _nvdargs = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        {
                            var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverExec._ctxDriverExec(_ctx, _execerCtx, _execer, _query?.__copy__(), _nvdargs);
                            _resi = __tmp__._0;
                            _err = __tmp__._1;
                        };
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
                });
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.database.sql.driver.Driver_errSkip.errSkip))) {
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult(stdgo.Go.asInterface(_dc), _resi) : stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult)), _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            var _si:stdgo._internal.database.sql.driver.Driver_Stmt.Stmt = (null : stdgo._internal.database.sql.driver.Driver_Stmt.Stmt);
            stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        var __tmp__ = stdgo._internal.database.sql.Sql__ctxDriverPrepare._ctxDriverPrepare(_ctx, _dc._ci, _query?.__copy__());
                        _si = __tmp__._0;
                        _err = __tmp__._1;
                    };
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
            });
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _ds = (stdgo.Go.setRef(({ locker : stdgo.Go.asInterface(_dc), _si : _si } : stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
            __deferstack__.unshift(() -> _ds.close());
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = stdgo._internal.database.sql.Sql__resultFromStatement._resultFromStatement(_ctx, _dc._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : _res, _1 : _err };
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
            final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : _res, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _exec( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:stdgo.Slice<stdgo.AnyInterface>, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : _err };
        };
        return _db._execDC(_ctx, _dc, _dc._releaseConn, _query?.__copy__(), _args);
    }
    @:keep
    static public function exec( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.execContext(stdgo._internal.context.Context_background.background(), _query?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function execContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _res:stdgo._internal.database.sql.Sql_Result.Result = (null : stdgo._internal.database.sql.Sql_Result.Result);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._exec(_ctx, _query?.__copy__(), _args, _strategy);
                _res = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        return { _0 : _res, _1 : _err };
    }
    @:keep
    static public function _prepareDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void, _cg:stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
            var _err:stdgo.Error = (null : stdgo.Error);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _release(_err);
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
                };
                a();
            });
            stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        var __tmp__ = _dc._prepareLocked(_ctx, _cg, _query?.__copy__());
                        _ds = __tmp__._0;
                        _err = __tmp__._1;
                    };
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
            });
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var _stmt = (stdgo.Go.setRef(({ _db : _db, _query : _query?.__copy__(), _cg : _cg, _cgds : _ds } : stdgo._internal.database.sql.Sql_Stmt.Stmt)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
            if (_cg == null) {
                _stmt._css = (new stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>(1, 1, ...[(new stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt(_dc, _ds) : stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt)])) : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>);
                _stmt._lastNumClosed = _db._numClosed.load();
                _db._addDep(stdgo.Go.asInterface(_stmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_stmt)));
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : _stmt, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _prepare( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = _db._conn(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _db._prepareDC(_ctx, _dc, _dc._releaseConn, (null : stdgo._internal.database.sql.Sql_T_stmtConnGrabber.T_stmtConnGrabber), _query?.__copy__());
    }
    @:keep
    static public function prepare( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.prepareContext(stdgo._internal.context.Context_background.background(), _query?.__copy__());
    }
    @:keep
    static public function prepareContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _query:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _stmt:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._prepare(_ctx, _query?.__copy__(), _strategy);
                _stmt = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        return { _0 : _stmt, _1 : _err };
    }
    @:keep
    static public function _retry( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _fn:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy -> stdgo.Error):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        {
            var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor((_i < (2i64 : stdgo.GoInt64) : Bool), _i++, {
                var _err = (_fn((1 : stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy)) : stdgo.Error);
                if (((_err == null) || !stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn) : Bool)) {
                    return _err;
                };
            });
        };
        return _fn((0 : stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy));
    }
    @:keep
    static public function _putConnDBLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _err:stdgo.Error):Bool {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if (_db._closed) {
            return false;
        };
        if (((_db._maxOpen > (0 : stdgo.GoInt) : Bool) && (_db._numOpen > _db._maxOpen : Bool) : Bool)) {
            return false;
        };
        {
            var _c = (_db._connRequests.length : stdgo.GoInt);
            if ((_c > (0 : stdgo.GoInt) : Bool)) {
                var _req:stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest> = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>);
                var _reqKey:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                for (__key__ => __value__ in _db._connRequests) {
                    _req = __value__;
                    _reqKey = __key__;
                    break;
                };
                if (_db._connRequests != null) _db._connRequests.remove(_reqKey);
                if (_err == null) {
                    _dc._inUse = true;
                };
                _req.__send__(({ _conn : _dc, _err : _err } : stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest));
                return true;
            } else if (((_err == null) && !_db._closed : Bool)) {
                if ((_db._maxIdleConnsLocked() > (_db._freeConn.length) : Bool)) {
                    _db._freeConn = (_db._freeConn.__append__(_dc));
                    _db._startCleanerLocked();
                    return true;
                };
                _db._maxIdleClosed++;
            };
        };
        return false;
    }
    @:keep
    static public function _putConn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _err:stdgo.Error, _resetSession:Bool):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if (!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn)) {
            if (!_dc._validateConnection(_resetSession)) {
                _err = stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn;
            };
        };
        _db._mu.lock();
        if (!_dc._inUse) {
            _db._mu.unlock();
            if (false) {
                stdgo._internal.fmt.Fmt_printf.printf(("putConn(%v) DUPLICATE was: %s\n\nPREVIOUS was: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)), stdgo.Go.toInterface(stdgo._internal.database.sql.Sql__stack._stack()), stdgo.Go.toInterface((_db._lastPut[_dc] ?? ("" : stdgo.GoString))));
            };
            throw stdgo.Go.toInterface(("sql: connection returned that was never out" : stdgo.GoString));
        };
        if ((!stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn) && _dc._expired(_db._maxLifetime) : Bool)) {
            _db._maxLifetimeClosed++;
            _err = stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn;
        };
        if (false) {
            _db._lastPut[_dc] = stdgo._internal.database.sql.Sql__stack._stack()?.__copy__();
        };
        _dc._inUse = false;
        _dc._returnedAt = stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__();
        for (__78 => _fn in _dc._onPut) {
            _fn();
        };
        _dc._onPut = (null : stdgo.Slice<() -> Void>);
        if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn)) {
            _db._maybeOpenNewConnections();
            _db._mu.unlock();
            _dc.close();
            return;
        };
        if (stdgo._internal.database.sql.Sql__putConnHook._putConnHook != null) {
            stdgo._internal.database.sql.Sql__putConnHook._putConnHook(_db, _dc);
        };
        var _added = (_db._putConnDBLocked(_dc, (null : stdgo.Error)) : Bool);
        _db._mu.unlock();
        if (!_added) {
            _dc.close();
            return;
        };
    }
    @:keep
    static public function _noteUnusedDriverStatement( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _c:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _db._mu.lock();
            __deferstack__.unshift(() -> _db._mu.unlock());
            if (_c._inUse) {
                _c._onPut = (_c._onPut.__append__(function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _ds.close();
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
                }));
            } else {
                _c.lock();
                var _fc = (_c._finalClosed : Bool);
                _c.unlock();
                if (!_fc) {
                    _ds.close();
                };
            };
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
    static public function _conn( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo.Error; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        _db._mu.lock();
        if (_db._closed) {
            _db._mu.unlock();
            return { _0 : null, _1 : stdgo._internal.database.sql.Sql__errDBClosed._errDBClosed };
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_ctx.done() != null && _ctx.done().__isGet__()) {
                    __select__ = false;
                    {
                        _ctx.done().__get__();
                        {
                            _db._mu.unlock();
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
        var _lifetime = (_db._maxLifetime : stdgo._internal.time.Time_Duration.Duration);
        var _last = ((_db._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        if (((_strategy == (1 : stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy)) && (_last >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _conn = _db._freeConn[(_last : stdgo.GoInt)];
            _db._freeConn = (_db._freeConn.__slice__(0, _last) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
            _conn._inUse = true;
            if (_conn._expired(_lifetime)) {
                _db._maxLifetimeClosed++;
                _db._mu.unlock();
                _conn.close();
                return { _0 : null, _1 : stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn };
            };
            _db._mu.unlock();
            {
                var _err = (_conn._resetSession(_ctx) : stdgo.Error);
                if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.database.sql.driver.Driver_errBadConn.errBadConn)) {
                    _conn.close();
                    return { _0 : null, _1 : _err };
                };
            };
            return { _0 : _conn, _1 : (null : stdgo.Error) };
        };
        if (((_db._maxOpen > (0 : stdgo.GoInt) : Bool) && (_db._numOpen >= _db._maxOpen : Bool) : Bool)) {
            var _req = (new stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest)) : stdgo.Chan<stdgo._internal.database.sql.Sql_T_connRequest.T_connRequest>);
            var _reqKey = (_db._nextRequestKeyLocked() : stdgo.GoUInt64);
            _db._connRequests[_reqKey] = _req;
            _db._waitCount++;
            _db._mu.unlock();
            var _waitStart = (stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var __select__ = true;
                while (__select__) {
                    if (_ctx.done() != null && _ctx.done().__isGet__()) {
                        __select__ = false;
                        {
                            _ctx.done().__get__();
                            {
                                _db._mu.lock();
                                if (_db._connRequests != null) _db._connRequests.remove(_reqKey);
                                _db._mu.unlock();
                                _db._waitDuration.add((stdgo._internal.time.Time_since.since(_waitStart?.__copy__()) : stdgo.GoInt64));
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
        _db._numOpen++;
        _db._mu.unlock();
        var __tmp__ = _db._connector.connect(_ctx), _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _db._mu.lock();
            _db._numOpen--;
            _db._maybeOpenNewConnections();
            _db._mu.unlock();
            return { _0 : null, _1 : _err };
        };
        _db._mu.lock();
        var _dc = (stdgo.Go.setRef(({ _db : _db, _createdAt : stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__(), _returnedAt : stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__(), _ci : _ci, _inUse : true } : stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        _db._addDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
        _db._mu.unlock();
        return { _0 : _dc, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _nextRequestKeyLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo.GoUInt64 {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _next = (_db._nextRequest : stdgo.GoUInt64);
        _db._nextRequest++;
        return _next;
    }
    @:keep
    static public function _openNewConnection( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = _db._connector.connect(_ctx), _ci:stdgo._internal.database.sql.driver.Driver_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _db._mu.lock();
            __deferstack__.unshift(() -> _db._mu.unlock());
            if (_db._closed) {
                if (_err == null) {
                    _ci.close();
                };
                _db._numOpen--;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_err != null) {
                _db._numOpen--;
                _db._putConnDBLocked(null, _err);
                _db._maybeOpenNewConnections();
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _dc = (stdgo.Go.setRef(({ _db : _db, _createdAt : stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__(), _returnedAt : stdgo._internal.database.sql.Sql__nowFunc._nowFunc()?.__copy__(), _ci : _ci } : stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn)) : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
            if (_db._putConnDBLocked(_dc, _err)) {
                _db._addDepLocked(stdgo.Go.asInterface(_dc), stdgo.Go.toInterface(stdgo.Go.asInterface(_dc)));
            } else {
                _db._numOpen--;
                _ci.close();
            };
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
    static public function _connectionOpener( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
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
                    } else if (_db._openerCh != null && _db._openerCh.__isGet__()) {
                        __select__ = false;
                        {
                            _db._openerCh.__get__();
                            {
                                _db._openNewConnection(_ctx);
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
    static public function _maybeOpenNewConnections( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _numRequests = (_db._connRequests.length : stdgo.GoInt);
        if ((_db._maxOpen > (0 : stdgo.GoInt) : Bool)) {
            var _numCanOpen = (_db._maxOpen - _db._numOpen : stdgo.GoInt);
            if ((_numRequests > _numCanOpen : Bool)) {
                _numRequests = _numCanOpen;
            };
        };
        while ((_numRequests > (0 : stdgo.GoInt) : Bool)) {
            _db._numOpen++;
            _numRequests--;
            if (_db._closed) {
                return;
            };
            _db._openerCh.__send__(({  } : stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0));
        };
    }
    @:keep
    static public function stats( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo._internal.database.sql.Sql_DBStats.DBStats {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _wait = (_db._waitDuration.load() : stdgo.GoInt64);
            _db._mu.lock();
            __deferstack__.unshift(() -> _db._mu.unlock());
            var _stats = ({ maxOpenConnections : _db._maxOpen, idle : (_db._freeConn.length), openConnections : _db._numOpen, inUse : (_db._numOpen - (_db._freeConn.length) : stdgo.GoInt), waitCount : _db._waitCount, waitDuration : (_wait : stdgo._internal.time.Time_Duration.Duration), maxIdleClosed : _db._maxIdleClosed, maxIdleTimeClosed : _db._maxIdleTimeClosed, maxLifetimeClosed : _db._maxLifetimeClosed } : stdgo._internal.database.sql.Sql_DBStats.DBStats);
            {
                final __ret__:stdgo._internal.database.sql.Sql_DBStats.DBStats = _stats?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo._internal.database.sql.Sql_DBStats.DBStats = ({} : stdgo._internal.database.sql.Sql_DBStats.DBStats);
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
            final __ret__:stdgo._internal.database.sql.Sql_DBStats.DBStats = ({} : stdgo._internal.database.sql.Sql_DBStats.DBStats);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _connectionCleanerRunLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _d:stdgo._internal.time.Time_Duration.Duration):{ var _0 : stdgo._internal.time.Time_Duration.Duration; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>; } {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _idleClosing:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        if ((_db._maxIdleTime > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            var _idleSince = (stdgo._internal.database.sql.Sql__nowFunc._nowFunc().add(-_db._maxIdleTime)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _last = ((_db._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            {
                var _i = (_last : stdgo.GoInt);
                stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                    var _c = _db._freeConn[(_i : stdgo.GoInt)];
                    if (_c._returnedAt.before(_idleSince?.__copy__())) {
                        _i++;
                        _closing = (_db._freeConn.__slice__(0, _i, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
                        _db._freeConn = (_db._freeConn.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
                        _idleClosing = (_closing.length : stdgo.GoInt64);
                        _db._maxIdleTimeClosed = (_db._maxIdleTimeClosed + (_idleClosing) : stdgo.GoInt64);
                        break;
                    };
                });
            };
            if (((_db._freeConn.length) > (0 : stdgo.GoInt) : Bool)) {
                var _c = _db._freeConn[(0 : stdgo.GoInt)];
                {
                    var _d2 = (_c._returnedAt.sub(_idleSince?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                    if ((_d2 < _d : Bool)) {
                        _d = _d2;
                    };
                };
            };
        };
        if ((_db._maxLifetime > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            var _expiredSince = (stdgo._internal.database.sql.Sql__nowFunc._nowFunc().add(-_db._maxLifetime)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_db._freeConn.length) : Bool), _i++, {
                    var _c = _db._freeConn[(_i : stdgo.GoInt)];
                    if (_c._createdAt.before(_expiredSince?.__copy__())) {
                        _closing = (_closing.__append__(_c));
                        var _last = ((_db._freeConn.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.copySlice((_db._freeConn.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>), (_db._freeConn.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>));
                        _db._freeConn[(_last : stdgo.GoInt)] = null;
                        _db._freeConn = (_db._freeConn.__slice__(0, _last) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
                        _i--;
                    } else {
                        var _d2 = (_c._createdAt.sub(_expiredSince?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                        if ((_d2 < _d : Bool)) {
                            _d = _d2;
                        };
                    };
                });
            };
            _db._maxLifetimeClosed = (_db._maxLifetimeClosed + (((_closing.length : stdgo.GoInt64) - _idleClosing : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return { _0 : _d, _1 : _closing };
    }
    @:keep
    static public function _connectionCleaner( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        {};
        if ((_d < (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _d = (1000000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        var _t = stdgo._internal.time.Time_newTimer.newTimer(_d);
        while (true) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_t.c != null && _t.c.__isGet__()) {
                        __select__ = false;
                        {
                            _t.c.__get__();
                            {};
                        };
                    } else if (_db._cleanerCh != null && _db._cleanerCh.__isGet__()) {
                        __select__ = false;
                        {
                            _db._cleanerCh.__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            _db._mu.lock();
            _d = _db._shortestIdleTimeLocked();
            if (((_db._closed || _db._numOpen == ((0 : stdgo.GoInt)) : Bool) || (_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                _db._cleanerCh = (null : stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>);
                _db._mu.unlock();
                return;
            };
            var __tmp__ = _db._connectionCleanerRunLocked(_d), _d:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>> = __tmp__._1;
            _db._mu.unlock();
            for (__78 => _c in _closing) {
                _c.close();
            };
            if ((_d < (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _d = (1000000000i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            if (!_t.stop()) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_t.c != null && _t.c.__isGet__()) {
                            __select__ = false;
                            {
                                _t.c.__get__();
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
            _t.reset(_d);
        };
    }
    @:keep
    static public function _startCleanerLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if ((((((_db._maxLifetime > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || (_db._maxIdleTime > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) && (_db._numOpen > (0 : stdgo.GoInt) : Bool) : Bool) && (_db._cleanerCh == null) : Bool)) {
            _db._cleanerCh = (new stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0>);
            stdgo.Go.routine(() -> _db._connectionCleaner(_db._shortestIdleTimeLocked()));
        };
    }
    @:keep
    static public function setConnMaxIdleTime( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                _d = (0i64 : stdgo._internal.time.Time_Duration.Duration);
            };
            _db._mu.lock();
            __deferstack__.unshift(() -> _db._mu.unlock());
            if ((((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_d < _db._maxIdleTime : Bool) : Bool) && (_db._cleanerCh != null) : Bool)) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_db._cleanerCh != null && _db._cleanerCh.__isSend__()) {
                            __select__ = false;
                            {
                                _db._cleanerCh.__send__(({  } : stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0));
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
            _db._maxIdleTime = _d;
            _db._startCleanerLocked();
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
    static public function setConnMaxLifetime( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if ((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _d = (0i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        _db._mu.lock();
        if ((((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) && (_d < _db._maxLifetime : Bool) : Bool) && (_db._cleanerCh != null) : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_db._cleanerCh != null && _db._cleanerCh.__isSend__()) {
                        __select__ = false;
                        {
                            _db._cleanerCh.__send__(({  } : stdgo._internal.database.sql.Sql_T__struct_0.T__struct_0));
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
        _db._maxLifetime = _d;
        _db._startCleanerLocked();
        _db._mu.unlock();
    }
    @:keep
    static public function setMaxOpenConns( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _n:stdgo.GoInt):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        _db._mu.lock();
        _db._maxOpen = _n;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _db._maxOpen = (0 : stdgo.GoInt);
        };
        var _syncMaxIdle = ((_db._maxOpen > (0 : stdgo.GoInt) : Bool) && (_db._maxIdleConnsLocked() > _db._maxOpen : Bool) : Bool);
        _db._mu.unlock();
        if (_syncMaxIdle) {
            _db.setMaxIdleConns(_n);
        };
    }
    @:keep
    static public function setMaxIdleConns( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _n:stdgo.GoInt):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        _db._mu.lock();
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _db._maxIdleCount = _n;
        } else {
            _db._maxIdleCount = (-1 : stdgo.GoInt);
        };
        if (((_db._maxOpen > (0 : stdgo.GoInt) : Bool) && (_db._maxIdleConnsLocked() > _db._maxOpen : Bool) : Bool)) {
            _db._maxIdleCount = _db._maxOpen;
        };
        var _closing:stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        var _idleCount = (_db._freeConn.length : stdgo.GoInt);
        var _maxIdle = (_db._maxIdleConnsLocked() : stdgo.GoInt);
        if ((_idleCount > _maxIdle : Bool)) {
            _closing = (_db._freeConn.__slice__(_maxIdle) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
            _db._freeConn = (_db._freeConn.__slice__(0, _maxIdle) : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        };
        _db._maxIdleClosed = (_db._maxIdleClosed + ((_closing.length : stdgo.GoInt64)) : stdgo.GoInt64);
        _db._mu.unlock();
        for (__94 => _c in _closing) {
            _c.close();
        };
    }
    @:keep
    static public function _shortestIdleTimeLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if ((_db._maxIdleTime <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _db._maxLifetime;
        };
        if ((_db._maxLifetime <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _db._maxIdleTime;
        };
        var _min = (_db._maxIdleTime : stdgo._internal.time.Time_Duration.Duration);
        if ((_min > _db._maxLifetime : Bool)) {
            _min = _db._maxLifetime;
        };
        return _min;
    }
    @:keep
    static public function _maxIdleConnsLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo.GoInt {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _n = (_db._maxIdleCount : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return (2 : stdgo.GoInt);
        } else if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        } else {
            return _n;
        };
    }
    @:keep
    static public function close( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        _db._mu.lock();
        if (_db._closed) {
            _db._mu.unlock();
            return (null : stdgo.Error);
        };
        if (_db._cleanerCh != null) {
            if (_db._cleanerCh != null) _db._cleanerCh.__close__();
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _fns = (new stdgo.Slice<() -> stdgo.Error>((0 : stdgo.GoInt).toBasic(), (_db._freeConn.length)) : stdgo.Slice<() -> stdgo.Error>);
        for (__62 => _dc in _db._freeConn) {
            _fns = (_fns.__append__(_dc._closeDBLocked()));
        };
        _db._freeConn = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>>);
        _db._closed = true;
        for (__87 => _req in _db._connRequests) {
            if (_req != null) _req.__close__();
        };
        _db._mu.unlock();
        for (__96 => _fn in _fns) {
            var _err1 = (_fn() : stdgo.Error);
            if (_err1 != null) {
                _err = _err1;
            };
        };
        _db._stop();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_db._connector) : stdgo._internal.io.Io_Closer.Closer)) : stdgo._internal.io.Io_Closer.Closer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_Closer.Closer), _1 : false };
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
    static public function ping( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        return _db.pingContext(stdgo._internal.context.Context_background.background());
    }
    @:keep
    static public function pingContext( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = _db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
            {
                var __tmp__ = _db._conn(_ctx, _strategy);
                _dc = __tmp__._0;
                _err = __tmp__._1;
            };
            return _err;
        });
        if (_err != null) {
            return _err;
        };
        return _db._pingDC(_ctx, _dc, _dc._releaseConn);
    }
    @:keep
    static public function _pingDC( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>, _release:stdgo.Error -> Void):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dc._ci) : stdgo._internal.database.sql.driver.Driver_Pinger.Pinger)) : stdgo._internal.database.sql.driver.Driver_Pinger.Pinger), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.database.sql.driver.Driver_Pinger.Pinger), _1 : false };
            }, _pinger = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
                    _err = _pinger.ping(_ctx);
                });
            };
        };
        _release(_err);
        return _err;
    }
    @:keep
    static public function _removeDepLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):() -> stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __tmp__ = (_db._dep != null && _db._dep.exists(_x) ? { _0 : _db._dep[_x], _1 : true } : { _0 : (null : stdgo._internal.database.sql.Sql_T_depSet.T_depSet), _1 : false }), _xdep:stdgo._internal.database.sql.Sql_T_depSet.T_depSet = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unpaired removeDep: no deps for %T" : stdgo.GoString), stdgo.Go.toInterface(_x)));
        };
        var _l0 = (_xdep.length : stdgo.GoInt);
        if (_xdep != null) _xdep.remove(_dep);
        {
            final __value__ = (_xdep.length);
            if (__value__ == (_l0)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unpaired removeDep: no %T dep on %T" : stdgo.GoString), _dep, stdgo.Go.toInterface(_x)));
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                if (_db._dep != null) _db._dep.remove(_x);
                return _x._finalClose;
            } else {
                return function():stdgo.Error {
                    return (null : stdgo.Error);
                };
            };
        };
    }
    @:keep
    static public function _removeDep( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):stdgo.Error {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        _db._mu.lock();
        var _fn = (_db._removeDepLocked(_x, _dep) : () -> stdgo.Error);
        _db._mu.unlock();
        return _fn();
    }
    @:keep
    static public function _addDepLocked( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        if (_db._dep == null) {
            _db._dep = ({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> (null : stdgo._internal.database.sql.Sql_T_depSet.T_depSet);
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, stdgo._internal.database.sql.Sql_T_depSet.T_depSet>);
        };
        var _xdep = (_db._dep[_x] ?? (null : stdgo._internal.database.sql.Sql_T_depSet.T_depSet) : stdgo._internal.database.sql.Sql_T_depSet.T_depSet);
        if (_xdep == null) {
            _xdep = (({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, Bool>) : stdgo._internal.database.sql.Sql_T_depSet.T_depSet);
            _db._dep[_x] = _xdep;
        };
        _xdep[_dep] = true;
    }
    @:keep
    static public function _addDep( _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>, _x:stdgo._internal.database.sql.Sql_T_finalCloser.T_finalCloser, _dep:stdgo.AnyInterface):Void {
        @:recv var _db:stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB> = _db;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _db._mu.lock();
            __deferstack__.unshift(() -> _db._mu.unlock());
            _db._addDepLocked(_x, _dep);
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
}