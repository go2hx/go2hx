package stdgo._internal.math.bits;
@:keep @:allow(stdgo._internal.math.bits.Bits.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.math.bits.Bits_T_errorString.T_errorString):stdgo.GoString {
        @:recv var _e:stdgo._internal.math.bits.Bits_T_errorString.T_errorString = _e;
        return (("runtime error: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function runtimeError( _e:stdgo._internal.math.bits.Bits_T_errorString.T_errorString):Void {
        @:recv var _e:stdgo._internal.math.bits.Bits_T_errorString.T_errorString = _e;
    }
}