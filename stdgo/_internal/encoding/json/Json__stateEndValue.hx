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
function _stateEndValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        var _n = ((@:checkr _s ?? throw "null pointer dereference")._parseState.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateEndTop._stateEndTop;
            (@:checkr _s ?? throw "null pointer dereference")._endTop = true;
            return stdgo._internal.encoding.json.Json__stateEndTop._stateEndTop(_s, _c);
        };
        if (stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue;
            return (9 : stdgo.GoInt);
        };
        var _ps = ((@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        {
            final __value__ = _ps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                if (_c == ((58 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateBeginValue._stateBeginValue;
                    return (3 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after object key" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateBeginString._stateBeginString;
                    return (4 : stdgo.GoInt);
                };
                if (_c == ((125 : stdgo.GoUInt8))) {
                    @:check2r _s._popParseState();
                    return (5 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after object key:value pair" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateBeginValue._stateBeginValue;
                    return (7 : stdgo.GoInt);
                };
                if (_c == ((93 : stdgo.GoUInt8))) {
                    @:check2r _s._popParseState();
                    return (8 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after array element" : stdgo.GoString));
            };
        };
        return @:check2r _s._error(_c, stdgo.Go.str()?.__copy__());
    }
