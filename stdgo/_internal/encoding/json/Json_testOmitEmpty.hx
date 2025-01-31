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
function testOmitEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _o:stdgo._internal.encoding.json.Json_Optionals.Optionals = ({} : stdgo._internal.encoding.json.Json_Optionals.Optionals);
        _o.sw = ("something" : stdgo.GoString);
        _o.mr = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _o.mo = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o) : stdgo.Ref<stdgo._internal.encoding.json.Json_Optionals.Optionals>))), stdgo.Go.str()?.__copy__(), (" " : stdgo.GoString)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_got : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (stdgo._internal.encoding.json.Json__optionalsExpected._optionalsExpected)) {
                @:check2r _t.errorf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__optionalsExpected._optionalsExpected));
            };
        };
    }
