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
function testTagParsing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.json.Json__parseTag._parseTag(("field,foobar,foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _opts:stdgo._internal.encoding.json.Json_T_tagOptions.T_tagOptions = __tmp__._1;
        if (_name != (("field" : stdgo.GoString))) {
            @:check2r _t.fatalf(("name = %q, want field" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        for (__4 => _tt in (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46>(3, 3, ...[({ _opt : ("foobar" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46), ({ _opt : ("foo" : stdgo.GoString), _want : true } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46), ({ _opt : ("bar" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _opt : ("" : stdgo.GoString), _want : false } : stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46>)) {
            if (_opts.contains(_tt._opt?.__copy__()) != (_tt._want)) {
                @:check2r _t.errorf(("Contains(%q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._opt), stdgo.Go.toInterface(!_tt._want));
            };
        };
    }
