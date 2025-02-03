package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.T_boolType_static_extension) abstract T_boolType(stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType) from stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType to stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_boolType.T_boolType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
