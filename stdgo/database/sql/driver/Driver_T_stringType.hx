package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.T_stringType_static_extension) abstract T_stringType(stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType) from stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType to stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_stringType.T_stringType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
