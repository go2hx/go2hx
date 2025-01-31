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
@:keep @:allow(stdgo._internal.encoding.json.Json.T_tagOptions_asInterface) class T_tagOptions_static_extension {
    @:keep
    @:tdfield
    static public function contains( _o:stdgo._internal.encoding.json.Json_T_tagOptions.T_tagOptions, _optionName:stdgo.GoString):Bool {
        @:recv var _o:stdgo._internal.encoding.json.Json_T_tagOptions.T_tagOptions = _o;
        if ((_o.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _s = ((_o : stdgo.GoString)?.__copy__() : stdgo.GoString);
        while (_s != (stdgo.Go.str())) {
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("," : stdgo.GoString));
                _name = @:tmpset0 __tmp__._0?.__copy__();
                _s = @:tmpset0 __tmp__._1?.__copy__();
            };
            if (_name == (_optionName)) {
                return true;
            };
        };
        return false;
    }
}
