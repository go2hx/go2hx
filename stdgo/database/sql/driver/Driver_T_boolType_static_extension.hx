package stdgo.database.sql.driver;
class T_boolType_static_extension {
    static public function convertValue(_:T_boolType, _src:stdgo.AnyInterface):stdgo.Tuple<Value, stdgo.Error> {
        final _src = (_src : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_T_boolType_static_extension.T_boolType_static_extension.convertValue(_, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_:T_boolType):String {
        return stdgo._internal.database.sql.driver.Driver_T_boolType_static_extension.T_boolType_static_extension.string(_);
    }
}
