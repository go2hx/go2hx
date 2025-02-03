package stdgo.database.sql;
class NullByte_static_extension {
    static public function value(_n:NullByte):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullByte_static_extension.NullByte_static_extension.value(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_n:NullByte, _value:stdgo.AnyInterface):stdgo.Error {
        final _n = (_n : stdgo.Ref<stdgo._internal.database.sql.Sql_NullByte.NullByte>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullByte_static_extension.NullByte_static_extension.scan(_n, _value);
    }
}
