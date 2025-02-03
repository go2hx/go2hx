package stdgo.database.sql.driver;
class T_stringType_static_extension {
    static public function convertValue(_:T_stringType, _v:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_stringType_static_extension.T_stringType_static_extension.convertValue(_, _v);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
