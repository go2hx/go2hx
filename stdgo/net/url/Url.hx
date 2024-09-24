package stdgo.net.url;
class T__interface_0_static_extension {
    static public function timeout(t:stdgo._internal.net.url.Url_T__interface_0.T__interface_0):Bool {
        return stdgo._internal.net.url.Url_T__interface_0_static_extension.T__interface_0_static_extension.timeout(t);
    }
}
typedef T__interface_0 = stdgo._internal.net.url.Url_T__interface_0.T__interface_0;
class T__interface_1_static_extension {
    static public function temporary(t:stdgo._internal.net.url.Url_T__interface_1.T__interface_1):Bool {
        return stdgo._internal.net.url.Url_T__interface_1_static_extension.T__interface_1_static_extension.temporary(t);
    }
}
typedef T__interface_1 = stdgo._internal.net.url.Url_T__interface_1.T__interface_1;
@:structInit @:using(stdgo.net.url.Url.Error_static_extension) abstract Error(stdgo._internal.net.url.Url_Error.Error) from stdgo._internal.net.url.Url_Error.Error to stdgo._internal.net.url.Url_Error.Error {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = v;
        return v;
    }
    public var url(get, set) : String;
    function get_url():String return this.url;
    function set_url(v:String):String {
        this.url = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?op:String, ?url:String, ?err:stdgo.Error) this = new stdgo._internal.net.url.Url_Error.Error(op, url, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.url.Url.URL_static_extension) abstract URL(stdgo._internal.net.url.Url_URL.URL) from stdgo._internal.net.url.Url_URL.URL to stdgo._internal.net.url.Url_URL.URL {
    public var scheme(get, set) : String;
    function get_scheme():String return this.scheme;
    function set_scheme(v:String):String {
        this.scheme = v;
        return v;
    }
    public var opaque(get, set) : String;
    function get_opaque():String return this.opaque;
    function set_opaque(v:String):String {
        this.opaque = v;
        return v;
    }
    public var user(get, set) : Userinfo;
    function get_user():Userinfo return this.user;
    function set_user(v:Userinfo):Userinfo {
        this.user = v;
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var rawPath(get, set) : String;
    function get_rawPath():String return this.rawPath;
    function set_rawPath(v:String):String {
        this.rawPath = v;
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
        this.rawQuery = v;
        return v;
    }
    public var fragment(get, set) : String;
    function get_fragment():String return this.fragment;
    function set_fragment(v:String):String {
        this.fragment = v;
        return v;
    }
    public var rawFragment(get, set) : String;
    function get_rawFragment():String return this.rawFragment;
    function set_rawFragment(v:String):String {
        this.rawFragment = v;
        return v;
    }
    public function new(?scheme:String, ?opaque:String, ?user:Userinfo, ?host:String, ?path:String, ?rawPath:String, ?omitHost:Bool, ?forceQuery:Bool, ?rawQuery:String, ?fragment:String, ?rawFragment:String) this = new stdgo._internal.net.url.Url_URL.URL(
scheme,
opaque,
user,
host,
path,
rawPath,
omitHost,
forceQuery,
rawQuery,
fragment,
rawFragment);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.url.Url.Userinfo_static_extension) abstract Userinfo(stdgo._internal.net.url.Url_Userinfo.Userinfo) from stdgo._internal.net.url.Url_Userinfo.Userinfo to stdgo._internal.net.url.Url_Userinfo.Userinfo {
    public var _username(get, set) : String;
    function get__username():String return this._username;
    function set__username(v:String):String {
        this._username = v;
        return v;
    }
    public var _password(get, set) : String;
    function get__password():String return this._password;
    function set__password(v:String):String {
        this._password = v;
        return v;
    }
    public var _passwordSet(get, set) : Bool;
    function get__passwordSet():Bool return this._passwordSet;
    function set__passwordSet(v:Bool):Bool {
        this._passwordSet = v;
        return v;
    }
    public function new(?_username:String, ?_password:String, ?_passwordSet:Bool) this = new stdgo._internal.net.url.Url_Userinfo.Userinfo(_username, _password, _passwordSet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_encoding = stdgo._internal.net.url.Url_T_encoding.T_encoding;
typedef EscapeError = stdgo._internal.net.url.Url_EscapeError.EscapeError;
typedef InvalidHostError = stdgo._internal.net.url.Url_InvalidHostError.InvalidHostError;
typedef Values = stdgo._internal.net.url.Url_Values.Values;
class Error_static_extension {
    static public function temporary(_e:Error):Bool {
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.temporary(_e);
    }
    static public function timeout(_e:Error):Bool {
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.timeout(_e);
    }
    static public function error(_e:Error):String {
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.error(_e);
    }
    static public function unwrap(_e:Error):stdgo.Error {
        return stdgo._internal.net.url.Url_Error_static_extension.Error_static_extension.unwrap(_e);
    }
}
class URL_static_extension {
    static public function joinPath(_u:URL, _elem:haxe.Rest<String>):URL {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.joinPath(_u, ...[for (i in _elem) i]);
    }
    static public function unmarshalBinary(_u:URL, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.unmarshalBinary(_u, _text);
    }
    static public function marshalBinary(_u:URL):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.marshalBinary(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function port(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.port(_u);
    }
    static public function hostname(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.hostname(_u);
    }
    static public function requestURI(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.requestURI(_u);
    }
    static public function query(_u:URL):Values {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.query(_u);
    }
    static public function resolveReference(_u:URL, _ref:URL):URL {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.resolveReference(_u, _ref);
    }
    static public function parse(_u:URL, _ref:String):stdgo.Tuple<URL, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.parse(_u, _ref);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAbs(_u:URL):Bool {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.isAbs(_u);
    }
    static public function redacted(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.redacted(_u);
    }
    static public function string(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.string(_u);
    }
    static public function escapedFragment(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.escapedFragment(_u);
    }
    static public function _setFragment(_u:URL, _f:String):stdgo.Error {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension._setFragment(_u, _f);
    }
    static public function escapedPath(_u:URL):String {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.escapedPath(_u);
    }
    static public function _setPath(_u:URL, _p:String):stdgo.Error {
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension._setPath(_u, _p);
    }
}
class Userinfo_static_extension {
    static public function string(_u:Userinfo):String {
        return stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.string(_u);
    }
    static public function password(_u:Userinfo):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.password(_u);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function username(_u:Userinfo):String {
        return stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension.username(_u);
    }
}
class EscapeError_static_extension {
    static public function error(_e:EscapeError):String {
        return stdgo._internal.net.url.Url_EscapeError_static_extension.EscapeError_static_extension.error(_e);
    }
}
class InvalidHostError_static_extension {
    static public function error(_e:InvalidHostError):String {
        return stdgo._internal.net.url.Url_InvalidHostError_static_extension.InvalidHostError_static_extension.error(_e);
    }
}
class Values_static_extension {
    static public function encode(_v:Values):String {
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.encode(_v);
    }
    static public function has(_v:Values, _key:String):Bool {
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.has(_v, _key);
    }
    static public function del(_v:Values, _key:String):Void {
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.del(_v, _key);
    }
    static public function add(_v:Values, _key:String, _value:String):Void {
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.add(_v, _key, _value);
    }
    static public function set(_v:Values, _key:String, _value:String):Void {
        stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.set(_v, _key, _value);
    }
    static public function get(_v:Values, _key:String):String {
        return stdgo._internal.net.url.Url_Values_static_extension.Values_static_extension.get(_v, _key);
    }
}
/**
    Package url parses URLs and implements query escaping.
**/
class Url {
    /**
        QueryUnescape does the inverse transformation of QueryEscape,
        converting each 3-byte encoded substring of the form "%AB" into the
        hex-decoded byte 0xAB.
        It returns an error if any % is not followed by two hexadecimal
        digits.
    **/
    static public function queryUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_queryUnescape.queryUnescape(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        PathUnescape does the inverse transformation of PathEscape,
        converting each 3-byte encoded substring of the form "%AB" into the
        hex-decoded byte 0xAB. It returns an error if any % is not followed
        by two hexadecimal digits.
        
        PathUnescape is identical to QueryUnescape except that it does not
        unescape '+' to ' ' (space).
    **/
    static public function pathUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_pathUnescape.pathUnescape(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        QueryEscape escapes the string so it can be safely placed
        inside a URL query.
    **/
    static public function queryEscape(_s:String):String {
        return stdgo._internal.net.url.Url_queryEscape.queryEscape(_s);
    }
    /**
        PathEscape escapes the string so it can be safely placed inside a URL path segment,
        replacing special characters (including /) with %XX sequences as needed.
    **/
    static public function pathEscape(_s:String):String {
        return stdgo._internal.net.url.Url_pathEscape.pathEscape(_s);
    }
    /**
        User returns a Userinfo containing the provided username
        and no password set.
    **/
    static public function user(_username:String):Userinfo {
        return stdgo._internal.net.url.Url_user.user(_username);
    }
    /**
        UserPassword returns a Userinfo containing the provided username
        and password.
        
        This functionality should only be used with legacy web sites.
        RFC 2396 warns that interpreting Userinfo this way
        “is NOT RECOMMENDED, because the passing of authentication
        information in clear text (such as URI) has proven to be a
        security risk in almost every case where it has been used.”
    **/
    static public function userPassword(_username:String, _password:String):Userinfo {
        return stdgo._internal.net.url.Url_userPassword.userPassword(_username, _password);
    }
    /**
        Parse parses a raw url into a URL structure.
        
        The url may be relative (a path, without a host) or absolute
        (starting with a scheme). Trying to parse a hostname and path
        without a scheme is invalid but may not necessarily return an
        error, due to parsing ambiguities.
    **/
    static public function parse(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_parse.parse(_rawURL);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseRequestURI parses a raw url into a URL structure. It assumes that
        url was received in an HTTP request, so the url is interpreted
        only as an absolute URI or an absolute path.
        The string url is assumed not to have a #fragment suffix.
        (Web browsers strip #fragment before sending the URL to a web server.)
    **/
    static public function parseRequestURI(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_parseRequestURI.parseRequestURI(_rawURL);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseQuery parses the URL-encoded query string and returns
        a map listing the values specified for each key.
        ParseQuery always returns a non-nil map containing all the
        valid query parameters found; err describes the first decoding error
        encountered, if any.
        
        Query is expected to be a list of key=value settings separated by ampersands.
        A setting without an equals sign is interpreted as a key set to an empty
        value.
        Settings containing a non-URL-encoded semicolon are considered invalid.
    **/
    static public function parseQuery(_query:String):stdgo.Tuple<Values, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_parseQuery.parseQuery(_query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        JoinPath returns a URL string with the provided path elements joined to
        the existing path of base and the resulting path cleaned of any ./ or ../ elements.
    **/
    static public function joinPath(_base:String, _elem:haxe.Rest<String>):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.url.Url_joinPath.joinPath(_base, ...[for (i in _elem) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
