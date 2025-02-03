package stdgo.database.sql.driver;
class Queryer_static_extension {
    static public function query(t:stdgo._internal.database.sql.driver.Driver_Queryer.Queryer, _query:String, _args:Array<Value>):stdgo.Tuple<Rows, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Queryer_static_extension.Queryer_static_extension.query(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
