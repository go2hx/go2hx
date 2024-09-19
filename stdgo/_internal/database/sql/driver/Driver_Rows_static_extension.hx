package stdgo._internal.database.sql.driver;
@:keep class Rows_static_extension {
    static public function next(t:Rows, _dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):stdgo.Error return t.next(_dest);
    static public function close(t:Rows):stdgo.Error return t.close();
    static public function columns(t:Rows):stdgo.Slice<stdgo.GoString> return t.columns();
}
