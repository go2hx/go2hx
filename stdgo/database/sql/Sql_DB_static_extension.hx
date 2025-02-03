package stdgo.database.sql;
class DB_static_extension {
    static public function conn(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.conn(_db, _ctx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function driver(_db:DB):Driver {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.driver(_db);
    }
    static public function _beginDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _release = _release;
        final _opts = (_opts : stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._beginDC(_db, _ctx, _dc, _release, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _begin(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions, _strategy:T_connReuseStrategy):stdgo.Tuple<Tx, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._begin(_db, _ctx, _opts, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function begin(_db:DB):stdgo.Tuple<Tx, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.begin(_db);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function beginTx(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.beginTx(_db, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryRow(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryRow(_db, _query, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryRowContext(_db, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function _queryDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _releaseConn:stdgo.Error -> Void, _query:String, _args:Array<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _releaseConn = _releaseConn;
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._queryDC(_db, _ctx, _txctx, _dc, _releaseConn, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _query(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<stdgo.AnyInterface>, _strategy:T_connReuseStrategy):stdgo.Tuple<Rows, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._query(_db, _ctx, _query, _args, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function query(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.query(_db, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.queryContext(_db, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _execDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _query:String, _args:Array<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _release = _release;
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._execDC(_db, _ctx, _dc, _release, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _exec(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:Array<stdgo.AnyInterface>, _strategy:T_connReuseStrategy):stdgo.Tuple<Result, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._exec(_db, _ctx, _query, _args, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(_db:DB, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.exec(_db, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.execContext(_db, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepareDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void, _cg:T_stmtConnGrabber, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _release = _release;
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._prepareDC(_db, _ctx, _dc, _release, _cg, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepare(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _strategy:T_connReuseStrategy):stdgo.Tuple<Stmt, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._prepare(_db, _ctx, _query, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepare(_db:DB, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.prepare(_db, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepareContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.prepareContext(_db, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _retry(_db:DB, _fn:stdgo._internal.database.sql.Sql_T_connReuseStrategy.T_connReuseStrategy -> stdgo.Error):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _fn = _fn;
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._retry(_db, _fn);
    }
    static public function _putConnDBLocked(_db:DB, _dc:T_driverConn, _err:stdgo.Error):Bool {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._putConnDBLocked(_db, _dc, _err);
    }
    static public function _putConn(_db:DB, _dc:T_driverConn, _err:stdgo.Error, _resetSession:Bool):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._putConn(_db, _dc, _err, _resetSession);
    }
    static public function _noteUnusedDriverStatement(_db:DB, _c:T_driverConn, _ds:T_driverStmt):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _ds = (_ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._noteUnusedDriverStatement(_db, _c, _ds);
    }
    static public function _conn(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:T_connReuseStrategy):stdgo.Tuple<T_driverConn, stdgo.Error> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._conn(_db, _ctx, _strategy);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nextRequestKeyLocked(_db:DB):haxe.UInt64 {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._nextRequestKeyLocked(_db);
    }
    static public function _openNewConnection(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._openNewConnection(_db, _ctx);
    }
    static public function _connectionOpener(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionOpener(_db, _ctx);
    }
    static public function _maybeOpenNewConnections(_db:DB):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._maybeOpenNewConnections(_db);
    }
    static public function stats(_db:DB):DBStats {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.stats(_db);
    }
    static public function _connectionCleanerRunLocked(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):stdgo.Tuple<stdgo._internal.time.Time_Duration.Duration, Array<T_driverConn>> {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return {
            final obj = stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionCleanerRunLocked(_db, _d);
            { _0 : obj._0, _1 : [for (i in obj._1) i] };
        };
    }
    static public function _connectionCleaner(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._connectionCleaner(_db, _d);
    }
    static public function _startCleanerLocked(_db:DB):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._startCleanerLocked(_db);
    }
    static public function setConnMaxIdleTime(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setConnMaxIdleTime(_db, _d);
    }
    static public function setConnMaxLifetime(_db:DB, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setConnMaxLifetime(_db, _d);
    }
    static public function setMaxOpenConns(_db:DB, _n:StdTypes.Int):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setMaxOpenConns(_db, _n);
    }
    static public function setMaxIdleConns(_db:DB, _n:StdTypes.Int):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.setMaxIdleConns(_db, _n);
    }
    static public function _shortestIdleTimeLocked(_db:DB):stdgo._internal.time.Time_Duration.Duration {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._shortestIdleTimeLocked(_db);
    }
    static public function _maxIdleConnsLocked(_db:DB):StdTypes.Int {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._maxIdleConnsLocked(_db);
    }
    static public function close(_db:DB):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.close(_db);
    }
    static public function ping(_db:DB):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.ping(_db);
    }
    static public function pingContext(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension.pingContext(_db, _ctx);
    }
    static public function _pingDC(_db:DB, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn, _release:stdgo.Error -> Void):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        final _release = _release;
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._pingDC(_db, _ctx, _dc, _release);
    }
    static public function _removeDepLocked(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):() -> stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dep = (_dep : stdgo.AnyInterface);
        return () -> stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._removeDepLocked(_db, _x, _dep)();
    }
    static public function _removeDep(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):stdgo.Error {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dep = (_dep : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._removeDep(_db, _x, _dep);
    }
    static public function _addDepLocked(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dep = (_dep : stdgo.AnyInterface);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._addDepLocked(_db, _x, _dep);
    }
    static public function _addDep(_db:DB, _x:T_finalCloser, _dep:stdgo.AnyInterface):Void {
        final _db = (_db : stdgo.Ref<stdgo._internal.database.sql.Sql_DB.DB>);
        final _dep = (_dep : stdgo.AnyInterface);
        stdgo._internal.database.sql.Sql_DB_static_extension.DB_static_extension._addDep(_db, _x, _dep);
    }
}
