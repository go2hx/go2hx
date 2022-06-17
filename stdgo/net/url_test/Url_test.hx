package stdgo.net.url_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function examplePathEscape():Void {
        var _path:GoString = stdgo.net.url.Url.pathEscape(((("my/cool+blog&about,stuff" : GoString))));
        stdgo.fmt.Fmt.println(_path);
    }
function examplePathUnescape():Void {
        var _escapedPath:GoString = ((("my%2Fcool+blog&about%2Cstuff" : GoString)));
        var __tmp__ = stdgo.net.url.Url.pathUnescape(_escapedPath), _path:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_path);
    }
function exampleQueryEscape():Void {
        var _query:GoString = stdgo.net.url.Url.queryEscape(((("my/cool+blog&about,stuff" : GoString))));
        stdgo.fmt.Fmt.println(_query);
    }
function exampleQueryUnescape():Void {
        var _escapedQuery:GoString = ((("my%2Fcool%2Bblog%26about%2Cstuff" : GoString)));
        var __tmp__ = stdgo.net.url.Url.queryUnescape(_escapedQuery), _query:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_query);
    }
function exampleValues():Void {
        var _v:Values = Go.map();
        _v.set(((("name" : GoString))), ((("Ava" : GoString))));
        _v.add(((("friend" : GoString))), ((("Jess" : GoString))));
        _v.add(((("friend" : GoString))), ((("Sarah" : GoString))));
        _v.add(((("friend" : GoString))), ((("Zoe" : GoString))));
        stdgo.fmt.Fmt.println(_v.get(((("name" : GoString)))));
        stdgo.fmt.Fmt.println(_v.get(((("friend" : GoString)))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("friend" : GoString)))] : ((null : Slice<GoString>))));
    }
function exampleValues_Add():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau" : GoString))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("cat sounds" : GoString)))] : ((null : Slice<GoString>))));
    }
function exampleValues_Del():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau" : GoString))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("cat sounds" : GoString)))] : ((null : Slice<GoString>))));
        _v.del(((("cat sounds" : GoString))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("cat sounds" : GoString)))] : ((null : Slice<GoString>))));
    }
function exampleValues_Encode():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew/" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau$$" : GoString))));
        stdgo.fmt.Fmt.println(_v.encode());
    }
function exampleValues_Get():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau" : GoString))));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(_v.get(((("cat sounds" : GoString))))));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(_v.get(((("dog sounds" : GoString))))));
    }
function exampleValues_Has():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau" : GoString))));
        stdgo.fmt.Fmt.println(_v.has(((("cat sounds" : GoString)))));
        stdgo.fmt.Fmt.println(_v.has(((("dog sounds" : GoString)))));
    }
function exampleValues_Set():Void {
        var _v:Values = Go.map();
        _v.add(((("cat sounds" : GoString))), ((("meow" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mew" : GoString))));
        _v.add(((("cat sounds" : GoString))), ((("mau" : GoString))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("cat sounds" : GoString)))] : ((null : Slice<GoString>))));
        _v.set(((("cat sounds" : GoString))), ((("meow" : GoString))));
        stdgo.fmt.Fmt.println((_v != null ? _v[((("cat sounds" : GoString)))] : ((null : Slice<GoString>))));
    }
function exampleURL():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("http://bing.com/search?q=dotnet" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        _u.scheme = ((("https" : GoString)));
        _u.host = ((("google.com" : GoString)));
        var _q:Values = _u.query();
        _q.set(((("q" : GoString))), ((("golang" : GoString))));
        _u.rawQuery = _q.encode();
        stdgo.fmt.Fmt.println(_u);
    }
function exampleURL_roundtrip():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.com/foo%2fbar" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.path);
        stdgo.fmt.Fmt.println(_u.rawPath);
        stdgo.fmt.Fmt.println(((_u.toString() : GoString)));
    }
function exampleURL_ResolveReference():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("../../..//search?q=dotnet" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.net.url.Url.parse(((("http://example.com/directory/" : GoString)))), _base:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_base.resolveReference(_u));
    }
function exampleParseQuery():Void {
        var __tmp__ = stdgo.net.url.Url.parseQuery("x=1&y=2&y=3"), _m:Values = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_toJSON(Go.toInterface(_m)));
    }
function exampleURL_EscapedPath():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("http://example.com/x/y%2Fz" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(((("Path:" : GoString))), _u.path);
        stdgo.fmt.Fmt.println(((("RawPath:" : GoString))), _u.rawPath);
        stdgo.fmt.Fmt.println(((("EscapedPath:" : GoString))), _u.escapedPath());
    }
function exampleURL_EscapedFragment():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("http://example.com/#x/y%2Fz" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(((("Fragment:" : GoString))), _u.fragment);
        stdgo.fmt.Fmt.println(((("RawFragment:" : GoString))), _u.rawFragment);
        stdgo.fmt.Fmt.println(((("EscapedFragment:" : GoString))), _u.escapedFragment());
    }
function exampleURL_Hostname():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org:8000/path" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.hostname());
        {
            var __tmp__ = stdgo.net.url.Url.parse(((("https://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]:17000" : GoString))));
            _u = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.hostname());
    }
function exampleURL_IsAbs():Void {
        var _u:URL = ((({ host : ((("example.com" : GoString))), path : ((("foo" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)) == null ? null : (({ host : ((("example.com" : GoString))), path : ((("foo" : GoString))), scheme : "", opaque : "", user : ((null : Ref<Userinfo>)), rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL)).__copy__());
        stdgo.fmt.Fmt.println(_u.isAbs());
        _u.scheme = ((("http" : GoString)));
        stdgo.fmt.Fmt.println(_u.isAbs());
    }
function exampleURL_MarshalBinary():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org" : GoString)))), _u:Ref<URL> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = _u.marshalBinary(), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_b));
    }
function exampleURL_Parse():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        var __tmp__ = _u.parse(((("/foo" : GoString)))), _rel:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_rel);
        {
            var __tmp__ = _u.parse((((":foo" : GoString))));
            _err = __tmp__._1;
        };
        {
            var __tmp__ = try {
                { value : ((((_err.__underlying__().value : Dynamic)) : T_error)), ok : true };
            } catch(_) {
                { value : ((null : Ref<T_error>)), ok : false };
            }, _0 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                stdgo.log.Log.fatal(Go.toInterface(_err));
            };
        };
    }
function exampleURL_Port():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.port());
        {
            var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org:8080" : GoString))));
            _u = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.port());
    }
function exampleURL_Query():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org/?a=1&a=2&b=&=3&&&&" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        var _q:Values = _u.query();
        stdgo.fmt.Fmt.println((_q != null ? _q[((("a" : GoString)))] : ((null : Slice<GoString>))));
        stdgo.fmt.Fmt.println(_q.get(((("b" : GoString)))));
        stdgo.fmt.Fmt.println(_q.get(((("" : GoString)))));
    }
function exampleURL_String():Void {
        var _u:Ref<URL> = (({ scheme : ((("https" : GoString))), user : stdgo.net.url.Url.userPassword(((("me" : GoString))), ((("pass" : GoString)))), host : ((("example.com" : GoString))), path : ((("foo/bar" : GoString))), rawQuery : ((("x=1&y=2" : GoString))), fragment : ((("anchor" : GoString))), opaque : "", rawPath : "", forceQuery : false, rawFragment : "" } : URL));
        stdgo.fmt.Fmt.println(((_u.toString() : GoString)));
        _u.opaque = ((("opaque" : GoString)));
        stdgo.fmt.Fmt.println(((_u.toString() : GoString)));
    }
function exampleURL_UnmarshalBinary():Void {
        var _u:Ref<URL> = ((new URL() : URL));
        var _err:stdgo.Error = _u.unmarshalBinary(((((("https://example.org/foo" : GoString))) : Slice<GoByte>)));
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_u));
    }
function exampleURL_Redacted():Void {
        var _u:Ref<URL> = (({ scheme : ((("https" : GoString))), user : stdgo.net.url.Url.userPassword(((("user" : GoString))), ((("password" : GoString)))), host : ((("example.com" : GoString))), path : ((("foo/bar" : GoString))), opaque : "", rawPath : "", forceQuery : false, rawQuery : "", fragment : "", rawFragment : "" } : URL));
        stdgo.fmt.Fmt.println(_u.redacted());
        _u.user = stdgo.net.url.Url.userPassword(((("me" : GoString))), ((("newerPassword" : GoString))));
        stdgo.fmt.Fmt.println(_u.redacted());
    }
function exampleURL_RequestURI():Void {
        var __tmp__ = stdgo.net.url.Url.parse(((("https://example.org/path?foo=bar" : GoString)))), _u:Ref<URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(_u.requestURI());
    }
function _toJSON(_m:AnyInterface):GoString {
        var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_m)), _js:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        return stdgo.strings.Strings.replaceAll(((_js : GoString)), ((("," : GoString))), (((", " : GoString))));
    }
