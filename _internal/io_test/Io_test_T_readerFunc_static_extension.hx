package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_readerFunc_asInterface) class T_readerFunc_static_extension {
    @:keep
    static public function read( _f:_internal.io_test.Io_test_T_readerFunc.T_readerFunc, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:_internal.io_test.Io_test_T_readerFunc.T_readerFunc = _f;
        return _f(_p);
    }
}
