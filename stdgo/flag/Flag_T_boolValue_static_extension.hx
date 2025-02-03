package stdgo.flag;
class T_boolValue_static_extension {
    static public function isBoolFlag(_b:stdgo.Pointer<T_boolValue>):Bool {
        return stdgo._internal.flag.Flag_T_boolValue_static_extension.T_boolValue_static_extension.isBoolFlag(_b);
    }
    static public function string(_b:stdgo.Pointer<T_boolValue>):String {
        return stdgo._internal.flag.Flag_T_boolValue_static_extension.T_boolValue_static_extension.string(_b);
    }
    static public function get(_b:stdgo.Pointer<T_boolValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_T_boolValue_static_extension.T_boolValue_static_extension.get(_b);
    }
    static public function set(_b:stdgo.Pointer<T_boolValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_boolValue_static_extension.T_boolValue_static_extension.set(_b, _s);
    }
}
