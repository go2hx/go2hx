package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class ColumnConverter_static_extension {
    @:interfacetypeffun
    static public function columnConverter(t:stdgo._internal.database.sql.driver.Driver_ColumnConverter.ColumnConverter, _idx:stdgo.GoInt):stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter return t.columnConverter(_idx);
}
