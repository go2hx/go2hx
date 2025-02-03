package stdgo.database.sql.driver;
class Execer_static_extension {
    static public function exec(t:stdgo._internal.database.sql.driver.Driver_Execer.Execer, _query:String, _args:Array<Value>):stdgo.Tuple<Result, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        final _args = ([for (i in _args) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return {
            final obj = stdgo._internal.database.sql.driver.Driver_Execer_static_extension.Execer_static_extension.exec(t, _query, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
