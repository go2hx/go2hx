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
function _cachedTypeFields(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_structFields.T_structFields {
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.json.Json__fieldCache._fieldCache.load(stdgo.Go.toInterface(_t)), _f:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)) : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)?.__copy__();
            };
        };
        var __tmp__ = @:check2 stdgo._internal.encoding.json.Json__fieldCache._fieldCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.encoding.json.Json__typeFields._typeFields(_t)))), _f:stdgo.AnyInterface = __tmp__._0, __12:Bool = __tmp__._1;
        return (stdgo.Go.typeAssert((_f : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)) : stdgo._internal.encoding.json.Json_T_structFields.T_structFields)?.__copy__();
    }
