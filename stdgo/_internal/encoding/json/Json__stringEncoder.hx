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
function _stringEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        if ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numberType._numberType.string() : String)) {
            var _numStr = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_numStr == (stdgo.Go.str())) {
                _numStr = ("0" : stdgo.GoString);
            };
            if (!stdgo._internal.encoding.json.Json__isValidNumber._isValidNumber(_numStr?.__copy__())) {
                @:check2r _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal %q" : stdgo.GoString), stdgo.Go.toInterface(_numStr)));
            };
            var _b = @:check2r _e.availableBuffer();
            _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(...(_numStr : Array<stdgo.GoUInt8>)));
            _b = stdgo._internal.encoding.json.Json__mayAppendQuote._mayAppendQuote(_b, _opts._quoted);
            @:check2r _e.write(_b);
            return;
        };
        if (_opts._quoted) {
            var _b = stdgo._internal.encoding.json.Json__appendString._appendString((null : stdgo.Slice<stdgo.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML);
            @:check2r _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(@:check2r _e.availableBuffer(), _b, false));
        } else {
            @:check2r _e.write(stdgo._internal.encoding.json.Json__appendString._appendString(@:check2r _e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML));
        };
    }
