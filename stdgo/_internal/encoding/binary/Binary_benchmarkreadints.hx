package stdgo._internal.encoding.binary;
function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _ls:stdgo._internal.encoding.binary.Binary_struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_struct.Struct);
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_byteslicereader.T_byteSliceReader>);
        var _r:stdgo._internal.io.Io_reader.Reader = stdgo.Go.asInterface(_bsr);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L638"
        _b.setBytes((30i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L639"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L640"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                (@:checkr _bsr ?? throw "null pointer dereference")._remain = stdgo._internal.encoding.binary.Binary__big._big;
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L642"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int8)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L643"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int16)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L644"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int32)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L645"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int64)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L646"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint8)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L647"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint16)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L648"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint32)));
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L649"
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint64)));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L651"
        _b.stopTimer();
        var _want = (stdgo._internal.encoding.binary.Binary__s._s?.__copy__() : stdgo._internal.encoding.binary.Binary_struct.Struct);
        _want.float32 = (0 : stdgo.GoFloat64);
        _want.float64 = (0 : stdgo.GoFloat64);
        _want.complex64 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L660"
        if ((((@:checkr _b ?? throw "null pointer dereference").n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_ls)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L661"
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ls)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
        };
    }
