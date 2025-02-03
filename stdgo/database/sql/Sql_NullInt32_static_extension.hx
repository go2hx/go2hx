package stdgo.database.sql;
class NullInt32_static_extension {
    static public function value(_n:NullInt32):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullInt32_static_extension.NullInt32_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullInt32, _value:stdgo.AnyInterface):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt32.NullInt32>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullInt32_static_extension.NullInt32_static_extension.scan(_n, _value);
    }
}
