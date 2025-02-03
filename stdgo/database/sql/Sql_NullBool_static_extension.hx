package stdgo.database.sql;
class NullBool_static_extension {
    static public function value(_n:NullBool):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullBool_static_extension.NullBool_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullBool, _value:stdgo.AnyInterface):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.database.sql.Sql_NullBool.NullBool>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullBool_static_extension.NullBool_static_extension.scan(_n, _value);
    }
}
