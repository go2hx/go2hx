package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:keep @:allow(_internal.flag_test.Flag_test.T_zeroPanicker_asInterface) class T_zeroPanicker_static_extension {
    @:keep
    static public function string( _f:stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker> = _f;
        if (!_f._dontPanic) {
            throw stdgo.Go.toInterface(("panic!" : stdgo.GoString));
        };
        return _f._v?.__copy__();
    }
    @:keep
    static public function set( _f:stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<_internal.flag_test.Flag_test_T_zeroPanicker.T_zeroPanicker> = _f;
        _f._v = _s?.__copy__();
        return (null : stdgo.Error);
    }
}
