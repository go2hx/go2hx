package stdgo.database.sql.driver;
class ValueConverter_static_extension {
    static public function convertValue(t:stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_ValueConverter_static_extension.ValueConverter_static_extension.convertValue(t, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
