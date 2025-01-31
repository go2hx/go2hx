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
function _benchMarshalBytesError(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
        var _sample = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _v = (stdgo.Go.setRef(({ bytes : (stdgo._internal.bytes.Bytes_repeat.repeat(_sample, (((_n / (_sample.length) : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt)).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.json.Json_T__struct_0.T__struct_0)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__struct_0.T__struct_0>);
        {};
        var _dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.Ref<stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>);
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), __12:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                    };
{
                        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_dummy))), __13:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                        };
                    };
                    _i++;
                };
            };
        };
    }
