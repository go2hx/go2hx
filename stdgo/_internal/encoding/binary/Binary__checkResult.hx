package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _dir:stdgo.GoString, _order:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {
        if (_err != null) {
            @:check2r _t.errorf(("%v %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_have, _want)) {
            @:check2r _t.errorf(("%v %v:\n\thave %+v\n\twant %+v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), _have, _want);
        };
    }
