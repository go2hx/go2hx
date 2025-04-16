package stdgo.net.url;
typedef Error = stdgo._internal.net.url.Url_error.Error;
typedef URL = stdgo._internal.net.url.Url_url.URL;
typedef Userinfo = stdgo._internal.net.url.Url_userinfo.Userinfo;
typedef EscapeError = stdgo._internal.net.url.Url_escapeerror.EscapeError;
typedef InvalidHostError = stdgo._internal.net.url.Url_invalidhosterror.InvalidHostError;
typedef Values = stdgo._internal.net.url.Url_values.Values;
typedef ErrorPointer = stdgo._internal.net.url.Url_errorpointer.ErrorPointer;
typedef URLPointer = stdgo._internal.net.url.Url_urlpointer.URLPointer;
typedef UserinfoPointer = stdgo._internal.net.url.Url_userinfopointer.UserinfoPointer;
typedef EscapeErrorPointer = stdgo._internal.net.url.Url_escapeerrorpointer.EscapeErrorPointer;
typedef InvalidHostErrorPointer = stdgo._internal.net.url.Url_invalidhosterrorpointer.InvalidHostErrorPointer;
typedef ValuesPointer = stdgo._internal.net.url.Url_valuespointer.ValuesPointer;
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
    static public inline function queryUnescape(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_queryunescape.queryUnescape(_s);
    /**
        * PathUnescape does the inverse transformation of PathEscape,
        * converting each 3-byte encoded substring of the form "%AB" into the
        * hex-decoded byte 0xAB. It returns an error if any % is not followed
        * by two hexadecimal digits.
        * 
        * PathUnescape is identical to QueryUnescape except that it does not
        * unescape '+' to ' ' (space).
    **/
    static public inline function pathUnescape(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_pathunescape.pathUnescape(_s);
    /**
        * QueryEscape escapes the string so it can be safely placed
        * inside a URL query.
    **/
    static public inline function queryEscape(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.net.url.Url_queryescape.queryEscape(_s);
    /**
        * PathEscape escapes the string so it can be safely placed inside a URL path segment,
        * replacing special characters (including /) with %XX sequences as needed.
    **/
    static public inline function pathEscape(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.net.url.Url_pathescape.pathEscape(_s);
    /**
        * User returns a Userinfo containing the provided username
        * and no password set.
    **/
    static public inline function user(_username:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> return stdgo._internal.net.url.Url_user.user(_username);
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
    static public inline function userPassword(_username:stdgo.GoString, _password:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> return stdgo._internal.net.url.Url_userpassword.userPassword(_username, _password);
    /**
        * Parse parses a raw url into a URL structure.
        * 
        * The url may be relative (a path, without a host) or absolute
        * (starting with a scheme). Trying to parse a hostname and path
        * without a scheme is invalid but may not necessarily return an
        * error, due to parsing ambiguities.
    **/
    static public inline function parse(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_parse.parse(_rawURL);
    /**
        * ParseRequestURI parses a raw url into a URL structure. It assumes that
        * url was received in an HTTP request, so the url is interpreted
        * only as an absolute URI or an absolute path.
        * The string url is assumed not to have a #fragment suffix.
        * (Web browsers strip #fragment before sending the URL to a web server.)
    **/
    static public inline function parseRequestURI(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_parserequesturi.parseRequestURI(_rawURL);
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
    static public inline function parseQuery(_query:stdgo.GoString):{ var _0 : stdgo._internal.net.url.Url_values.Values; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_parsequery.parseQuery(_query);
    /**
        * JoinPath returns a URL string with the provided path elements joined to
        * the existing path of base and the resulting path cleaned of any ./ or ../ elements.
    **/
    static public inline function joinPath(_base:stdgo.GoString, _elem:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.net.url.Url_joinpath.joinPath(_base, ...[for (i in _elem) i]);
}
