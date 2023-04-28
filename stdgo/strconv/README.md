# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview



Package strconv implements conversions to and from string representations
of basic data types.  

## Numeric Conversions



The most common numeric conversions are Atoi \(string to int\) and Itoa \(int to string\).  

```
	i, err := strconv.Atoi("-42")
	s := strconv.Itoa(-42)
```

These assume decimal and the Go int type.  


ParseBool, ParseFloat, ParseInt, and ParseUint convert strings to values:  

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

FormatBool, FormatFloat, FormatInt, and FormatUint convert values to strings:  

```
	s := strconv.FormatBool(true)
	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
	s := strconv.FormatInt(-42, 16)
	s := strconv.FormatUint(42, 16)
```

AppendBool, AppendFloat, AppendInt, and AppendUint are similar but
append the formatted value to a destination slice.  

## String Conversions



Quote and QuoteToASCII convert strings to quoted Go string literals.
The latter guarantees that the result is an ASCII string, by escaping
any non\-ASCII Unicode with \\u:  

```
	q := strconv.Quote("Hello, 世界")
	q := strconv.QuoteToASCII("Hello, 世界")
```

QuoteRune and QuoteRuneToASCII are similar but accept runes and
return quoted Go rune literals.  


Unquote and UnquoteChar unquote Go string and rune literals.  

<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestParseBool
--- PASS: TestParseBool (%!s(float64=0.001947164535522461))

=== RUN  TestFormatBool
--- PASS: TestFormatBool (%!s(float64=1.5020370483398438e-05))

=== RUN  TestAppendBool
--- PASS: TestAppendBool (%!s(float64=2.3126602172851562e-05))

=== RUN  TestParseComplex
--- PASS: TestParseComplex (%!s(float64=0.07621216773986816))

=== RUN  TestParseComplexIncorrectBitSize
--- PASS: TestParseComplexIncorrectBitSize (%!s(float64=0.00012421607971191406))

=== RUN  TestParseFloatPrefix
--- PASS: TestParseFloatPrefix (%!s(float64=0.33303213119506836))

=== RUN  TestAtof
--- PASS: TestAtof (%!s(float64=0.3832998275756836))

=== RUN  TestAtofSlow
--- PASS: TestAtofSlow (%!s(float64=0.7813320159912109))

=== RUN  TestAtofRandom
strconv_test/Strconv_test.hx:2231: testAtofRandom skip function
--- PASS: TestAtofRandom (%!s(float64=3.3855438232421875e-05))

=== RUN  TestRoundTrip
--- PASS: TestRoundTrip (%!s(float64=0.004759073257446289))

=== RUN  TestRoundTrip32
--- PASS: TestRoundTrip32 (%!s(float64=2.753178119659424))

=== RUN  TestParseFloatIncorrectBitSize
--- PASS: TestParseFloatIncorrectBitSize (%!s(float64=7.700920104980469e-05))

=== RUN  TestParseUint32
--- PASS: TestParseUint32 (%!s(float64=0.0003190040588378906))

=== RUN  TestParseUint64
--- PASS: TestParseUint64 (%!s(float64=0.0004589557647705078))

=== RUN  TestParseUint64Base
--- PASS: TestParseUint64Base (%!s(float64=0.010951995849609375))

=== RUN  TestParseInt32
--- PASS: TestParseInt32 (%!s(float64=0.0012052059173583984))

=== RUN  TestParseInt64
--- PASS: TestParseInt64 (%!s(float64=0.0030269622802734375))

=== RUN  TestParseInt64Base
--- PASS: TestParseInt64Base (%!s(float64=0.007472038269042969))

=== RUN  TestParseUint
--- PASS: TestParseUint (%!s(float64=0.00040793418884277344))

=== RUN  TestParseInt
--- PASS: TestParseInt (%!s(float64=0.0011310577392578125))

=== RUN  TestAtoi
--- PASS: TestAtoi (%!s(float64=0.0009138584136962891))

=== RUN  TestParseIntBitSize
--- PASS: TestParseIntBitSize (%!s(float64=0.0004658699035644531))

=== RUN  TestParseUintBitSize
--- PASS: TestParseUintBitSize (%!s(float64=0.0003910064697265625))

=== RUN  TestParseIntBase
--- PASS: TestParseIntBase (%!s(float64=0.0006468296051025391))

=== RUN  TestParseUintBase
--- PASS: TestParseUintBase (%!s(float64=0.0004749298095703125))

=== RUN  TestNumError
--- PASS: TestNumError (%!s(float64=6.508827209472656e-05))

=== RUN  TestNumErrorUnwrap
--- PASS: TestNumErrorUnwrap (%!s(float64=9.608268737792969e-05))

=== RUN  TestFormatComplex
--- PASS: TestFormatComplex (%!s(float64=0.0035250186920166016))

=== RUN  TestFormatComplexInvalidBitSize
--- PASS: TestFormatComplexInvalidBitSize (%!s(float64=2.9087066650390625e-05))

=== RUN  TestDecimalShift
--- PASS: TestDecimalShift (%!s(float64=0.0009250640869140625))

=== RUN  TestDecimalRound
--- PASS: TestDecimalRound (%!s(float64=0.007207155227661133))

=== RUN  TestDecimalRoundedInteger
--- PASS: TestDecimalRoundedInteger (%!s(float64=0.0009648799896240234))

=== RUN  TestFp
strconv_test/Strconv_test.hx:3197: testFp skip function
--- PASS: TestFp (%!s(float64=3.314018249511719e-05))

=== RUN  TestFtoa
--- PASS: TestFtoa (%!s(float64=0.046449899673461914))

=== RUN  TestFtoaPowersOfTwo
strconv_test/Strconv_test.hx:3321: testFtoaPowersOfTwo skip function
--- PASS: TestFtoaPowersOfTwo (%!s(float64=1.811981201171875e-05))

=== RUN  TestFtoaRandom
--- PASS: TestFtoaRandom (%!s(float64=0.5098998546600342))

=== RUN  TestFormatFloatInvalidBitSize
--- PASS: TestFormatFloatInvalidBitSize (%!s(float64=3.314018249511719e-05))

=== RUN  TestMulByLog2Log10
--- PASS: TestMulByLog2Log10 (%!s(float64=0.0003781318664550781))

=== RUN  TestMulByLog10Log2
--- PASS: TestMulByLog10Log2 (%!s(float64=0.00011396408081054688))

=== RUN  TestItoa
--- PASS: TestItoa (%!s(float64=0.0038690567016601562))

=== RUN  TestUitoa
--- PASS: TestUitoa (%!s(float64=0.0009260177612304688))

=== RUN  TestFormatUintVarlen
--- PASS: TestFormatUintVarlen (%!s(float64=0.0005481243133544922))

=== RUN  TestIsPrint
--- PASS: TestIsPrint (%!s(float64=10.86190414428711))

=== RUN  TestIsGraphic
--- PASS: TestIsGraphic (%!s(float64=11.510655164718628))

=== RUN  TestQuote
--- PASS: TestQuote (%!s(float64=0.002466917037963867))

=== RUN  TestQuoteToASCII
--- PASS: TestQuoteToASCII (%!s(float64=0.00029015541076660156))

=== RUN  TestQuoteToGraphic
--- PASS: TestQuoteToGraphic (%!s(float64=0.0002980232238769531))

=== RUN  TestQuoteRune
--- PASS: TestQuoteRune (%!s(float64=0.0002751350402832031))

=== RUN  TestQuoteRuneToASCII
--- PASS: TestQuoteRuneToASCII (%!s(float64=0.00034499168395996094))

=== RUN  TestQuoteRuneToGraphic
--- PASS: TestQuoteRuneToGraphic (%!s(float64=0.0002541542053222656))

=== RUN  TestCanBackquote
--- PASS: TestCanBackquote (%!s(float64=8.797645568847656e-05))

=== RUN  TestUnquote
--- PASS: TestUnquote (%!s(float64=0.002110004425048828))

=== RUN  TestUnquoteInvalidUTF8
--- PASS: TestUnquoteInvalidUTF8 (%!s(float64=0.00015497207641601562))

=== RUN  TestCountMallocs
--- PASS: TestCountMallocs (%!s(float64=0.15843892097473145))

=== RUN  TestAllocationsFromBytes
--- PASS: TestAllocationsFromBytes (%!s(float64=2.4080276489257812e-05))

=== RUN  TestErrorPrefixes
--- PASS: TestErrorPrefixes (%!s(float64=0.0002529621124267578))

```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestParseBool
--- PASS: TestParseBool (%!s(float64=0.000370025634765625))

=== RUN  TestFormatBool
--- PASS: TestFormatBool (%!s(float64=4.100799560546875e-05))

=== RUN  TestAppendBool
--- PASS: TestAppendBool (%!s(float64=6.890296936035156e-05))

=== RUN  TestParseComplex
--- PASS: TestParseComplex (%!s(float64=0.9512929916381836))

=== RUN  TestParseComplexIncorrectBitSize
--- PASS: TestParseComplexIncorrectBitSize (%!s(float64=0.0011539459228515625))

=== RUN  TestParseFloatPrefix
--- PASS: TestParseFloatPrefix (%!s(float64=4.872711896896362))

=== RUN  TestAtof
--- PASS: TestAtof (%!s(float64=2.9447720050811768))

=== RUN  TestAtofSlow
--- PASS: TestAtofSlow (%!s(float64=9.407898187637329))

=== RUN  TestAtofRandom
strconv_test/Strconv_test.hx:2231: testAtofRandom skip function
--- PASS: TestAtofRandom (%!s(float64=2.09808349609375e-05))

=== RUN  TestRoundTrip
--- PASS: TestRoundTrip (%!s(float64=0.0189821720123291))

=== RUN  TestRoundTrip32
ParseFloat("-2.44997e-05", 32) = -2.44997e-05, not a float32 (nearest is -2.44997e-05)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte>`](<#function-appendbool>)

- [`function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appendfloat>)

- [`function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appendint>)

- [`function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquote>)

- [`function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterune>)

- [`function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterunetoascii>)

- [`function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterunetographic>)

- [`function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquotetoascii>)

- [`function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquotetographic>)

- [`function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appenduint>)

- [`function atoi(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-atoi>)

- [`function baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-baseerror>)

- [`function bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-bitsizeerror>)

- [`function canBackquote(_s:stdgo.GoString):Bool`](<#function-canbackquote>)

- [`function formatBool(_b:Bool):stdgo.GoString`](<#function-formatbool>)

- [`function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString`](<#function-formatcomplex>)

- [`function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString`](<#function-formatfloat>)

- [`function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString`](<#function-formatint>)

- [`function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString`](<#function-formatuint>)

- [`function isGraphic(_r:stdgo.GoRune):Bool`](<#function-isgraphic>)

- [`function isPrint(_r:stdgo.GoRune):Bool`](<#function-isprint>)

- [`function itoa(_i:stdgo.GoInt):stdgo.GoString`](<#function-itoa>)

- [`function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-mulbylog10log2>)

- [`function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt`](<#function-mulbylog2log10>)

- [`function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo.strconv.T_decimal>`](<#function-newdecimal>)

- [`function parseBool(_str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-parsebool>)

- [`function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoComplex128;
}`](<#function-parsecomplex>)

- [`function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}`](<#function-parsefloat>)

- [`function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-parsefloatprefix>)

- [`function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}`](<#function-parseint>)

- [`function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}`](<#function-parseuint>)

- [`function quote(_s:stdgo.GoString):stdgo.GoString`](<#function-quote>)

- [`function quoteRune(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterune>)

- [`function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterunetoascii>)

- [`function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterunetographic>)

- [`function quoteToASCII(_s:stdgo.GoString):stdgo.GoString`](<#function-quotetoascii>)

- [`function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString`](<#function-quotetographic>)

- [`function quotedPrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-quotedprefix>)

- [`function setOptimize(_b:Bool):Bool`](<#function-setoptimize>)

- [`function unquote(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-unquote>)

- [`function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:Bool;
	_0:stdgo.GoRune;
}`](<#function-unquotechar>)

- [class NumError](<#class-numerror>)

  - [`function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:Null<stdgo.Error>):Void`](<#numerror-function-new>)

  - [`function error():stdgo.GoString`](<#numerror-function-error>)

  - [`function unwrap():stdgo.Error`](<#numerror-function-unwrap>)

# Examples


- [`exampleAppendBool`](<#exampleappendbool>)

- [`exampleAppendFloat`](<#exampleappendfloat>)

- [`exampleAppendInt`](<#exampleappendint>)

- [`exampleAppendQuote`](<#exampleappendquote>)

- [`exampleAppendQuoteRune`](<#exampleappendquoterune>)

- [`exampleAppendQuoteRuneToASCII`](<#exampleappendquoterunetoascii>)

- [`exampleAppendQuoteToASCII`](<#exampleappendquotetoascii>)

- [`exampleAppendUint`](<#exampleappenduint>)

- [`exampleAtoi`](<#exampleatoi>)

- [`exampleCanBackquote`](<#examplecanbackquote>)

- [`exampleFormatBool`](<#exampleformatbool>)

- [`exampleFormatFloat`](<#exampleformatfloat>)

- [`exampleFormatInt`](<#exampleformatint>)

- [`exampleFormatUint`](<#exampleformatuint>)

- [`exampleIsGraphic`](<#exampleisgraphic>)

- [`exampleIsPrint`](<#exampleisprint>)

- [`exampleItoa`](<#exampleitoa>)

- [`exampleParseBool`](<#exampleparsebool>)

- [`exampleParseFloat`](<#exampleparsefloat>)

- [`exampleParseInt`](<#exampleparseint>)

- [`exampleParseUint`](<#exampleparseuint>)

- [`exampleQuote`](<#examplequote>)

- [`exampleQuoteRune`](<#examplequoterune>)

- [`exampleQuoteRuneToASCII`](<#examplequoterunetoascii>)

- [`exampleQuoteRuneToGraphic`](<#examplequoterunetographic>)

- [`exampleQuoteToASCII`](<#examplequotetoascii>)

- [`exampleQuoteToGraphic`](<#examplequotetographic>)

- [`exampleUnquote`](<#exampleunquote>)

- [`exampleUnquoteChar`](<#exampleunquotechar>)

# Constants


```haxe
import stdgo.strconv.Strconv
```


```haxe
final intSize:stdgo.GoUInt64 = ((32i64 : GoUInt64))
```



IntSize is the size in bits of an int or uint value.  

# Variables


```haxe
import stdgo.strconv.Strconv
```


```haxe
var errRange:stdgo.Error
```



ErrRange indicates that a value is out of range for the target type.  

```haxe
var errSyntax:stdgo.Error
```



ErrSyntax indicates that a value does not have the right syntax for the target type.  

# Functions


```haxe
import stdgo.strconv.Strconv
```


## function appendBool


```haxe
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte>
```



AppendBool appends "true" or "false", according to the value of b,
to dst and returns the extended buffer.  

### exampleAppendBool


<details><summary></summary>
<p>


```haxe
function exampleAppendBool():Void {
        var _b = (("bool:" : GoString) : Slice<GoByte>);
        _b = stdgo.strconv.Strconv.appendBool(_b, true);
        stdgo.fmt.Fmt.println(Go.toInterface((_b : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2391>)


## function appendFloat


```haxe
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendFloat appends the string form of the floating\-point number f,
as generated by FormatFloat, to dst and returns the extended buffer.  

### exampleAppendFloat


<details><summary></summary>
<p>


```haxe
function exampleAppendFloat():Void {
        var _b32 = (("float32:" : GoString) : Slice<GoByte>);
        _b32 = stdgo.strconv.Strconv.appendFloat(_b32, (3.1415926535 : GoFloat64), (69 : GoUInt8), (-1 : GoInt), (32 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b32 : GoString)));
        var _b64 = (("float64:" : GoString) : Slice<GoByte>);
        _b64 = stdgo.strconv.Strconv.appendFloat(_b64, (3.1415926535 : GoFloat64), (69 : GoUInt8), (-1 : GoInt), (64 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b64 : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3582>)


## function appendInt


```haxe
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendInt appends the string form of the integer i,
as generated by FormatInt, to dst and returns the extended buffer.  

### exampleAppendInt


<details><summary></summary>
<p>


```haxe
function exampleAppendInt():Void {
        var _b10 = (("int (base 10):" : GoString) : Slice<GoByte>);
        _b10 = stdgo.strconv.Strconv.appendInt(_b10, (-42i64 : GoInt64), (10 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b10 : GoString)));
        var _b16 = (("int (base 16):" : GoString) : Slice<GoByte>);
        _b16 = stdgo.strconv.Strconv.appendInt(_b16, (-42i64 : GoInt64), (16 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b16 : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4581>)


## function appendQuote


```haxe
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuote appends a double\-quoted Go string literal representing s,
as generated by Quote, to dst and returns the extended buffer.  

### exampleAppendQuote


<details><summary></summary>
<p>


```haxe
function exampleAppendQuote():Void {
        var _b = (("quote:" : GoString) : Slice<GoByte>);
        _b = stdgo.strconv.Strconv.appendQuote(_b, ("\"Fran & Freddie\'s Diner\"" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface((_b : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4862>)


## function appendQuoteRune


```haxe
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRune appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRune, to dst and returns the extended buffer.  

### exampleAppendQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRune():Void {
        var _b = (("rune:" : GoString) : Slice<GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRune(_b, (9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface((_b : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4910>)


## function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRuneToASCII appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRuneToASCII, to dst and returns the extended buffer.  

### exampleAppendQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRuneToASCII():Void {
        var _b = (("rune (ascii):" : GoString) : Slice<GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRuneToASCII(_b, (9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface((_b : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4928>)


## function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRuneToGraphic appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.  

[\(view code\)](<./Strconv.hx#L4946>)


## function appendQuoteToASCII


```haxe
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteToASCII appends a double\-quoted Go string literal representing s,
as generated by QuoteToASCII, to dst and returns the extended buffer.  

### exampleAppendQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteToASCII():Void {
        var _b = (("quote (ascii):" : GoString) : Slice<GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface((_b : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4877>)


## function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteToGraphic appends a double\-quoted Go string literal representing s,
as generated by QuoteToGraphic, to dst and returns the extended buffer.  

[\(view code\)](<./Strconv.hx#L4893>)


## function appendUint


```haxe
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendUint appends the string form of the unsigned integer i,
as generated by FormatUint, to dst and returns the extended buffer.  

### exampleAppendUint


<details><summary></summary>
<p>


```haxe
function exampleAppendUint():Void {
        var _b10 = (("uint (base 10):" : GoString) : Slice<GoByte>);
        _b10 = stdgo.strconv.Strconv.appendUint(_b10, (42i64 : GoUInt64), (10 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b10 : GoString)));
        var _b16 = (("uint (base 16):" : GoString) : Slice<GoByte>);
        _b16 = stdgo.strconv.Strconv.appendUint(_b16, (42i64 : GoUInt64), (16 : GoInt));
        stdgo.fmt.Fmt.println(Go.toInterface((_b16 : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4595>)


## function atoi


```haxe
function atoi(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Atoi is equivalent to ParseInt\(s, 10, 0\), converted to type int.  

### exampleAtoi


<details><summary></summary>
<p>


```haxe
function exampleAtoi():Void {
        var _v:GoString = ("10" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.atoi(_v), _s:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3205>)


## function baseError


```haxe
function baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2165>)


## function bitSizeError


```haxe
function bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2159>)


## function canBackquote


```haxe
function canBackquote(_s:stdgo.GoString):Bool
```



CanBackquote reports whether the string s can be represented
unchanged as a single\-line backquoted string without control
characters other than tab.  

### exampleCanBackquote


<details><summary></summary>
<p>


```haxe
function exampleCanBackquote():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strconv.Strconv.canBackquote(("Fran & Freddie\'s Diner ☺" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.strconv.Strconv.canBackquote(("`can\'t backquote this`" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4954>)


## function formatBool


```haxe
function formatBool(_b:Bool):stdgo.GoString
```



FormatBool returns "true" or "false" according to the value of b.  

### exampleFormatBool


<details><summary></summary>
<p>


```haxe
function exampleFormatBool():Void {
        var _v:Bool = true;
        var _s:GoString = stdgo.strconv.Strconv.formatBool(_v);
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2381>)


## function formatComplex


```haxe
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```



FormatComplex converts the complex number c to a string of the
form \(a\+bi\) where a and b are the real and imaginary parts,
formatted according to the format fmt and precision prec.  


The format fmt and precision prec have the same meaning as in FormatFloat.
It rounds the result assuming that the original was obtained from a complex
value of bitSize bits, which must be 64 for complex64 and 128 for complex128.  

[\(view code\)](<./Strconv.hx#L3293>)


## function formatFloat


```haxe
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```



FormatFloat converts the floating\-point number f to a string,
according to the format fmt and precision prec. It rounds the
result assuming that the original was obtained from a floating\-point
value of bitSize bits \(32 for float32, 64 for float64\).  


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

### exampleFormatFloat


<details><summary></summary>
<p>


```haxe
function exampleFormatFloat():Void {
        var _v:GoFloat64 = (3.1415926535 : GoFloat64);
        var _s32:GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : GoUInt8), (-1 : GoInt), (32 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s32), Go.toInterface(_s32));
        var _s64:GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : GoUInt8), (-1 : GoInt), (64 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s64), Go.toInterface(_s64));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3575>)


## function formatInt


```haxe
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString
```



FormatInt returns the string representation of i in the given base,
for 2 \<= base \<= 36. The result uses the lower\-case letters 'a' to 'z'
for digit values \>= 10.  

### exampleFormatInt


<details><summary></summary>
<p>


```haxe
function exampleFormatInt():Void {
        var _v:GoInt64 = (-42i64 : GoInt64);
        var _s10:GoString = stdgo.strconv.Strconv.formatInt(_v, (10 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s10), Go.toInterface(_s10));
        var _s16:GoString = stdgo.strconv.Strconv.formatInt(_v, (16 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s16), Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4564>)


## function formatUint


```haxe
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString
```



FormatUint returns the string representation of i in the given base,
for 2 \<= base \<= 36. The result uses the lower\-case letters 'a' to 'z'
for digit values \>= 10.  

### exampleFormatUint


<details><summary></summary>
<p>


```haxe
function exampleFormatUint():Void {
        var _v:GoUInt64 = (42i64 : GoUInt64);
        var _s10:GoString = stdgo.strconv.Strconv.formatUint(_v, (10 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s10), Go.toInterface(_s10));
        var _s16:GoString = stdgo.strconv.Strconv.formatUint(_v, (16 : GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s16), Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4552>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```



IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
characters include letters, marks, numbers, punctuation, symbols, and
spaces, from categories L, M, N, P, S, and Zs.  

### exampleIsGraphic


<details><summary></summary>
<p>


```haxe
function exampleIsGraphic():Void {
        var _shamrock:Bool = stdgo.strconv.Strconv.isGraphic((9752 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_shamrock));
        var _a:Bool = stdgo.strconv.Strconv.isGraphic((97 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_a));
        var _bel:Bool = stdgo.strconv.Strconv.isGraphic((7 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5339>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```



IsPrint reports whether the rune is defined as printable by Go, with
the same definition as unicode.IsPrint: letters, numbers, punctuation,
symbols and ASCII space.  

### exampleIsPrint


<details><summary></summary>
<p>


```haxe
function exampleIsPrint():Void {
        var _c:Bool = stdgo.strconv.Strconv.isPrint((9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_c));
        var _bel:Bool = stdgo.strconv.Strconv.isPrint((7 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5303>)


## function itoa


```haxe
function itoa(_i:stdgo.GoInt):stdgo.GoString
```



Itoa is equivalent to FormatInt\(int64\(i\), 10\).  

### exampleItoa


<details><summary></summary>
<p>


```haxe
function exampleItoa():Void {
        var _i:GoInt = (10 : GoInt);
        var _s:GoString = stdgo.strconv.Strconv.itoa(_i);
        stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4574>)


## function mulByLog10Log2


```haxe
function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4544>)


## function mulByLog2Log10


```haxe
function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4541>)


## function newDecimal


```haxe
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo.strconv.T_decimal>
```


[\(view code\)](<./Strconv.hx#L4528>)


## function parseBool


```haxe
function parseBool(_str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```



ParseBool returns the boolean value represented by the string.
It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
Any other value returns an error.  

### exampleParseBool


<details><summary></summary>
<p>


```haxe
function exampleParseBool():Void {
        var _v:GoString = ("true" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseBool(_v), _s:Bool = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2367>)


## function parseComplex


```haxe
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoComplex128;
}
```



ParseComplex converts the string s to a complex number
with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
When bitSize=64, the result still has type complex128, but it will be
convertible to complex64 without changing its value.  


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

[\(view code\)](<./Strconv.hx#L2441>)


## function parseFloat


```haxe
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}
```



ParseFloat converts the string s to a floating\-point number
with the precision specified by bitSize: 32 for float32, or 64 for float64.
When bitSize=32, the result still has type float64, but it will be
convertible to float32 without changing its value.  


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

### exampleParseFloat


<details><summary></summary>
<p>


```haxe
function exampleParseFloat():Void {
        var _v:GoString = ("3.1415926535" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (64 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("NaN" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("nan" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("inf" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+Inf" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-Inf" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-0" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+0" : GoString), (32 : GoInt)), _s:GoFloat64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2999>)


## function parseFloatPrefix


```haxe
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L4538>)


## function parseInt


```haxe
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



ParseInt interprets a string s in the given base \(0, 2 to 36\) and
bit size \(0 to 64\) and returns the corresponding value i.  


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

### exampleParseInt


<details><summary></summary>
<p>


```haxe
function exampleParseInt():Void {
        var _v32:GoString = ("-354634382" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (10 : GoInt), (32 : GoInt)), _s:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (16 : GoInt), (32 : GoInt)), _s:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        var _v64:GoString = ("-3546343826724305832" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (10 : GoInt), (64 : GoInt)), _s:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (16 : GoInt), (64 : GoInt)), _s:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3161>)


## function parseUint


```haxe
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}
```



ParseUint is like ParseInt but for unsigned numbers.  


A sign prefix is not permitted.  

### exampleParseUint


<details><summary></summary>
<p>


```haxe
function exampleParseUint():Void {
        var _v:GoString = ("42" : GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : GoInt), (32 : GoInt)), _s:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : GoInt), (64 : GoInt)), _s:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3058>)


## function quote


```haxe
function quote(_s:stdgo.GoString):stdgo.GoString
```



Quote returns a double\-quoted Go string literal representing s. The
returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\) for
control characters and non\-printable characters as defined by
IsPrint.  

### exampleQuote


<details><summary></summary>
<p>


```haxe
function exampleQuote():Void {
        var _s:GoString = stdgo.strconv.Strconv.quote(("\"Fran & Freddie\'s Diner\t☺\"" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4855>)


## function quoteRune


```haxe
function quoteRune(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRune returns a single\-quoted Go character literal representing the
rune. The returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\)
for control characters and non\-printable characters as defined by IsPrint.
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleQuoteRune():Void {
        var _s:GoString = stdgo.strconv.Strconv.quoteRune((9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4903>)


## function quoteRuneToASCII


```haxe
function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRuneToASCII returns a single\-quoted Go character literal representing
the rune. The returned string uses Go escape sequences \(\\t, \\n, \\xFF,
\\u0100\) for non\-ASCII characters and non\-printable characters as defined
by IsPrint.
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToASCII():Void {
        var _s:GoString = stdgo.strconv.Strconv.quoteRuneToASCII((9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4921>)


## function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRuneToGraphic returns a single\-quoted Go character literal representing
the rune. If the rune is not a Unicode graphic character,
as defined by IsGraphic, the returned string will use a Go escape sequence
\(\\t, \\n, \\xFF, \\u0100\).
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRuneToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToGraphic():Void {
        var _s:GoString = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((10 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9 : GoInt32));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4939>)


## function quoteToASCII


```haxe
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString
```



QuoteToASCII returns a double\-quoted Go string literal representing s.
The returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\) for
non\-ASCII characters and non\-printable characters as defined by IsPrint.  

### exampleQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteToASCII():Void {
        var _s:GoString = stdgo.strconv.Strconv.quoteToASCII(("\"Fran & Freddie\'s Diner\t☺\"" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4870>)


## function quoteToGraphic


```haxe
function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString
```



QuoteToGraphic returns a double\-quoted Go string literal representing s.
The returned string leaves Unicode graphic characters, as defined by
IsGraphic, unchanged and uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\)
for non\-graphic characters.  

### exampleQuoteToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteToGraphic():Void {
        var _s:GoString = stdgo.strconv.Strconv.quoteToGraphic(("☺" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("This is a ☺\t\n" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("\" This is a ☺ \\n \"" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4886>)


## function quotedPrefix


```haxe
function quotedPrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



QuotedPrefix returns the quoted string \(as understood by Unquote\) at the prefix of s.
If s does not start with a valid quoted string, QuotedPrefix returns an error.  

[\(view code\)](<./Strconv.hx#L5142>)


## function setOptimize


```haxe
function setOptimize(_b:Bool):Bool
```


[\(view code\)](<./Strconv.hx#L4533>)


## function unquote


```haxe
function unquote(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



Unquote interprets s as a single\-quoted, double\-quoted,
or backquoted Go string literal, returning the string value
that s quotes.  \(If s is single\-quoted, it would be a Go
character literal; Unquote returns the corresponding
one\-character string.\)  

### exampleUnquote


<details><summary></summary>
<p>


```haxe
function exampleUnquote():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquote(("You can\'t unquote a string without quotes" : GoString)), _s:GoString = __tmp__._0, _err:Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("%q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\"The string must be either double-quoted\"" : GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("`or backquoted.`" : GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☺\'" : GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☹☹\'" : GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5153>)


## function unquoteChar


```haxe
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:Bool;
	_0:stdgo.GoRune;
}
```



UnquoteChar decodes the first character or byte in the escaped string
or character literal represented by the string s.
It returns four values:  

```
  1. value, the decoded Unicode code point or byte value;
  2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
  3. tail, the remainder of the string after the character; and
  4. an error that will be nil if the character is syntactically valid.
```

The second argument, quote, specifies the type of literal being parsed
and therefore which escaped quote character is permitted.
If set to a single quote, it permits the sequence \\' and disallows unescaped '.
If set to a double quote, it permits \\" and disallows unescaped ".
If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.  

### exampleUnquoteChar


<details><summary></summary>
<p>


```haxe
function exampleUnquoteChar():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquoteChar(("\\\"Fran & Freddie\'s Diner\\\"" : GoString), (34 : GoUInt8)), _v:GoInt32 = __tmp__._0, _mb:Bool = __tmp__._1, _t:GoString = __tmp__._2, _err:Error = __tmp__._3;
        if (_err != null) {
            stdgo.log.Log.fatal(Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(Go.toInterface(("value:" : GoString)), Go.toInterface((_v : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("multibyte:" : GoString)), Go.toInterface(_mb));
        stdgo.fmt.Fmt.println(Go.toInterface(("tail:" : GoString)), Go.toInterface(_t));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5001>)


# Classes


```haxe
import stdgo.strconv.*
```


## class NumError



A NumError records a failed conversion.  

```haxe
var err:stdgo.Error
```


```haxe
var func:stdgo.GoString
```


```haxe
var num:stdgo.GoString
```


### NumError function new


```haxe
function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Strconv.hx#L2274>)


### NumError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L5377>)


### NumError function unwrap


```haxe
function unwrap():stdgo.Error
```


[\(view code\)](<./Strconv.hx#L5373>)


