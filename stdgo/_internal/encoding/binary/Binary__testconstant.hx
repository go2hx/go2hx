package stdgo._internal.encoding.binary;
function _testConstant(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (stdgo._internal.encoding.binary.Binary_putuvarint.putUvarint(_buf, (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L17"
        if (_n != (_max)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L18"
            _t.errorf(("MaxVarintLen%d = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_n));
        };
    }
