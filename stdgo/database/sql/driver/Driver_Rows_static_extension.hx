package stdgo.database.sql.driver;
class Rows_static_extension {
    static public function next(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows, _dest:Array<Value>):stdgo.Error {
        final _dest = ([for (i in _dest) i] : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        return stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.next(t, _dest);
    }
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Error {
        return stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.close(t);
    }
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):Array<String> {
        return [for (i in stdgo._internal.database.sql.driver.Driver_Rows_static_extension.Rows_static_extension.columns(t)) i];
    }
}
