package stdgo.database.sql.driver;
class RowsAffected_static_extension {
    static public function rowsAffected(_v:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsAffected_static_extension.RowsAffected_static_extension.rowsAffected(_v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function lastInsertId(_:RowsAffected):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_RowsAffected_static_extension.RowsAffected_static_extension.lastInsertId(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
