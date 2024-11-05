# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-baseerror>)

- [`function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-bitsizeerror>)

- [class Strconv](<#class-strconv>)

  - [`function appendBool(_dst:Array<UInt>, _b:Bool):Array<UInt>`](<#strconv-function-appendbool>)

  - [`function appendFloat(_dst:Array<UInt>, _f:Float, _fmt:UInt, _prec:Int, _bitSize:Int):Array<UInt>`](<#strconv-function-appendfloat>)

  - [`function appendInt(_dst:Array<UInt>, _i:haxe.Int64, _base:Int):Array<UInt>`](<#strconv-function-appendint>)

  - [`function appendQuote(_dst:Array<UInt>, _s:String):Array<UInt>`](<#strconv-function-appendquote>)

  - [`function appendQuoteRune(_dst:Array<UInt>, _r:Int):Array<UInt>`](<#strconv-function-appendquoterune>)

  - [`function appendQuoteRuneToASCII(_dst:Array<UInt>, _r:Int):Array<UInt>`](<#strconv-function-appendquoterunetoascii>)

  - [`function appendQuoteRuneToGraphic(_dst:Array<UInt>, _r:Int):Array<UInt>`](<#strconv-function-appendquoterunetographic>)

  - [`function appendQuoteToASCII(_dst:Array<UInt>, _s:String):Array<UInt>`](<#strconv-function-appendquotetoascii>)

  - [`function appendQuoteToGraphic(_dst:Array<UInt>, _s:String):Array<UInt>`](<#strconv-function-appendquotetographic>)

  - [`function appendUint(_dst:Array<UInt>, _i:haxe.UInt64, _base:Int):Array<UInt>`](<#strconv-function-appenduint>)

  - [`function atoi(_s:String):stdgo.Tuple<Int, stdgo.Error>`](<#strconv-function-atoi>)

  - [`function canBackquote(_s:String):Bool`](<#strconv-function-canbackquote>)

  - [`function formatBool(_b:Bool):String`](<#strconv-function-formatbool>)

  - [`function formatComplex(_c:stdgo.GoComplex128, _fmt:UInt, _prec:Int, _bitSize:Int):String`](<#strconv-function-formatcomplex>)

  - [`function formatFloat(_f:Float, _fmt:UInt, _prec:Int, _bitSize:Int):String`](<#strconv-function-formatfloat>)

  - [`function formatInt(_i:haxe.Int64, _base:Int):String`](<#strconv-function-formatint>)

  - [`function formatUint(_i:haxe.UInt64, _base:Int):String`](<#strconv-function-formatuint>)

  - [`function isGraphic(_r:Int):Bool`](<#strconv-function-isgraphic>)

  - [`function isPrint(_r:Int):Bool`](<#strconv-function-isprint>)

  - [`function itoa(_i:Int):String`](<#strconv-function-itoa>)

  - [`function mulByLog10Log2(_x:Int):Int`](<#strconv-function-mulbylog10log2>)

  - [`function mulByLog2Log10(_x:Int):Int`](<#strconv-function-mulbylog2log10>)

  - [`function newDecimal(_i:haxe.UInt64):stdgo.strconv.T_decimal`](<#strconv-function-newdecimal>)

  - [`function parseBool(_str:String):stdgo.Tuple<Bool, stdgo.Error>`](<#strconv-function-parsebool>)

  - [`function parseComplex(_s:String, _bitSize:Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error>`](<#strconv-function-parsecomplex>)

  - [`function parseFloat(_s:String, _bitSize:Int):stdgo.Tuple<Float, stdgo.Error>`](<#strconv-function-parsefloat>)

  - [`function parseFloatPrefix(_s:String, _bitSize:Int):stdgo.Tuple3<Float, Int, stdgo.Error>`](<#strconv-function-parsefloatprefix>)

  - [`function parseInt(_s:String, _base:Int, _bitSize:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>`](<#strconv-function-parseint>)

  - [`function parseUint(_s:String, _base:Int, _bitSize:Int):stdgo.Tuple<haxe.UInt64, stdgo.Error>`](<#strconv-function-parseuint>)

  - [`function quote(_s:String):String`](<#strconv-function-quote>)

  - [`function quoteRune(_r:Int):String`](<#strconv-function-quoterune>)

  - [`function quoteRuneToASCII(_r:Int):String`](<#strconv-function-quoterunetoascii>)

  - [`function quoteRuneToGraphic(_r:Int):String`](<#strconv-function-quoterunetographic>)

  - [`function quoteToASCII(_s:String):String`](<#strconv-function-quotetoascii>)

  - [`function quoteToGraphic(_s:String):String`](<#strconv-function-quotetographic>)

  - [`function quotedPrefix(_s:String):stdgo.Tuple<String, stdgo.Error>`](<#strconv-function-quotedprefix>)

  - [`function setOptimize(_b:Bool):Bool`](<#strconv-function-setoptimize>)

  - [`function unquote(_s:String):stdgo.Tuple<String, stdgo.Error>`](<#strconv-function-unquote>)

  - [`function unquoteChar(_s:String, _quote:UInt):stdgo.Tuple4<Int, Bool, String, stdgo.Error>`](<#strconv-function-unquotechar>)

- [abstract NumError](<#abstract-numerror>)

- [abstract T\_decimal](<#abstract-t_decimal>)

- [abstract T\_leftCheat](<#abstract-t_leftcheat>)

- [abstract T\_floatInfo](<#abstract-t_floatinfo>)

- [abstract T\_decimalSlice](<#abstract-t_decimalslice>)

# Constants


```haxe
import stdgo.strconv.Strconv
```


```haxe
final intSize:haxe.UInt64 = stdgo._internal.strconv.Strconv_intSize.intSize
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


# Classes


```haxe
import stdgo.strconv.*
```


## class Strconv


```
{
    	if d.nd == 0 {
    		gotoNext = 2764614
    		_ = gotoNext == 2764614
    		mant_2764552 = 0
    		exp_2764539 = flt.bias
    		gotoNext = 2766016
    		gotoNext = 2764807
    	} else {
    		gotoNext = 2764807
}
    	_ = gotoNext == 2764807
    	if d.dp > 310 {
    		gotoNext = 2764821
    		_ = gotoNext == 2764821
    		gotoNext = 2765931
    		gotoNext = 2764843
    	} else {
    		gotoNext = 2764843
}
    	_ = gotoNext == 2764843
    	if d.dp < -330 {
    		gotoNext = 2764858
    		_ = gotoNext == 2764858
    		mant_2764552 = 0
    		exp_2764539 = flt.bias
    		gotoNext = 2766016
    		gotoNext = 2764967
    	} else {
    		gotoNext = 2764967
}
    	_ = gotoNext == 2764967
    	exp_2764539 = 0
    	_ = 0
    	gotoNext = 2764976
    	_ = gotoNext == 2764976
    	if d.dp > 0 {
    		gotoNext = 2764989
    		_ = gotoNext == 2764989
    		if d.dp >= len(powtab) {
    			gotoNext = 2765028
    			_ = gotoNext == 2765028
    			n_2764997 = 27
    			gotoNext = 2765077
    		} else {
    			gotoNext = 2765049
    			_ = gotoNext == 2765049
    			n_2764997 = powtab[d.dp]
    			gotoNext = 2765077
}
    		_ = gotoNext == 2765077
    		d.Shift(-n_2764997)
    		exp_2764539 += n_2764997
    		gotoNext = 2764976
    	} else {
    		gotoNext = 2765104
}
    	_ = gotoNext == 2765104
    	_ = 0
    	gotoNext = 2765104
    	_ = gotoNext == 2765104
    	if d.dp < 0 || d.dp == 0 && d.d[0] < 53 {
    		gotoNext = 2765146
    		_ = gotoNext == 2765146
    		if -d.dp >= len(powtab) {
    			gotoNext = 2765186
    			_ = gotoNext == 2765186
    			n_2765154 = 27
    			gotoNext = 2765236
    		} else {
    			gotoNext = 2765207
    			_ = gotoNext == 2765207
    			n_2765154 = powtab[-d.dp]
    			gotoNext = 2765236
}
    		_ = gotoNext == 2765236
    		d.Shift(n_2765154)
    		exp_2764539 -= n_2765154
    		gotoNext = 2765104
    	} else {
    		gotoNext = 2765323
}
    	_ = gotoNext == 2765323
    	exp_2764539--
    	if exp_2764539 < flt.bias+1 {
    		gotoNext = 2765474
    		_ = gotoNext == 2765474
    		n_2765478 = flt.bias + 1 - exp_2764539
    		d.Shift(-n_2765478)
    		exp_2764539 += n_2765478
    		gotoNext = 2765532
    	} else {
    		gotoNext = 2765532
}
    	_ = gotoNext == 2765532
    	if exp_2764539-flt.bias >= 1<<flt.expbits-1 {
    		gotoNext = 2765568
    		_ = gotoNext == 2765568
    		gotoNext = 2765931
    		gotoNext = 2765624
    	} else {
    		gotoNext = 2765624
}
    	_ = gotoNext == 2765624
    	d.Shift(int(1 + flt.mantbits))
    	mant_2764552 = d.RoundedInteger()
    	if mant_2764552 == 2<<flt.mantbits {
    		gotoNext = 2765760
    		_ = gotoNext == 2765760
    		mant_2764552 >>= 1
    		exp_2764539++
    		if exp_2764539-flt.bias >= 1<<flt.expbits-1 {
    			gotoNext = 2765821
    			_ = gotoNext == 2765821
    			gotoNext = 2765931
    			gotoNext = 2765867
    		} else {
    			gotoNext = 2765867
}
    		gotoNext = 2765867
    	} else {
    		gotoNext = 2765867
}
    	_ = gotoNext == 2765867
    	if mant_2764552&(1<<flt.mantbits) == 0 {
    		gotoNext = 2765898
    		_ = gotoNext == 2765898
    		exp_2764539 = flt.bias
    		gotoNext = 2765921
    	} else {
    		gotoNext = 2765921
}
    	_ = gotoNext == 2765921
    	gotoNext = 2766016
    	gotoNext = 2765931
    	_ = gotoNext == 2765931
    	mant_2764552 = 0
    	exp_2764539 = 1<<flt.expbits - 1 + flt.bias
    	overflow = true
    	gotoNext = 2766016
    	_ = gotoNext == 2766016
    	bits_2766041 = mant_2764552 & (uint64(1)<<flt.mantbits - 1)
    	bits_2766041 |= uint64((exp_2764539-flt.bias)&(1<<flt.expbits-1)) << flt.mantbits
    	if d.neg {
    		gotoNext = 2766163
    		_ = gotoNext == 2766163
    		bits_2766041 |= 1 << flt.mantbits << flt.expbits
    		gotoNext = 2766212
    	} else {
    		gotoNext = 2766212
}
    	_ = gotoNext == 2766212
    	return bits_2766041, overflow
    	gotoNext = -1
    }
```
### Strconv function appendBool


```haxe
function appendBool(_dst:Array<UInt>, _b:Bool):Array<UInt>
```


```
AppendBool appends "true" or "false", according to the value of b,
        to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L367>)


### Strconv function appendFloat


```haxe
function appendFloat(_dst:Array<UInt>, _f:Float, _fmt:UInt, _prec:Int, _bitSize:Int):Array<UInt>
```


```
AppendFloat appends the string form of the floating-point number f,
        as generated by FormatFloat, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L530>)


### Strconv function appendInt


```haxe
function appendInt(_dst:Array<UInt>, _i:haxe.Int64, _base:Int):Array<UInt>
```


```
AppendInt appends the string form of the integer i,
        as generated by FormatInt, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L578>)


### Strconv function appendQuote


```haxe
function appendQuote(_dst:Array<UInt>, _s:String):Array<UInt>
```


```
AppendQuote appends a double-quoted Go string literal representing s,
        as generated by Quote, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L603>)


### Strconv function appendQuoteRune


```haxe
function appendQuoteRune(_dst:Array<UInt>, _r:Int):Array<UInt>
```


```
AppendQuoteRune appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRune, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L654>)


### Strconv function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(_dst:Array<UInt>, _r:Int):Array<UInt>
```


```
AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L673>)


### Strconv function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(_dst:Array<UInt>, _r:Int):Array<UInt>
```


```
AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L692>)


### Strconv function appendQuoteToASCII


```haxe
function appendQuoteToASCII(_dst:Array<UInt>, _s:String):Array<UInt>
```


```
AppendQuoteToASCII appends a double-quoted Go string literal representing s,
        as generated by QuoteToASCII, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L619>)


### Strconv function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(_dst:Array<UInt>, _s:String):Array<UInt>
```


```
AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
        as generated by QuoteToGraphic, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L636>)


### Strconv function appendUint


```haxe
function appendUint(_dst:Array<UInt>, _i:haxe.UInt64, _base:Int):Array<UInt>
```


```
AppendUint appends the string form of the unsigned integer i,
        as generated by FormatUint, to dst and returns the extended buffer.
```
[\(view code\)](<./Strconv.hx#L586>)


### Strconv function atoi


```haxe
function atoi(_s:String):stdgo.Tuple<Int, stdgo.Error>
```



Atoi is equivalent to ParseInt\(s, 10, 0\), converted to type int.  

[\(view code\)](<./Strconv.hx#L481>)


### Strconv function canBackquote


```haxe
function canBackquote(_s:String):Bool
```


```
CanBackquote reports whether the string s can be represented
        unchanged as a single-line backquoted string without control
        characters other than tab.
```
[\(view code\)](<./Strconv.hx#L701>)


### Strconv function formatBool


```haxe
function formatBool(_b:Bool):String
```



FormatBool returns "true" or "false" according to the value of b.  

[\(view code\)](<./Strconv.hx#L360>)


### Strconv function formatComplex


```haxe
function formatComplex(_c:stdgo.GoComplex128, _fmt:UInt, _prec:Int, _bitSize:Int):String
```


```
FormatComplex converts the complex number c to a string of the
        form (a+bi) where a and b are the real and imaginary parts,
        formatted according to the format fmt and precision prec.
```

The format fmt and precision prec have the same meaning as in FormatFloat.
It rounds the result assuming that the original was obtained from a complex
value of bitSize bits, which must be 64 for complex64 and 128 for complex128.  

[\(view code\)](<./Strconv.hx#L496>)


### Strconv function formatFloat


```haxe
function formatFloat(_f:Float, _fmt:UInt, _prec:Int, _bitSize:Int):String
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

[\(view code\)](<./Strconv.hx#L523>)


### Strconv function formatInt


```haxe
function formatInt(_i:haxe.Int64, _base:Int):String
```


```
FormatInt returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
```
[\(view code\)](<./Strconv.hx#L565>)


### Strconv function formatUint


```haxe
function formatUint(_i:haxe.UInt64, _base:Int):String
```


```
FormatUint returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
```
[\(view code\)](<./Strconv.hx#L557>)


### Strconv function isGraphic


```haxe
function isGraphic(_r:Int):Bool
```


```
IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
        characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, and Zs.
```
[\(view code\)](<./Strconv.hx#L762>)


### Strconv function isPrint


```haxe
function isPrint(_r:Int):Bool
```


```
IsPrint reports whether the rune is defined as printable by Go, with
        the same definition as unicode.IsPrint: letters, numbers, punctuation,
        symbols and ASCII space.
```
[\(view code\)](<./Strconv.hx#L754>)


### Strconv function itoa


```haxe
function itoa(_i:Int):String
```



Itoa is equivalent to FormatInt\(int64\(i\), 10\).  

[\(view code\)](<./Strconv.hx#L571>)


### Strconv function mulByLog10Log2


```haxe
function mulByLog10Log2(_x:Int):Int
```


[\(view code\)](<./Strconv.hx#L549>)


### Strconv function mulByLog2Log10


```haxe
function mulByLog2Log10(_x:Int):Int
```


[\(view code\)](<./Strconv.hx#L546>)


### Strconv function newDecimal


```haxe
function newDecimal(_i:haxe.UInt64):stdgo.strconv.T_decimal
```


[\(view code\)](<./Strconv.hx#L534>)


### Strconv function parseBool


```haxe
function parseBool(_str:String):stdgo.Tuple<Bool, stdgo.Error>
```


```
ParseBool returns the boolean value represented by the string.
        It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
        Any other value returns an error.
```
[\(view code\)](<./Strconv.hx#L351>)


### Strconv function parseComplex


```haxe
function parseComplex(_s:String, _bitSize:Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error>
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

[\(view code\)](<./Strconv.hx#L393>)


### Strconv function parseFloat


```haxe
function parseFloat(_s:String, _bitSize:Int):stdgo.Tuple<Float, stdgo.Error>
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

[\(view code\)](<./Strconv.hx#L428>)


### Strconv function parseFloatPrefix


```haxe
function parseFloatPrefix(_s:String, _bitSize:Int):stdgo.Tuple3<Float, Int, stdgo.Error>
```


[\(view code\)](<./Strconv.hx#L540>)


### Strconv function parseInt


```haxe
function parseInt(_s:String, _base:Int, _bitSize:Int):stdgo.Tuple<haxe.Int64, stdgo.Error>
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

[\(view code\)](<./Strconv.hx#L472>)


### Strconv function parseUint


```haxe
function parseUint(_s:String, _base:Int, _bitSize:Int):stdgo.Tuple<haxe.UInt64, stdgo.Error>
```



ParseUint is like ParseInt but for unsigned numbers.  


A sign prefix is not permitted.  

[\(view code\)](<./Strconv.hx#L439>)


### Strconv function quote


```haxe
function quote(_s:String):String
```


```
Quote returns a double-quoted Go string literal representing s. The
        returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        control characters and non-printable characters as defined by
        IsPrint.
```
[\(view code\)](<./Strconv.hx#L596>)


### Strconv function quoteRune


```haxe
function quoteRune(_r:Int):String
```


```
QuoteRune returns a single-quoted Go character literal representing the
        rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
        for control characters and non-printable characters as defined by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L647>)


### Strconv function quoteRuneToASCII


```haxe
function quoteRuneToASCII(_r:Int):String
```


```
QuoteRuneToASCII returns a single-quoted Go character literal representing
        the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
        \u0100) for non-ASCII characters and non-printable characters as defined
        by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L666>)


### Strconv function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(_r:Int):String
```


```
QuoteRuneToGraphic returns a single-quoted Go character literal representing
        the rune. If the rune is not a Unicode graphic character,
        as defined by IsGraphic, the returned string will use a Go escape sequence
        (\t, \n, \xFF, \u0100).
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
```
[\(view code\)](<./Strconv.hx#L685>)


### Strconv function quoteToASCII


```haxe
function quoteToASCII(_s:String):String
```


```
QuoteToASCII returns a double-quoted Go string literal representing s.
        The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        non-ASCII characters and non-printable characters as defined by IsPrint.
```
[\(view code\)](<./Strconv.hx#L612>)


### Strconv function quoteToGraphic


```haxe
function quoteToGraphic(_s:String):String
```


```
QuoteToGraphic returns a double-quoted Go string literal representing s.
        The returned string leaves Unicode graphic characters, as defined by
        IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
        for non-graphic characters.
```
[\(view code\)](<./Strconv.hx#L629>)


### Strconv function quotedPrefix


```haxe
function quotedPrefix(_s:String):stdgo.Tuple<String, stdgo.Error>
```


```
QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
        If s does not start with a valid quoted string, QuotedPrefix returns an error.
```
[\(view code\)](<./Strconv.hx#L730>)


### Strconv function setOptimize


```haxe
function setOptimize(_b:Bool):Bool
```


[\(view code\)](<./Strconv.hx#L537>)


### Strconv function unquote


```haxe
function unquote(_s:String):stdgo.Tuple<String, stdgo.Error>
```


```
Unquote interprets s as a single-quoted, double-quoted,
        or backquoted Go string literal, returning the string value
        that s quotes.  (If s is single-quoted, it would be a Go
        character literal; Unquote returns the corresponding
        one-character string.)
```
[\(view code\)](<./Strconv.hx#L743>)


### Strconv function unquoteChar


```haxe
function unquoteChar(_s:String, _quote:UInt):stdgo.Tuple4<Int, Bool, String, stdgo.Error>
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
[\(view code\)](<./Strconv.hx#L720>)


# Abstracts


## abstract NumError


[\(view file containing code\)](<./Strconv.hx>)


## abstract T\_decimal


[\(view file containing code\)](<./Strconv.hx>)


## abstract T\_leftCheat


[\(view file containing code\)](<./Strconv.hx>)


## abstract T\_floatInfo


[\(view file containing code\)](<./Strconv.hx>)


## abstract T\_decimalSlice


[\(view file containing code\)](<./Strconv.hx>)


