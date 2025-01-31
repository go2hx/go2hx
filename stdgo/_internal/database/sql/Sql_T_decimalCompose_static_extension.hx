package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
@:keep class T_decimalCompose_static_extension {
    @:interfacetypeffun
    static public function compose(t:stdgo._internal.database.sql.Sql_T_decimalCompose.T_decimalCompose, _form:stdgo.GoUInt8, _negative:Bool, _coefficient:stdgo.Slice<stdgo.GoUInt8>, _exponent:stdgo.GoInt32):stdgo.Error return t.compose(_form, _negative, _coefficient, _exponent);
}
