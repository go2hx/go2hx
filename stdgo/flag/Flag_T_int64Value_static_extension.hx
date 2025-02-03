package stdgo.flag;
class T_int64Value_static_extension {
    static public function string(_i:stdgo.Pointer<T_int64Value>):String {
        return stdgo._internal.flag.Flag_T_int64Value_static_extension.T_int64Value_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_int64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_T_int64Value_static_extension.T_int64Value_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_int64Value>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_int64Value_static_extension.T_int64Value_static_extension.set(_i, _s);
    }
}
