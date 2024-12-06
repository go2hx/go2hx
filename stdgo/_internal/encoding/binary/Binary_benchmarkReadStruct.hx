package stdgo._internal.encoding.binary;
function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>);
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Struct.Struct>)));
        _b.setBytes((stdgo._internal.encoding.binary.Binary__dataSize._dataSize(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s))?.__copy__()) : stdgo.GoInt64));
        var _t = (stdgo._internal.encoding.binary.Binary__s._s?.__copy__() : stdgo._internal.encoding.binary.Binary_Struct.Struct);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _bsr._remain = _buf.bytes();
stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_Struct.Struct>)));
                _i++;
            };
        };
        _b.stopTimer();
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s), stdgo.Go.toInterface(_t)) : Bool)) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__s._s));
        };
    }
