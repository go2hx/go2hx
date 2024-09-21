package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:keep @:allow(_internal.flag_test.Flag_test.T_flagVar_asInterface) class T_flagVar_static_extension {
    @:keep
    static public function set( _f:stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar> = _f;
        (_f : _internal.flag_test.Flag_test_T_flagVar.T_flagVar).__setData__(((_f : _internal.flag_test.Flag_test_T_flagVar.T_flagVar).__append__(_value?.__copy__())));
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _f:stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<_internal.flag_test.Flag_test_T_flagVar.T_flagVar> = _f;
        return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(((_f : _internal.flag_test.Flag_test_T_flagVar.T_flagVar) : stdgo.Slice<stdgo.GoString>)))?.__copy__();
    }
}
