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
@:structInit @:using(stdgo._internal.encoding.json.Json_UnmarshalTypeError_static_extension.UnmarshalTypeError_static_extension) class UnmarshalTypeError {
    public var value : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var offset : stdgo.GoInt64 = 0;
    public var struct_ : stdgo.GoString = "";
    public var field : stdgo.GoString = "";
    public function new(?value:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?offset:stdgo.GoInt64, ?struct_:stdgo.GoString, ?field:stdgo.GoString) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (offset != null) this.offset = offset;
        if (struct_ != null) this.struct_ = struct_;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnmarshalTypeError(value, type, offset, struct_, field);
    }
}
