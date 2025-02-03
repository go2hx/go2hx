package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.T_defaultConverter_static_extension) abstract T_defaultConverter(stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter) from stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter to stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter {
    public function new() this = new stdgo._internal.database.sql.driver.Driver_T_defaultConverter.T_defaultConverter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
