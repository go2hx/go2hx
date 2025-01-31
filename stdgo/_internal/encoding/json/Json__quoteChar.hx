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
function _quoteChar(_c:stdgo.GoUInt8):stdgo.GoString {
        if (_c == ((39 : stdgo.GoUInt8))) {
            return ("\'\\\'\'" : stdgo.GoString);
        };
        if (_c == ((34 : stdgo.GoUInt8))) {
            return ("\'\"\'" : stdgo.GoString);
        };
        var _s = (stdgo._internal.strconv.Strconv_quote.quote((_c : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        return ((("\'" : stdgo.GoString) + (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
