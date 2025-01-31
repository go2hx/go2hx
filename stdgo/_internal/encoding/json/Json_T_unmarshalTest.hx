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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_unmarshalTest_static_extension.T_unmarshalTest_static_extension) class T_unmarshalTest {
    public var _in : stdgo.GoString = "";
    public var _ptr : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _out : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _golden : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_in:stdgo.GoString, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) {
        if (_in != null) this._in = _in;
        if (_ptr != null) this._ptr = _ptr;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_golden != null) this._golden = _golden;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_in, _ptr, _out, _err, _useNumber, _golden, _disallowUnknownFields);
    }
}
