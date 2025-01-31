package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class Rows_static_extension {
    @:interfacetypeffun
    static public function next(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows, _dest:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>):stdgo.Error return t.next(_dest);
    @:interfacetypeffun
    static public function close(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function columns(t:stdgo._internal.database.sql.driver.Driver_Rows.Rows):stdgo.Slice<stdgo.GoString> return t.columns();
}
