package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
function _indirect(_v:stdgo._internal.reflect.Reflect_Value.Value, _decodingNull:Bool):{ var _0 : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler; var _1 : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler; var _2 : stdgo._internal.reflect.Reflect_Value.Value; } {
        var _v0 = (_v?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _haveAddr = (false : Bool);
        if (((_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _v.type().name() != (stdgo.Go.str()) : Bool) && _v.canAddr() : Bool)) {
            _haveAddr = true;
            _v = _v.addr()?.__copy__();
        };
        while (true) {
            if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_v.isNil() : Bool)) {
                var _e = (_v.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (((_e.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e.isNil() : Bool) && ((!_decodingNull || (_e.elem().kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) : Bool)) {
                    _haveAddr = false;
                    _v = _e?.__copy__();
                    continue;
                };
            };
            if (_v.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                break;
            };
            if ((_decodingNull && _v.canSet() : Bool)) {
                break;
            };
            if (((_v.elem().kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (stdgo.Go.toInterface(_v.elem().elem()) == stdgo.Go.toInterface(_v)) : Bool)) {
                _v = _v.elem()?.__copy__();
                break;
            };
            if (_v.isNil()) {
                _v.set(stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem())?.__copy__());
            };
            if (((_v.type().numMethod() > (0 : stdgo.GoInt) : Bool) && _v.canInterface() : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler), _1 : false };
                    }, _u = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return { _0 : _u, _1 : (null : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler), _2 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value) };
                    };
                };
                if (!_decodingNull) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler), _1 : false };
                        }, _u = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            return { _0 : (null : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler), _1 : _u, _2 : (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value) };
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
        return { _0 : (null : stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler), _1 : (null : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler), _2 : _v?.__copy__() };
    }
