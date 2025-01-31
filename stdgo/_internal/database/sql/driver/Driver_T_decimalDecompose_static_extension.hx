package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep class T_decimalDecompose_static_extension {
    @:interfacetypeffun
    static public function decompose(t:stdgo._internal.database.sql.driver.Driver_T_decimalDecompose.T_decimalDecompose, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; var _2 : stdgo.Slice<stdgo.GoUInt8>; var _3 : stdgo.GoInt32; } return t.decompose(_buf);
}
