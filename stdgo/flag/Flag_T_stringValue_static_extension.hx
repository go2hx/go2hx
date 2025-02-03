package stdgo.flag;
class T_stringValue_static_extension {
    static public function string(_s:stdgo.Pointer<T_stringValue>):String {
        return stdgo._internal.flag.Flag_T_stringValue_static_extension.T_stringValue_static_extension.string(_s);
    }
    static public function get(_s:stdgo.Pointer<T_stringValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_T_stringValue_static_extension.T_stringValue_static_extension.get(_s);
    }
    static public function set(_s:stdgo.Pointer<T_stringValue>, _val:String):stdgo.Error {
        final _val = (_val : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_stringValue_static_extension.T_stringValue_static_extension.set(_s, _val);
    }
}
