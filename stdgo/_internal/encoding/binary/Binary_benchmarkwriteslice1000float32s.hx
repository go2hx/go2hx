package stdgo._internal.encoding.binary;
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoFloat32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface(_buf);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L847"
        _b.setBytes((4000i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L848"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L849"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L850"
                _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L851"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_slice));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L853"
        _b.stopTimer();
    }
