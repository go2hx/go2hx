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
function testErrorMessageFromMisusedString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_n => _tt in stdgo._internal.encoding.json.Json__wrongStringTests._wrongStringTests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_tt._in?.__copy__());
            var _s:stdgo._internal.encoding.json.Json_WrongString.WrongString = ({} : stdgo._internal.encoding.json.Json_WrongString.WrongString);
            var _err = (@:check2r stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.json.Json_WrongString.WrongString>)))) : stdgo.Error);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__() : stdgo.GoString);
            if (_got != (_tt._err)) {
                @:check2r _t.errorf(("%d. got err = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
