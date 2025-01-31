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
function testCompactSeparators(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37>(2, 2, ...[({ _in : ("{\"\u2028\": 1}" : stdgo.GoString), _compact : ("{\"\u2028\":1}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37), ({ _in : ("{\"\u2029\" :2}" : stdgo.GoString), _compact : ("{\"\u2029\":2}" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _compact : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37>);
        for (__4 => _tt in _tests) {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            {
                var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("Compact(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                } else {
                    var _s = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_s != (_tt._compact)) {
                        @:check2r _t.errorf(("Compact(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._compact));
                    };
                };
            };
        };
    }
