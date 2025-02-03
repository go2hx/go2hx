package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.T_noRows_static_extension) abstract T_noRows(stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows) from stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows to stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_noRows.T_noRows();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
