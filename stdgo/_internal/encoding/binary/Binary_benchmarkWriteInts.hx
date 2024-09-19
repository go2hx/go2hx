package stdgo._internal.encoding.binary;
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w:stdgo._internal.io.Io_Writer.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((30i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int8));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int16));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int32));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.int64));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint8));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint16));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint32));
                stdgo._internal.encoding.binary.Binary_write.write(_w, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s.uint64));
            });
        };
        _b.stopTimer();
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes_equal.equal(_buf.bytes(), (stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((stdgo._internal.encoding.binary.Binary__big._big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
