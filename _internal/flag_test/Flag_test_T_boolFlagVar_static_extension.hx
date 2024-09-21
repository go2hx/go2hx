package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:keep @:allow(_internal.flag_test.Flag_test.T_boolFlagVar_asInterface) class T_boolFlagVar_static_extension {
    @:keep
    static public function isBoolFlag( _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>):Bool {
        @:recv var _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar> = _b;
        return (_b._count < (4 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function set( _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar> = _b;
        if (_value == (("true" : stdgo.GoString))) {
            _b._count++;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.flag_test.Flag_test_T_boolFlagVar.T_boolFlagVar> = _b;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_b._count))?.__copy__();
    }
}
