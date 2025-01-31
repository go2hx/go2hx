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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension) class T_decodeState {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _opcode : stdgo.GoInt = 0;
    public var _scan : stdgo._internal.encoding.json.Json_T_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_T_scanner.T_scanner);
    public var _errorContext : stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext>);
    public var _savedError : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_opcode:stdgo.GoInt, ?_scan:stdgo._internal.encoding.json.Json_T_scanner.T_scanner, ?_errorContext:stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext>, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) {
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_opcode != null) this._opcode = _opcode;
        if (_scan != null) this._scan = _scan;
        if (_errorContext != null) this._errorContext = _errorContext;
        if (_savedError != null) this._savedError = _savedError;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeState(_data, _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    }
}
