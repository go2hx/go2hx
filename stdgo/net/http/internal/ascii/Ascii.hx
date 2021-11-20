package stdgo.net.http.internal.ascii;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // EqualFold is strings.EqualFold, ASCII only. It reports whether s and t
    // are equal, ASCII-case-insensitively.
**/
function equalFold(_s:GoString, _t:GoString):Bool {
        if (_s.length != _t.length) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_lower(_s[_i]) != _lower(_t[_i])) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // lower returns the ASCII lowercase version of b.
**/
function _lower(_b:GoByte):GoByte {
        if ((("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune))) {
            return _b + ((("a".code : GoRune)) - (("A".code : GoRune)));
        };
        return _b;
    }
/**
    // IsPrint returns whether s is ASCII and printable according to
    // https://tools.ietf.org/html/rfc20#section-4.2.
**/
function isPrint(_s:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_s[_i] < ((" ".code : GoRune)) || _s[_i] > (("~".code : GoRune))) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // Is returns whether s is ASCII.
**/
function is_(_s:GoString):Bool {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_s[_i] > stdgo.unicode.Unicode.maxASCII) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // ToLower returns the lowercase version of s if s is ASCII and printable.
**/
function toLower(_s:GoString):{ var _0 : GoString; var _1 : Bool; } {
        var _lower:GoString = (("" : GoString)), _ok:Bool = false;
        if (!isPrint(_s)) {
            return { _0 : "", _1 : false };
        };
        return { _0 : stdgo.strings.Strings.toLower(_s), _1 : true };
    }
