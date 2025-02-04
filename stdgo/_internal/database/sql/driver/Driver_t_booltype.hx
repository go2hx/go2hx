package stdgo._internal.database.sql.driver;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_t_booltype_static_extension.T_boolType_static_extension) class T_boolType {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_boolType();
    }
}
