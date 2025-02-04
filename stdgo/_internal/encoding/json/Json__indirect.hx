package stdgo._internal.encoding.json;
function _indirect(_v:stdgo._internal.reflect.Reflect_value.Value, _decodingNull:Bool):{ var _0 : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler; var _1 : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler; var _2 : stdgo._internal.reflect.Reflect_value.Value; } {
        var _v0 = (_v?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _haveAddr = (false : Bool);
        if (((_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.type().name() != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _v.canAddr() : Bool)) {
            _haveAddr = true;
            _v = _v.addr()?.__copy__();
        };
        while (true) {
            if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_v.isNil() : Bool)) {
                var _e = (_v.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                if (((_e.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e.isNil() : Bool) && ((!_decodingNull || (_e.elem().kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) : Bool)) {
                    _haveAddr = false;
                    _v = _e?.__copy__();
                    continue;
                };
            };
            if (_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                break;
            };
            if ((_decodingNull && _v.canSet() : Bool)) {
                break;
            };
            if (((_v.elem().kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (stdgo.Go.toInterface(_v.elem().elem()) == stdgo.Go.toInterface(_v)) : Bool)) {
                _v = _v.elem()?.__copy__();
                break;
            };
            if (_v.isNil()) {
                _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
            };
            if (((_v.type().numMethod() > (0 : stdgo.GoInt) : Bool) && _v.canInterface() : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : false };
                    }, _u = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return { _0 : _u, _1 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _2 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value) };
                    };
                };
                if (!_decodingNull) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _1 : false };
                        }, _u = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            return { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : _u, _2 : (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value) };
                        };
                    };
                };
            };
            if (_haveAddr) {
                _v = _v0?.__copy__();
                _haveAddr = false;
            } else {
                _v = _v.elem()?.__copy__();
            };
        };
        return { _0 : (null : stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler), _1 : (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler), _2 : _v?.__copy__() };
    }
