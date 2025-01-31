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
function _appendFoldedName(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_in.length) : Bool)) {
                {
                    var _c = (_in[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                        if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                            _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        };
                        _out = (_out.__append__(_c));
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_in.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                _out = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune(_out, stdgo._internal.encoding.json.Json__foldRune._foldRune(_r));
                _i = (_i + (_n) : stdgo.GoInt);
            };
        };
        return _out;
    }
