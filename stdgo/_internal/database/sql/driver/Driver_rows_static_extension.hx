package stdgo._internal.database.sql.driver;
@:keep class Rows_static_extension {
    @:interfacetypeffun
    static public function next(t:stdgo._internal.database.sql.driver.Driver_rows.Rows, _dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_value.Value>):stdgo.Error return t.next(_dest);
    @:interfacetypeffun
    static public function close(t:stdgo._internal.database.sql.driver.Driver_rows.Rows):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_rows.Rows):stdgo.Slice<stdgo.GoString> return t.columns();
}
