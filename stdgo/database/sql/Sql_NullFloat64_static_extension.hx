package stdgo.database.sql;
class NullFloat64_static_extension {
    static public function value(_n:NullFloat64):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullFloat64_static_extension.NullFloat64_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullFloat64, _value:stdgo.AnyInterface):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullFloat64_static_extension.NullFloat64_static_extension.scan(_n, _value);
    }
}
