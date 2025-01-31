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
@:keep @:allow(stdgo._internal.encoding.json.Json.MarshalerError_asInterface) class MarshalerError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError> = _e;
        var _srcFunc = ((@:checkr _e ?? throw "null pointer dereference")._sourceFunc?.__copy__() : stdgo.GoString);
        if (_srcFunc == (stdgo.Go.str())) {
            _srcFunc = ("MarshalJSON" : stdgo.GoString);
        };
        return (((((("json: error calling " : stdgo.GoString) + _srcFunc?.__copy__() : stdgo.GoString) + (" for type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
