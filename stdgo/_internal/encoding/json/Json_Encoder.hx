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
@:structInit @:using(stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _escapeHTML : Bool = false;
    public var _indentBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _indentPrefix : stdgo.GoString = "";
    public var _indentValue : stdgo.GoString = "";
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:stdgo.Slice<stdgo.GoUInt8>, ?_indentPrefix:stdgo.GoString, ?_indentValue:stdgo.GoString) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
        if (_indentBuf != null) this._indentBuf = _indentBuf;
        if (_indentPrefix != null) this._indentPrefix = _indentPrefix;
        if (_indentValue != null) this._indentValue = _indentValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_w, _err, _escapeHTML, _indentBuf, _indentPrefix, _indentValue);
    }
}
