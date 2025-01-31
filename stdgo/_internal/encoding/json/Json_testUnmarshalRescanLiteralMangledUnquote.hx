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
function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _p:stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((("{\"开源\":\"12345开源\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (_p != null && _p.exists((("开源" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString)) ? { _0 : _p[(("开源" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __4:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("Key \"开源\" does not exist in map: %v" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
        {};
        var _t1 = (new stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(("aaa\tbbb" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t2:stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 = ({} : stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
            @:check2r _t.errorf(("Marshal and Unmarshal roundtrip mismatch: want %q got %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        var _input = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((("FOO" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString), stdgo.Go.str());
x.set((("\"" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString), stdgo.Go.str());
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_input)), _encoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Marshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got:stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_encoded, stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _want = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((("foo" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString), stdgo.Go.str());
x.set((("\"" : stdgo.GoString) : stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString), stdgo.Go.str());
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString, stdgo.GoString>);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got))) {
            @:check2r _t.fatalf(("Unexpected roundtrip result:\nwant: %q\ngot:  %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
