package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(stdgo._internal.encoding.binary.Binary__src._src)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("ReadSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__res._res));
    }
