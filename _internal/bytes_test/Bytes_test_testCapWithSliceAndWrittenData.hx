package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        _buf.write((("test" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _n = (_buf.cap() : stdgo.GoInt);
        if (_n != ((10 : stdgo.GoInt))) {
            _t.errorf(("expected 10, got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
