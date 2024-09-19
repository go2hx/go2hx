package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_noReadFrom_asInterface) class T_noReadFrom_static_extension {
    @:keep
    static public function write( _w:stdgo.Ref<_internal.io_test.Io_test_T_noReadFrom.T_noReadFrom>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.io_test.Io_test_T_noReadFrom.T_noReadFrom> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._w.write(_p);
    }
}
