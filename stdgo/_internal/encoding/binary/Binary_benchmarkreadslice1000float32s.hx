package stdgo._internal.encoding.binary;
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoFloat32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_slice.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L835"
        _b.setBytes((_buf.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L836"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L837"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                (@:checkr _bsr ?? throw "null pointer dereference")._remain = _buf;
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L839"
                stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_slice));
                _i++;
            };
        };
    }
