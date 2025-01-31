package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _order:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _b:stdgo.Slice<stdgo.GoUInt8>, _s1:stdgo.AnyInterface):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), _order, _s1) : stdgo.Error);
        stdgo._internal.encoding.binary.Binary__checkResult._checkResult(_t, ("Write" : stdgo.GoString), _order, _err, stdgo.Go.toInterface(@:check2r _buf.bytes()), stdgo.Go.toInterface(_b));
    }
