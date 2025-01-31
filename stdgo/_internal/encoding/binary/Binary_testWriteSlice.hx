package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__res._res)) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("WriteSlice" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian), _err, stdgo.Go.toInterface(@:check2r _buf.bytes()), stdgo.Go.toInterface(stdgo._internal.encoding.binary.Binary__src._src));
    }
