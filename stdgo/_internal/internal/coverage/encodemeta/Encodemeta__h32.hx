package stdgo._internal.internal.coverage.encodemeta;
function _h32(_x:stdgo.GoUInt32, _h:stdgo._internal.hash.Hash_hash.Hash, _tmp:stdgo.Slice<stdgo.GoUInt8>):Void {
        _tmp = (_tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _tmp = (_tmp.__append__(...((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L58"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32(_tmp, _x);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L59"
        _h.write(_tmp);
    }
