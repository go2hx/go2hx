package stdgo.database.sql;
class NullInt64_static_extension {
    static public function value(_n:NullInt64):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullInt64_static_extension.NullInt64_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullInt64, _value:stdgo.AnyInterface):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt64.NullInt64>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullInt64_static_extension.NullInt64_static_extension.scan(_n, _value);
    }
}
