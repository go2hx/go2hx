package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Stmt_asInterface) class Stmt_static_extension {
    @:keep
    @:tdfield
    static public function _finalClose( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._css != null) {
                for (__67 => _v in (@:checkr _s ?? throw "null pointer dereference")._css) {
                    @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._noteUnusedDriverStatement(_v._dc, _v._ds);
                    @:check2r _v._dc._removeOpenStmt(_v._ds);
                };
                (@:checkr _s ?? throw "null pointer dereference")._css = (null : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
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
    static public function close( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _s ?? throw "null pointer dereference")._stickyErr != null) {
                {
                    final __ret__:stdgo.Error = (@:checkr _s ?? throw "null pointer dereference")._stickyErr;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
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
            (@:checkr _s ?? throw "null pointer dereference")._closed = true;
            var _txds = (@:checkr _s ?? throw "null pointer dereference")._cgds;
            (@:checkr _s ?? throw "null pointer dereference")._cgds = null;
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            if ((@:checkr _s ?? throw "null pointer dereference")._cg == null) {
                {
                    final __ret__:stdgo.Error = @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((@:checkr _s ?? throw "null pointer dereference")._parentStmt != null && (((@:checkr _s ?? throw "null pointer dereference")._parentStmt : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._parentStmt : Dynamic).__nil__))) {
                {
                    final __ret__:stdgo.Error = @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._parentStmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = @:check2r _txds.close();
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
    static public function queryRow( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        return @:check2r _s.queryRowContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryRowContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __tmp__ = @:check2r _s.queryContext(_ctx, ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return (stdgo.Go.setRef(({ _err : _err } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
        };
        return (stdgo.Go.setRef(({ _rows : _rows } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
    }
    @:keep
    @:tdfield
    static public function query( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        return @:check2r _s.queryContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _rowsi:stdgo._internal.database.sql.driver.Driver_rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_rows.Rows);
            var _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
            var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = @:check2r _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__rowsifromstatement._rowsiFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _rowsi = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err == null) {
                    _rows = (stdgo.Go.setRef(({ _dc : _dc, _rowsi : _rowsi } : stdgo._internal.database.sql.Sql_rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
                    @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._addDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    (@:checkr _rows ?? throw "null pointer dereference")._releaseConn = function(_err:stdgo.Error):Void {
                        _releaseConn(_err);
                        @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    };
                    var _txctx:stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
                    if ((@:checkr _s ?? throw "null pointer dereference")._cg != null) {
                        _txctx = (@:checkr _s ?? throw "null pointer dereference")._cg._txCtx();
                    };
                    @:check2r _rows._initContextClose(_ctx, _txctx);
                    return (null : stdgo.Error);
                };
                _releaseConn(_err);
                return _err;
            }) : stdgo.Error);
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } = { _0 : _rows, _1 : _err };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _prepareOnConnLocked( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __tmp__ = @:check2r _dc._prepareLocked(_ctx, (@:checkr _s ?? throw "null pointer dereference")._cg, (@:checkr _s ?? throw "null pointer dereference")._query?.__copy__()), _si:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _cs = (new stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt(_dc, _si) : stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _s ?? throw "null pointer dereference")._css = ((@:checkr _s ?? throw "null pointer dereference")._css.__append__(_cs?.__copy__()));
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        return { _0 : _cs._ds, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _connStmt( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var _dc = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>), _releaseConn = null, _ds = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>), _err = (null : stdgo.Error);
        {
            _err = (@:checkr _s ?? throw "null pointer dereference")._stickyErr;
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            _err = stdgo._internal.errors.Errors_new_.new_(("sql: statement is closed" : stdgo.GoString));
            return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._cg != null) {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            {
                var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._cg._grabConn(_ctx);
                _dc = @:tmpset0 __tmp__._0;
                _releaseConn = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : _releaseConn, _2 : (@:checkr _s ?? throw "null pointer dereference")._cgds, _3 : (null : stdgo.Error) };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        @:check2r _s._removeClosedStmtLocked();
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        {
            var __tmp__ = @:check2r (@:checkr _s ?? throw "null pointer dereference")._db._conn(_ctx, _strategy);
            _dc = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : null, _1 : null, _2 : null, _3 : _err };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        for (__135 => _v in (@:checkr _s ?? throw "null pointer dereference")._css) {
            if (_v._dc == (_dc)) {
                @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : @:check2r _dc._releaseConn, _2 : _v._ds, _3 : (null : stdgo.Error) };
                    _dc = __tmp__._0;
                    _releaseConn = __tmp__._1;
                    _ds = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            {
                var __tmp__ = @:check2r _s._prepareOnConnLocked(_ctx, _dc);
                _ds = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        });
        if (_err != null) {
            @:check2r _dc._releaseConn(_err);
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : null, _1 : null, _2 : null, _3 : _err };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : @:check2r _dc._releaseConn, _2 : _ds, _3 : (null : stdgo.Error) };
            _dc = __tmp__._0;
            _releaseConn = __tmp__._1;
            _ds = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _removeClosedStmtLocked( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var _t = ((((@:checkr _s ?? throw "null pointer dereference")._css.length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_t > (10 : stdgo.GoInt) : Bool)) {
            _t = (10 : stdgo.GoInt);
        };
        var _dbClosed = (@:check2 (@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._numClosed.load() : stdgo.GoUInt64);
        if (((_dbClosed - (@:checkr _s ?? throw "null pointer dereference")._lastNumClosed : stdgo.GoUInt64) < (_t : stdgo.GoUInt64) : Bool)) {
            return;
        };
        @:check2 (@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.lock();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _s ?? throw "null pointer dereference")._css.length) : Bool)) {
                if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._css[(_i : stdgo.GoInt)]._dc ?? throw "null pointer dereference")._dbmuClosed) {
                    (@:checkr _s ?? throw "null pointer dereference")._css[(_i : stdgo.GoInt)] = (@:checkr _s ?? throw "null pointer dereference")._css[(((@:checkr _s ?? throw "null pointer dereference")._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    (@:checkr _s ?? throw "null pointer dereference")._css = ((@:checkr _s ?? throw "null pointer dereference")._css.__slice__(0, (((@:checkr _s ?? throw "null pointer dereference")._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
                    _i--;
                };
                _i++;
            };
        };
        @:check2 (@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.unlock();
        (@:checkr _s ?? throw "null pointer dereference")._lastNumClosed = _dbClosed;
    }
    @:keep
    @:tdfield
    static public function exec( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        return @:check2r _s.execContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function execContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _res:stdgo._internal.database.sql.Sql_result.Result = (null : stdgo._internal.database.sql.Sql_result.Result);
            var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = @:check2r _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                if (_err != null) {
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__resultfromstatement._resultFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _res = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _releaseConn(_err);
                return _err;
            }) : stdgo.Error);
            {
                final __ret__:{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } = { _0 : _res, _1 : _err };
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
                return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : (null : stdgo.Error) };
            };
        };
    }
}
