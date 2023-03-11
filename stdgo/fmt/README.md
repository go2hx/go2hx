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

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestErrorf
--- PASS: TestErrorf (%!s(float64=0.01758408546447754))

=== RUN  TestFmtInterface
--- PASS: TestFmtInterface (%!s(float64=0.0003330707550048828))

=== RUN  TestSprintf
--- PASS: TestSprintf (%!s(float64=0.3108670711517334))

=== RUN  TestComplexFormatting
--- PASS: TestComplexFormatting (%!s(float64=1.1703150272369385))

=== RUN  TestReorder
--- PASS: TestReorder (%!s(float64=0.010281085968017578))

=== RUN  TestCountMallocs
--- PASS: TestCountMallocs (%!s(float64=1.1920928955078125e-05))

=== RUN  TestFlagParser
--- PASS: TestFlagParser (%!s(float64=0.008460044860839844))

=== RUN  TestStructPrinter
--- PASS: TestStructPrinter (%!s(float64=0.0055310726165771484))

=== RUN  TestSlicePrinter
--- PASS: TestSlicePrinter (%!s(float64=0.0025649070739746094))

=== RUN  TestMapPrinter
--- PASS: TestMapPrinter (%!s(float64=0.00569605827331543))

=== RUN  TestEmptyMap
--- PASS: TestEmptyMap (%!s(float64=0.0005509853363037109))

=== RUN  TestBlank
--- PASS: TestBlank (%!s(float64=0.0010650157928466797))

=== RUN  TestBlankln
--- PASS: TestBlankln (%!s(float64=0.0018510818481445312))

=== RUN  TestFormatterPrintln
--- PASS: TestFormatterPrintln (%!s(float64=0.003159046173095703))

=== RUN  TestWidthAndPrecision
--- PASS: TestWidthAndPrecision (%!s(float64=0.005574941635131836))

=== RUN  TestPanics
fmt_test/Fmt_test.hx:3295: testPanics skip function
--- PASS: TestPanics (%!s(float64=2.5987625122070312e-05))

=== RUN  TestBadVerbRecursion
--- PASS: TestBadVerbRecursion (%!s(float64=0.00037598609924316406))

=== RUN  TestIsSpace
--- PASS: TestIsSpace (%!s(float64=0.14023303985595703))

=== RUN  TestNilDoesNotBecomeTyped
--- PASS: TestNilDoesNotBecomeTyped (%!s(float64=0.0009400844573974609))

=== RUN  TestFormatterFlags
--- PASS: TestFormatterFlags (%!s(float64=0.0344998836517334))

=== RUN  TestParsenum
--- PASS: TestParsenum (%!s(float64=2.002716064453125e-05))

=== RUN  TestAppendf
--- PASS: TestAppendf (%!s(float64=0.0001499652862548828))

=== RUN  TestAppend
--- PASS: TestAppend (%!s(float64=0.0006461143493652344))

=== RUN  TestAppendln
--- PASS: TestAppendln (%!s(float64=0.0002779960632324219))

=== RUN  TestScan
--- PASS: TestScan (%!s(float64=5.0067901611328125e-06))

=== RUN  TestScanln
--- PASS: TestScanln (%!s(float64=9.059906005859375e-06))

=== RUN  TestScanf
Exception: regexp.mustCompile is not yet implemented
Called from stdgo.fmt.$T_ss_static_extension.~_doScanf.1 (stdgo/fmt/Fmt.hx line 3771)
Called from stdgo.fmt.$T_ss_static_extension._doScanf (stdgo/fmt/Fmt.hx line 3853)
Called from stdgo.fmt._Fmt.$Fmt_Fields_.fscanf (stdgo/fmt/Fmt.hx line 1536)
Called from stdgo.fmt._Fmt.$Fmt_Fields_.sscanf (stdgo/fmt/Fmt.hx line 1489)
Called from stdgo.fmt_test._Fmt_test.$Fmt_test_Fields_.testScanf (stdgo/fmt_test/Fmt_test.hx line 3467)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.fmt_test._Fmt.$Fmt_Fields_.main (stdgo/fmt_test/Fmt.hx line 137)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
Invalid_argument("index out of bounds")
=== RUN  TestErrorf
--- PASS: TestErrorf (%!s(float64=0.013501882553100586))

=== RUN  TestFmtInterface
--- PASS: TestFmtInterface (%!s(float64=0.0002880096435546875))

=== RUN  TestSprintf
--- PASS: TestSprintf (%!s(float64=0.3947927951812744))

=== RUN  TestComplexFormatting
--- PASS: TestComplexFormatting (%!s(float64=2.5708749294281006))

=== RUN  TestReorder
--- PASS: TestReorder (%!s(float64=0.020434141159057617))

=== RUN  TestCountMallocs
--- PASS: TestCountMallocs (%!s(float64=2.8848648071289062e-05))

=== RUN  TestFlagParser
--- PASS: TestFlagParser (%!s(float64=0.008337020874023438))

=== RUN  TestStructPrinter
--- PASS: TestStructPrinter (%!s(float64=0.0042688846588134766))

=== RUN  TestSlicePrinter
--- PASS: TestSlicePrinter (%!s(float64=0.0014050006866455078))

=== RUN  TestMapPrinter
--- PASS: TestMapPrinter (%!s(float64=0.004333972930908203))

=== RUN  TestEmptyMap
--- PASS: TestEmptyMap (%!s(float64=0.0007340908050537109))

=== RUN  TestBlank
--- PASS: TestBlank (%!s(float64=0.0008041858673095703))

=== RUN  TestBlankln
--- PASS: TestBlankln (%!s(float64=0.0007500648498535156))

=== RUN  TestFormatterPrintln
--- PASS: TestFormatterPrintln (%!s(float64=0.0021059513092041016))

=== RUN  TestWidthAndPrecision
--- PASS: TestWidthAndPrecision (%!s(float64=0.005635976791381836))

=== RUN  TestPanics
fmt_test/Fmt_test.hx:3295: testPanics skip function
--- PASS: TestPanics (%!s(float64=1.7881393432617188e-05))

=== RUN  TestBadVerbRecursion
--- PASS: TestBadVerbRecursion (%!s(float64=0.0005729198455810547))

=== RUN  TestIsSpace
--- PASS: TestIsSpace (%!s(float64=3.0497190952301025))

=== RUN  TestNilDoesNotBecomeTyped
--- PASS: TestNilDoesNotBecomeTyped (%!s(float64=0.0008580684661865234))

=== RUN  TestFormatterFlags
--- PASS: TestFormatterFlags (%!s(float64=0.03263378143310547))

=== RUN  TestParsenum
--- PASS: TestParsenum (%!s(float64=4.506111145019531e-05))

=== RUN  TestAppendf
--- PASS: TestAppendf (%!s(float64=0.0002980232238769531))

=== RUN  TestAppend
--- PASS: TestAppend (%!s(float64=0.0005118846893310547))

=== RUN  TestAppendln
--- PASS: TestAppendln (%!s(float64=0.000492095947265625))

=== RUN  TestScan
--- PASS: TestScan (%!s(float64=1.4066696166992188e-05))

=== RUN  TestScanln
--- PASS: TestScanln (%!s(float64=1.2874603271484375e-05))

=== RUN  TestScanf
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

- [`function isSpace(_r:stdgo.GoRune):Bool`](<#function-isspace>)

- [`function parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
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

# Functions


```haxe
import stdgo.fmt.Fmt
```


## function append


```haxe
function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Append formats using the default formats for its operands, appends the result to
the byte slice, and returns the updated slice.  

[\(view code\)](<./Fmt.hx#L1253>)


## function appendf


```haxe
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Appendf formats according to a format specifier, appends the result to the byte
slice, and returns the updated slice.  

[\(view code\)](<./Fmt.hx#L1201>)


## function appendln


```haxe
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```



Appendln formats using the default formats for its operands, appends the result
to the byte slice, and returns the updated slice. Spaces are always added
between operands and a newline is appended.  

[\(view code\)](<./Fmt.hx#L1306>)


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
        var _err:Error = stdgo.fmt.Fmt.errorf(("user %q (id %d) not found" : GoString), Go.toInterface(("bueller" : GoString)), Go.toInterface((17 : GoInt)));
        stdgo.fmt.Fmt.println(Go.toInterface(_err.error()));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1069>)


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

[\(view code\)](<./Fmt.hx#L1125>)


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
        var __tmp__ = stdgo.fmt.Fmt.fprint(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprint: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(Go.toInterface(_n), Go.toInterface((" bytes written.\n" : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1214>)


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
        var __tmp__ = stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stdout), ("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintf: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("%d bytes written.\n" : GoString), Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1164>)


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
        var __tmp__ = stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintln: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_n), Go.toInterface(("bytes written." : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1266>)


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

[\(view code\)](<./Fmt.hx#L1497>)


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
        var __0:GoInt = (0 : GoInt), __1:Bool = false, __2:GoString = ("" : GoString), _s:GoString = __2, _b:Bool = __1, _i:GoInt = __0;
        var _r = stdgo.strings.Strings.newReader(("5 true gophers" : GoString));
        var __tmp__ = stdgo.fmt.Fmt.fscanf(Go.asInterface(_r), ("%d %t %s" : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_b)), Go.toInterface(Go.pointer(_s))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fscanf: %v\n" : GoString), Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_i), Go.toInterface(_b), Go.toInterface(_s));
        stdgo.fmt.Fmt.println(Go.toInterface(_n));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1531>)


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
        var _s:GoString = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : GoString);
        var _r = stdgo.strings.Strings.newReader(_s);
        var _a:GoString = ("" : GoString);
        var _b:GoInt = (0 : GoInt);
        var _c:GoFloat64 = (0 : GoFloat64);
        while (true) {
            var __tmp__ = stdgo.fmt.Fmt.fscanln(Go.asInterface(_r), Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b)), Go.toInterface(Go.pointer(_c))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                throw Go.toInterface(_err);
            };
            stdgo.fmt.Fmt.printf(("%d: %s, %d, %f\n" : GoString), Go.toInterface(_n), Go.toInterface(_a), Go.toInterface(_b), Go.toInterface(_c));
        };
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1513>)


## function isSpace


```haxe
function isSpace(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Fmt.hx#L444>)


## function parsenum


```haxe
function parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{
	_2:stdgo.GoInt;
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Fmt.hx#L450>)


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
        stdgo.fmt.Fmt.print(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1232>)


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
        stdgo.fmt.Fmt.printf(("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1181>)


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
        stdgo.fmt.Fmt.println(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1284>)


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

[\(view code\)](<./Fmt.hx#L1432>)


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

[\(view code\)](<./Fmt.hx#L1455>)


## function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Scanln is similar to Scan, but stops scanning at a newline and
after the final item there must be a newline or EOF.  

[\(view code\)](<./Fmt.hx#L1441>)


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
        var _s:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1241>)


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
        var _s:GoString = stdgo.fmt.Fmt.sprintf(("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)), Go.toInterface((22 : GoInt)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1189>)


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
        var _s:GoString = stdgo.fmt.Fmt.sprintln(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString)));
        stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1293>)


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

[\(view code\)](<./Fmt.hx#L1466>)


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
        var _name:GoString = ("" : GoString);
        var _age:GoInt = (0 : GoInt);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(("Kim is 22 years old" : GoString), ("%s is %d years old" : GoString), Go.toInterface(Go.pointer(_name)), Go.toInterface(Go.pointer(_age))), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.fmt.Fmt.printf(("%d: %s, %d\n" : GoString), Go.toInterface(_n), Go.toInterface(_name), Go.toInterface(_age));
    }
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1486>)


## function sscanln


```haxe
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Sscanln is similar to Sscan, but stops scanning at a newline and
after the final item there must be a newline or EOF.  

[\(view code\)](<./Fmt.hx#L1475>)


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
and may call Sprint\(f\) or Fprint\(f\) etc. to generate its output.  

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

