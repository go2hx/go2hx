package stdgo.strconv;
var intSize : stdgo.GoUInt64 = 32i64;
var errRange(get, set) : stdgo.Error;
private function get_errRange():stdgo.Error return stdgo._internal.strconv.Strconv_errrange.errRange;
private function set_errRange(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errrange.errRange = v;
        return v;
    }
var errSyntax(get, set) : stdgo.Error;
private function get_errSyntax():stdgo.Error return stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
private function set_errSyntax(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errsyntax.errSyntax = v;
        return v;
    }
var bitSizeError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>;
private function get_bitSizeError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> return stdgo._internal.strconv.Strconv_bitsizeerror.bitSizeError;
private function set_bitSizeError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> {
        stdgo._internal.strconv.Strconv_bitsizeerror.bitSizeError = v;
        return v;
    }
var baseError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>;
private function get_baseError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> return stdgo._internal.strconv.Strconv_baseerror.baseError;
private function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_numerror.NumError> {
        stdgo._internal.strconv.Strconv_baseerror.baseError = v;
        return v;
    }
typedef NumError = stdgo._internal.strconv.Strconv_numerror.NumError;
typedef NumErrorPointer = stdgo._internal.strconv.Strconv_numerrorpointer.NumErrorPointer;
/**
    * Package strconv implements conversions to and from string representations
    * of basic data types.
    * 
    * # Numeric Conversions
    * 
    * The most common numeric conversions are Atoi (string to int) and Itoa (int to string).
    * 
    * 	i, err := strconv.Atoi("-42")
    * 	s := strconv.Itoa(-42)
    * 
    * These assume decimal and the Go int type.
    * 
    * [ParseBool], [ParseFloat], [ParseInt], and [ParseUint] convert strings to values:
    * 
    * 	b, err := strconv.ParseBool("true")
    * 	f, err := strconv.ParseFloat("3.1415", 64)
    * 	i, err := strconv.ParseInt("-42", 10, 64)
    * 	u, err := strconv.ParseUint("42", 10, 64)
    * 
    * The parse functions return the widest type (float64, int64, and uint64),
    * but if the size argument specifies a narrower width the result can be
    * converted to that narrower type without data loss:
    * 
    * 	s := "2147483647" // biggest int32
    * 	i64, err := strconv.ParseInt(s, 10, 32)
    * 	...
    * 	i := int32(i64)
    * 
    * [FormatBool], [FormatFloat], [FormatInt], and [FormatUint] convert values to strings:
    * 
    * 	s := strconv.FormatBool(true)
    * 	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
    * 	s := strconv.FormatInt(-42, 16)
    * 	s := strconv.FormatUint(42, 16)
    * 
    * [AppendBool], [AppendFloat], [AppendInt], and [AppendUint] are similar but
    * append the formatted value to a destination slice.
    * 
    * # String Conversions
    * 
    * [Quote] and [QuoteToASCII] convert strings to quoted Go string literals.
    * The latter guarantees that the result is an ASCII string, by escaping
    * any non-ASCII Unicode with \u:
    * 
    * 	q := strconv.Quote("Hello, 世界")
    * 	q := strconv.QuoteToASCII("Hello, 世界")
    * 
    * [QuoteRune] and [QuoteRuneToASCII] are similar but accept runes and
    * return quoted Go rune literals.
    * 
    * [Unquote] and [UnquoteChar] unquote Go string and rune literals.
**/
class Strconv {
    /**
        * ParseBool returns the boolean value represented by the string.
        * It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
        * Any other value returns an error.
    **/
    static public inline function parseBool(_str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parsebool.parseBool(_str);
    /**
        * FormatBool returns "true" or "false" according to the value of b.
    **/
    static public inline function formatBool(_b:Bool):stdgo.GoString return stdgo._internal.strconv.Strconv_formatbool.formatBool(_b);
    /**
        * AppendBool appends "true" or "false", according to the value of b,
        * to dst and returns the extended buffer.
    **/
    static public inline function appendBool(_dst:stdgo.Slice<stdgo.GoUInt8>, _b:Bool):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendbool.appendBool(_dst, _b);
    /**
        * ParseComplex converts the string s to a complex number
        * with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
        * When bitSize=64, the result still has type complex128, but it will be
        * convertible to complex64 without changing its value.
        * 
        * The number represented by s must be of the form N, Ni, or N±Ni, where N stands
        * for a floating-point number as recognized by ParseFloat, and i is the imaginary
        * component. If the second N is unsigned, a + sign is required between the two components
        * as indicated by the ±. If the second N is NaN, only a + sign is accepted.
        * The form may be parenthesized and cannot contain any spaces.
        * The resulting complex number consists of the two components converted by ParseFloat.
        * 
        * The errors that ParseComplex returns have concrete type *NumError
        * and include err.Num = s.
        * 
        * If s is not syntactically well-formed, ParseComplex returns err.Err = ErrSyntax.
        * 
        * If s is syntactically well-formed but either component is more than 1/2 ULP
        * away from the largest floating point number of the given component's size,
        * ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.
    **/
    static public inline function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoComplex128; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parsecomplex.parseComplex(_s, _bitSize);
    /**
        * ParseFloat converts the string s to a floating-point number
        * with the precision specified by bitSize: 32 for float32, or 64 for float64.
        * When bitSize=32, the result still has type float64, but it will be
        * convertible to float32 without changing its value.
        * 
        * ParseFloat accepts decimal and hexadecimal floating-point numbers
        * as defined by the Go syntax for [floating-point literals].
        * If s is well-formed and near a valid floating-point number,
        * ParseFloat returns the nearest floating-point number rounded
        * using IEEE754 unbiased rounding.
        * (Parsing a hexadecimal floating-point value only rounds when
        * there are more bits in the hexadecimal representation than
        * will fit in the mantissa.)
        * 
        * The errors that ParseFloat returns have concrete type *NumError
        * and include err.Num = s.
        * 
        * If s is not syntactically well-formed, ParseFloat returns err.Err = ErrSyntax.
        * 
        * If s is syntactically well-formed but is more than 1/2 ULP
        * away from the largest floating point number of the given size,
        * ParseFloat returns f = ±Inf, err.Err = ErrRange.
        * 
        * ParseFloat recognizes the string "NaN", and the (possibly signed) strings "Inf" and "Infinity"
        * as their respective special floating point values. It ignores case when matching.
        * 
        * [floating-point literals]: https://go.dev/ref/spec#Floating-point_literals
    **/
    static public inline function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s, _bitSize);
    /**
        * ParseUint is like ParseInt but for unsigned numbers.
        * 
        * A sign prefix is not permitted.
    **/
    static public inline function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parseuint.parseUint(_s, _base, _bitSize);
    /**
        * ParseInt interprets a string s in the given base (0, 2 to 36) and
        * bit size (0 to 64) and returns the corresponding value i.
        * 
        * The string may begin with a leading sign: "+" or "-".
        * 
        * If the base argument is 0, the true base is implied by the string's
        * prefix following the sign (if present): 2 for "0b", 8 for "0" or "0o",
        * 16 for "0x", and 10 otherwise. Also, for argument base 0 only,
        * underscore characters are permitted as defined by the Go syntax for
        * [integer literals].
        * 
        * The bitSize argument specifies the integer type
        * that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
        * correspond to int, int8, int16, int32, and int64.
        * If bitSize is below 0 or above 64, an error is returned.
        * 
        * The errors that ParseInt returns have concrete type *NumError
        * and include err.Num = s. If s is empty or contains invalid
        * digits, err.Err = ErrSyntax and the returned value is 0;
        * if the value corresponding to s cannot be represented by a
        * signed integer of the given size, err.Err = ErrRange and the
        * returned value is the maximum magnitude integer of the
        * appropriate bitSize and sign.
        * 
        * [integer literals]: https://go.dev/ref/spec#Integer_literals
    **/
    static public inline function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parseint.parseInt(_s, _base, _bitSize);
    /**
        * Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
    **/
    static public inline function atoi(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_atoi.atoi(_s);
    /**
        * FormatComplex converts the complex number c to a string of the
        * form (a+bi) where a and b are the real and imaginary parts,
        * formatted according to the format fmt and precision prec.
        * 
        * The format fmt and precision prec have the same meaning as in FormatFloat.
        * It rounds the result assuming that the original was obtained from a complex
        * value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
    **/
    static public inline function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString return stdgo._internal.strconv.Strconv_formatcomplex.formatComplex(_c, _fmt, _prec, _bitSize);
    /**
        * FormatFloat converts the floating-point number f to a string,
        * according to the format fmt and precision prec. It rounds the
        * result assuming that the original was obtained from a floating-point
        * value of bitSize bits (32 for float32, 64 for float64).
        * 
        * The format fmt is one of
        * 'b' (-ddddp±ddd, a binary exponent),
        * 'e' (-d.dddde±dd, a decimal exponent),
        * 'E' (-d.ddddE±dd, a decimal exponent),
        * 'f' (-ddd.dddd, no exponent),
        * 'g' ('e' for large exponents, 'f' otherwise),
        * 'G' ('E' for large exponents, 'f' otherwise),
        * 'x' (-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent), or
        * 'X' (-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent).
        * 
        * The precision prec controls the number of digits (excluding the exponent)
        * printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
        * For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
        * For 'g' and 'G' it is the maximum number of significant digits (trailing
        * zeros are removed).
        * The special precision -1 uses the smallest number of digits
        * necessary such that ParseFloat will return f exactly.
    **/
    static public inline function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString return stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_f, _fmt, _prec, _bitSize);
    /**
        * AppendFloat appends the string form of the floating-point number f,
        * as generated by FormatFloat, to dst and returns the extended buffer.
    **/
    static public inline function appendFloat(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoFloat64, _fmt:stdgo.GoUInt8, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendfloat.appendFloat(_dst, _f, _fmt, _prec, _bitSize);
    static public inline function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal> return stdgo._internal.strconv.Strconv_newdecimal.newDecimal(_i);
    static public inline function setOptimize(_b:Bool):Bool return stdgo._internal.strconv.Strconv_setoptimize.setOptimize(_b);
    static public inline function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return stdgo._internal.strconv.Strconv_parsefloatprefix.parseFloatPrefix(_s, _bitSize);
    static public inline function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt return stdgo._internal.strconv.Strconv_mulbylog2log10.mulByLog2Log10(_x);
    static public inline function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt return stdgo._internal.strconv.Strconv_mulbylog10log2.mulByLog10Log2(_x);
    /**
        * FormatUint returns the string representation of i in the given base,
        * for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        * for digit values >= 10.
    **/
    static public inline function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString return stdgo._internal.strconv.Strconv_formatuint.formatUint(_i, _base);
    /**
        * FormatInt returns the string representation of i in the given base,
        * for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        * for digit values >= 10.
    **/
    static public inline function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString return stdgo._internal.strconv.Strconv_formatint.formatInt(_i, _base);
    /**
        * Itoa is equivalent to FormatInt(int64(i), 10).
    **/
    static public inline function itoa(_i:stdgo.GoInt):stdgo.GoString return stdgo._internal.strconv.Strconv_itoa.itoa(_i);
    /**
        * AppendInt appends the string form of the integer i,
        * as generated by FormatInt, to dst and returns the extended buffer.
    **/
    static public inline function appendInt(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendint.appendInt(_dst, _i, _base);
    /**
        * AppendUint appends the string form of the unsigned integer i,
        * as generated by FormatUint, to dst and returns the extended buffer.
    **/
    static public inline function appendUint(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appenduint.appendUint(_dst, _i, _base);
    /**
        * Quote returns a double-quoted Go string literal representing s. The
        * returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        * control characters and non-printable characters as defined by
        * IsPrint.
    **/
    static public inline function quote(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strconv.Strconv_quote.quote(_s);
    /**
        * AppendQuote appends a double-quoted Go string literal representing s,
        * as generated by Quote, to dst and returns the extended buffer.
    **/
    static public inline function appendQuote(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquote.appendQuote(_dst, _s);
    /**
        * QuoteToASCII returns a double-quoted Go string literal representing s.
        * The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        * non-ASCII characters and non-printable characters as defined by IsPrint.
    **/
    static public inline function quoteToASCII(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strconv.Strconv_quotetoascii.quoteToASCII(_s);
    /**
        * AppendQuoteToASCII appends a double-quoted Go string literal representing s,
        * as generated by QuoteToASCII, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquotetoascii.appendQuoteToASCII(_dst, _s);
    /**
        * QuoteToGraphic returns a double-quoted Go string literal representing s.
        * The returned string leaves Unicode graphic characters, as defined by
        * IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
        * for non-graphic characters.
    **/
    static public inline function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.strconv.Strconv_quotetographic.quoteToGraphic(_s);
    /**
        * AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
        * as generated by QuoteToGraphic, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquotetographic.appendQuoteToGraphic(_dst, _s);
    /**
        * QuoteRune returns a single-quoted Go character literal representing the
        * rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
        * for control characters and non-printable characters as defined by IsPrint.
        * If r is not a valid Unicode code point, it is interpreted as the Unicode
        * replacement character U+FFFD.
    **/
    static public inline function quoteRune(_r:stdgo.GoInt32):stdgo.GoString return stdgo._internal.strconv.Strconv_quoterune.quoteRune(_r);
    /**
        * AppendQuoteRune appends a single-quoted Go character literal representing the rune,
        * as generated by QuoteRune, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquoterune.appendQuoteRune(_dst, _r);
    /**
        * QuoteRuneToASCII returns a single-quoted Go character literal representing
        * the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
        * \u0100) for non-ASCII characters and non-printable characters as defined
        * by IsPrint.
        * If r is not a valid Unicode code point, it is interpreted as the Unicode
        * replacement character U+FFFD.
    **/
    static public inline function quoteRuneToASCII(_r:stdgo.GoInt32):stdgo.GoString return stdgo._internal.strconv.Strconv_quoterunetoascii.quoteRuneToASCII(_r);
    /**
        * AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
        * as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquoterunetoascii.appendQuoteRuneToASCII(_dst, _r);
    /**
        * QuoteRuneToGraphic returns a single-quoted Go character literal representing
        * the rune. If the rune is not a Unicode graphic character,
        * as defined by IsGraphic, the returned string will use a Go escape sequence
        * (\t, \n, \xFF, \u0100).
        * If r is not a valid Unicode code point, it is interpreted as the Unicode
        * replacement character U+FFFD.
    **/
    static public inline function quoteRuneToGraphic(_r:stdgo.GoInt32):stdgo.GoString return stdgo._internal.strconv.Strconv_quoterunetographic.quoteRuneToGraphic(_r);
    /**
        * AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
        * as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
    **/
    static public inline function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.strconv.Strconv_appendquoterunetographic.appendQuoteRuneToGraphic(_dst, _r);
    /**
        * CanBackquote reports whether the string s can be represented
        * unchanged as a single-line backquoted string without control
        * characters other than tab.
    **/
    static public inline function canBackquote(_s:stdgo.GoString):Bool return stdgo._internal.strconv.Strconv_canbackquote.canBackquote(_s);
    /**
        * UnquoteChar decodes the first character or byte in the escaped string
        * or character literal represented by the string s.
        * It returns four values:
        * 
        *  1. value, the decoded Unicode code point or byte value;
        *  2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
        *  3. tail, the remainder of the string after the character; and
        *  4. an error that will be nil if the character is syntactically valid.
        * 
        * The second argument, quote, specifies the type of literal being parsed
        * and therefore which escaped quote character is permitted.
        * If set to a single quote, it permits the sequence \' and disallows unescaped '.
        * If set to a double quote, it permits \" and disallows unescaped ".
        * If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
    **/
    static public inline function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } return stdgo._internal.strconv.Strconv_unquotechar.unquoteChar(_s, _quote);
    /**
        * QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
        * If s does not start with a valid quoted string, QuotedPrefix returns an error.
    **/
    static public inline function quotedPrefix(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_quotedprefix.quotedPrefix(_s);
    /**
        * Unquote interprets s as a single-quoted, double-quoted,
        * or backquoted Go string literal, returning the string value
        * that s quotes.  (If s is single-quoted, it would be a Go
        * character literal; Unquote returns the corresponding
        * one-character string.)
    **/
    static public inline function unquote(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.strconv.Strconv_unquote.unquote(_s);
    /**
        * IsPrint reports whether the rune is defined as printable by Go, with
        * the same definition as unicode.IsPrint: letters, numbers, punctuation,
        * symbols and ASCII space.
    **/
    static public inline function isPrint(_r:stdgo.GoInt32):Bool return stdgo._internal.strconv.Strconv_isprint.isPrint(_r);
    /**
        * IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
        * characters include letters, marks, numbers, punctuation, symbols, and
        * spaces, from categories L, M, N, P, S, and Zs.
    **/
    static public inline function isGraphic(_r:stdgo.GoInt32):Bool return stdgo._internal.strconv.Strconv_isgraphic.isGraphic(_r);
}
