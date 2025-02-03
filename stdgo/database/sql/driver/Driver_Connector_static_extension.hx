package stdgo.database.sql.driver;
class Connector_static_extension {
    static public function driver(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector):Driver_ {
        return stdgo._internal.database.sql.driver.Driver_Connector_static_extension.Connector_static_extension.driver(t);
    }
    static public function connect(t:stdgo._internal.database.sql.driver.Driver_Connector.Connector, _0:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Connector_static_extension.Connector_static_extension.connect(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
