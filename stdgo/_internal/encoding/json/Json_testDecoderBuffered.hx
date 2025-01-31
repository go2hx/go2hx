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
function testDecoderBuffered(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("{\"Name\": \"Gopher\"} extra " : stdgo.GoString));
        var _m:stdgo._internal.encoding.json.Json_T__struct_41.T__struct_41 = ({ name : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__struct_41.T__struct_41);
        var _d = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _err = (@:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_41.T__struct_41>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_m.name != (("Gopher" : stdgo.GoString))) {
            @:check2r _t.errorf(("Name = %q; want Gopher" : stdgo.GoString), stdgo.Go.toInterface(_m.name));
        };
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(@:check2r _d.buffered()), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((_rest : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (" extra " : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("Remaining = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
