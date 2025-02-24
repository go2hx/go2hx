package stdgo;
@:dox(hide) class T__interface_0_static_extension {
    static public function timeout(t:stdgo._internal.net.url.Url_t__interface_0.T__interface_0):Bool {
        return stdgo._internal.net.url.Url_t__interface_0_static_extension.T__interface_0_static_extension.timeout(t);
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.net.url.Url_t__interface_0.T__interface_0) from stdgo._internal.net.url.Url_t__interface_0.T__interface_0 to stdgo._internal.net.url.Url_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function timeout():Bool; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { timeout : () -> x.timeout(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_1_static_extension {
    static public function temporary(t:stdgo._internal.net.url.Url_t__interface_1.T__interface_1):Bool {
        return stdgo._internal.net.url.Url_t__interface_1_static_extension.T__interface_1_static_extension.temporary(t);
    }
}
@:dox(hide) @:forward abstract T__interface_1(stdgo._internal.net.url.Url_t__interface_1.T__interface_1) from stdgo._internal.net.url.Url_t__interface_1.T__interface_1 to stdgo._internal.net.url.Url_t__interface_1.T__interface_1 {
    @:from
    static function fromHaxeInterface(x:{ function temporary():Bool; }):T__interface_1 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_1 = { temporary : () -> x.temporary(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.url.Url.Error_static_extension) abstract Error(stdgo._internal.net.url.Url_error.Error) from stdgo._internal.net.url.Url_error.Error to stdgo._internal.net.url.Url_error.Error {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?uRL:String, ?err:stdgo.Error) this = new stdgo._internal.net.url.Url_error.Error((op : stdgo.GoString), (uRL : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.url.Url.URL_static_extension) abstract URL(stdgo._internal.net.url.Url_url.URL) from stdgo._internal.net.url.Url_url.URL to stdgo._internal.net.url.Url_url.URL {
    public var scheme(get, set) : String;
    function get_scheme():String return this.scheme;
    function set_scheme(v:String):String {
        this.scheme = (v : stdgo.GoString);
        return v;
    }
    public var opaque(get, set) : String;
    function get_opaque():String return this.opaque;
    function set_opaque(v:String):String {
        this.opaque = (v : stdgo.GoString);
        return v;
    }
    public var user(get, set) : Userinfo;
    function get_user():Userinfo return this.user;
    function set_user(v:Userinfo):Userinfo {
        this.user = (v : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var rawPath(get, set) : String;
    function get_rawPath():String return this.rawPath;
    function set_rawPath(v:String):String {
        this.rawPath = (v : stdgo.GoString);
        return v;
    }
    public var omitHost(get, set) : Bool;
    function get_omitHost():Bool return this.omitHost;
    function set_omitHost(v:Bool):Bool {
        this.omitHost = v;
        return v;
    }
    public var forceQuery(get, set) : Bool;
    function get_forceQuery():Bool return this.forceQuery;
    function set_forceQuery(v:Bool):Bool {
        this.forceQuery = v;
        return v;
    }
    public var rawQuery(get, set) : String;
    function get_rawQuery():String return this.rawQuery;
    function set_rawQuery(v:String):String {
        this.rawQuery = (v : stdgo.GoString);
        return v;
    }
    public var fragment(get, set) : String;
    function get_fragment():String return this.fragment;
    function set_fragment(v:String):String {
        this.fragment = (v : stdgo.GoString);
        return v;
    }
    public var rawFragment(get, set) : String;
    function get_rawFragment():String return this.rawFragment;
    function set_rawFragment(v:String):String {
        this.rawFragment = (v : stdgo.GoString);
        return v;
    }
    public function new(?scheme:String, ?opaque:String, ?user:Userinfo, ?host:String, ?path:String, ?rawPath:String, ?omitHost:Bool, ?forceQuery:Bool, ?rawQuery:String, ?fragment:String, ?rawFragment:String) this = new stdgo._internal.net.url.Url_url.URL(
(scheme : stdgo.GoString),
(opaque : stdgo.GoString),
(user : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>),
(host : stdgo.GoString),
(path : stdgo.GoString),
(rawPath : stdgo.GoString),
omitHost,
forceQuery,
(rawQuery : stdgo.GoString),
(fragment : stdgo.GoString),
(rawFragment : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.url.Url.Userinfo_static_extension) abstract Userinfo(stdgo._internal.net.url.Url_userinfo.Userinfo) from stdgo._internal.net.url.Url_userinfo.Userinfo to stdgo._internal.net.url.Url_userinfo.Userinfo {
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = (v : stdgo.GoString);
        return v;
    }
    public var _password(get, set) : String;
    function get__password():String return this._password;
    function set__password(v:String):String {
        this._password = (v : stdgo.GoString);
        return v;
    }
    public var _passwordSet(get, set) : Bool;
    function get__passwordSet():Bool return this._passwordSet;
    function set__passwordSet(v:Bool):Bool {
        this._passwordSet = v;
        return v;
    }
    public function new(?_username:String, ?_password:String, ?_passwordSet:Bool) this = new stdgo._internal.net.url.Url_userinfo.Userinfo((_username : stdgo.GoString), (_password : stdgo.GoString), _passwordSet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_encoding = stdgo._internal.net.url.Url_t_encoding.T_encoding;
typedef EscapeError = stdgo._internal.net.url.Url_escapeerror.EscapeError;
typedef InvalidHostError = stdgo._internal.net.url.Url_invalidhosterror.InvalidHostError;
typedef Values = stdgo._internal.net.url.Url_values.Values;
typedef ErrorPointer = stdgo._internal.net.url.Url_errorpointer.ErrorPointer;
class Error_static_extension {
    static public function temporary(_e:Error):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>);
        return stdgo._internal.net.url.Url_error_static_extension.Error_static_extension.temporary(_e);
    }
    static public function timeout(_e:Error):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>);
        return stdgo._internal.net.url.Url_error_static_extension.Error_static_extension.timeout(_e);
    }
    static public function error(_e:Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>);
        return stdgo._internal.net.url.Url_error_static_extension.Error_static_extension.error(_e);
    }
    static public function unwrap(_e:Error):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>);
        return stdgo._internal.net.url.Url_error_static_extension.Error_static_extension.unwrap(_e);
    }
}
typedef URLPointer = stdgo._internal.net.url.Url_urlpointer.URLPointer;
class URL_static_extension {
    static public function joinPath(_u:URL, _elem:haxe.Rest<String>):URL {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.joinPath(_u, ...[for (i in _elem) i]);
    }
    static public function unmarshalBinary(_u:URL, _text:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.unmarshalBinary(_u, _text);
    }
    static public function marshalBinary(_u:URL):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return {
            final obj = stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.marshalBinary(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function port(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.port(_u);
    }
    static public function hostname(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.hostname(_u);
    }
    static public function requestURI(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.requestURI(_u);
    }
    static public function query(_u:URL):Values {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.query(_u);
    }
    static public function resolveReference(_u:URL, _ref:URL):URL {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _ref = (_ref : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.resolveReference(_u, _ref);
    }
    static public function parse(_u:URL, _ref:String):stdgo.Tuple<URL, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _ref = (_ref : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.parse(_u, _ref);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAbs(_u:URL):Bool {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.isAbs(_u);
    }
    static public function redacted(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.redacted(_u);
    }
    static public function string(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.string(_u);
    }
    static public function escapedFragment(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.escapedFragment(_u);
    }
    static public function _setFragment(_u:URL, _f:String):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _f = (_f : stdgo.GoString);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension._setFragment(_u, _f);
    }
    static public function escapedPath(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension.escapedPath(_u);
    }
    static public function _setPath(_u:URL, _p:String):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _p = (_p : stdgo.GoString);
        return stdgo._internal.net.url.Url_url_static_extension.URL_static_extension._setPath(_u, _p);
    }
}
typedef UserinfoPointer = stdgo._internal.net.url.Url_userinfopointer.UserinfoPointer;
class Userinfo_static_extension {
    static public function string(_u:Userinfo):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
        return stdgo._internal.net.url.Url_userinfo_static_extension.Userinfo_static_extension.string(_u);
    }
    static public function password(_u:Userinfo):stdgo.Tuple<String, Bool> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
        return {
            final obj = stdgo._internal.net.url.Url_userinfo_static_extension.Userinfo_static_extension.password(_u);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function username(_u:Userinfo):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
        return stdgo._internal.net.url.Url_userinfo_static_extension.Userinfo_static_extension.username(_u);
    }
}
@:dox(hide) typedef T_encodingPointer = stdgo._internal.net.url.Url_t_encodingpointer.T_encodingPointer;
@:dox(hide) class T_encoding_static_extension {

}
typedef EscapeErrorPointer = stdgo._internal.net.url.Url_escapeerrorpointer.EscapeErrorPointer;
class EscapeError_static_extension {
    static public function error(_e:EscapeError):String {
        return stdgo._internal.net.url.Url_escapeerror_static_extension.EscapeError_static_extension.error(_e);
    }
}
typedef InvalidHostErrorPointer = stdgo._internal.net.url.Url_invalidhosterrorpointer.InvalidHostErrorPointer;
class InvalidHostError_static_extension {
    static public function error(_e:InvalidHostError):String {
        return stdgo._internal.net.url.Url_invalidhosterror_static_extension.InvalidHostError_static_extension.error(_e);
    }
}
typedef ValuesPointer = stdgo._internal.net.url.Url_valuespointer.ValuesPointer;
class Values_static_extension {
    static public function encode(_v:Values):String {
        return stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.encode(_v);
    }
    static public function has(_v:Values, _key:String):Bool {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.has(_v, _key);
    }
    static public function del(_v:Values, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.del(_v, _key);
    }
    static public function add(_v:Values, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.add(_v, _key, _value);
    }
    static public function set(_v:Values, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.set(_v, _key, _value);
    }
    static public function get(_v:Values, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.url.Url_values_static_extension.Values_static_extension.get(_v, _key);
    }
}
/**
    * Package url parses URLs and implements query escaping.
**/
class Url {
    /**
        * QueryUnescape does the inverse transformation of QueryEscape,
        * converting each 3-byte encoded substring of the form "%AB" into the
        * hex-decoded byte 0xAB.
        * It returns an error if any % is not followed by two hexadecimal
        * digits.
    **/
    static public inline function queryUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_queryunescape.queryUnescape(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * PathUnescape does the inverse transformation of PathEscape,
        * converting each 3-byte encoded substring of the form "%AB" into the
        * hex-decoded byte 0xAB. It returns an error if any % is not followed
        * by two hexadecimal digits.
        * 
        * PathUnescape is identical to QueryUnescape except that it does not
        * unescape '+' to ' ' (space).
    **/
    static public inline function pathUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_pathunescape.pathUnescape(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * QueryEscape escapes the string so it can be safely placed
        * inside a URL query.
    **/
    static public inline function queryEscape(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.url.Url_queryescape.queryEscape(_s);
    }
    /**
        * PathEscape escapes the string so it can be safely placed inside a URL path segment,
        * replacing special characters (including /) with %XX sequences as needed.
    **/
    static public inline function pathEscape(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.url.Url_pathescape.pathEscape(_s);
    }
    /**
        * User returns a Userinfo containing the provided username
        * and no password set.
    **/
    static public inline function user(_username:String):Userinfo {
        final _username = (_username : stdgo.GoString);
        return stdgo._internal.net.url.Url_user.user(_username);
    }
    /**
        * UserPassword returns a Userinfo containing the provided username
        * and password.
        * 
        * This functionality should only be used with legacy web sites.
        * RFC 2396 warns that interpreting Userinfo this way
        * “is NOT RECOMMENDED, because the passing of authentication
        * information in clear text (such as URI) has proven to be a
        * security risk in almost every case where it has been used.”
    **/
    static public inline function userPassword(_username:String, _password:String):Userinfo {
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        return stdgo._internal.net.url.Url_userpassword.userPassword(_username, _password);
    }
    /**
        * Parse parses a raw url into a URL structure.
        * 
        * The url may be relative (a path, without a host) or absolute
        * (starting with a scheme). Trying to parse a hostname and path
        * without a scheme is invalid but may not necessarily return an
        * error, due to parsing ambiguities.
    **/
    static public inline function parse(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        final _rawURL = (_rawURL : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_parse.parse(_rawURL);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseRequestURI parses a raw url into a URL structure. It assumes that
        * url was received in an HTTP request, so the url is interpreted
        * only as an absolute URI or an absolute path.
        * The string url is assumed not to have a #fragment suffix.
        * (Web browsers strip #fragment before sending the URL to a web server.)
    **/
    static public inline function parseRequestURI(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        final _rawURL = (_rawURL : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_parserequesturi.parseRequestURI(_rawURL);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseQuery parses the URL-encoded query string and returns
        * a map listing the values specified for each key.
        * ParseQuery always returns a non-nil map containing all the
        * valid query parameters found; err describes the first decoding error
        * encountered, if any.
        * 
        * Query is expected to be a list of key=value settings separated by ampersands.
        * A setting without an equals sign is interpreted as a key set to an empty
        * value.
        * Settings containing a non-URL-encoded semicolon are considered invalid.
    **/
    static public inline function parseQuery(_query:String):stdgo.Tuple<Values, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_parsequery.parseQuery(_query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * JoinPath returns a URL string with the provided path elements joined to
        * the existing path of base and the resulting path cleaned of any ./ or ../ elements.
    **/
    static public inline function joinPath(_base:String, _elem:haxe.Rest<String>):stdgo.Tuple<String, stdgo.Error> {
        final _base = (_base : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_joinpath.joinPath(_base, ...[for (i in _elem) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
