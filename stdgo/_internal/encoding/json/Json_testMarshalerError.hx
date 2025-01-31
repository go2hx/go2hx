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
function testMarshalerError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = ("test variable" : stdgo.GoString);
        var _st = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_s)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _errText = ("json: test error" : stdgo.GoString);
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35>(2, 2, ...[({ _err : (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(_st, stdgo._internal.fmt.Fmt_errorf.errorf(_errText?.__copy__()), stdgo.Go.str()?.__copy__()) : stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>), _want : (((("json: error calling MarshalJSON for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _errText?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35), ({ _err : (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(_st, stdgo._internal.fmt.Fmt_errorf.errorf(_errText?.__copy__()), ("TestMarshalerError" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>), _want : (((("json: error calling TestMarshalerError for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _errText?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _err : (null : stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>), _want : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35>);
        for (_i => _tt in _tests) {
            var _got = (@:check2r _tt._err.error()?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                @:check2r _t.errorf(("MarshalerError test %d, got: %s, want: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
