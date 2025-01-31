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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_arrayEncoder_asInterface) class T_arrayEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _ae:stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _ae:stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder = _ae?.__copy__();
        @:check2r _e.writeByte((91 : stdgo.GoUInt8));
        var _n = (_v.len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _e.writeByte((44 : stdgo.GoUInt8));
                };
_ae._elemEnc(_e, _v.index(_i).__copy__(), _opts.__copy__());
                _i++;
            };
        };
        @:check2r _e.writeByte((93 : stdgo.GoUInt8));
    }
}
