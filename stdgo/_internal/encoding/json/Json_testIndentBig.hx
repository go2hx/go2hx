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
function testIndentBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        @:check2r _t.parallel();
        stdgo._internal.encoding.json.Json__initBig._initBig();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo._internal.encoding.json.Json__jsonBig._jsonBig, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Indent1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = @:check2 _buf.bytes();
        if ((_b.length) == ((stdgo._internal.encoding.json.Json__jsonBig._jsonBig.length))) {
            @:check2r _t.fatalf(("Indent(jsonBig) did not get bigger" : stdgo.GoString));
        };
        var _buf1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _err = (stdgo._internal.encoding.json.Json_indent.indent((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _b, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Indent2: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b1 = @:check2 _buf1.bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, _b)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Indent(Indent(jsonBig)) != Indent(jsonBig)" : stdgo.GoString)));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, _b);
            return;
        };
        @:check2 _buf1.reset();
        {
            var _err = (stdgo._internal.encoding.json.Json_compact.compact((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), _b) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b1 = @:check2 _buf1.bytes();
        if (!stdgo._internal.bytes.Bytes_equal.equal(_b1, stdgo._internal.encoding.json.Json__jsonBig._jsonBig)) {
            @:check2r _t.error(stdgo.Go.toInterface(("Compact(Indent(jsonBig)) != jsonBig" : stdgo.GoString)));
            stdgo._internal.encoding.json.Json__diff._diff(_t, _b1, stdgo._internal.encoding.json.Json__jsonBig._jsonBig);
            return;
        };
    }
