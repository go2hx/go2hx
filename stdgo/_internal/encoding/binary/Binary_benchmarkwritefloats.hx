package stdgo._internal.encoding.binary;
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface(_buf);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L818"
        _b.setBytes((12i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L819"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L820"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L821"
                _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L822"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.float32));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L823"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.float64));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L825"
        _b.stopTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L826"
        if ((((@:checkr _b ?? throw "null pointer dereference").n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes_equal.equal(_buf.bytes(), (stdgo._internal.encoding.binary.Binary__big._big.__slice__((30 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L827"
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((stdgo._internal.encoding.binary.Binary__big._big.__slice__((30 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
