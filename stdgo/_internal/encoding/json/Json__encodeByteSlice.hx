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
function _encodeByteSlice(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, __4:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if (_v.isNil()) {
            @:check2r _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _s = _v.bytes();
        var _encodedLen = (@:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodedLen((_s.length)) : stdgo.GoInt);
        @:check2r _e.grow((((("\"" : stdgo.GoString).length) + _encodedLen : stdgo.GoInt) + (("\"" : stdgo.GoString).length) : stdgo.GoInt));
        var _b = @:check2r _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        @:check2r stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b = (_b.__slice__(0, ((_b.length) + _encodedLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)));
        @:check2r _e.write(_b);
    }
