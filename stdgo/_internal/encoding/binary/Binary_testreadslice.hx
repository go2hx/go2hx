package stdgo._internal.encoding.binary;
function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(stdgo._internal.encoding.binary.Binary__src._src)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("ReadSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__res._res));
    }
