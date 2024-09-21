package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_writeStringChecker_asInterface) class T_writeStringChecker_static_extension {
    @:keep
    static public function write( _c:stdgo.Ref<_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeString( _c:stdgo.Ref<_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker> = _c;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _c._called = true;
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
}
