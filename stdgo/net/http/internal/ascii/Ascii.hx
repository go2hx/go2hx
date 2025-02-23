package stdgo.net.http.internal.ascii;
class Ascii {
    /**
        * EqualFold is strings.EqualFold, ASCII only. It reports whether s and t
        * are equal, ASCII-case-insensitively.
    **/
    static public inline function equalFold(_s:String, _t:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _t = (_t : stdgo.GoString);
        return stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold(_s, _t);
    }
    /**
        * IsPrint returns whether s is ASCII and printable according to
        * https://tools.ietf.org/html/rfc20#section-4.2.
    **/
    static public inline function isPrint(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_s);
    }
    /**
        * Is returns whether s is ASCII.
    **/
    static public inline function is_(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.http.internal.ascii.Ascii_is_.is_(_s);
    }
    /**
        * ToLower returns the lowercase version of s if s is ASCII and printable.
    **/
    static public inline function toLower(_s:String):stdgo.Tuple<String, Bool> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.internal.ascii.Ascii_tolower.toLower(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
