package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function _dataSize(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.GoInt {
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    var _s = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type().elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        return (_s * _v.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                {
                    var __tmp__ = @:check2 stdgo._internal.encoding.binary.Binary__structSize._structSize.load(stdgo.Go.toInterface(_t)), _size:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return (stdgo.Go.typeAssert((_size : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                var _size = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_t) : stdgo.GoInt);
                @:check2 stdgo._internal.encoding.binary.Binary__structSize._structSize.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_size));
                return _size;
            } else {
                if (_v.isValid()) {
                    return stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type());
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
