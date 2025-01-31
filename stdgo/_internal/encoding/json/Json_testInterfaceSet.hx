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
function testInterfaceSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__4 => _tt in stdgo._internal.encoding.json.Json__interfaceSetTests._interfaceSetTests) {
            var _b = ({ x : _tt._pre } : stdgo._internal.encoding.json.Json_T__struct_9.T__struct_9);
            var _blob = (((("{\"X\":" : stdgo.GoString) + _tt._json?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_blob : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_9.T__struct_9>)))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Unmarshal %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_blob), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_b.x, _tt._post)) {
                @:check2r _t.errorf(("Unmarshal %#q into %#v: X=%#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_blob), _tt._pre, _b.x, _tt._post);
            };
        };
    }
