package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(_internal.bufio_test.Bufio_test.T_teststringwriter_asInterface) class T_teststringwriter_static_extension {
    @:keep
    static public function _check( _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _write:stdgo.GoString, _writeString:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter> = _w;
        _t.helper();
        if (_w._write != (_write)) {
            _t.errorf(("write: expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_write), stdgo.Go.toInterface(_w._write));
        };
        if (_w._writeString != (_writeString)) {
            _t.errorf(("writeString: expected %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_writeString), stdgo.Go.toInterface(_w._writeString));
        };
    }
    @:keep
    static public function writeString( _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter> = _w;
        _w._writeString = (_w._writeString + (_s)?.__copy__() : stdgo.GoString);
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.bufio_test.Bufio_test_T_teststringwriter.T_teststringwriter> = _w;
        _w._write = (_w._write + ((_b : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
