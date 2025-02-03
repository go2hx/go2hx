package stdgo.database.sql;
class Result_static_extension {
    static public function rowsAffected(t:stdgo._internal.database.sql.Sql_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Result_static_extension.Result_static_extension.rowsAffected(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(t:stdgo._internal.database.sql.Sql_Result.Result):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_Result_static_extension.Result_static_extension.lastInsertId(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
