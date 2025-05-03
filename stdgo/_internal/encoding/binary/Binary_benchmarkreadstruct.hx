package stdgo._internal.encoding.binary;
function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader>);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L612"
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_struct.Struct>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L613"
        _b.setBytes((stdgo._internal.encoding.binary.Binary__datasize._dataSize(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary__s._s)))?.__copy__()) : stdgo.GoInt64));
        var _t = (stdgo._internal.encoding.binary.Binary__s._s?.__copy__() : stdgo._internal.encoding.binary.Binary_struct.Struct);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L615"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L616"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                (@:checkr _bsr ?? throw "null pointer dereference")._remain = _buf.bytes();
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L618"
                stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_struct.Struct>))));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L620"
        _b.stopTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L621"
        if ((((@:checkr _b ?? throw "null pointer dereference").n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary__s._s)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L622"
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary__s._s)));
        };
    }
