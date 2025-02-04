package stdgo._internal.database.sql.driver;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_t_norows_static_extension.T_noRows_static_extension) class T_noRows {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noRows();
    }
}
