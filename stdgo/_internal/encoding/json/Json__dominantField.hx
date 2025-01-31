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
function _dominantField(_fields:stdgo.Slice<stdgo._internal.encoding.json.Json_T_field.T_field>):{ var _0 : stdgo._internal.encoding.json.Json_T_field.T_field; var _1 : Bool; } {
        if (((((_fields.length) > (1 : stdgo.GoInt) : Bool) && (_fields[(0 : stdgo.GoInt)]._index.length) == ((_fields[(1 : stdgo.GoInt)]._index.length)) : Bool) && (_fields[(0 : stdgo.GoInt)]._tag == _fields[(1 : stdgo.GoInt)]._tag) : Bool)) {
            return { _0 : (new stdgo._internal.encoding.json.Json_T_field.T_field() : stdgo._internal.encoding.json.Json_T_field.T_field), _1 : false };
        };
        return { _0 : _fields[(0 : stdgo.GoInt)], _1 : true };
    }
