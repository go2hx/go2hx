package stdgo.database.sql;
class Tx_static_extension {
    static public function queryRow(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryRow(_tx, _query, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryRowContext(_tx, _ctx, _query, ...[for (i in _args) i]);
    }
    static public function query(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.query(_tx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.queryContext(_tx, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function exec(_tx:Tx, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.exec(_tx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.execContext(_tx, _ctx, _query, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stmt(_tx:Tx, _stmt:Stmt):Stmt {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _stmt = (_stmt : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.stmt(_tx, _stmt);
    }
    static public function stmtContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _stmt:Stmt):Stmt {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _stmt = (_stmt : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.stmtContext(_tx, _ctx, _stmt);
    }
    static public function prepare(_tx:Tx, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.prepare(_tx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function prepareContext(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context, _query:String):stdgo.Tuple<Stmt, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.prepareContext(_tx, _ctx, _query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rollback(_tx:Tx):stdgo.Error {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.rollback(_tx);
    }
    static public function _rollback(_tx:Tx, _discardConn:Bool):stdgo.Error {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._rollback(_tx, _discardConn);
    }
    static public function commit(_tx:Tx):stdgo.Error {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension.commit(_tx);
    }
    static public function _closePrepared(_tx:Tx):Void {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._closePrepared(_tx);
    }
    static public function _closemuRUnlockRelease(_tx:Tx, _0:stdgo.Error):Void {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _0 = (_0 : stdgo.Error);
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._closemuRUnlockRelease(_tx, _0);
    }
    static public function _txCtx(_tx:Tx):stdgo._internal.context.Context_Context.Context {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._txCtx(_tx);
    }
    static public function _grabConn(_tx:Tx, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple.Tuple3<T_driverConn, T_releaseConn, stdgo.Error> {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._grabConn(_tx, _ctx);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _close(_tx:Tx, _err:stdgo.Error):Void {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._close(_tx, _err);
    }
    static public function _isDone(_tx:Tx):Bool {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        return stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._isDone(_tx);
    }
    static public function _awaitDone(_tx:Tx):Void {
        final _tx = (_tx : stdgo.Ref<stdgo._internal.database.sql.Sql_Tx.Tx>);
        stdgo._internal.database.sql.Sql_Tx_static_extension.Tx_static_extension._awaitDone(_tx);
    }
}
