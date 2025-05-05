package stdgo._internal.encoding.binary;
function _sizeof(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L503"
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L505"
                {
                    var _s = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_t.elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L506"
                        return (_s * _t.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _sum = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L511"
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_t.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        var _s = (stdgo._internal.encoding.binary.Binary__sizeof._sizeof(_t.field(_i).type) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L513"
                        if ((_s < (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L514"
                            return (-1 : stdgo.GoInt);
                        };
_sum = (_sum + (_s) : stdgo.GoInt);
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L518"
                return _sum;
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L524"
                return (_t.size() : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary.go#L527"
        return (-1 : stdgo.GoInt);
    }
