package stdgo.database.sql.driver;
class Driver_static_extension {
    static public function open(t:stdgo._internal.database.sql.driver.Driver_Driver.Driver, _name:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Driver_static_extension.Driver_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
