package stdgo._internal.encoding.binary;
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_slice.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_buf.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _bsr._remain = _buf;
stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_slice));
                _i++;
            };
        };
    }
