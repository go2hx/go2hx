package stdgo.flag;
class T_intValue_static_extension {
    static public function string(_i:stdgo.Pointer<T_intValue>):String {
        return stdgo._internal.flag.Flag_T_intValue_static_extension.T_intValue_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_intValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_T_intValue_static_extension.T_intValue_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_intValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_intValue_static_extension.T_intValue_static_extension.set(_i, _s);
    }
}
