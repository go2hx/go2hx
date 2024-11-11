package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Stmt_asInterface) class Stmt_static_extension {
    @:keep
    static public function _finalClose( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._mu.lock();
            __deferstack__.unshift(() -> _s._mu.unlock());
            if (_s._css != null) {
                for (__67 => _v in _s._css) {
                    _s._db._noteUnusedDriverStatement(_v._dc, _v._ds);
                    _v._dc._removeOpenStmt(_v._ds);
                };
                _s._css = (null : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>);
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
    static public function close( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._closemu.lock();
            __deferstack__.unshift(() -> _s._closemu.unlock());
            if (_s._stickyErr != null) {
                {
                    final __ret__:stdgo.Error = _s._stickyErr;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _s._mu.lock();
            if (_s._closed) {
                _s._mu.unlock();
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _s._closed = true;
            var _txds = _s._cgds;
            _s._cgds = null;
            _s._mu.unlock();
            if (_s._cg == null) {
                {
                    final __ret__:stdgo.Error = _s._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            if ((_s._parentStmt != null && ((_s._parentStmt : Dynamic).__nil__ == null || !(_s._parentStmt : Dynamic).__nil__))) {
                {
                    final __ret__:stdgo.Error = _s._db._removeDep(stdgo.Go.asInterface(_s._parentStmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = _txds.close();
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
    static public function queryRow( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        return _s.queryRowContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function queryRowContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __tmp__ = _s.queryContext(_ctx, ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (stdgo.Go.setRef(({ _err : _err } : stdgo._internal.database.sql.Sql_Row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
        };
        return (stdgo.Go.setRef(({ _rows : _rows } : stdgo._internal.database.sql.Sql_Row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Row.Row>);
    }
    @:keep
    static public function query( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        return _s.queryContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function queryContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._closemu.rlock();
            __deferstack__.unshift(() -> _s._closemu.runlock());
            var _rowsi:stdgo._internal.database.sql.driver.Driver_Rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_Rows.Rows);
            var _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
            var _err = (_s._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__rowsiFromStatement._rowsiFromStatement(_ctx, _dc._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _rowsi = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    _rows = (stdgo.Go.setRef(({ _dc : _dc, _rowsi : _rowsi } : stdgo._internal.database.sql.Sql_Rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
                    _s._db._addDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    _rows._releaseConn = function(_err:stdgo.Error):Void {
                        _releaseConn(_err);
                        _s._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    };
                    var _txctx:stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
                    if (_s._cg != null) {
                        _txctx = _s._cg._txCtx();
                    };
                    _rows._initContextClose(_ctx, _txctx);
                    return (null : stdgo.Error);
                };
                _releaseConn(_err);
                return _err;
            }) : stdgo.Error);
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } = { _0 : _rows, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _prepareOnConnLocked( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _ctx:stdgo._internal.context.Context_Context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __tmp__ = _dc._prepareLocked(_ctx, _s._cg, _s._query?.__copy__()), _si:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _cs = (new stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt(_dc, _si) : stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt);
        _s._mu.lock();
        _s._css = (_s._css.__append__(_cs?.__copy__()));
        _s._mu.unlock();
        return { _0 : _cs._ds, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _connStmt( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>; var _3 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var _dc = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>), _releaseConn = null, _ds = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>), _err = (null : stdgo.Error);
        {
            _err = _s._stickyErr;
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
        };
        _s._mu.lock();
        if (_s._closed) {
            _s._mu.unlock();
            _err = stdgo._internal.errors.Errors_new_.new_(("sql: statement is closed" : stdgo.GoString));
            return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
        };
        if (_s._cg != null) {
            _s._mu.unlock();
            {
                var __tmp__ = _s._cg._grabConn(_ctx);
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
            return { _0 : _dc, _1 : _releaseConn, _2 : _s._cgds, _3 : (null : stdgo.Error) };
        };
        _s._removeClosedStmtLocked();
        _s._mu.unlock();
        {
            var __tmp__ = _s._db._conn(_ctx, _strategy);
            _dc = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : null, _1 : null, _2 : null, _3 : _err };
        };
        _s._mu.lock();
        for (__135 => _v in _s._css) {
            if (_v._dc == (_dc)) {
                _s._mu.unlock();
                return { _0 : _dc, _1 : _dc._releaseConn, _2 : _v._ds, _3 : (null : stdgo.Error) };
            };
        };
        _s._mu.unlock();
        stdgo._internal.database.sql.Sql__withLock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            {
                var __tmp__ = _s._prepareOnConnLocked(_ctx, _dc);
                _ds = __tmp__._0;
                _err = __tmp__._1;
            };
        });
        if (_err != null) {
            _dc._releaseConn(_err);
            return { _0 : null, _1 : null, _2 : null, _3 : _err };
        };
        return { _0 : _dc, _1 : _dc._releaseConn, _2 : _ds, _3 : (null : stdgo.Error) };
    }
    @:keep
    static public function _removeClosedStmtLocked( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var _t = (((_s._css.length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_t > (10 : stdgo.GoInt) : Bool)) {
            _t = (10 : stdgo.GoInt);
        };
        var _dbClosed = (_s._db._numClosed.load() : stdgo.GoUInt64);
        if (((_dbClosed - _s._lastNumClosed : stdgo.GoUInt64) < (_t : stdgo.GoUInt64) : Bool)) {
            return;
        };
        _s._db._mu.lock();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s._css.length) : Bool)) {
                if (_s._css[(_i : stdgo.GoInt)]._dc._dbmuClosed) {
                    _s._css[(_i : stdgo.GoInt)] = _s._css[((_s._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    _s._css = (_s._css.__slice__(0, ((_s._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.Sql_T_connStmt.T_connStmt>);
                    _i--;
                };
                _i++;
            };
        };
        _s._db._mu.unlock();
        _s._lastNumClosed = _dbClosed;
    }
    @:keep
    static public function exec( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        return _s.execContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    static public function execContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._closemu.rlock();
            __deferstack__.unshift(() -> _s._closemu.runlock());
            var _res:stdgo._internal.database.sql.Sql_Result.Result = (null : stdgo._internal.database.sql.Sql_Result.Result);
            var _err = (_s._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__resultFromStatement._resultFromStatement(_ctx, _dc._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _res = __tmp__._0;
                    _err = __tmp__._1;
                };
                _releaseConn(_err);
                return _err;
            }) : stdgo.Error);
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : _res, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
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
            final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_Result.Result; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.Sql_Result.Result), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}
