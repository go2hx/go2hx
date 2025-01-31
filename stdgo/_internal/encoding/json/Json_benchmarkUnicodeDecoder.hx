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
function benchmarkUnicodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.reportAllocs();
        var _j = (("\"\\uD83D\\uDE01\"" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.setBytes((_j.length : stdgo.GoInt64));
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_j);
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _out:stdgo.GoString = ("" : stdgo.GoString);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        var _out__pointer__ = stdgo.Go.pointer(_out);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(_out__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
@:check2r _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _i++;
            };
        };
    }
