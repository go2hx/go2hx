package stdgo.flag;
class T_float64Value_static_extension {
    static public function string(_f:stdgo.Pointer<T_float64Value>):String {
        return stdgo._internal.flag.Flag_T_float64Value_static_extension.T_float64Value_static_extension.string(_f);
    }
    static public function get(_f:stdgo.Pointer<T_float64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_T_float64Value_static_extension.T_float64Value_static_extension.get(_f);
    }
    static public function set(_f:stdgo.Pointer<T_float64Value>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_float64Value_static_extension.T_float64Value_static_extension.set(_f, _s);
    }
}
