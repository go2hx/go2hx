package stdgo._internal.encoding.binary;
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w:stdgo._internal.io.Io_writer.Writer = stdgo.Go.asInterface(_buf);
        @:check2r _b.setBytes((30i64 : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _buf.reset();
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int8));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int16));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int32));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int64));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint8));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint16));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint32));
stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint64));
                _i++;
            };
        };
        @:check2r _b.stopTimer();
        if ((((@:checkr _b ?? throw "null pointer dereference").n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes_equal.equal(@:check2r _buf.bytes(), (stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            @:check2r _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _buf.bytes()), stdgo.Go.toInterface((stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
