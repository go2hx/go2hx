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
function _newSliceEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            var _p = (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t.elem()) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if ((!_p.implements_(stdgo._internal.encoding.json.Json__marshalerType._marshalerType) && !_p.implements_(stdgo._internal.encoding.json.Json__textMarshalerType._textMarshalerType) : Bool)) {
                return stdgo._internal.encoding.json.Json__encodeByteSlice._encodeByteSlice;
            };
        };
        var _enc = (new stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder(stdgo._internal.encoding.json.Json__newArrayEncoder._newArrayEncoder(_t)) : stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder);
        return _enc._encode;
    }
