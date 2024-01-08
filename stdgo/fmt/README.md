# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview



Package fmt implements formatted I/O with functions analogous
to C's printf and scanf.  The format 'verbs' are derived from C's but
are simpler.  

## Printing



The verbs:  


General:  

```
    	%v	the value in a default format
    		when printing structs, the plus flag (%+v) adds field names
    	%#v	a Go-syntax representation of the value
    	%T	a Go-syntax representation of the type of the value
    	%%	a literal percent sign; consumes no value
```

Boolean:  

```
    	%t	the word true or false
```

Integer:  

```
    	%b	base 2
    	%c	the character represented by the corresponding Unicode code point
    	%d	base 10
    	%o	base 8
    	%O	base 8 with 0o prefix
    	%q	a single-quoted character literal safely escaped with Go syntax.
    	%x	base 16, with lower-case letters for a-f
    	%X	base 16, with upper-case letters for A-F
    	%U	Unicode format: U+1234; same as "U+%04X"
```

Floating\-point and complex constituents:  

```
    	%b	decimalless scientific notation with exponent a power of two,
    		in the manner of strconv.FormatFloat with the 'b' format,
    		e.g. -123456p-78
    	%e	scientific notation, e.g. -1.234456e+78
    	%E	scientific notation, e.g. -1.234456E+78
    	%f	decimal point but no exponent, e.g. 123.456
    	%F	synonym for %f
    	%g	%e for large exponents, %f otherwise. Precision is discussed below.
    	%G	%E for large exponents, %F otherwise
    	%x	hexadecimal notation (with decimal power of two exponent), e.g. -0x1.23abcp+20
    	%X	upper-case hexadecimal notation, e.g. -0X1.23ABCP+20
```

String and slice of bytes \(treated equivalently with these verbs\):  

```
    	%s	the uninterpreted bytes of the string or slice
    	%q	a double-quoted string safely escaped with Go syntax
    	%x	base 16, lower-case, two characters per byte
    	%X	base 16, upper-case, two characters per byte
```

Slice:  

```
    	%p	address of 0th element in base 16 notation, with leading 0x
```

Pointer:  

```
    	%p	base 16 notation, with leading 0x
    	The %b, %d, %o, %x and %X verbs also work with pointers,
    	formatting the value exactly as if it were an integer.
```

The default format for %v is:  

```
    	bool:                    %t
    	int, int8 etc.:          %d
    	uint, uint8 etc.:        %d, %#x if printed with %#v
    	float32, complex64, etc: %g
    	string:                  %s
    	chan:                    %p
    	pointer:                 %p
```

For compound objects, the elements are printed using these rules, recursively,
laid out like this:  

```
    	struct:             {field0 field1 ...}
    	array, slice:       [elem0 elem1 ...]
    	maps:               map[key1:value1 key2:value2 ...]
    	pointer to above:   &{}, &[], &map[]
```

Width is specified by an optional decimal number immediately preceding the verb.
If absent, the width is whatever is necessary to represent the value.
Precision is specified after the \(optional\) width by a period followed by a
decimal number. If no period is present, a default precision is used.
A period with no following number specifies a precision of zero.
Examples:  

```
    	%f     default width, default precision
    	%9f    width 9, default precision
    	%.2f   default width, precision 2
    	%9.2f  width 9, precision 2
    	%9.f   width 9, precision 0
```

Width and precision are measured in units of Unicode code points,
that is, runes. \(This differs from C's printf where the
units are always measured in bytes.\) Either or both of the flags
may be replaced with the character '\*', causing their values to be
obtained from the next operand \(preceding the one to format\),
which must be of type int.  


For most values, width is the minimum number of runes to output,
padding the formatted form with spaces if necessary.  


For strings, byte slices and byte arrays, however, precision
limits the length of the input to be formatted \(not the size of
the output\), truncating if necessary. Normally it is measured in
runes, but for these types when formatted with the %x or %X format
it is measured in bytes.  


For floating\-point values, width sets the minimum width of the field and
precision sets the number of places after the decimal, if appropriate,
except that for %g/%G precision sets the maximum number of significant
digits \(trailing zeros are removed\). For example, given 12.345 the format
%6.3f prints 12.345 while %.3g prints 12.3. The default precision for %e, %f
and %\#g is 6; for %g it is the smallest number of digits necessary to identify
the value uniquely.  


For complex numbers, the width and precision apply to the two
components independently and the result is parenthesized, so %f applied
to 1.2\+3.4i produces \(1.200000\+3.400000i\).  


When formatting a single integer code point or a rune string \(type \[\]rune\)
with %q, invalid Unicode code points are changed to the Unicode replacement
character, U\+FFFD, as in strconv.QuoteRune.  


Other flags:  

```
    	'+'	always print a sign for numeric values;
    		guarantee ASCII-only output for %q (%+q)
    	'-'	pad with spaces on the right rather than the left (left-justify the field)
    	'#'	alternate format: add leading 0b for binary (%#b), 0 for octal (%#o),
    		0x or 0X for hex (%#x or %#X); suppress 0x for %p (%#p);
    		for %q, print a raw (backquoted) string if strconv.CanBackquote
    		returns true;
    		always print a decimal point for %e, %E, %f, %F, %g and %G;
    		do not remove trailing zeros for %g and %G;
    		write e.g. U+0078 'x' if the character is printable for %U (%#U).
    	' '	(space) leave a space for elided sign in numbers (% d);
    		put spaces between bytes printing strings or slices in hex (% x, % X)
    	'0'	pad with leading zeros rather than spaces;
    		for numbers, this moves the padding after the sign;
    		ignored for strings, byte slices and byte arrays
```

Flags are ignored by verbs that do not expect them.
For example there is no alternate decimal format, so %\#d and %d
behave identically.  


For each Printf\-like function, there is also a Print function
that takes no format and is equivalent to saying %v for every
operand.  Another variant Println inserts blanks between
operands and appends a newline.  


Regardless of the verb, if an operand is an interface value,
the internal concrete value is used, not the interface itself.
Thus:  

```
    	var i interface{} = 23
    	fmt.Printf("%v\n", i)
```

will print 23.  


Except when printed using the verbs %T and %p, special
formatting considerations apply for operands that implement
certain interfaces. In order of application:  


1. If the operand is a reflect.Value, the operand is replaced by the
concrete value that it holds, and printing continues with the next rule.  


2. If an operand implements the Formatter interface, it will
be invoked. In this case the interpretation of verbs and flags is
controlled by that implementation.  


3. If the %v verb is used with the \# flag \(%\#v\) and the operand
implements the GoStringer interface, that will be invoked.  


If the format \(which is implicitly %v for Println etc.\) is valid
for a string \(%s %q %v %x %X\), the following two rules apply:  


4. If an operand implements the error interface, the Error method
will be invoked to convert the object to a string, which will then
be formatted as required by the verb \(if any\).  


5. If an operand implements method String\(\) string, that method
will be invoked to convert the object to a string, which will then
be formatted as required by the verb \(if any\).  


For compound operands such as slices and structs, the format
applies to the elements of each operand, recursively, not to the
operand as a whole. Thus %q will quote each element of a slice
of strings, and %6.2f will control formatting for each element
of a floating\-point array.  


However, when printing a byte slice with a string\-like verb
\(%s %q %x %X\), it is treated identically to a string, as a single item.  


To avoid recursion in cases such as  

```
    	type X string
    	func (x X) String() string { return Sprintf("<%s>", x) }
```

convert the value before recurring:  

```
    	func (x X) String() string { return Sprintf("<%s>", string(x)) }
```

Infinite recursion can also be triggered by self\-referential data
structures, such as a slice that contains itself as an element, if
that type has a String method. Such pathologies are rare, however,
and the package does not protect against them.  


When printing a struct, fmt cannot and therefore does not invoke
formatting methods such as Error or String on unexported fields.  

## Explicit argument indexes



In Printf, Sprintf, and Fprintf, the default behavior is for each
formatting verb to format successive arguments passed in the call.
However, the notation \[n\] immediately before the verb indicates that the
nth one\-indexed argument is to be formatted instead. The same notation
before a '\*' for a width or precision selects the argument index holding
the value. After processing a bracketed expression \[n\], subsequent verbs
will use arguments n\+1, n\+2, etc. unless otherwise directed.  


For example,  

```
    	fmt.Sprintf("%[2]d %[1]d\n", 11, 22)
```

will yield "22 11", while  

```
    	fmt.Sprintf("%[3]*.[2]*[1]f", 12.0, 2, 6)
```

equivalent to  

```
    	fmt.Sprintf("%6.2f", 12.0)
```

will yield " 12.00". Because an explicit index affects subsequent verbs,
this notation can be used to print the same values multiple times
by resetting the index for the first argument to be repeated:  

```
    	fmt.Sprintf("%d %d %#[1]x %#x", 16, 17)
```

will yield "16 17 0x10 0x11".  

## Format errors



If an invalid argument is given for a verb, such as providing
a string to %d, the generated string will contain a
description of the problem, as in these examples:  

```
    	Wrong type or unknown verb: %!verb(type=value)
    		Printf("%d", "hi"):        %!d(string=hi)
    	Too many arguments: %!(EXTRA type=value)
    		Printf("hi", "guys"):      hi%!(EXTRA string=guys)
    	Too few arguments: %!verb(MISSING)
    		Printf("hi%d"):            hi%!d(MISSING)
    	Non-int for width or precision: %!(BADWIDTH) or %!(BADPREC)
    		Printf("%*s", 4.5, "hi"):  %!(BADWIDTH)hi
    		Printf("%.*s", 4.5, "hi"): %!(BADPREC)hi
    	Invalid or invalid use of argument index: %!(BADINDEX)
    		Printf("%*[2]d", 7):       %!d(BADINDEX)
    		Printf("%.[2]d", 7):       %!d(BADINDEX)
```

All errors begin with the string "%\!" followed sometimes
by a single character \(the verb\) and end with a parenthesized
description.  


If an Error or String method triggers a panic when called by a
print routine, the fmt package reformats the error message
from the panic, decorating it with an indication that it came
through the fmt package.  For example, if a String method
calls panic\("bad"\), the resulting formatted message will look
like  

```
    	%!s(PANIC=bad)
```

The %\!s just shows the print verb in use when the failure
occurred. If the panic is caused by a nil receiver to an Error
or String method, however, the output is the undecorated
string, "\<nil\>".  

## Scanning



An analogous set of functions scans formatted text to yield
values.  Scan, Scanf and Scanln read from os.Stdin; Fscan,
Fscanf and Fscanln read from a specified io.Reader; Sscan,
Sscanf and Sscanln read from an argument string.  


Scan, Fscan, Sscan treat newlines in the input as spaces.  


Scanln, Fscanln and Sscanln stop scanning at a newline and
require that the items be followed by a newline or EOF.  


Scanf, Fscanf, and Sscanf parse the arguments according to a
format string, analogous to that of Printf. In the text that
follows, 'space' means any Unicode whitespace character
except newline.  


In the format string, a verb introduced by the % character
consumes and parses input; these verbs are described in more
detail below. A character other than %, space, or newline in
the format consumes exactly that input character, which must
be present. A newline with zero or more spaces before it in
the format string consumes zero or more spaces in the input
followed by a single newline or the end of the input. A space
following a newline in the format string consumes zero or more
spaces in the input. Otherwise, any run of one or more spaces
in the format string consumes as many spaces as possible in
the input. Unless the run of spaces in the format string
appears adjacent to a newline, the run must consume at least
one space from the input or find the end of the input.  


The handling of spaces and newlines differs from that of C's
scanf family: in C, newlines are treated as any other space,
and it is never an error when a run of spaces in the format
string finds no spaces to consume in the input.  


The verbs behave analogously to those of Printf.
For example, %x will scan an integer as a hexadecimal number,
and %v will scan the default representation format for the value.
The Printf verbs %p and %T and the flags \# and \+ are not implemented.
For floating\-point and complex values, all valid formatting verbs
\(%b %e %E %f %F %g %G %x %X and %v\) are equivalent and accept
both decimal and hexadecimal notation \(for example: "2.3e\+7", "0x4.5p\-8"\)
and digit\-separating underscores \(for example: "3.14159\_26535\_89793"\).  


Input processed by verbs is implicitly space\-delimited: the
implementation of every verb except %c starts by discarding
leading spaces from the remaining input, and the %s verb
\(and %v reading into a string\) stops consuming input at the first
space or newline character.  


The familiar base\-setting prefixes 0b \(binary\), 0o and 0 \(octal\),
and 0x \(hexadecimal\) are accepted when scanning integers
without a format or with the %v verb, as are digit\-separating
underscores.  


Width is interpreted in the input text but there is no
syntax for scanning with a precision \(no %5.2f, just %5f\).
If width is provided, it applies after leading spaces are
trimmed and specifies the maximum number of runes to read
to satisfy the verb. For example,  

```
    	Sscanf(" 1234567 ", "%5s%d", &s, &i)
```

will set s to "12345" and i to 67 while  

```
    	Sscanf(" 12 34 567 ", "%5s%d", &s, &i)
```

will set s to "12" and i to 34.  


In all the scanning functions, a carriage return followed
immediately by a newline is treated as a plain newline
\(\\r\\n means the same as \\n\).  


In all the scanning functions, if an operand implements method
Scan \(that is, it implements the Scanner interface\) that
method will be used to scan the text for that operand.  Also,
if the number of arguments scanned is less than the number of
arguments provided, an error is returned.  


All arguments to be scanned must be either pointers to basic
types or implementations of the Scanner interface.  


Like Scanf and Fscanf, Sscanf need not consume its entire input.
There is no way to recover how much of the input string Sscanf used.  


Note: Fscan etc. can read one character \(rune\) past the input
they return, which means that a loop calling a scan routine
may skip some of the input.  This is usually a problem only
when there is no space between input values.  If the reader
provided to Fscan implements ReadRune, that method will be used
to read characters.  If the reader also implements UnreadRune,
that method will be used to save the character and successive
calls will not lose data.  To attach ReadRune and UnreadRune
methods to a reader without that capability, use
bufio.NewReader.  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void`](<#function-_errorhandler>)

- [`function _getField(_v:stdgo.reflect.Value, _i:stdgo.GoInt):stdgo.reflect.Value`](<#function-_getfield>)

- [`function _hasX(_s:stdgo.GoString):Bool`](<#function-_hasx>)

- [`function _hexDigit(_d:stdgo.GoRune):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_hexdigit>)

- [`function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt`](<#function-_indexrune>)

- [`function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_intfromarg>)

- [`function _isSpace(_r:stdgo.GoRune):Bool`](<#function-_isspace>)

- [`function _newPrinter():stdgo.Ref<stdgo.fmt.T_pp>`](<#function-_newprinter>)

- [`function _newScanState(_r:stdgo.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{
	_1:stdgo.fmt.T_ssave;
	_0:stdgo.Ref<stdgo.fmt.T_ss>;
}`](<#function-_newscanstate>)

- [`function _notSpace(_r:stdgo.GoRune):Bool`](<#function-_notspace>)

- [`function _parseArgNumber(_format:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-_parseargnumber>)

- [`function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_parsenum>)

- [`function _tooLarge(_x:stdgo.GoInt):Bool`](<#function-_toolarge>)

- [`function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-append>)

- [`function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendf>)

- [`function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendln>)

- [`function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error`](<#function-errorf>)

- [`function formatString(_state:stdgo.fmt.State, _verb:stdgo.GoRune):stdgo.GoString`](<#function-formatstring>)

- [`function fprint(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprint>)

- [`function fprintf(_w:stdgo.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprintf>)

- [`function fprintln(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fprintln>)

- [`function fscan(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscan>)

- [`function fscanf(_r:stdgo.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscanf>)

- [`function fscanln(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-fscanln>)

- [`function isSpace()`](<#function-isspace>)

- [`function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-parsenum>)

- [`function print(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-print>)

- [`function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-printf>)

- [`function println(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-println>)

- [`function scan(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scan>)

- [`function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scanf>)

- [`function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-scanln>)

- [`function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprint>)

- [`function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintf>)

- [`function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintln>)

- [`function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscan>)

- [`function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscanf>)

- [`function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-sscanln>)

- [typedef Formatter](<#typedef-formatter>)

- [typedef GoStringer](<#typedef-gostringer>)

- [typedef ScanState](<#typedef-scanstate>)

- [typedef Scanner](<#typedef-scanner>)

- [typedef State](<#typedef-state>)

- [typedef Stringer](<#typedef-stringer>)

- [typedef T\_buffer](<#typedef-t_buffer>)

- [typedef T\_stringReader](<#typedef-t_stringreader>)

# Examples


- [`exampleErrorf`](<#exampleerrorf>)

- [`exampleFprint`](<#examplefprint>)

- [`exampleFprintf`](<#examplefprintf>)

- [`exampleFprintln`](<#examplefprintln>)

- [`exampleFscanf`](<#examplefscanf>)

- [`exampleFscanln`](<#examplefscanln>)

- [`exampleGoStringer`](<#examplegostringer>)

- [`examplePrint`](<#exampleprint>)

- [`examplePrintf`](<#exampleprintf>)

- [`examplePrintln`](<#exampleprintln>)

- [`exampleSprint`](<#examplesprint>)

- [`exampleSprintf`](<#examplesprintf>)

- [`exampleSprintln`](<#examplesprintln>)

- [`exampleSscanf`](<#examplesscanf>)

- [`exampleStringer`](<#examplestringer>)

# Constants


```haxe
import stdgo.fmt.Fmt
```


```haxe
final _badIndexString:stdgo.GoString = (("(BADINDEX)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _badPrecString:stdgo.GoString = (("%!(BADPREC)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _badWidthString:stdgo.GoString = (("%!(BADWIDTH)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _binaryDigits:stdgo.GoString = (("01" : stdgo.GoString))
```



Numerical elements  

```haxe
final _commaSpaceString:stdgo.GoString = ((", " : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _decimalDigits:stdgo.GoString = (("0123456789" : stdgo.GoString))
```



Numerical elements  

```haxe
final _eof:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _exponent:stdgo.GoString = (("eEpP" : stdgo.GoString))
```



Numerical elements  

```haxe
final _extraString:stdgo.GoString = (("%!(EXTRA " : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _floatVerbs:stdgo.GoString = (("beEfFgGv" : stdgo.GoString))
```


```haxe
final _hexadecimalDigits:stdgo.GoString = (("0123456789aAbBcCdDeEfF" : stdgo.GoString))
```



Numerical elements  

```haxe
final _hugeWid:stdgo.GoUInt64 = ((1073741824i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _intBits:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _invReflectString:stdgo.GoString = (("<invalid reflect.Value>" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _ldigits:stdgo.GoString = (("0123456789abcdefx" : stdgo.GoString))
```


```haxe
final _mapString:stdgo.GoString = (("map[" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _missingString:stdgo.GoString = (("(MISSING)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _nilAngleString:stdgo.GoString = (("<nil>" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _nilParenString:stdgo.GoString = (("(nil)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _nilString:stdgo.GoString = (("nil" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _noVerbString:stdgo.GoString = (("%!(NOVERB)" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _octalDigits:stdgo.GoString = (("01234567" : stdgo.GoString))
```



Numerical elements  

```haxe
final _panicString:stdgo.GoString = (("(PANIC=" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _percentBangString:stdgo.GoString = (("%!" : stdgo.GoString))
```



Strings for use with buffer.WriteString.
This is less overhead than using buffer.Write with byte arrays.  

```haxe
final _period:stdgo.GoString = (("." : stdgo.GoString))
```



Numerical elements  

```haxe
final _sign:stdgo.GoString = (("+-" : stdgo.GoString))
```



Numerical elements  

```haxe
final _signed:Bool = true
```


```haxe
final _udigits:stdgo.GoString = (("0123456789ABCDEFX" : stdgo.GoString))
```


```haxe
final _uintptrBits:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _unsigned:Bool = false
```


# Variables


```haxe
import stdgo.fmt.Fmt
```


```haxe
var _errBool:stdgo.Error
```


```haxe
var _errComplex:stdgo.Error
```


```haxe
var _ppFree:stdgo.sync.Pool
```


```haxe
var _space:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt16>>
```



space is a copy of the unicode.White\_Space ranges,
to avoid depending on package unicode.  

```haxe
var _ssFree:stdgo.sync.Pool
```


# Functions


```haxe
import stdgo.fmt.Fmt
```


## function \_errorHandler


```haxe
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void
```



errorHandler turns local panics into error returns.  

[\(view code\)](<./Fmt.hx#L1622>)


## function \_getField


```haxe
function _getField(_v:stdgo.reflect.Value, _i:stdgo.GoInt):stdgo.reflect.Value
```



getField gets the i'th field of the struct value.
If the field is itself is an interface, return a value for
the thing inside the interface, not the interface itself.  

[\(view code\)](<./Fmt.hx#L1310>)


## function \_hasX


```haxe
function _hasX(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Fmt.hx#L1591>)


## function \_hexDigit


```haxe
function _hexDigit(_d:stdgo.GoRune):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



hexDigit returns the value of the hexadecimal digit.  

[\(view code\)](<./Fmt.hx#L1605>)


## function \_indexRune


```haxe
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Fmt.hx#L1583>)


## function \_intFromArg


```haxe
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```



intFromArg gets the argNumth element of a. On return, isInt reports whether the argument has integer type.  

[\(view code\)](<./Fmt.hx#L1348>)


## function \_isSpace


```haxe
function _isSpace(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Fmt.hx#L1534>)


## function \_newPrinter


```haxe
function _newPrinter():stdgo.Ref<stdgo.fmt.T_pp>
```



newPrinter allocates a new pp struct or grabs a cached one.  

[\(view code\)](<./Fmt.hx#L1143>)


## function \_newScanState


```haxe
function _newScanState(_r:stdgo.io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{
	_1:stdgo.fmt.T_ssave;
	_0:stdgo.Ref<stdgo.fmt.T_ss>;
}
```



newScanState allocates a new ss struct or grab a cached one.  

[\(view code\)](<./Fmt.hx#L1558>)


## function \_notSpace


```haxe
function _notSpace(_r:stdgo.GoRune):Bool
```



notSpace is the default scanning function used in Token.  

[\(view code\)](<./Fmt.hx#L1552>)


## function \_parseArgNumber


```haxe
function _parseArgNumber(_format:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```



parseArgNumber returns the value of the bracketed number, minus 1
\(explicit argument numbers are one\-indexed but we want zero\-indexed\).
The opening bracket is known to be present at format\[0\].
The returned values are the index, the number of bytes to consume
up to the closing paren, if present, and whether the number parsed
ok. The bytes to consume will be 1 if no closing paren is present.  

[\(view code\)](<./Fmt.hx#L1398>)


## function \_parsenum


```haxe
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```



parsenum converts ASCII to integer.  num is 0 \(and isnum is false\) if no number present.  

[\(view code\)](<./Fmt.hx#L1328>)


## function \_tooLarge


```haxe
function _tooLarge(_x:stdgo.GoInt):Bool
```



tooLarge reports whether the magnitude of the integer is
too large to be used as a formatting width or precision.  

[\(view code\)](<./Fmt.hx#L1321>)


## function append


```haxe
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Append formats using the default formats for its operands, appends the result to
the byte slice, and returns the updated slice.  

[\(view code\)](<./Fmt.hx#L1244>)


## function appendf


```haxe
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Appendf formats according to a format specifier, appends the result to the byte
slice, and returns the updated slice.  

[\(view code\)](<./Fmt.hx#L1192>)


## function appendln


```haxe
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Appendln formats using the default formats for its operands, appends the result
to the byte slice, and returns the updated slice. Spaces are always added
between operands and a newline is appended.  

[\(view code\)](<./Fmt.hx#L1297>)


## function errorf


```haxe
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error
```



Errorf formats according to a format specifier and returns the string as a
value that satisfies error.  


If the format specifier includes a %w verb with an error operand,
the returned error will implement an Unwrap method returning the operand.
If there is more than one %w verb, the returned error will implement an
Unwrap method returning a \[\]error containing all the %w operands in the
order they appear in the arguments.
It is invalid to supply the %w verb with an operand that does not implement
the error interface. The %w verb is otherwise a synonym for %v.  

### exampleErrorf


<details><summary></summary>
<p>


```haxe
function exampleErrorf():Void {
        {};
        var _err:stdgo.Error = stdgo.fmt.Fmt.errorf(("user %q (id %d) not found" : stdgo.GoString), stdgo.Go.toInterface(("bueller" : stdgo.GoString)), stdgo.Go.toInterface((17 : stdgo.StdGoTypes.GoInt)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_err.error()));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1060>)


## function formatString


```haxe
function formatString(_state:stdgo.fmt.State, _verb:stdgo.GoRune):stdgo.GoString
```



FormatString returns a string representing the fully qualified formatting
directive captured by the State, followed by the argument verb. \(State does not
itself contain the verb.\) The result has a leading percent sign followed by any
flags, the width, and the precision. Missing flags, width, and precision are
omitted. This function allows a Formatter to reconstruct the original
directive triggering the call to Format.  

[\(view code\)](<./Fmt.hx#L1116>)


## function fprint


```haxe
function fprint(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fprint formats using the default formats for its operands and writes to w.
Spaces are added between operands when neither is a string.
It returns the number of bytes written and any write error encountered.  

### exampleFprint


<details><summary></summary>
<p>


```haxe
function exampleFprint():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprint(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stderr), ("Fprint: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((" bytes written.\n" : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1205>)


## function fprintf


```haxe
function fprintf(_w:stdgo.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fprintf formats according to a format specifier and writes to w.
It returns the number of bytes written and any write error encountered.  

### exampleFprintf


<details><summary></summary>
<p>


```haxe
function exampleFprintf():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stderr), ("Fprintf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%d bytes written.\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1155>)


## function fprintln


```haxe
function fprintln(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fprintln formats using the default formats for its operands and writes to w.
Spaces are always added between operands and a newline is appended.
It returns the number of bytes written and any write error encountered.  

### exampleFprintln


<details><summary></summary>
<p>


```haxe
function exampleFprintln():Void {
        {};
        var __tmp__ = stdgo.fmt.Fmt.fprintln(stdgo.Go.asInterface(stdgo.os.Os.stdout), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stderr), ("Fprintln: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(("bytes written." : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1257>)


## function fscan


```haxe
function fscan(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fscan scans text read from r, storing successive space\-separated
values into successive arguments. Newlines count as space. It
returns the number of items successfully scanned. If that is less
than the number of arguments, err will report why.  

[\(view code\)](<./Fmt.hx#L1488>)


## function fscanf


```haxe
function fscanf(_r:stdgo.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fscanf scans text read from r, storing successive space\-separated
values into successive arguments as determined by the format. It
returns the number of items successfully parsed.
Newlines in the input must match newlines in the format.  

### exampleFscanf


<details><summary></summary>
<p>


```haxe
function exampleFscanf():Void {
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:Bool = false, __2:stdgo.GoString = ("" : stdgo.GoString), _s:stdgo.GoString = __2, _b:Bool = __1, _i:stdgo.StdGoTypes.GoInt = __0;
        var _r = stdgo.strings.Strings.newReader(("5 true gophers" : stdgo.GoString));
        var __tmp__ = stdgo.fmt.Fmt.fscanf(stdgo.Go.asInterface(_r), ("%d %t %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface(stdgo.os.Os.stderr), ("Fscanf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1522>)


## function fscanln


```haxe
function fscanln(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Fscanln is similar to Fscan, but stops scanning at a newline and
after the final item there must be a newline or EOF.  

### exampleFscanln


<details><summary></summary>
<p>


```haxe
function exampleFscanln():Void {
        var _s:stdgo.GoString = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : stdgo.GoString);
        var _r = stdgo.strings.Strings.newReader(_s?.__copy__());
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _c:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
        while (true) {
            var __tmp__ = stdgo.fmt.Fmt.fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_c))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            stdgo.fmt.Fmt.printf(("%d: %s, %d, %f\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
        };
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1504>)


## function isSpace


```haxe
function isSpace()
```


[\(view code\)](<./Fmt.hx#L435>)


## function parsenum


```haxe
function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L441>)


## function print


```haxe
function print(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Print formats using the default formats for its operands and writes to standard output.
Spaces are added between operands when neither is a string.
It returns the number of bytes written and any write error encountered.  

### examplePrint


<details><summary></summary>
<p>


```haxe
function examplePrint():Void {
        {};
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1223>)


## function printf


```haxe
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Printf formats according to a format specifier and writes to standard output.
It returns the number of bytes written and any write error encountered.  

### examplePrintf


<details><summary></summary>
<p>


```haxe
function examplePrintf():Void {
        {};
        stdgo.fmt.Fmt.printf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1172>)


## function println


```haxe
function println(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Println formats using the default formats for its operands and writes to standard output.
Spaces are always added between operands and a newline is appended.
It returns the number of bytes written and any write error encountered.  

### examplePrintln


<details><summary></summary>
<p>


```haxe
function examplePrintln():Void {
        {};
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1275>)


## function scan


```haxe
function scan(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Scan scans text read from standard input, storing successive
space\-separated values into successive arguments. Newlines count
as space. It returns the number of items successfully scanned.
If that is less than the number of arguments, err will report why.  

[\(view code\)](<./Fmt.hx#L1423>)


## function scanf


```haxe
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Scanf scans text read from standard input, storing successive
space\-separated values into successive arguments as determined by
the format. It returns the number of items successfully scanned.
If that is less than the number of arguments, err will report why.
Newlines in the input must match newlines in the format.
The one exception: the verb %c always scans the next rune in the
input, even if it is a space \(or tab etc.\) or newline.  

[\(view code\)](<./Fmt.hx#L1446>)


## function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Scanln is similar to Scan, but stops scanning at a newline and
after the final item there must be a newline or EOF.  

[\(view code\)](<./Fmt.hx#L1432>)


## function sprint


```haxe
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```



Sprint formats using the default formats for its operands and returns the resulting string.
Spaces are added between operands when neither is a string.  

### exampleSprint


<details><summary></summary>
<p>


```haxe
function exampleSprint():Void {
        {};
        var _s:stdgo.GoString = stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((" is " : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((" years old.\n" : stdgo.GoString)))?.__copy__();
        stdgo.io.Io.writeString(stdgo.Go.asInterface(stdgo.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1232>)


## function sprintf


```haxe
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```



Sprintf formats according to a format specifier and returns the resulting string.  

### exampleSprintf


<details><summary></summary>
<p>


```haxe
function exampleSprintf():Void {
        {};
        var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%s is %d years old.\n" : stdgo.GoString), stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)))?.__copy__();
        stdgo.io.Io.writeString(stdgo.Go.asInterface(stdgo.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1180>)


## function sprintln


```haxe
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```



Sprintln formats using the default formats for its operands and returns the resulting string.
Spaces are always added between operands and a newline is appended.  

### exampleSprintln


<details><summary></summary>
<p>


```haxe
function exampleSprintln():Void {
        {};
        var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintln(stdgo.Go.toInterface(("Kim" : stdgo.GoString)), stdgo.Go.toInterface(("is" : stdgo.GoString)), stdgo.Go.toInterface((22 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(("years old." : stdgo.GoString)))?.__copy__();
        stdgo.io.Io.writeString(stdgo.Go.asInterface(stdgo.os.Os.stdout), _s?.__copy__());
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1284>)


## function sscan


```haxe
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Sscan scans the argument string, storing successive space\-separated
values into successive arguments. Newlines count as space. It
returns the number of items successfully scanned. If that is less
than the number of arguments, err will report why.  

[\(view code\)](<./Fmt.hx#L1457>)


## function sscanf


```haxe
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Sscanf scans the argument string, storing successive space\-separated
values into successive arguments as determined by the format. It
returns the number of items successfully parsed.
Newlines in the input must match newlines in the format.  

### exampleSscanf


<details><summary></summary>
<p>


```haxe
function exampleSscanf():Void {
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        var _age:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(("Kim is 22 years old" : stdgo.GoString), ("%s is %d years old" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_name)), stdgo.Go.toInterface(stdgo.Go.pointer(_age))), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.printf(("%d: %s, %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_age));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1477>)


## function sscanln


```haxe
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Sscanln is similar to Sscan, but stops scanning at a newline and
after the final item there must be a newline or EOF.  

[\(view code\)](<./Fmt.hx#L1466>)


# Typedefs


```haxe
import stdgo.fmt.*
```


## typedef Formatter


```haxe
typedef Formatter = {
	public function format(_f:stdgo.fmt.State, _verb:stdgo.GoRune):Void;
};
```



Formatter is implemented by any value that has a Format method.
The implementation controls how State and rune are interpreted,
and may call Sprint\(\) or Fprint\(f\) etc. to generate its output.  

## typedef GoStringer


```haxe
typedef GoStringer = {
	public function goString():stdgo.GoString;
};
```



GoStringer is implemented by any value that has a GoString method,
which defines the Go syntax for that value.
The GoString method is used to print values passed as an operand
to a %\#v format.  

## typedef ScanState


```haxe
typedef ScanState = {
	public function width():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	//  Width returns the value of the width option and whether it has been set. The unit is Unicode code points.
	public function unreadRune():stdgo.Error;	//  UnreadRune causes the next call to ReadRune to return the same rune.
	public function token(_skipSpace:Bool, _f:()):{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo.GoByte>;
	};	//  Token skips space in the input if skipSpace is true, then returns the run of Unicode code points c satisfying f(c). If f is nil, !unicode.IsSpace(c) is used; that is, the token will hold non-space characters. Newlines are treated appropriately for the operation being performed; see the package documentation for more information. The returned slice points to shared data that may be overwritten by the next call to Token, a call to a Scan function using the ScanState as input, or when the calling Scan method returns.
	public function skipSpace():Void;	//  SkipSpace skips space in the input. Newlines are treated appropriately for the operation being performed; see the package documentation for more information.
	public function readRune():{
		_2:stdgo.Error;
		_1:stdgo.GoInt;
		_0:stdgo.GoRune;
	};	//  ReadRune reads the next rune (Unicode code point) from the input. If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will return EOF after returning the first '\n' or when reading beyond the specified width.
	public function read(_buf:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};	//  Because ReadRune is implemented by the interface, Read should never be called by the scanning routines and a valid implementation of ScanState may choose always to return an error from Read.
};
```



ScanState represents the scanner state passed to custom scanners.
Scanners may do rune\-at\-a\-time scanning or ask the ScanState
to discover the next space\-delimited token.  

## typedef Scanner


```haxe
typedef Scanner = {
	public function scan(_state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error;
};
```



Scanner is implemented by any value that has a Scan method, which scans
the input for the representation of a value and stores the result in the
receiver, which must be a pointer to be useful. The Scan method is called
for any argument to Scan, Scanf, or Scanln that implements it.  

## typedef State


```haxe
typedef State = {
	public function write(_b:stdgo.Slice<stdgo.GoByte>):{
		_1:stdgo.Error;
		_0:stdgo.GoInt;
	};	//  Write is the function to call to emit formatted output to be printed.
	public function width():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	//  Width returns the value of the width option and whether it has been set.
	public function precision():{
		_1:Bool;
		_0:stdgo.GoInt;
	};	//  Precision returns the value of the precision option and whether it has been set.
	public function flag(_c:stdgo.GoInt):Bool;	//  Flag reports whether the flag c, a character, has been set.
};
```



State represents the printer state passed to custom formatters.
It provides access to the io.Writer interface plus information about
the flags and options for the operand's format specifier.  

## typedef Stringer


```haxe
typedef Stringer = {
	public function string():stdgo.GoString;
};
```



Stringer is implemented by any value that has a String method,
which defines the “native” format for that value.
The String method is used to print values passed as an operand
to any format that accepts a string or to an unformatted printer
such as Print.  

## typedef T\_buffer


```haxe
typedef T_buffer = stdgo.Slice<stdgo.GoUInt8>;
```



Use simple \[\]byte instead of bytes.Buffer to avoid large dependency.  

## typedef T\_stringReader


```haxe
typedef T_stringReader = stdgo.GoString;
```


