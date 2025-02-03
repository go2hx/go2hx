package stdgo.flag;
class T_boolFuncValue_static_extension {
    static public function isBoolFlag(_f:T_boolFuncValue):Bool {
        return stdgo._internal.flag.Flag_T_boolFuncValue_static_extension.T_boolFuncValue_static_extension.isBoolFlag(_f);
    }
    static public function string(_f:T_boolFuncValue):String {
        return stdgo._internal.flag.Flag_T_boolFuncValue_static_extension.T_boolFuncValue_static_extension.string(_f);
    }
    static public function set(_f:T_boolFuncValue, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_T_boolFuncValue_static_extension.T_boolFuncValue_static_extension.set(_f, _s);
    }
}
