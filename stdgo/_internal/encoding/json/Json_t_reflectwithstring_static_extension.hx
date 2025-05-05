package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_reflectWithString_asInterface) class T_reflectWithString_static_extension {
    @:keep
    @:tdfield
    static public function _resolve( _w:stdgo.Ref<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString> = _w;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L940"
        if ((@:checkr _w ?? throw "null pointer dereference")._k.kind() == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            (@:checkr _w ?? throw "null pointer dereference")._ks = ((@:checkr _w ?? throw "null pointer dereference")._k.string() : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L942"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L944"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert(((@:checkr _w ?? throw "null pointer dereference")._k.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
            }, _tm = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L945"
                if ((((@:checkr _w ?? throw "null pointer dereference")._k.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (@:checkr _w ?? throw "null pointer dereference")._k.isNil() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L946"
                    return (null : stdgo.Error);
                };
                var __tmp__ = _tm.marshalText(), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                (@:checkr _w ?? throw "null pointer dereference")._ks = (_buf : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L950"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L952"
        {
            final __value__ = (@:checkr _w ?? throw "null pointer dereference")._k.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                (@:checkr _w ?? throw "null pointer dereference")._ks = stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _w ?? throw "null pointer dereference")._k.int_(), (10 : stdgo.GoInt))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L955"
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                (@:checkr _w ?? throw "null pointer dereference")._ks = stdgo._internal.strconv.Strconv_formatuint.formatUint((@:checkr _w ?? throw "null pointer dereference")._k.uint(), (10 : stdgo.GoInt))?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L958"
                return (null : stdgo.Error);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L960"
        throw stdgo.Go.toInterface(("unexpected map key type" : stdgo.GoString));
    }
}
