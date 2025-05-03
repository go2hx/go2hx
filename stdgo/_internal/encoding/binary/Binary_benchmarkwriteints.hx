package stdgo._internal.encoding.binary;
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface(_buf);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L668"
        _b.setBytes((30i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L669"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L670"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L671"
                _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L672"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int8));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L673"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int16));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L674"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int32));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L675"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int64));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L676"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint8));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L677"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint16));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L678"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint32));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L679"
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint64));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L681"
        _b.stopTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L682"
        if ((((@:checkr _b ?? throw "null pointer dereference").n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes_equal.equal(_buf.bytes(), (stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L683"
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
