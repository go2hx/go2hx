package stdgo.database.sql;
class NullString_static_extension {
    static public function value(_ns:NullString):stdgo.Tuple<Value, stdgo.Error> {
        return {
            final obj = stdgo._internal.database.sql.Sql_NullString_static_extension.NullString_static_extension.value(_ns);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scan(_ns:NullString, _value:stdgo.AnyInterface):stdgo.Error {
        final _ns = (_ns : stdgo.Ref<stdgo._internal.database.sql.Sql_NullString.NullString>);
        final _value = (_value : stdgo.AnyInterface);
        return stdgo._internal.database.sql.Sql_NullString_static_extension.NullString_static_extension.scan(_ns, _value);
    }
}
