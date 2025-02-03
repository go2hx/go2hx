package stdgo.strconv;
/**
    Package strconv implements conversions to and from string representations
    of basic data types.
    
    # Numeric Conversions
    
    The most common numeric conversions are Atoi (string to int) and Itoa (int to string).
    
    	i, err := strconv.Atoi("-42")
    	s := strconv.Itoa(-42)
    
    These assume decimal and the Go int type.
    
    [ParseBool], [ParseFloat], [ParseInt], and [ParseUint] convert strings to values:
    
    	b, err := strconv.ParseBool("true")
    	f, err := strconv.ParseFloat("3.1415", 64)
    	i, err := strconv.ParseInt("-42", 10, 64)
    	u, err := strconv.ParseUint("42", 10, 64)
    
    The parse functions return the widest type (float64, int64, and uint64),
    but if the size argument specifies a narrower width the result can be
    converted to that narrower type without data loss:
    
    	s := "2147483647" // biggest int32
    	i64, err := strconv.ParseInt(s, 10, 32)
    	...
    	i := int32(i64)
    
    [FormatBool], [FormatFloat], [FormatInt], and [FormatUint] convert values to strings:
    
    	s := strconv.FormatBool(true)
    	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
    	s := strconv.FormatInt(-42, 16)
    	s := strconv.FormatUint(42, 16)
    
    [AppendBool], [AppendFloat], [AppendInt], and [AppendUint] are similar but
    append the formatted value to a destination slice.
    
    # String Conversions
    
    [Quote] and [QuoteToASCII] convert strings to quoted Go string literals.
    The latter guarantees that the result is an ASCII string, by escaping
    any non-ASCII Unicode with \u:
    
    	q := strconv.Quote("Hello, 世界")
    	q := strconv.QuoteToASCII("Hello, 世界")
    
    [QuoteRune] and [QuoteRuneToASCII] are similar but accept runes and
    return quoted Go rune literals.
    
    [Unquote] and [UnquoteChar] unquote Go string and rune literals.
**/
class Strconv {
    /**
        ParseBool returns the boolean value represented by the string.
        It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
        Any other value returns an error.
    **/
    static public inline function parseBool(_str:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseBool.parseBool(_str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FormatBool returns "true" or "false" according to the value of b.
    **/
    static public inline function formatBool(_b:Bool):String {
        return stdgo._internal.strconv.Strconv_formatBool.formatBool(_b);
    }
    /**
        AppendBool appends "true" or "false", according to the value of b,
        to dst and returns the extended buffer.
    **/
    static public inline function appendBool(_dst:Array<std.UInt>, _b:Bool):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendBool.appendBool(_dst, _b)) i];
    }
    /**
        ParseComplex converts the string s to a complex number
        with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
        When bitSize=64, the result still has type complex128, but it will be
        convertible to complex64 without changing its value.
        
        The number represented by s must be of the form N, Ni, or N±Ni, where N stands
        for a floating-point number as recognized by ParseFloat, and i is the imaginary
        component. If the second N is unsigned, a + sign is required between the two components
        as indicated by the ±. If the second N is NaN, only a + sign is accepted.
        The form may be parenthesized and cannot contain any spaces.
        The resulting complex number consists of the two components converted by ParseFloat.
        
        The errors that ParseComplex returns have concrete type *NumError
        and include err.Num = s.
        
        If s is not syntactically well-formed, ParseComplex returns err.Err = ErrSyntax.
        
        If s is syntactically well-formed but either component is more than 1/2 ULP
        away from the largest floating point number of the given component's size,
        ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.
    **/
    static public inline function parseComplex(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseComplex.parseComplex(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseFloat converts the string s to a floating-point number
        with the precision specified by bitSize: 32 for float32, or 64 for float64.
        When bitSize=32, the result still has type float64, but it will be
        convertible to float32 without changing its value.
        
        ParseFloat accepts decimal and hexadecimal floating-point numbers
        as defined by the Go syntax for [floating-point literals].
        If s is well-formed and near a valid floating-point number,
        ParseFloat returns the nearest floating-point number rounded
        using IEEE754 unbiased rounding.
        (Parsing a hexadecimal floating-point value only rounds when
        there are more bits in the hexadecimal representation than
        will fit in the mantissa.)
        
        The errors that ParseFloat returns have concrete type *NumError
        and include err.Num = s.
        
        If s is not syntactically well-formed, ParseFloat returns err.Err = ErrSyntax.
        
        If s is syntactically well-formed but is more than 1/2 ULP
        away from the largest floating point number of the given size,
        ParseFloat returns f = ±Inf, err.Err = ErrRange.
        
        ParseFloat recognizes the string "NaN", and the (possibly signed) strings "Inf" and "Infinity"
        as their respective special floating point values. It ignores case when matching.
        
        [floating-point literals]: https://go.dev/ref/spec#Floating-point_literals
    **/
    static public inline function parseFloat(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseUint is like ParseInt but for unsigned numbers.
        
        A sign prefix is not permitted.
    **/
    static public inline function parseUint(_s:String, _base:StdTypes.Int, _bitSize:StdTypes.Int):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s, _base, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseInt interprets a string s in the given base (0, 2 to 36) and
        bit size (0 to 64) and returns the corresponding value i.
        
        The string may begin with a leading sign: "+" or "-".
        
        If the base argument is 0, the true base is implied by the string's
        prefix following the sign (if present): 2 for "0b", 8 for "0" or "0o",
        16 for "0x", and 10 otherwise. Also, for argument base 0 only,
        underscore characters are permitted as defined by the Go syntax for
        [integer literals].
        
        The bitSize argument specifies the integer type
        that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
        correspond to int, int8, int16, int32, and int64.
        If bitSize is below 0 or above 64, an error is returned.
        
        The errors that ParseInt returns have concrete type *NumError
        and include err.Num = s. If s is empty or contains invalid
        digits, err.Err = ErrSyntax and the returned value is 0;
        if the value corresponding to s cannot be represented by a
        signed integer of the given size, err.Err = ErrRange and the
        returned value is the maximum magnitude integer of the
        appropriate bitSize and sign.
        
        [integer literals]: https://go.dev/ref/spec#Integer_literals
    **/
    static public inline function parseInt(_s:String, _base:StdTypes.Int, _bitSize:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _base = (_base : stdgo.GoInt);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s, _base, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
    **/
    static public inline function atoi(_s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strconv.Strconv_atoi.atoi(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FormatComplex converts the complex number c to a string of the
        form (a+bi) where a and b are the real and imaginary parts,
        formatted according to the format fmt and precision prec.
        
        The format fmt and precision prec have the same meaning as in FormatFloat.
        It rounds the result assuming that the original was obtained from a complex
        value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
    **/
    static public inline function formatComplex(_c:stdgo.GoComplex128, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        final _c = (_c : stdgo.GoComplex128);
        final _fmt = (_fmt : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_formatComplex.formatComplex(_c, _fmt, _prec, _bitSize);
    }
    /**
        FormatFloat converts the floating-point number f to a string,
        according to the format fmt and precision prec. It rounds the
        result assuming that the original was obtained from a floating-point
        value of bitSize bits (32 for float32, 64 for float64).
        
        The format fmt is one of
        'b' (-ddddp±ddd, a binary exponent),
        'e' (-d.dddde±dd, a decimal exponent),
        'E' (-d.ddddE±dd, a decimal exponent),
        'f' (-ddd.dddd, no exponent),
        'g' ('e' for large exponents, 'f' otherwise),
        'G' ('E' for large exponents, 'f' otherwise),
        'x' (-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent), or
        'X' (-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent).
        
        The precision prec controls the number of digits (excluding the exponent)
        printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
        For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
        For 'g' and 'G' it is the maximum number of significant digits (trailing
        zeros are removed).
        The special precision -1 uses the smallest number of digits
        necessary such that ParseFloat will return f exactly.
    **/
    static public inline function formatFloat(_f:StdTypes.Float, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        final _f = (_f : stdgo.GoFloat64);
        final _fmt = (_fmt : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_f, _fmt, _prec, _bitSize);
    }
    /**
        AppendFloat appends the string form of the floating-point number f,
        as generated by FormatFloat, to dst and returns the extended buffer.
    **/
    static public inline function appendFloat(_dst:Array<std.UInt>, _f:StdTypes.Float, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _f = (_f : stdgo.GoFloat64);
        final _fmt = (_fmt : stdgo.GoUInt8);
        final _prec = (_prec : stdgo.GoInt);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return [for (i in stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_dst, _f, _fmt, _prec, _bitSize)) i];
    }
    static public inline function newDecimal(_i:haxe.UInt64):T_decimal {
        final _i = (_i : stdgo.GoUInt64);
        return stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_i);
    }
    static public inline function setOptimize(_b:Bool):Bool {
        return stdgo._internal.strconv.Strconv_setOptimize.setOptimize(_b);
    }
    static public inline function parseFloatPrefix(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Float, StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strconv.Strconv_parseFloatPrefix.parseFloatPrefix(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public inline function mulByLog2Log10(_x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_mulByLog2Log10.mulByLog2Log10(_x);
    }
    static public inline function mulByLog10Log2(_x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_mulByLog10Log2.mulByLog10Log2(_x);
    }
    /**
        FormatUint returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public inline function formatUint(_i:haxe.UInt64, _base:StdTypes.Int):String {
        final _i = (_i : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_formatUint.formatUint(_i, _base);
    }
    /**
        FormatInt returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public inline function formatInt(_i:haxe.Int64, _base:StdTypes.Int):String {
        final _i = (_i : stdgo.GoInt64);
        final _base = (_base : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_formatInt.formatInt(_i, _base);
    }
    /**
        Itoa is equivalent to FormatInt(int64(i), 10).
    **/
    static public inline function itoa(_i:StdTypes.Int):String {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.strconv.Strconv_itoa.itoa(_i);
    }
    /**
        AppendInt appends the string form of the integer i,
        as generated by FormatInt, to dst and returns the extended buffer.
    **/
    static public inline function appendInt(_dst:Array<std.UInt>, _i:haxe.Int64, _base:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _i = (_i : stdgo.GoInt64);
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.strconv.Strconv_appendInt.appendInt(_dst, _i, _base)) i];
    }
    /**
        AppendUint appends the string form of the unsigned integer i,
        as generated by FormatUint, to dst and returns the extended buffer.
    **/
    static public inline function appendUint(_dst:Array<std.UInt>, _i:haxe.UInt64, _base:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _i = (_i : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoInt);
        return [for (i in stdgo._internal.strconv.Strconv_appendUint.appendUint(_dst, _i, _base)) i];
    }
    /**
        Quote returns a double-quoted Go string literal representing s. The
        returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        control characters and non-printable characters as defined by
        IsPrint.
    **/
    static public inline function quote(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strconv.Strconv_quote.quote(_s);
    }
    /**
        AppendQuote appends a double-quoted Go string literal representing s,
        as generated by Quote, to dst and returns the extended buffer.
    **/
    static public inline function appendQuote(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuote.appendQuote(_dst, _s)) i];
    }
    /**
        QuoteToASCII returns a double-quoted Go string literal representing s.
        The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        non-ASCII characters and non-printable characters as defined by IsPrint.
    **/
    static public inline function quoteToASCII(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strconv.Strconv_quoteToASCII.quoteToASCII(_s);
    }
    /**
        AppendQuoteToASCII appends a double-quoted Go string literal representing s,
        as generated by QuoteToASCII, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteToASCII(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII(_dst, _s)) i];
    }
    /**
        QuoteToGraphic returns a double-quoted Go string literal representing s.
        The returned string leaves Unicode graphic characters, as defined by
        IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
        for non-graphic characters.
    **/
    static public inline function quoteToGraphic(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(_s);
    }
    /**
        AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
        as generated by QuoteToGraphic, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteToGraphic(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteToGraphic.appendQuoteToGraphic(_dst, _s)) i];
    }
    /**
        QuoteRune returns a single-quoted Go character literal representing the
        rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
        for control characters and non-printable characters as defined by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public inline function quoteRune(_r:StdTypes.Int):String {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strconv.Strconv_quoteRune.quoteRune(_r);
    }
    /**
        AppendQuoteRune appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRune, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRune(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRune.appendQuoteRune(_dst, _r)) i];
    }
    /**
        QuoteRuneToASCII returns a single-quoted Go character literal representing
        the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
        \u0100) for non-ASCII characters and non-printable characters as defined
        by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public inline function quoteRuneToASCII(_r:StdTypes.Int):String {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strconv.Strconv_quoteRuneToASCII.quoteRuneToASCII(_r);
    }
    /**
        AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRuneToASCII(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRuneToASCII.appendQuoteRuneToASCII(_dst, _r)) i];
    }
    /**
        QuoteRuneToGraphic returns a single-quoted Go character literal representing
        the rune. If the rune is not a Unicode graphic character,
        as defined by IsGraphic, the returned string will use a Go escape sequence
        (\t, \n, \xFF, \u0100).
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public inline function quoteRuneToGraphic(_r:StdTypes.Int):String {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strconv.Strconv_quoteRuneToGraphic.quoteRuneToGraphic(_r);
    }
    /**
        AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRuneToGraphic(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _r = (_r : stdgo.GoInt32);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRuneToGraphic.appendQuoteRuneToGraphic(_dst, _r)) i];
    }
    /**
        CanBackquote reports whether the string s can be represented
        unchanged as a single-line backquoted string without control
        characters other than tab.
    **/
    static public inline function canBackquote(_s:String):Bool {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strconv.Strconv_canBackquote.canBackquote(_s);
    }
    /**
        UnquoteChar decodes the first character or byte in the escaped string
        or character literal represented by the string s.
        It returns four values:
        
         1. value, the decoded Unicode code point or byte value;
         2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
         3. tail, the remainder of the string after the character; and
         4. an error that will be nil if the character is syntactically valid.
        
        The second argument, quote, specifies the type of literal being parsed
        and therefore which escaped quote character is permitted.
        If set to a single quote, it permits the sequence \' and disallows unescaped '.
        If set to a double quote, it permits \" and disallows unescaped ".
        If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
    **/
    static public inline function unquoteChar(_s:String, _quote:std.UInt):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        final _quote = (_quote : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.strconv.Strconv_unquoteChar.unquoteChar(_s, _quote);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
        If s does not start with a valid quoted string, QuotedPrefix returns an error.
    **/
    static public inline function quotedPrefix(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strconv.Strconv_quotedPrefix.quotedPrefix(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Unquote interprets s as a single-quoted, double-quoted,
        or backquoted Go string literal, returning the string value
        that s quotes.  (If s is single-quoted, it would be a Go
        character literal; Unquote returns the corresponding
        one-character string.)
    **/
    static public inline function unquote(_s:String):stdgo.Tuple<String, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strconv.Strconv_unquote.unquote(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsPrint reports whether the rune is defined as printable by Go, with
        the same definition as unicode.IsPrint: letters, numbers, punctuation,
        symbols and ASCII space.
    **/
    static public inline function isPrint(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strconv.Strconv_isPrint.isPrint(_r);
    }
    /**
        IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
        characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, and Zs.
    **/
    static public inline function isGraphic(_r:StdTypes.Int):Bool {
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strconv.Strconv_isGraphic.isGraphic(_r);
    }
}
