package stdgo.database.sql;
class Stmt_static_extension {
    static public function _finalClose(_s:Stmt):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._finalClose(_s);
    }
    static public function close(_s:Stmt):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.close(_s);
    }
    static public function queryRow(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryRow(_s, ...[for (i in _args) i]);
    }
    static public function queryRowContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):Row {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryRowContext(_s, _ctx, ...[for (i in _args) i]);
    }
    static public function query(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.query(_s, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function queryContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Rows, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.queryContext(_s, _ctx, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _prepareOnConnLocked(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _dc:T_driverConn):stdgo.Tuple<T_driverStmt, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        final _dc = (_dc : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverConn.T_driverConn>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._prepareOnConnLocked(_s, _ctx, _dc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _connStmt(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _strategy:T_connReuseStrategy):stdgo.Tuple.Tuple4<T_driverConn, stdgo.Error -> Void, T_driverStmt, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._connStmt(_s, _ctx, _strategy);
            { _0 : obj._0, _1 : _0 -> obj._1(_0), _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _removeClosedStmtLocked(_s:Stmt):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension._removeClosedStmtLocked(_s);
    }
    static public function exec(_s:Stmt, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.exec(_s, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function execContext(_s:Stmt, _ctx:stdgo._internal.context.Context_Context.Context, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<Result, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.database.sql.Sql_Stmt.Stmt>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Stmt_static_extension.Stmt_static_extension.execContext(_s, _ctx, ...[for (i in _args) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
