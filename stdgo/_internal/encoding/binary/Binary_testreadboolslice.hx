package stdgo._internal.encoding.binary;
function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _slice = (new stdgo.Slice<Bool>((4 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("ReadBoolSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface((new stdgo.Slice<Bool>(4, 4, ...[false, true, true, true]) : stdgo.Slice<Bool>)));
    }
