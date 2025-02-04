package stdgo._internal.encoding.binary;
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _res:Bool = false;
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(false));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkresult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
    }
