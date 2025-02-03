package stdgo.database.sql;
class T_driverResult_static_extension {
    static public function rowsAffected(_dr:T_driverResult):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.rowsAffected(_dr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_dr:T_driverResult):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.lastInsertId(_dr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):Void {
        stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.unlock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverResult.T_driverResult):Void {
        stdgo._internal.database.sql.Sql_T_driverResult_static_extension.T_driverResult_static_extension.lock(__self__);
    }
}
