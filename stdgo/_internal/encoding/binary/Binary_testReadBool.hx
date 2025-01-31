package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _res:Bool = false;
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _res__pointer__ = stdgo.Go.pointer(_res);
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(false));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
        _res = false;
        _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_res__pointer__));
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
    }
