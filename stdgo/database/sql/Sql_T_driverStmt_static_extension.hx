package stdgo.database.sql;
class T_driverStmt_static_extension {
    static public function close(_ds:T_driverStmt):stdgo.Error {
        final _ds = (_ds : stdgo.Ref<stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt>);
        return stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.close(_ds);
    }
    public static function unlock(__self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt):Void {
        stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.unlock(__self__);
    }
    public static function lock(__self__:stdgo._internal.database.sql.Sql_T_driverStmt.T_driverStmt):Void {
        stdgo._internal.database.sql.Sql_T_driverStmt_static_extension.T_driverStmt_static_extension.lock(__self__);
    }
}
