package stdgo.database.sql.driver;
class NotNull_static_extension {
    static public function convertValue(_n:NotNull, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_NotNull_static_extension.NotNull_static_extension.convertValue(_n, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
