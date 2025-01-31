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
@:keep @:allow(stdgo._internal.encoding.json.Json.UnmarshalTypeError_asInterface) class UnmarshalTypeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError> = _e;
        if ((((@:checkr _e ?? throw "null pointer dereference").struct_ != stdgo.Go.str()) || ((@:checkr _e ?? throw "null pointer dereference").field != stdgo.Go.str()) : Bool)) {
            return (((((((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString) + (" into Go struct field " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").struct_?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").field?.__copy__() : stdgo.GoString) + (" of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString) + (" into Go value of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
