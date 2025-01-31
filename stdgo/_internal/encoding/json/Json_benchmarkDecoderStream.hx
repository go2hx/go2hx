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
function benchmarkDecoderStream(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.reportAllocs();
        @:check2r _b.stopTimer();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        @:check2 _buf.writeString((((("\"" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        {
            var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _ones = ((stdgo._internal.strings.Strings_repeat.repeat((" 1\n" : stdgo.GoString), (300000 : stdgo.GoInt)) + ("\n\n\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                if ((_i % (300000 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    @:check2 _buf.writeString(_ones.__copy__());
                };
_x = (null : stdgo.AnyInterface);
{
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                    if (((_err != null) || (_x != stdgo.Go.toInterface((1 : stdgo.GoFloat64))) : Bool)) {
                        @:check2r _b.fatalf(("Decode: %v after %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i++;
            };
        };
    }
