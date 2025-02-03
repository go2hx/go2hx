package stdgo.unicode;
/**
    Package unicode provides data and functions to test some properties of
    Unicode code points.
**/
class Unicode {
    /**
        IsDigit reports whether the rune is a decimal digit.
    **/
    static public inline function isDigit(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isDigit.isDigit(_r);
    }
    /**
        IsGraphic reports whether the rune is defined as a Graphic by Unicode.
        Such characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, Zs.
    **/
    static public inline function isGraphic(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isGraphic.isGraphic(_r);
    }
    /**
        IsPrint reports whether the rune is defined as printable by Go. Such
        characters include letters, marks, numbers, punctuation, symbols, and the
        ASCII space character, from categories L, M, N, P, S and the ASCII space
        character. This categorization is the same as IsGraphic except that the
        only spacing character is ASCII space, U+0020.
    **/
    static public inline function isPrint(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isPrint.isPrint(_r);
    }
    /**
        IsOneOf reports whether the rune is a member of one of the ranges.
        The function "In" provides a nicer signature and should be used in preference to IsOneOf.
    **/
    static public inline function isOneOf(_ranges:Array<RangeTable>, _r:StdTypes.Int):Bool {
        final _ranges = ([for (i in _ranges) (i : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isOneOf.isOneOf(_ranges, _r);
    }
    /**
        In reports whether the rune is a member of one of the ranges.
    **/
    static public inline function in_(_r:StdTypes.Int, _ranges:haxe.Rest<RangeTable>):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_in_.in_(_r, ...[for (i in _ranges) i]);
    }
    /**
        IsControl reports whether the rune is a control character.
        The C (Other) Unicode category includes more code points
        such as surrogates; use Is(C, r) to test for them.
    **/
    static public inline function isControl(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isControl.isControl(_r);
    }
    /**
        IsLetter reports whether the rune is a letter (category L).
    **/
    static public inline function isLetter(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isLetter.isLetter(_r);
    }
    /**
        IsMark reports whether the rune is a mark character (category M).
    **/
    static public inline function isMark(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isMark.isMark(_r);
    }
    /**
        IsNumber reports whether the rune is a number (category N).
    **/
    static public inline function isNumber(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isNumber.isNumber(_r);
    }
    /**
        IsPunct reports whether the rune is a Unicode punctuation character
        (category P).
    **/
    static public inline function isPunct(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isPunct.isPunct(_r);
    }
    /**
        IsSpace reports whether the rune is a space character as defined
        by Unicode's White Space property; in the Latin-1 space
        this is
        
        	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
        
        Other definitions of spacing characters are set by category
        Z and property Pattern_White_Space.
    **/
    static public inline function isSpace(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isSpace.isSpace(_r);
    }
    /**
        IsSymbol reports whether the rune is a symbolic character.
    **/
    static public inline function isSymbol(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isSymbol.isSymbol(_r);
    }
    /**
        Is reports whether the rune is in the specified table of ranges.
    **/
    static public inline function is_(_rangeTab:RangeTable, _r:StdTypes.Int):Bool {
        final _rangeTab = (_rangeTab : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_is_.is_(_rangeTab, _r);
    }
    /**
        IsUpper reports whether the rune is an upper case letter.
    **/
    static public inline function isUpper(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isUpper.isUpper(_r);
    }
    /**
        IsLower reports whether the rune is a lower case letter.
    **/
    static public inline function isLower(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isLower.isLower(_r);
    }
    /**
        IsTitle reports whether the rune is a title case letter.
    **/
    static public inline function isTitle(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_isTitle.isTitle(_r);
    }
    /**
        To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
    **/
    static public inline function to(__case:StdTypes.Int, _r:StdTypes.Int):StdTypes.Int {
        final __case = (__case : stdgo.GoInt);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_to.to(__case, _r);
    }
    /**
        ToUpper maps the rune to upper case.
    **/
    static public inline function toUpper(_r:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_toUpper.toUpper(_r);
    }
    /**
        ToLower maps the rune to lower case.
    **/
    static public inline function toLower(_r:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_toLower.toLower(_r);
    }
    /**
        ToTitle maps the rune to title case.
    **/
    static public inline function toTitle(_r:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_toTitle.toTitle(_r);
    }
    /**
        SimpleFold iterates over Unicode code points equivalent under
        the Unicode-defined simple case folding. Among the code points
        equivalent to rune (including rune itself), SimpleFold returns the
        smallest rune > r if one exists, or else the smallest rune >= 0.
        If r is not a valid Unicode code point, SimpleFold(r) returns r.
        
        For example:
        
        	SimpleFold('A') = 'a'
        	SimpleFold('a') = 'A'
        
        	SimpleFold('K') = 'k'
        	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
        	SimpleFold('\u212A') = 'K'
        
        	SimpleFold('1') = '1'
        
        	SimpleFold(-2) = -2
    **/
    static public inline function simpleFold(_r:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r);
    }
}
