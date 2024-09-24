package stdgo.net.http.internal.ascii;
class Ascii {
    /**
        EqualFold is strings.EqualFold, ASCII only. It reports whether s and t
        are equal, ASCII-case-insensitively.
    **/
    static public function equalFold(_s:String, _t:String):Bool {
        return stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_s, _t);
    }
    /**
        IsPrint returns whether s is ASCII and printable according to
        https://tools.ietf.org/html/rfc20#section-4.2.
    **/
    static public function isPrint(_s:String):Bool {
        return stdgo._internal.net.http.internal.ascii.Ascii_isPrint.isPrint(_s);
    }
    /**
        Is returns whether s is ASCII.
    **/
    static public function is_(_s:String):Bool {
        return stdgo._internal.net.http.internal.ascii.Ascii_is_.is_(_s);
    }
    /**
        ToLower returns the lowercase version of s if s is ASCII and printable.
    **/
    static public function toLower(_s:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.net.http.internal.ascii.Ascii_toLower.toLower(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
