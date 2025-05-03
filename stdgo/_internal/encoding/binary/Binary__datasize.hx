package stdgo._internal.encoding.binary;
function _dataSize(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L477"
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L479"
                {
                    var _s = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type().elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L480"
                        return (_s * _v.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L485"
                {
                    var __tmp__ = stdgo._internal.encoding.binary.Binary__structsize._structSize.load(stdgo.Go.toInterface(_t)), _size:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L486"
                        return (stdgo.Go.typeAssert((_size : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                var _size = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_t) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L489"
                stdgo._internal.encoding.binary.Binary__structsize._structSize.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_size));
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L490"
                return _size;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L493"
                if (_v.isValid()) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L494"
                    return stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_v.type());
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L498"
        return (-1 : stdgo.GoInt);
    }
