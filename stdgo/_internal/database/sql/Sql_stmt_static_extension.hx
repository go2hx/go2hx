package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.Stmt_asInterface) class Stmt_static_extension {
    @:keep
    @:tdfield
    static public function _finalClose( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2875"
            (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2877"
            if ((@:checkr _s ?? throw "null pointer dereference")._css != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2878"
                for (__67 => _v in (@:checkr _s ?? throw "null pointer dereference")._css) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2879"
                    (@:checkr _s ?? throw "null pointer dereference")._db._noteUnusedDriverStatement(_v._dc, _v._ds);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2880"
                    _v._dc._removeOpenStmt(_v._ds);
                };
                (@:checkr _s ?? throw "null pointer dereference")._css = (null : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2884"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2845"
            (@:checkr _s ?? throw "null pointer dereference")._closemu.lock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._closemu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2848"
            if ((@:checkr _s ?? throw "null pointer dereference")._stickyErr != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2849"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2851"
            (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2852"
            if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2853"
                (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2854"
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
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2860"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2862"
            if ((@:checkr _s ?? throw "null pointer dereference")._cg == null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2863"
                {
                    final __ret__:stdgo.Error = (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2866"
            if (({
                final value = (@:checkr _s ?? throw "null pointer dereference")._parentStmt;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2869"
                {
                    final __ret__:stdgo.Error = (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference")._parentStmt), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2871"
            {
                final __ret__:stdgo.Error = _txds.close();
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function queryRow( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2840"
        return _s.queryRowContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryRowContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __tmp__ = _s.queryContext(_ctx, ...(_args : Array<stdgo.AnyInterface>)), _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2819"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2820"
            return (stdgo.Go.setRef(({ _err : _err } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2822"
        return (stdgo.Go.setRef(({ _rows : _rows } : stdgo._internal.database.sql.Sql_row.Row)) : stdgo.Ref<stdgo._internal.database.sql.Sql_row.Row>);
    }
    @:keep
    @:tdfield
    static public function query( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2798"
        return _s.queryContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function queryContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2746"
            (@:checkr _s ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _rowsi:stdgo._internal.database.sql.driver.Driver_rows.Rows = (null : stdgo._internal.database.sql.driver.Driver_rows.Rows);
            var _rows:stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows> = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
            var _err = ((@:checkr _s ?? throw "null pointer dereference")._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2754"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2755"
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__rowsifromstatement._rowsiFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _rowsi = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2759"
                if (_err == null) {
                    _rows = (stdgo.Go.setRef(({ _dc : _dc, _rowsi : _rowsi } : stdgo._internal.database.sql.Sql_rows.Rows)) : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2769"
                    (@:checkr _s ?? throw "null pointer dereference")._db._addDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    (@:checkr _rows ?? throw "null pointer dereference")._releaseConn = function(_err:stdgo.Error):Void {
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2774"
                        _releaseConn(_err);
                        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2775"
                        (@:checkr _s ?? throw "null pointer dereference")._db._removeDep(stdgo.Go.asInterface(_s), stdgo.Go.toInterface(stdgo.Go.asInterface(_rows)));
                    };
                    var _txctx:stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2778"
                    if ((@:checkr _s ?? throw "null pointer dereference")._cg != null) {
                        _txctx = (@:checkr _s ?? throw "null pointer dereference")._cg._txCtx();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2781"
                    _rows._initContextClose(_ctx, _txctx);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2782"
                    return (null : stdgo.Error);
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2785"
                _releaseConn(_err);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2786"
                return _err;
            }) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2789"
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_rows.Rows>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _prepareOnConnLocked( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __tmp__ = _dc._prepareLocked(_ctx, (@:checkr _s ?? throw "null pointer dereference")._cg, (@:checkr _s ?? throw "null pointer dereference")._query?.__copy__()), _si:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2733"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2734"
            return { _0 : null, _1 : _err };
        };
        var _cs = (new stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt(_dc, _si) : stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2737"
        (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _s ?? throw "null pointer dereference")._css = ((@:checkr _s ?? throw "null pointer dereference")._css.__append__(_cs?.__copy__()) : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2739"
        (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2740"
        return { _0 : _cs._ds, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _connStmt( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var _dc = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>), _releaseConn = null, _ds = (null : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2679"
        {
            _err = (@:checkr _s ?? throw "null pointer dereference")._stickyErr;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2680"
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2682"
        (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2683"
        if ((@:checkr _s ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2684"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            _err = stdgo._internal.errors.Errors_new_.new_(("sql: statement is closed" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2686"
            return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2691"
        if ((@:checkr _s ?? throw "null pointer dereference")._cg != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2692"
            (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
            {
                var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._cg._grabConn(_ctx);
                _dc = @:tmpset0 __tmp__._0;
                _releaseConn = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2694"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2695"
                return { _0 : _dc, _1 : _releaseConn, _2 : _ds, _3 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2697"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : _releaseConn, _2 : (@:checkr _s ?? throw "null pointer dereference")._cgds, _3 : (null : stdgo.Error) };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2700"
        _s._removeClosedStmtLocked();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2701"
        (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        {
            var __tmp__ = (@:checkr _s ?? throw "null pointer dereference")._db._conn(_ctx, _strategy);
            _dc = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2704"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2705"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : null, _1 : null, _2 : null, _3 : _err };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2708"
        (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2709"
        for (__135 => _v in (@:checkr _s ?? throw "null pointer dereference")._css) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2710"
            if (_v._dc == (_dc)) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2711"
                (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2712"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : _dc._releaseConn, _2 : _v._ds, _3 : (null : stdgo.Error) };
                    _dc = __tmp__._0;
                    _releaseConn = __tmp__._1;
                    _ds = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2715"
        (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2718"
        stdgo._internal.database.sql.Sql__withlock._withLock(stdgo.Go.asInterface(_dc), function():Void {
            {
                var __tmp__ = _s._prepareOnConnLocked(_ctx, _dc);
                _ds = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2721"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2722"
            _dc._releaseConn(_err);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2723"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : null, _1 : null, _2 : null, _3 : _err };
                _dc = __tmp__._0;
                _releaseConn = __tmp__._1;
                _ds = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2726"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn>; var _1 : stdgo.Error -> Void; var _2 : stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt>; var _3 : stdgo.Error; } = { _0 : _dc, _1 : _dc._releaseConn, _2 : _ds, _3 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2655"
        if ((_t > (10 : stdgo.GoInt) : Bool)) {
            _t = (10 : stdgo.GoInt);
        };
        var _dbClosed = ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._numClosed.load() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2659"
        if (((_dbClosed - (@:checkr _s ?? throw "null pointer dereference")._lastNumClosed : stdgo.GoUInt64) < (_t : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2660"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2663"
        (@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.lock();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2664"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _s ?? throw "null pointer dereference")._css.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2665"
                if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._css[(_i : stdgo.GoInt)]._dc ?? throw "null pointer dereference")._dbmuClosed) {
                    (@:checkr _s ?? throw "null pointer dereference")._css[(_i : stdgo.GoInt)] = (@:checkr _s ?? throw "null pointer dereference")._css[(((@:checkr _s ?? throw "null pointer dereference")._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    (@:checkr _s ?? throw "null pointer dereference")._css = ((@:checkr _s ?? throw "null pointer dereference")._css.__slice__(0, (((@:checkr _s ?? throw "null pointer dereference")._css.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.database.sql.Sql_t_connstmt.T_connStmt>);
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2668"
                    _i--;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2671"
        (@:checkr (@:checkr _s ?? throw "null pointer dereference")._db ?? throw "null pointer dereference")._mu.unlock();
        (@:checkr _s ?? throw "null pointer dereference")._lastNumClosed = _dbClosed;
    }
    @:keep
    @:tdfield
    static public function exec( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2630"
        return _s.execContext(stdgo._internal.context.Context_background.background(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function execContext( _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt>, _ctx:stdgo._internal.context.Context_context.Context, _args:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.database.sql.Sql_result.Result; var _1 : stdgo.Error; } {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.database.sql.Sql_stmt.Stmt> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2606"
            (@:checkr _s ?? throw "null pointer dereference")._closemu.rLock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._closemu.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _res:stdgo._internal.database.sql.Sql_result.Result = (null : stdgo._internal.database.sql.Sql_result.Result);
            var _err = ((@:checkr _s ?? throw "null pointer dereference")._db._retry(function(_strategy:stdgo._internal.database.sql.Sql_t_connreusestrategy.T_connReuseStrategy):stdgo.Error {
                var __tmp__ = _s._connStmt(_ctx, _strategy), _dc:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverconn.T_driverConn> = __tmp__._0, _releaseConn:stdgo.Error -> Void = __tmp__._1, _ds:stdgo.Ref<stdgo._internal.database.sql.Sql_t_driverstmt.T_driverStmt> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2612"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2613"
                    return _err;
                };
                {
                    var __tmp__ = stdgo._internal.database.sql.Sql__resultfromstatement._resultFromStatement(_ctx, (@:checkr _dc ?? throw "null pointer dereference")._ci, _ds, ...(_args : Array<stdgo.AnyInterface>));
                    _res = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2617"
                _releaseConn(_err);
                //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2618"
                return _err;
            }) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L2621"
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
                return { _0 : (null : stdgo._internal.database.sql.Sql_result.Result), _1 : (null : stdgo.Error) };
            };
        };
    }
}
