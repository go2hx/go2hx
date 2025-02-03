package stdgo.database.sql.driver;
class DriverContext_static_extension {
    static public function openConnector(t:stdgo._internal.database.sql.driver.Driver_DriverContext.DriverContext, _name:String):stdgo.Tuple<Connector, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_DriverContext_static_extension.DriverContext_static_extension.openConnector(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
