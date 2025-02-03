package stdgo.database.sql;
class Rows_static_extension {
    static public function _close(_rs:Rows, _err:stdgo.Error):stdgo.Error {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._close(_rs, _err);
    }
    static public function close(_rs:Rows):stdgo.Error {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.close(_rs);
    }
    static public function _closemuRUnlockIfHeldByScan(_rs:Rows):Void {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._closemuRUnlockIfHeldByScan(_rs);
    }
    static public function scan(_rs:Rows, _dest:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.scan(_rs, ...[for (i in _dest) i]);
    }
    static public function columnTypes(_rs:Rows):stdgo.Tuple<Array<ColumnType>, stdgo.Error> {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.columnTypes(_rs);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function columns(_rs:Rows):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.columns(_rs);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function err(_rs:Rows):stdgo.Error {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.err(_rs);
    }
    static public function nextResultSet(_rs:Rows):Bool {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.nextResultSet(_rs);
    }
    static public function _nextLocked(_rs:Rows):stdgo.Tuple<Bool, Bool> {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return {
            final obj = stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._nextLocked(_rs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_rs:Rows):Bool {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension.next(_rs);
    }
    static public function _awaitDone(_rs:Rows, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context, _closectx:stdgo._internal.context.Context_Context.Context):Void {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._awaitDone(_rs, _ctx, _txctx, _closectx);
    }
    static public function _initContextClose(_rs:Rows, _ctx:stdgo._internal.context.Context_Context.Context, _txctx:stdgo._internal.context.Context_Context.Context):Void {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._initContextClose(_rs, _ctx, _txctx);
    }
    static public function _lasterrOrErrLocked(_rs:Rows, _err:stdgo.Error):stdgo.Error {
        final _rs = (_rs : stdgo.Ref<stdgo._internal.database.sql.Sql_Rows.Rows>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.database.sql.Sql_Rows_static_extension.Rows_static_extension._lasterrOrErrLocked(_rs, _err);
    }
}
