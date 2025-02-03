package stdgo.database.sql.driver;
class T_noRows_static_extension {
    static public function rowsAffected(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_noRows_static_extension.T_noRows_static_extension.rowsAffected(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:T_noRows):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_noRows_static_extension.T_noRows_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
