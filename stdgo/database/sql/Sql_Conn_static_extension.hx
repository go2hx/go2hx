package stdgo.database.sql;
class Conn_static_extension {
    static public function close(_c:Conn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.close(_c);
    }
    static public function _close(_c:Conn, _err:stdgo.Error):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._close(_c, _err);
    }
    static public function _txCtx(_c:Conn):stdgo._internal.context.Context_Context.Context {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._txCtx(_c);
    }
    static public function _closemuRUnlockCondReleaseConn(_c:Conn, _err:stdgo.Error):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._closemuRUnlockCondReleaseConn(_c, _err);
    }
    static public function beginTx(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _opts:TxOptions):stdgo.Tuple<Tx, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.database.sql.Sql_TxOptions.TxOptions>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.beginTx(_c, _ctx, _opts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function raw(_c:Conn, _f:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _f = _f;
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.raw(_c, _f);
    }
    static public function prepareContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.prepareContext(_c, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryRowContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _query = (_query : stdgo.GoString);
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.queryRowContext(_c, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function queryContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.queryContext(_c, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.execContext(_c, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pingContext(_c:Conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        return stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension.pingContext(_c, _ctx);
    }
    static public function _grabConn(_c:Conn, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.database.sql.Sql_Conn.Conn>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Conn_static_extension.Conn_static_extension._grabConn(_c, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
