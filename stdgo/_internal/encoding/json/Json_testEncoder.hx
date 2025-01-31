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
function testEncoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (stdgo._internal.encoding.json.Json__streamTest._streamTest.length) : Bool)) {
                var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _enc = stdgo._internal.encoding.json.Json_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)));
@:check2r _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
@:check2r _enc.setIndent(stdgo.Go.str().__copy__(), stdgo.Go.str().__copy__());
for (_j => _v in (stdgo._internal.encoding.json.Json__streamTest._streamTest.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.AnyInterface>)) {
                    {
                        var _err = (@:check2r _enc.encode(_v) : stdgo.Error);
                        if (_err != null) {
                            @:check2r _t.fatalf(("encode #%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                        };
                    };
                };
{
                    var __0 = ((@:check2 _buf.string() : stdgo.GoString).__copy__() : stdgo.GoString), __1 = (stdgo._internal.encoding.json.Json__nlines._nlines(stdgo._internal.encoding.json.Json__streamEncoded._streamEncoded.__copy__(), _i).__copy__() : stdgo.GoString);
var _want = __1, _have = __0;
                    if (_have != (_want)) {
                        @:check2r _t.errorf(("encoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        stdgo._internal.encoding.json.Json__diff._diff(_t, (_have : stdgo.Slice<stdgo.GoUInt8>), (_want : stdgo.Slice<stdgo.GoUInt8>));
                        break;
                    };
                };
                _i++;
            };
        };
    }
