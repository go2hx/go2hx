package stdgo._internal.encoding.binary;
function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ls:stdgo._internal.encoding.binary.Binary_Struct.Struct = ({} : stdgo._internal.encoding.binary.Binary_Struct.Struct);
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>);
        var _r:stdgo._internal.io.Io_Reader.Reader = stdgo.Go.asInterface(_bsr);
        _b.setBytes((12i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = (stdgo._internal.encoding.binary.Binary__big._big.__slice__((30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float32)));
                stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float64)));
            });
        };
        _b.stopTimer();
        var _want = (stdgo._internal.encoding.binary.Binary__s._s?.__copy__() : stdgo._internal.encoding.binary.Binary_Struct.Struct);
        _want.int8 = (0 : stdgo.GoInt8);
        _want.int16 = (0 : stdgo.GoInt16);
        _want.int32 = (0 : stdgo.GoInt32);
        _want.int64 = (0i64 : stdgo.GoInt64);
        _want.uint8 = (0 : stdgo.GoUInt8);
        _want.uint16 = (0 : stdgo.GoUInt16);
        _want.uint32 = (0u32 : stdgo.GoUInt32);
        _want.uint64 = (0i64 : stdgo.GoUInt64);
        _want.complex64 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>);
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want)) : Bool)) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want));
        };
    }