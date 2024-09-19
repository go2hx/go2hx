package stdgo._internal.encoding.binary;
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _res:Bool = false;
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(false));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
    }
