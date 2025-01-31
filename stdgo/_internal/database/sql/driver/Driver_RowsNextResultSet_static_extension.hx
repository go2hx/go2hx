package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class RowsNextResultSet_static_extension {
    @:interfacetypeffun
    static public function nextResultSet(t:stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet):stdgo.Error return t.nextResultSet();
    @:interfacetypeffun
    static public function hasNextResultSet(t:stdgo._internal.database.sql.driver.Driver_RowsNextResultSet.RowsNextResultSet):Bool return t.hasNextResultSet();
}
