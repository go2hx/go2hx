package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _slice = (new stdgo.Slice<Bool>((4 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadBoolSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface((new stdgo.Slice<Bool>(4, 4, ...[false, true, true, true]) : stdgo.Slice<Bool>)));
    }
