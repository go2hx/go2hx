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
function _genValue(_n:stdgo.GoInt):stdgo.AnyInterface {
        if ((_n > (1 : stdgo.GoInt) : Bool)) {
            {
                final __value__ = stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genArray._genArray(_n));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genMap._genMap(_n));
                };
            };
        };
        {
            final __value__ = stdgo._internal.math.rand.Rand_intn.intn((3 : stdgo.GoInt));
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_intn.intn((2 : stdgo.GoInt)) == ((0 : stdgo.GoInt)));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.math.rand.Rand_normFloat64.normFloat64());
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__genString._genString((30 : stdgo.GoFloat64)));
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
