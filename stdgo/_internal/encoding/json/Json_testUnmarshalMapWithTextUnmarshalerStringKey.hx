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
function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p:stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"FOO\": \"1\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (_p != null && _p.exists((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString)) ? { _0 : _p[(("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __4:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("Key \"foo\" does not exist in map: %v" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
