package stdgo._internal.compress.bzip2;
function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = stdgo._internal.compress.bzip2.Bzip2__mustDecodeHex._mustDecodeHex(("425a6839314159265359b5aa5098000000600040000004200021008283177245385090b5aa5098" : stdgo.GoString));
        var _r = (stdgo._internal.compress.bzip2.Bzip2_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b))) : stdgo._internal.io.Io_Reader.Reader);
        {
            var __tmp__ = _r.read((null : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.errorf(("Read(nil) = (%d, %v), want (0, nil)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
    }