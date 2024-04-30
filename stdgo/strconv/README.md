# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview


```
Package strconv implements conversions to and from string representations
    of basic data types.
```
## Numeric Conversions



The most common numeric conversions are Atoi \(string to int\) and Itoa \(int to string\).  

```
    	i, err := strconv.Atoi("-42")
    	s := strconv.Itoa(-42)
```

These assume decimal and the Go int type.  


\[ParseBool\], \[ParseFloat\], \[ParseInt\], and \[ParseUint\] convert strings to values:  

```
    	b, err := strconv.ParseBool("true")
    	f, err := strconv.ParseFloat("3.1415", 64)
    	i, err := strconv.ParseInt("-42", 10, 64)
    	u, err := strconv.ParseUint("42", 10, 64)
```

The parse functions return the widest type \(float64, int64, and uint64\),
but if the size argument specifies a narrower width the result can be
converted to that narrower type without data loss:  

```
    	s := "2147483647" // biggest int32
    	i64, err := strconv.ParseInt(s, 10, 32)
    	...
    	i := int32(i64)
```

\[FormatBool\], \[FormatFloat\], \[FormatInt\], and \[FormatUint\] convert values to strings:  

```
    	s := strconv.FormatBool(true)
    	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
    	s := strconv.FormatInt(-42, 16)
    	s := strconv.FormatUint(42, 16)
```

\[AppendBool\], \[AppendFloat\], \[AppendInt\], and \[AppendUint\] are similar but
append the formatted value to a destination slice.  

## String Conversions



\[Quote\] and \[QuoteToASCII\] convert strings to quoted Go string literals.
The latter guarantees that the result is an ASCII string, by escaping
any non\-ASCII Unicode with \\u:  

```
    	q := strconv.Quote("Hello, 世界")
    	q := strconv.QuoteToASCII("Hello, 世界")
```

\[QuoteRune\] and \[QuoteRuneToASCII\] are similar but accept runes and
return quoted Go rune literals.  


\[Unquote\] and \[UnquoteChar\] unquote Go string and rune literals.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function appendBool(dst:Array<Int>, b:Bool):Array<Int>`](<#function-appendbool>)

- [`function appendFloat(dst:Array<Int>, f:Float, fmt:Int, prec:Int, bitSize:Int):Array<Int>`](<#function-appendfloat>)

- [`function appendInt(dst:Array<Int>, i:haxe.Int64, base:Int):Array<Int>`](<#function-appendint>)

- [`function appendQuote(dst:Array<Int>, s:String):Array<Int>`](<#function-appendquote>)

- [`function appendQuoteRune(dst:Array<Int>, r:Int):Array<Int>`](<#function-appendquoterune>)

- [`function appendQuoteRuneToASCII(dst:Array<Int>, r:Int):Array<Int>`](<#function-appendquoterunetoascii>)

- [`function appendQuoteRuneToGraphic(dst:Array<Int>, r:Int):Array<Int>`](<#function-appendquoterunetographic>)

- [`function appendQuoteToASCII(dst:Array<Int>, s:String):Array<Int>`](<#function-appendquotetoascii>)

- [`function appendQuoteToGraphic(dst:Array<Int>, s:String):Array<Int>`](<#function-appendquotetographic>)

- [`function appendUint(dst:Array<Int>, i:haxe.UInt64, base:Int):Array<Int>`](<#function-appenduint>)

- [`function atoi(s:String):stdgo.Tuple<Int, stdgo.Error>`](<#function-atoi>)

- [`function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-baseerror>)

- [`function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-bitsizeerror>)

- [`function canBackquote(s:String):Bool`](<#function-canbackquote>)

- [`function formatBool(b:Bool):String`](<#function-formatbool>)

- [`function formatComplex(c:stdgo.GoComplex128, fmt:Int, prec:Int, bitSize:Int):String`](<#function-formatcomplex>)

- [`function formatFloat(f:Float, fmt:Int, prec:Int, bitSize:Int):String`](<#function-formatfloat>)

- [`function formatInt(i:haxe.Int64, base:Int):String`](<#function-formatint>)

- [`function formatUint(i:haxe.UInt64, base:Int):String`](<#function-formatuint>)

- [`function get_baseError():(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-get_baseerror>)

- [`function get_bitSizeError():(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-get_bitsizeerror>)

- [`function get_errRange():stdgo.Error`](<#function-get_errrange>)

- [`function get_errSyntax():stdgo.Error`](<#function-get_errsyntax>)

- [`function isGraphic(r:Int):Bool`](<#function-isgraphic>)

- [`function isPrint(r:Int):Bool`](<#function-isprint>)

- [`function itoa(i:Int):String`](<#function-itoa>)

- [`function mulByLog10Log2(x:Int):Int`](<#function-mulbylog10log2>)

- [`function mulByLog2Log10(x:Int):Int`](<#function-mulbylog2log10>)

- [`function newDecimal(i:haxe.UInt64):stdgo.strconv.T_decimal`](<#function-newdecimal>)

- [`function parseBool(str:String):stdgo.Tuple<Bool, stdgo.Error>`](<#function-parsebool>)

- [`function parseComplex(s:String, bitSize:Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error>`](<#function-parsecomplex>)

- [`function parseFloat(s:String, bitSize:Int):stdgo.Tuple<Float, stdgo.Error>`](<#function-parsefloat>)

- [`function parseFloatPrefix(s:String, bitSize:Int):stdgo.Tuple3<Float, Int, stdgo.Error>`](<#function-parsefloatprefix>)

- [`function parseInt(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#function-parseint>)

- [`function parseUint(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.UInt64, stdgo.Error>`](<#function-parseuint>)

- [`function quote(s:String):String`](<#function-quote>)

- [`function quoteRune(r:Int):String`](<#function-quoterune>)

- [`function quoteRuneToASCII(r:Int):String`](<#function-quoterunetoascii>)

- [`function quoteRuneToGraphic(r:Int):String`](<#function-quoterunetographic>)

- [`function quoteToASCII(s:String):String`](<#function-quotetoascii>)

- [`function quoteToGraphic(s:String):String`](<#function-quotetographic>)

- [`function quotedPrefix(s:String):stdgo.Tuple<String, stdgo.Error>`](<#function-quotedprefix>)

- [`function setOptimize(b:Bool):Bool`](<#function-setoptimize>)

- [`function set_baseError(v:(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>):(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-set_baseerror>)

- [`function set_bitSizeError(v:(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>):(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-set_bitsizeerror>)

- [`function set_errRange(v:stdgo.Error):stdgo.Error`](<#function-set_errrange>)

- [`function set_errSyntax(v:stdgo.Error):stdgo.Error`](<#function-set_errsyntax>)

- [`function unquote(s:String):stdgo.Tuple<String, stdgo.Error>`](<#function-unquote>)

- [`function unquoteChar(s:String, quote:Int):stdgo.Tuple4<Int, Bool, String, stdgo.Error>`](<#function-unquotechar>)

- [typedef NumError](<#typedef-numerror>)

- [typedef NumError\_asInterface](<#typedef-numerror_asinterface>)

- [typedef NumError\_static\_extension](<#typedef-numerror_static_extension>)

- [typedef T\_decimal](<#typedef-t_decimal>)

- [typedef T\_decimalSlice](<#typedef-t_decimalslice>)

- [typedef T\_decimal\_asInterface](<#typedef-t_decimal_asinterface>)

- [typedef T\_decimal\_static\_extension](<#typedef-t_decimal_static_extension>)

- [typedef T\_floatInfo](<#typedef-t_floatinfo>)

- [typedef T\_leftCheat](<#typedef-t_leftcheat>)

# Constants


```haxe
import stdgo.strconv.Strconv
```


```haxe
final intSize:haxe.UInt64 = stdgo._internal.strconv.Strconv.intSize
```


# Variables


```haxe
import stdgo.strconv.Strconv
```


```haxe
var errRange:stdgo.Error
```


```haxe
var errSyntax:stdgo.Error
```


# Functions


```haxe
import stdgo.strconv.Strconv
```


## function appendBool


```haxe
function appendBool(dst:Array<Int>, b:Bool):Array<Int>
```


```
AppendBool appends "true" or "false", according to the value of b,
    to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L88>)


## function appendFloat


```haxe
function appendFloat(dst:Array<Int>, f:Float, fmt:Int, prec:Int, bitSize:Int):Array<Int>
```


```
AppendFloat appends the string form of the floating-point number f,
    as generated by FormatFloat, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L219>)


## function appendInt


```haxe
function appendInt(dst:Array<Int>, i:haxe.Int64, base:Int):Array<Int>
```


```
AppendInt appends the string form of the integer i,
    as generated by FormatInt, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L245>)


## function appendQuote


```haxe
function appendQuote(dst:Array<Int>, s:String):Array<Int>
```


```
AppendQuote appends a double-quoted Go string literal representing s,
    as generated by Quote, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L262>)


## function appendQuoteRune


```haxe
function appendQuoteRune(dst:Array<Int>, r:Int):Array<Int>
```


```
AppendQuoteRune appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRune, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L298>)


## function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(dst:Array<Int>, r:Int):Array<Int>
```


```
AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L312>)


## function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(dst:Array<Int>, r:Int):Array<Int>
```


```
AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
    as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L326>)


## function appendQuoteToASCII


```haxe
function appendQuoteToASCII(dst:Array<Int>, s:String):Array<Int>
```


```
AppendQuoteToASCII appends a double-quoted Go string literal representing s,
    as generated by QuoteToASCII, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L273>)


## function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(dst:Array<Int>, s:String):Array<Int>
```


```
AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
    as generated by QuoteToGraphic, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L285>)


## function appendUint


```haxe
function appendUint(dst:Array<Int>, i:haxe.UInt64, base:Int):Array<Int>
```


```
AppendUint appends the string form of the unsigned integer i,
    as generated by FormatUint, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L250>)


## function atoi


```haxe
function atoi(s:String):stdgo.Tuple<Int, stdgo.Error>
```



Atoi is equivalent to ParseInt\(s, 10, 0\), converted to type int.  

[\(view code\)](<./Strconv.hx#L179>)


## function baseError


```haxe
function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx>)


## function bitSizeError


```haxe
function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx>)


## function canBackquote


```haxe
function canBackquote(s:String):Bool
```


```
CanBackquote reports whether the string s can be represented
    unchanged as a single-line backquoted string without control
    characters other than tab.
```
[\(view code\)](<./Strconv.hx#L332>)


## function formatBool


```haxe
function formatBool(b:Bool):String
```



FormatBool returns "true" or "false" according to the value of b.  

[\(view code\)](<./Strconv.hx#L83>)


## function formatComplex


```haxe
function formatComplex(c:stdgo.GoComplex128, fmt:Int, prec:Int, bitSize:Int):String
```


```
FormatComplex converts the complex number c to a string of the
    form (a+bi) where a and b are the real and imaginary parts,
    formatted according to the format fmt and precision prec.
```

The format fmt and precision prec have the same meaning as in FormatFloat.
It rounds the result assuming that the original was obtained from a complex
value of bitSize bits, which must be 64 for complex64 and 128 for complex128.  

[\(view code\)](<./Strconv.hx#L189>)


## function formatFloat


```haxe
function formatFloat(f:Float, fmt:Int, prec:Int, bitSize:Int):String
```


```
FormatFloat converts the floating-point number f to a string,
    according to the format fmt and precision prec. It rounds the
    result assuming that the original was obtained from a floating-point
    value of bitSize bits (32 for float32, 64 for float64).
```

The format fmt is one of
'b' \(\-ddddp±ddd, a binary exponent\),
'e' \(\-d.dddde±dd, a decimal exponent\),
'E' \(\-d.ddddE±dd, a decimal exponent\),
'f' \(\-ddd.dddd, no exponent\),
'g' \('e' for large exponents, 'f' otherwise\),
'G' \('E' for large exponents, 'f' otherwise\),
'x' \(\-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent\), or
'X' \(\-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent\).  


The precision prec controls the number of digits \(excluding the exponent\)
printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
For 'g' and 'G' it is the maximum number of significant digits \(trailing
zeros are removed\).
The special precision \-1 uses the smallest number of digits
necessary such that ParseFloat will return f exactly.  

[\(view code\)](<./Strconv.hx#L214>)


## function formatInt


```haxe
function formatInt(i:haxe.Int64, base:Int):String
```


```
FormatInt returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
```
[\(view code\)](<./Strconv.hx#L236>)


## function formatUint


```haxe
function formatUint(i:haxe.UInt64, base:Int):String
```


```
FormatUint returns the string representation of i in the given base,
    for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
    for digit values >= 10.
```
[\(view code\)](<./Strconv.hx#L230>)


## function get\_baseError


```haxe
function get_baseError():(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L67>)


## function get\_bitSizeError


```haxe
function get_bitSizeError():(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L64>)


## function get\_errRange


```haxe
function get_errRange():stdgo.Error
```


[\(view code\)](<./Strconv.hx#L58>)


## function get\_errSyntax


```haxe
function get_errSyntax():stdgo.Error
```


[\(view code\)](<./Strconv.hx#L61>)


## function isGraphic


```haxe
function isGraphic(r:Int):Bool
```


```
IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
    characters include letters, marks, numbers, punctuation, symbols, and
    spaces, from categories L, M, N, P, S, and Zs.
```
[\(view code\)](<./Strconv.hx#L374>)


## function isPrint


```haxe
function isPrint(r:Int):Bool
```


```
IsPrint reports whether the rune is defined as printable by Go, with
    the same definition as unicode.IsPrint: letters, numbers, punctuation,
    symbols and ASCII space.
```
[\(view code\)](<./Strconv.hx#L368>)


## function itoa


```haxe
function itoa(i:Int):String
```



Itoa is equivalent to FormatInt\(int64\(i\), 10\).  

[\(view code\)](<./Strconv.hx#L240>)


## function mulByLog10Log2


```haxe
function mulByLog10Log2(x:Int):Int
```


[\(view code\)](<./Strconv.hx#L224>)


## function mulByLog2Log10


```haxe
function mulByLog2Log10(x:Int):Int
```


[\(view code\)](<./Strconv.hx#L223>)


## function newDecimal


```haxe
function newDecimal(i:haxe.UInt64):stdgo.strconv.T_decimal
```


[\(view code\)](<./Strconv.hx#L220>)


## function parseBool


```haxe
function parseBool(str:String):stdgo.Tuple<Bool, stdgo.Error>
```


```
ParseBool returns the boolean value represented by the string.
    It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
    Any other value returns an error.
```
[\(view code\)](<./Strconv.hx#L79>)


## function parseComplex


```haxe
function parseComplex(s:String, bitSize:Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error>
```


```
ParseComplex converts the string s to a complex number
    with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
    When bitSize=64, the result still has type complex128, but it will be
    convertible to complex64 without changing its value.
```

The number represented by s must be of the form N, Ni, or N±Ni, where N stands
for a floating\-point number as recognized by ParseFloat, and i is the imaginary
component. If the second N is unsigned, a \+ sign is required between the two components
as indicated by the ±. If the second N is NaN, only a \+ sign is accepted.
The form may be parenthesized and cannot contain any spaces.
The resulting complex number consists of the two components converted by ParseFloat.  


The errors that ParseComplex returns have concrete type \*NumError
and include err.Num = s.  


If s is not syntactically well\-formed, ParseComplex returns err.Err = ErrSyntax.  


If s is syntactically well\-formed but either component is more than 1/2 ULP
away from the largest floating point number of the given component's size,
ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.  

[\(view code\)](<./Strconv.hx#L111>)


## function parseFloat


```haxe
function parseFloat(s:String, bitSize:Int):stdgo.Tuple<Float, stdgo.Error>
```


```
ParseFloat converts the string s to a floating-point number
    with the precision specified by bitSize: 32 for float32, or 64 for float64.
    When bitSize=32, the result still has type float64, but it will be
    convertible to float32 without changing its value.
```

ParseFloat accepts decimal and hexadecimal floating\-point numbers
as defined by the Go syntax for \[floating\-point literals\].
If s is well\-formed and near a valid floating\-point number,
ParseFloat returns the nearest floating\-point number rounded
using IEEE754 unbiased rounding.
\(Parsing a hexadecimal floating\-point value only rounds when
there are more bits in the hexadecimal representation than
will fit in the mantissa.\)  


The errors that ParseFloat returns have concrete type \*NumError
and include err.Num = s.  


If s is not syntactically well\-formed, ParseFloat returns err.Err = ErrSyntax.  


If s is syntactically well\-formed but is more than 1/2 ULP
away from the largest floating point number of the given size,
ParseFloat returns f = ±Inf, err.Err = ErrRange.  


ParseFloat recognizes the string "NaN", and the \(possibly signed\) strings "Inf" and "Infinity"
as their respective special floating point values. It ignores case when matching.  


\[floating\-point literals\]: https://go.dev/ref/spec#Floating-point_literals  

[\(view code\)](<./Strconv.hx#L141>)


## function parseFloatPrefix


```haxe
function parseFloatPrefix(s:String, bitSize:Int):stdgo.Tuple3<Float, Int, stdgo.Error>
```


[\(view code\)](<./Strconv.hx#L222>)


## function parseInt


```haxe
function parseInt(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>
```


```
ParseInt interprets a string s in the given base (0, 2 to 36) and
    bit size (0 to 64) and returns the corresponding value i.
```

The string may begin with a leading sign: "\+" or "\-".  


If the base argument is 0, the true base is implied by the string's
prefix following the sign \(if present\): 2 for "0b", 8 for "0" or "0o",
16 for "0x", and 10 otherwise. Also, for argument base 0 only,
underscore characters are permitted as defined by the Go syntax for
\[integer literals\].  


The bitSize argument specifies the integer type
that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
correspond to int, int8, int16, int32, and int64.
If bitSize is below 0 or above 64, an error is returned.  


The errors that ParseInt returns have concrete type \*NumError
and include err.Num = s. If s is empty or contains invalid
digits, err.Err = ErrSyntax and the returned value is 0;
if the value corresponding to s cannot be represented by a
signed integer of the given size, err.Err = ErrRange and the
returned value is the maximum magnitude integer of the
appropriate bitSize and sign.  


\[integer literals\]: https://go.dev/ref/spec#Integer_literals  

[\(view code\)](<./Strconv.hx#L175>)


## function parseUint


```haxe
function parseUint(s:String, base:Int, bitSize:Int):stdgo.Tuple<haxe.UInt64, stdgo.Error>
```



ParseUint is like ParseInt but for unsigned numbers.  


A sign prefix is not permitted.  

[\(view code\)](<./Strconv.hx#L147>)


## function quote


```haxe
function quote(s:String):String
```


```
Quote returns a double-quoted Go string literal representing s. The
    returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    control characters and non-printable characters as defined by
    IsPrint.
```
[\(view code\)](<./Strconv.hx#L257>)


## function quoteRune


```haxe
function quoteRune(r:Int):String
```


```
QuoteRune returns a single-quoted Go character literal representing the
    rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
    for control characters and non-printable characters as defined by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L293>)


## function quoteRuneToASCII


```haxe
function quoteRuneToASCII(r:Int):String
```


```
QuoteRuneToASCII returns a single-quoted Go character literal representing
    the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
    \u0100) for non-ASCII characters and non-printable characters as defined
    by IsPrint.
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L307>)


## function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(r:Int):String
```


```
QuoteRuneToGraphic returns a single-quoted Go character literal representing
    the rune. If the rune is not a Unicode graphic character,
    as defined by IsGraphic, the returned string will use a Go escape sequence
    (\t, \n, \xFF, \u0100).
    If r is not a valid Unicode code point, it is interpreted as the Unicode
    replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L321>)


## function quoteToASCII


```haxe
function quoteToASCII(s:String):String
```


```
QuoteToASCII returns a double-quoted Go string literal representing s.
    The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
    non-ASCII characters and non-printable characters as defined by IsPrint.
```
[\(view code\)](<./Strconv.hx#L268>)


## function quoteToGraphic


```haxe
function quoteToGraphic(s:String):String
```


```
QuoteToGraphic returns a double-quoted Go string literal representing s.
    The returned string leaves Unicode graphic characters, as defined by
    IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
    for non-graphic characters.
```
[\(view code\)](<./Strconv.hx#L280>)


## function quotedPrefix


```haxe
function quotedPrefix(s:String):stdgo.Tuple<String, stdgo.Error>
```


```
QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
    If s does not start with a valid quoted string, QuotedPrefix returns an error.
```
[\(view code\)](<./Strconv.hx#L354>)


## function setOptimize


```haxe
function setOptimize(b:Bool):Bool
```


[\(view code\)](<./Strconv.hx#L221>)


## function set\_baseError


```haxe
function set_baseError(v:(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>):(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L68>)


## function set\_bitSizeError


```haxe
function set_bitSizeError(v:(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>):(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L65>)


## function set\_errRange


```haxe
function set_errRange(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Strconv.hx#L59>)


## function set\_errSyntax


```haxe
function set_errSyntax(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Strconv.hx#L62>)


## function unquote


```haxe
function unquote(s:String):stdgo.Tuple<String, stdgo.Error>
```


```
Unquote interprets s as a single-quoted, double-quoted,
    or backquoted Go string literal, returning the string value
    that s quotes.  (If s is single-quoted, it would be a Go
    character literal; Unquote returns the corresponding
    one-character string.)
```
[\(view code\)](<./Strconv.hx#L362>)


## function unquoteChar


```haxe
function unquoteChar(s:String, quote:Int):stdgo.Tuple4<Int, Bool, String, stdgo.Error>
```


```
UnquoteChar decodes the first character or byte in the escaped string
    or character literal represented by the string s.
    It returns four values:
```

1. value, the decoded Unicode code point or byte value;
2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF\-8 representation;
3. tail, the remainder of the string after the character; and
4. an error that will be nil if the character is syntactically valid.  

```
    The second argument, quote, specifies the type of literal being parsed
    and therefore which escaped quote character is permitted.
    If set to a single quote, it permits the sequence \' and disallows unescaped '.
    If set to a double quote, it permits \" and disallows unescaped ".
    If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
```
[\(view code\)](<./Strconv.hx#L349>)


# Typedefs


```haxe
import stdgo.strconv.*
```


## typedef NumError


```haxe
typedef NumError = Dynamic;
```


## typedef NumError\_asInterface


```haxe
typedef NumError_asInterface = Dynamic;
```


## typedef NumError\_static\_extension


```haxe
typedef NumError_static_extension = Dynamic;
```


## typedef T\_decimal


```haxe
typedef T_decimal = Dynamic;
```


## typedef T\_decimalSlice


```haxe
typedef T_decimalSlice = Dynamic;
```


## typedef T\_decimal\_asInterface


```haxe
typedef T_decimal_asInterface = Dynamic;
```


## typedef T\_decimal\_static\_extension


```haxe
typedef T_decimal_static_extension = Dynamic;
```


## typedef T\_floatInfo


```haxe
typedef T_floatInfo = Dynamic;
```


## typedef T\_leftCheat


```haxe
typedef T_leftCheat = Dynamic;
```


