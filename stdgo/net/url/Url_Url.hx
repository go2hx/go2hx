package stdgo.net.url;
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
    static public inline function queryUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
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
    static public inline function pathUnescape(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_pathUnescape.pathUnescape(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        QueryEscape escapes the string so it can be safely placed
        inside a URL query.
    **/
    static public inline function queryEscape(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.url.Url_queryEscape.queryEscape(_s);
    }
    /**
        PathEscape escapes the string so it can be safely placed inside a URL path segment,
        replacing special characters (including /) with %XX sequences as needed.
    **/
    static public inline function pathEscape(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.url.Url_pathEscape.pathEscape(_s);
    }
    /**
        User returns a Userinfo containing the provided username
        and no password set.
    **/
    static public inline function user(_username:String):Userinfo {
        final _username = (_username : stdgo.GoString);
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
    static public inline function userPassword(_username:String, _password:String):Userinfo {
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        return stdgo._internal.net.url.Url_userPassword.userPassword(_username, _password);
    }
    /**
        Parse parses a raw url into a URL structure.
        
        The url may be relative (a path, without a host) or absolute
        (starting with a scheme). Trying to parse a hostname and path
        without a scheme is invalid but may not necessarily return an
        error, due to parsing ambiguities.
    **/
    static public inline function parse(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        final _rawURL = (_rawURL : stdgo.GoString);
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
    static public inline function parseRequestURI(_rawURL:String):stdgo.Tuple<URL, stdgo.Error> {
        final _rawURL = (_rawURL : stdgo.GoString);
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
    static public inline function parseQuery(_query:String):stdgo.Tuple<Values, stdgo.Error> {
        final _query = (_query : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_parseQuery.parseQuery(_query);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        JoinPath returns a URL string with the provided path elements joined to
        the existing path of base and the resulting path cleaned of any ./ or ../ elements.
    **/
    static public inline function joinPath(_base:String, _elem:haxe.Rest<String>):stdgo.Tuple<String, stdgo.Error> {
        final _base = (_base : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_joinPath.joinPath(_base, ...[for (i in _elem) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
