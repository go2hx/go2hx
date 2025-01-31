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
@:structInit @:using(stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _d : stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState = ({} : stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState);
    public var _scanp : stdgo.GoInt = 0;
    public var _scanned : stdgo.GoInt64 = 0;
    public var _scan : stdgo._internal.encoding.json.Json_T_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_T_scanner.T_scanner);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _tokenState : stdgo.GoInt = 0;
    public var _tokenStack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_d:stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState, ?_scanp:stdgo.GoInt, ?_scanned:stdgo.GoInt64, ?_scan:stdgo._internal.encoding.json.Json_T_scanner.T_scanner, ?_err:stdgo.Error, ?_tokenState:stdgo.GoInt, ?_tokenStack:stdgo.Slice<stdgo.GoInt>) {
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_d != null) this._d = _d;
        if (_scanp != null) this._scanp = _scanp;
        if (_scanned != null) this._scanned = _scanned;
        if (_scan != null) this._scan = _scan;
        if (_err != null) this._err = _err;
        if (_tokenState != null) this._tokenState = _tokenState;
        if (_tokenStack != null) this._tokenStack = _tokenStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_r, _buf, _d, _scanp, _scanned, _scan, _err, _tokenState, _tokenStack);
    }
}
