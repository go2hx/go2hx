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
@:structInit @:using(stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension) class T_scanner {
    public var _step : (stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt = null;
    public var _endTop : Bool = false;
    public var _parseState : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _bytes : stdgo.GoInt64 = 0;
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:stdgo.Slice<stdgo.GoInt>, ?_err:stdgo.Error, ?_bytes:stdgo.GoInt64) {
        if (_step != null) this._step = _step;
        if (_endTop != null) this._endTop = _endTop;
        if (_parseState != null) this._parseState = _parseState;
        if (_err != null) this._err = _err;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanner(_step, _endTop, _parseState, _err, _bytes);
    }
}
