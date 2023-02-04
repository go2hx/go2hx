# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


|\*  Package fmt implements formatted I/O with functions analogous  to C's printf and scanf.  The format 'verbs' are derived from C's but  are simpler.   \# Printing   The verbs:   General:    %v the value in a default format    when printing structs, the plus flag \(%\+v\) adds field names   %\#v a Go\-syntax representation of the value   %T a Go\-syntax representation of the type of the value   %% a literal percent sign; consumes no value   Boolean:    %t the word true or false   Integer:    %b base 2   %c the character represented by the corresponding Unicode code point   %d base 10   %o base 8   %O base 8 with 0o prefix   %q a single\-quoted character literal safely escaped with Go syntax.   %x base 16, with lower\-case letters for a\-f   %X base 16, with upper\-case letters for A\-F   %U Unicode format: U\+1234; same as "U\+%04X"   Floating\-point and complex constituents:    %b decimalless scientific notation with exponent a power of two,    in the manner of strconv.FormatFloat with the 'b' format,    e.g. \-123456p\-78   %e scientific notation, e.g. \-1.234456e\+78   %E scientific notation, e.g. \-1.234456E\+78   %f decimal point but no exponent, e.g. 123.456   %F synonym for %f   %g %e for large exponents, %f otherwise. Precision is discussed below.   %G %E for large exponents, %F otherwise   %x hexadecimal notation \(with decimal power of two exponent\), e.g. \-0x1.23abcp\+20   %X upper\-case hexadecimal notation, e.g. \-0X1.23ABCP\+20   String and slice of bytes \(treated equivalently with these verbs\):    %s the uninterpreted bytes of the string or slice   %q a double\-quoted string safely escaped with Go syntax   %x base 16, lower\-case, two characters per byte   %X base 16, upper\-case, two characters per byte   Slice:    %p address of 0th element in base 16 notation, with leading 0x   Pointer:    %p base 16 notation, with leading 0x   The %b, %d, %o, %x and %X verbs also work with pointers,   formatting the value exactly as if it were an integer.   The default format for %v is:    bool:                    %t   int, int8 etc.:          %d   uint, uint8 etc.:        %d, %\#x if printed with %\#v   float32, complex64, etc: %g   string:                  %s   chan:                    %p   pointer:                 %p   For compound objects, the elements are printed using these rules, recursively,  laid out like this:    struct:             \{field0 field1 ...\}   array, slice:       \[elem0 elem1 ...\]   maps:               map\[key1:value1 key2:value2 ...\]   pointer to above:   &\{\}, &\[\], &map\[\]   Width is specified by an optional decimal number immediately preceding the verb.  If absent, the width is whatever is necessary to represent the value.  Precision is specified after the \(optional\) width by a period followed by a  decimal number. If no period is present, a default precision is used.  A period with no following number specifies a precision of zero.  Examples:    %f     default width, default precision   %9f    width 9, default precision   %.2f   default width, precision 2   %9.2f  width 9, precision 2   %9.f   width 9, precision 0   Width and precision are measured in units of Unicode code points,  that is, runes. \(This differs from C's printf where the  units are always measured in bytes.\) Either or both of the flags  may be replaced with the character '\*', causing their values to be  obtained from the next operand \(preceding the one to format\),  which must be of type int.   For most values, width is the minimum number of runes to output,  padding the formatted form with spaces if necessary.   For strings, byte slices and byte arrays, however, precision  limits the length of the input to be formatted \(not the size of  the output\), truncating if necessary. Normally it is measured in  runes, but for these types when formatted with the %x or %X format  it is measured in bytes.   For floating\-point values, width sets the minimum width of the field and  precision sets the number of places after the decimal, if appropriate,  except that for %g/%G precision sets the maximum number of significant  digits \(trailing zeros are removed\). For example, given 12.345 the format  %6.3f prints 12.345 while %.3g prints 12.3. The default precision for %e, %f  and %\#g is 6; for %g it is the smallest number of digits necessary to identify  the value uniquely.   For complex numbers, the width and precision apply to the two  components independently and the result is parenthesized, so %f applied  to 1.2\+3.4i produces \(1.200000\+3.400000i\).   When formatting a single integer code point or a rune string \(type \[\]rune\)  with %q, invalid Unicode code points are changed to the Unicode replacement  character, U\+FFFD, as in strconv.QuoteRune.   Other flags:    '\+' always print a sign for numeric values;    guarantee ASCII\-only output for %q \(%\+q\)   '\-' pad with spaces on the right rather than the left \(left\-justify the field\)   '\#' alternate format: add leading 0b for binary \(%\#b\), 0 for octal \(%\#o\),    0x or 0X for hex \(%\#x or %\#X\); suppress 0x for %p \(%\#p\);    for %q, print a raw \(backquoted\) string if strconv.CanBackquote    returns true;    always print a decimal point for %e, %E, %f, %F, %g and %G;    do not remove trailing zeros for %g and %G;    write e.g. U\+0078 'x' if the character is printable for %U \(%\#U\).   ' ' \(space\) leave a space for elided sign in numbers \(% d\);    put spaces between bytes printing strings or slices in hex \(% x, % X\)   '0' pad with leading zeros rather than spaces;    for numbers, this moves the padding after the sign;    ignored for strings, byte slices and byte arrays   Flags are ignored by verbs that do not expect them.  For example there is no alternate decimal format, so %\#d and %d  behave identically.   For each Printf\-like function, there is also a Print function  that takes no format and is equivalent to saying %v for every  operand.  Another variant Println inserts blanks between  operands and appends a newline.   Regardless of the verb, if an operand is an interface value,  the internal concrete value is used, not the interface itself.  Thus:    var i interface\{\} = 23   fmt.Printf\("%v\\n", i\)   will print 23.   Except when printed using the verbs %T and %p, special  formatting considerations apply for operands that implement  certain interfaces. In order of application:   1. If the operand is a reflect.Value, the operand is replaced by the  concrete value that it holds, and printing continues with the next rule.   2. If an operand implements the Formatter interface, it will  be invoked. In this case the interpretation of verbs and flags is  controlled by that implementation.   3. If the %v verb is used with the \# flag \(%\#v\) and the operand  implements the GoStringer interface, that will be invoked.   If the format \(which is implicitly %v for Println etc.\) is valid  for a string \(%s %q %v %x %X\), the following two rules apply:   4. If an operand implements the error interface, the Error method  will be invoked to convert the object to a string, which will then  be formatted as required by the verb \(if any\).   5. If an operand implements method String\(\) string, that method  will be invoked to convert the object to a string, which will then  be formatted as required by the verb \(if any\).   For compound operands such as slices and structs, the format  applies to the elements of each operand, recursively, not to the  operand as a whole. Thus %q will quote each element of a slice  of strings, and %6.2f will control formatting for each element  of a floating\-point array.   However, when printing a byte slice with a string\-like verb  \(%s %q %x %X\), it is treated identically to a string, as a single item.   To avoid recursion in cases such as    type X string   func \(x X\) String\(\) string \{ return Sprintf\("\<%s\>", x\) \}   convert the value before recurring:    func \(x X\) String\(\) string \{ return Sprintf\("\<%s\>", string\(x\)\) \}   Infinite recursion can also be triggered by self\-referential data  structures, such as a slice that contains itself as an element, if  that type has a String method. Such pathologies are rare, however,  and the package does not protect against them.   When printing a struct, fmt cannot and therefore does not invoke  formatting methods such as Error or String on unexported fields.   \# Explicit argument indexes   In Printf, Sprintf, and Fprintf, the default behavior is for each  formatting verb to format successive arguments passed in the call.  However, the notation \[n\] immediately before the verb indicates that the  nth one\-indexed argument is to be formatted instead. The same notation  before a '\*' for a width or precision selects the argument index holding  the value. After processing a bracketed expression \[n\], subsequent verbs  will use arguments n\+1, n\+2, etc. unless otherwise directed.   For example,    fmt.Sprintf\("%\[2\]d %\[1\]d\\n", 11, 22\)   will yield "22 11", while    fmt.Sprintf\("%\[3\]\*.\[2\]\*\[1\]f", 12.0, 2, 6\)   equivalent to    fmt.Sprintf\("%6.2f", 12.0\)   will yield " 12.00". Because an explicit index affects subsequent verbs,  this notation can be used to print the same values multiple times  by resetting the index for the first argument to be repeated:    fmt.Sprintf\("%d %d %\#\[1\]x %\#x", 16, 17\)   will yield "16 17 0x10 0x11".   \# Format errors   If an invalid argument is given for a verb, such as providing  a string to %d, the generated string will contain a  description of the problem, as in these examples:    Wrong type or unknown verb: %\!verb\(type=value\)    Printf\("%d", "hi"\):        %\!d\(string=hi\)   Too many arguments: %\!\(EXTRA type=value\)    Printf\("hi", "guys"\):      hi%\!\(EXTRA string=guys\)   Too few arguments: %\!verb\(MISSING\)    Printf\("hi%d"\):            hi%\!d\(MISSING\)   Non\-int for width or precision: %\!\(BADWIDTH\) or %\!\(BADPREC\)    Printf\("%\*s", 4.5, "hi"\):  %\!\(BADWIDTH\)hi    Printf\("%.\*s", 4.5, "hi"\): %\!\(BADPREC\)hi   Invalid or invalid use of argument index: %\!\(BADINDEX\)    Printf\("%\*\[2\]d", 7\):       %\!d\(BADINDEX\)    Printf\("%.\[2\]d", 7\):       %\!d\(BADINDEX\)   All errors begin with the string "%\!" followed sometimes  by a single character \(the verb\) and end with a parenthesized  description.   If an Error or String method triggers a panic when called by a  print routine, the fmt package reformats the error message  from the panic, decorating it with an indication that it came  through the fmt package.  For example, if a String method  calls panic\("bad"\), the resulting formatted message will look  like    %\!s\(PANIC=bad\)   The %\!s just shows the print verb in use when the failure  occurred. If the panic is caused by a nil receiver to an Error  or String method, however, the output is the undecorated  string, "\<nil\>".   \# Scanning   An analogous set of functions scans formatted text to yield  values.  Scan, Scanf and Scanln read from os.Stdin; Fscan,  Fscanf and Fscanln read from a specified io.Reader; Sscan,  Sscanf and Sscanln read from an argument string.   Scan, Fscan, Sscan treat newlines in the input as spaces.   Scanln, Fscanln and Sscanln stop scanning at a newline and  require that the items be followed by a newline or EOF.   Scanf, Fscanf, and Sscanf parse the arguments according to a  format string, analogous to that of Printf. In the text that  follows, 'space' means any Unicode whitespace character  except newline.   In the format string, a verb introduced by the % character  consumes and parses input; these verbs are described in more  detail below. A character other than %, space, or newline in  the format consumes exactly that input character, which must  be present. A newline with zero or more spaces before it in  the format string consumes zero or more spaces in the input  followed by a single newline or the end of the input. A space  following a newline in the format string consumes zero or more  spaces in the input. Otherwise, any run of one or more spaces  in the format string consumes as many spaces as possible in  the input. Unless the run of spaces in the format string  appears adjacent to a newline, the run must consume at least  one space from the input or find the end of the input.   The handling of spaces and newlines differs from that of C's  scanf family: in C, newlines are treated as any other space,  and it is never an error when a run of spaces in the format  string finds no spaces to consume in the input.   The verbs behave analogously to those of Printf.  For example, %x will scan an integer as a hexadecimal number,  and %v will scan the default representation format for the value.  The Printf verbs %p and %T and the flags \# and \+ are not implemented.  For floating\-point and complex values, all valid formatting verbs  \(%b %e %E %f %F %g %G %x %X and %v\) are equivalent and accept  both decimal and hexadecimal notation \(for example: "2.3e\+7", "0x4.5p\-8"\)  and digit\-separating underscores \(for example: "3.14159\_26535\_89793"\).   Input processed by verbs is implicitly space\-delimited: the  implementation of every verb except %c starts by discarding  leading spaces from the remaining input, and the %s verb  \(and %v reading into a string\) stops consuming input at the first  space or newline character.   The familiar base\-setting prefixes 0b \(binary\), 0o and 0 \(octal\),  and 0x \(hexadecimal\) are accepted when scanning integers  without a format or with the %v verb, as are digit\-separating  underscores.   Width is interpreted in the input text but there is no  syntax for scanning with a precision \(no %5.2f, just %5f\).  If width is provided, it applies after leading spaces are  trimmed and specifies the maximum number of runes to read  to satisfy the verb. For example,    Sscanf\(" 1234567 ", "%5s%d", &s, &i\)   will set s to "12345" and i to 67 while    Sscanf\(" 12 34 567 ", "%5s%d", &s, &i\)   will set s to "12" and i to 34.   In all the scanning functions, a carriage return followed  immediately by a newline is treated as a plain newline  \(\\r\\n means the same as \\n\).   In all the scanning functions, if an operand implements method  Scan \(that is, it implements the Scanner interface\) that  method will be used to scan the text for that operand.  Also,  if the number of arguments scanned is less than the number of  arguments provided, an error is returned.   All arguments to be scanned must be either pointers to basic  types or implementations of the Scanner interface.   Like Scanf and Fscanf, Sscanf need not consume its entire input.  There is no way to recover how much of the input string Sscanf used.   Note: Fscan etc. can read one character \(rune\) past the input  they return, which means that a loop calling a scan routine  may skip some of the input.  This is usually a problem only  when there is no space between input values.  If the reader  provided to Fscan implements ReadRune, that method will be used  to read characters.  If the reader also implements UnreadRune,  that method will be used to save the character and successive  calls will not lose data.  To attach ReadRune and UnreadRune  methods to a reader without that capability, use  bufio.NewReader.  \*|/ 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestErrorf
--- PASS: TestErrorf (%!s(float64=0.005368947982788086))

=== RUN  TestFmtInterface
--- PASS: TestFmtInterface (%!s(float64=0.00013780593872070312))

=== RUN  TestSprintf
Exception: Can't cast stdgo.reflect.Value_asInterface to stdgo.reflect.Value
Called from stdgo.fmt.$T_pp_static_extension._doPrintf (stdgo/fmt/Fmt.hx line 2571)
Called from stdgo.fmt._Fmt.$Fmt_Fields_.sprintf (stdgo/fmt/Fmt.hx line 1073)
Called from stdgo.fmt_test._Fmt_test.$Fmt_test_Fields_.testSprintf (stdgo/fmt_test/Fmt_test.hx line 3224)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.fmt_test._Fmt.$Fmt_Fields_.main (stdgo/fmt_test/Fmt.hx line 180)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestErrorf
--- PASS: TestErrorf (%!s(float64=0.00755620002746582))

=== RUN  TestFmtInterface
--- PASS: TestFmtInterface (%!s(float64=0.00028395652770996094))

=== RUN  TestSprintf
Exception: Unexpected value VFunction(#fun), expected instance
Called from stdgo.fmt_test._Fmt_test.Fmt_test_Fields_.testSprintf (stdgo/fmt_test/Fmt_test.hx line 3224 column 21)
Called from stdgo.fmt._Fmt.Fmt_Fields_.sprintf (stdgo/fmt/Fmt.hx line 1073 column 2)
Called from stdgo.fmt.T_pp_static_extension._doPrintf (stdgo/internal/Macro.macro.hx line 316 column 76095)
Called from stdgo.fmt.T_pp_static_extension._printArg (stdgo/fmt/Fmt.hx line 3115 column 9)
Called from stdgo.reflect.Value_static_extension.isValid (stdgo/reflect/Reflect.hx line 2327 column 23)
Called from stdgo.internal.reflect._Type._common (stdgo/internal/reflect/Reflect.hx line 1 column 1)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function append(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-append>)

- [`function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendf>)

- [`function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>`](<#function-appendln>)

- [`function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error`](<#function-errorf>)

- [`function fprint(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fprint>)

- [`function fprintf(_w:stdgo.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fprintf>)

- [`function fprintln(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fprintln>)

- [`function fscan(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fscan>)

- [`function fscanf(_r:stdgo.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fscanf>)

- [`function fscanln(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-fscanln>)

- [`function isSpace()`](<#function-isspace>)

- [`function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{_2:stdgo.GoInt, _1:Bool, _0:stdgo.GoInt}`](<#function-parsenum>)

- [`function print(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-print>)

- [`function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-printf>)

- [`function println(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-println>)

- [`function scan(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-scan>)

- [`function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-scanf>)

- [`function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-scanln>)

- [`function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprint>)

- [`function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintf>)

- [`function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString`](<#function-sprintln>)

- [`function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-sscan>)

- [`function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-sscanf>)

- [`function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#function-sscanln>)

- [class T\_buffer\_static\_extension](<#class-t_buffer_static_extension>)

  - [`function _write(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _p:stdgo.Slice<stdgo.GoByte>):Void`](<#t_buffer_static_extension-function-_write>)

  - [`function _writeByte(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _c:stdgo.GoByte):Void`](<#t_buffer_static_extension-function-_writebyte>)

  - [`function _writeRune(_bp:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _r:stdgo.GoRune):Void`](<#t_buffer_static_extension-function-_writerune>)

  - [`function _writeString(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _s:stdgo.GoString):Void`](<#t_buffer_static_extension-function-_writestring>)

- [class T\_fmt\_static\_extension](<#class-t_fmt_static_extension>)

  - [`function _clearflags(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>):Void`](<#t_fmt_static_extension-function-_clearflags>)

  - [`function _fmtBoolean(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _v:Bool):Void`](<#t_fmt_static_extension-function-_fmtboolean>)

  - [`function _fmtBs(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#t_fmt_static_extension-function-_fmtbs>)

  - [`function _fmtBx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmtbx>)

  - [`function _fmtC(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _c:stdgo.GoUInt64):Void`](<#t_fmt_static_extension-function-_fmtc>)

  - [`function _fmtFloat(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune, _prec:stdgo.GoInt):Void`](<#t_fmt_static_extension-function-_fmtfloat>)

  - [`function _fmtInteger(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoRune, _digits:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmtinteger>)

  - [`function _fmtQ(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmtq>)

  - [`function _fmtQc(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _c:stdgo.GoUInt64):Void`](<#t_fmt_static_extension-function-_fmtqc>)

  - [`function _fmtS(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmts>)

  - [`function _fmtSbx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmtsbx>)

  - [`function _fmtSx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString, _digits:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_fmtsx>)

  - [`function _fmtUnicode(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _u:stdgo.GoUInt64):Void`](<#t_fmt_static_extension-function-_fmtunicode>)

  - [`function _init(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _buf:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>):Void`](<#t_fmt_static_extension-function-_init>)

  - [`function _pad(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#t_fmt_static_extension-function-_pad>)

  - [`function _padString(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void`](<#t_fmt_static_extension-function-_padstring>)

  - [`function _truncate(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#t_fmt_static_extension-function-_truncate>)

  - [`function _truncateString(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):stdgo.GoString`](<#t_fmt_static_extension-function-_truncatestring>)

  - [`function _writePadding(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _n:stdgo.GoInt):Void`](<#t_fmt_static_extension-function-_writepadding>)

- [class T\_pp\_static\_extension](<#class-t_pp_static_extension>)

  - [`function _argNumber(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{_2:Bool, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#t_pp_static_extension-function-_argnumber>)

  - [`function _badArgNum(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_badargnum>)

  - [`function _badVerb(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_badverb>)

  - [`function _catchPanic(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune, _method:stdgo.GoString):Void`](<#t_pp_static_extension-function-_catchpanic>)

  - [`function _doPrint(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void`](<#t_pp_static_extension-function-_doprint>)

  - [`function _doPrintf(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void`](<#t_pp_static_extension-function-_doprintf>)

  - [`function _doPrintln(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void`](<#t_pp_static_extension-function-_doprintln>)

  - [`function _fmt0x64(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void`](<#t_pp_static_extension-function-_fmt0x64>)

  - [`function _fmtBool(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:Bool, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtbool>)

  - [`function _fmtBytes(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.Slice<stdgo.GoByte>, _verb:stdgo.GoRune, _typeString:stdgo.GoString):Void`](<#t_pp_static_extension-function-_fmtbytes>)

  - [`function _fmtComplex(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtcomplex>)

  - [`function _fmtFloat(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtfloat>)

  - [`function _fmtInteger(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtinteger>)

  - [`function _fmtPointer(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _value:stdgo.reflect.Value, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtpointer>)

  - [`function _fmtString(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_fmtstring>)

  - [`function _free(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):Void`](<#t_pp_static_extension-function-_free>)

  - [`function _handleMethods(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Bool`](<#t_pp_static_extension-function-_handlemethods>)

  - [`function _missingArg(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_missingarg>)

  - [`function _printArg(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune):Void`](<#t_pp_static_extension-function-_printarg>)

  - [`function _printValue(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _value:stdgo.reflect.Value, _verb:stdgo.GoRune, _depth:stdgo.GoInt):Void`](<#t_pp_static_extension-function-_printvalue>)

  - [`function _unknownType(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.reflect.Value):Void`](<#t_pp_static_extension-function-_unknowntype>)

  - [`function flag(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _b:stdgo.GoInt):Bool`](<#t_pp_static_extension-function-flag>)

  - [`function precision(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):{_1:Bool, _0:stdgo.GoInt}`](<#t_pp_static_extension-function-precision>)

  - [`function width(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):{_1:Bool, _0:stdgo.GoInt}`](<#t_pp_static_extension-function-width>)

  - [`function write(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_pp_static_extension-function-write>)

  - [`function writeString(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_pp_static_extension-function-writestring>)

- [class T\_readRune\_static\_extension](<#class-t_readrune_static_extension>)

  - [`function _readByte(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):{_1:stdgo.Error, _0:stdgo.GoByte}`](<#t_readrune_static_extension-function-_readbyte>)

  - [`function readRune(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#t_readrune_static_extension-function-readrune>)

  - [`function unreadRune(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):stdgo.Error`](<#t_readrune_static_extension-function-unreadrune>)

- [class T\_ss\_static\_extension](<#class-t_ss_static_extension>)

  - [`function _accept(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString):Bool`](<#t_ss_static_extension-function-_accept>)

  - [`function _advance(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _format:stdgo.GoString):stdgo.GoInt`](<#t_ss_static_extension-function-_advance>)

  - [`function _complexTokens(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:stdgo.GoString, _0:stdgo.GoString}`](<#t_ss_static_extension-function-_complextokens>)

  - [`function _consume(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool`](<#t_ss_static_extension-function-_consume>)

  - [`function _convertFloat(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64`](<#t_ss_static_extension-function-_convertfloat>)

  - [`function _convertString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):stdgo.GoString`](<#t_ss_static_extension-function-_convertstring>)

  - [`function _doScan(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _a:stdgo.Slice<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-_doscan>)

  - [`function _doScanf(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-_doscanf>)

  - [`function _error(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _err:stdgo.Error):Void`](<#t_ss_static_extension-function-_error>)

  - [`function _errorString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _err:stdgo.GoString):Void`](<#t_ss_static_extension-function-_errorstring>)

  - [`function _floatToken(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString`](<#t_ss_static_extension-function-_floattoken>)

  - [`function _free(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _old:stdgo.fmt._Fmt.T_ssave):Void`](<#t_ss_static_extension-function-_free>)

  - [`function _getBase(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):{_1:stdgo.GoString, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-_getbase>)

  - [`function _getRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoRune`](<#t_ss_static_extension-function-_getrune>)

  - [`function _hexByte(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:Bool, _0:stdgo.GoByte}`](<#t_ss_static_extension-function-_hexbyte>)

  - [`function _hexString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString`](<#t_ss_static_extension-function-_hexstring>)

  - [`function _mustReadRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoRune`](<#t_ss_static_extension-function-_mustreadrune>)

  - [`function _notEOF(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void`](<#t_ss_static_extension-function-_noteof>)

  - [`function _okVerb(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool`](<#t_ss_static_extension-function-_okverb>)

  - [`function _peek(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString):Bool`](<#t_ss_static_extension-function-_peek>)

  - [`function _quotedString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString`](<#t_ss_static_extension-function-_quotedstring>)

  - [`function _scanBasePrefix(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-_scanbaseprefix>)

  - [`function _scanBool(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):Bool`](<#t_ss_static_extension-function-_scanbool>)

  - [`function _scanComplex(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _n:stdgo.GoInt):stdgo.GoComplex128`](<#t_ss_static_extension-function-_scancomplex>)

  - [`function _scanInt(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoInt64`](<#t_ss_static_extension-function-_scanint>)

  - [`function _scanNumber(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString`](<#t_ss_static_extension-function-_scannumber>)

  - [`function _scanOne(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _arg:stdgo.AnyInterface):Void`](<#t_ss_static_extension-function-_scanone>)

  - [`function _scanPercent(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void`](<#t_ss_static_extension-function-_scanpercent>)

  - [`function _scanRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _bitSize:stdgo.GoInt):stdgo.GoInt64`](<#t_ss_static_extension-function-_scanrune>)

  - [`function _scanUint(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoUInt64`](<#t_ss_static_extension-function-_scanuint>)

  - [`function _token(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _skipSpace:Bool, _f:()):stdgo.Slice<stdgo.GoByte>`](<#t_ss_static_extension-function-_token>)

  - [`function read(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _buf:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-read>)

  - [`function readRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#t_ss_static_extension-function-readrune>)

  - [`function skipSpace(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void`](<#t_ss_static_extension-function-skipspace>)

  - [`function token(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _skipSpace:Bool, _f:()):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#t_ss_static_extension-function-token>)

  - [`function unreadRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.Error`](<#t_ss_static_extension-function-unreadrune>)

  - [`function width(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:Bool, _0:stdgo.GoInt}`](<#t_ss_static_extension-function-width>)

- [class T\_stringReader\_static\_extension](<#class-t_stringreader_static_extension>)

  - [`function read(____:stdgo.fmt._Fmt.T_stringReader, _r:stdgo.Pointer<stdgo.fmt._Fmt.T_stringReader>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_stringreader_static_extension-function-read>)

- [class T\_wrapError\_static\_extension](<#class-t_wraperror_static_extension>)

  - [`function error(_e:stdgo.Ref<stdgo.fmt._Fmt.T_wrapError>):stdgo.GoString`](<#t_wraperror_static_extension-function-error>)

  - [`function unwrap(_e:stdgo.Ref<stdgo.fmt._Fmt.T_wrapError>):stdgo.Error`](<#t_wraperror_static_extension-function-unwrap>)

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


Append formats using the default formats for its operands, appends the result to  the byte slice, and returns the updated slice. 


[\(view code\)](<./Fmt.hx#L1139>)


## function appendf


```haxe
function appendf(_b:stdgo.Slice<stdgo.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```


Appendf formats according to a format specifier, appends the result to the byte  slice, and returns the updated slice. 


[\(view code\)](<./Fmt.hx#L1083>)


## function appendln


```haxe
function appendln(_b:stdgo.Slice<stdgo.GoByte>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoByte>
```


Appendln formats using the default formats for its operands, appends the result  to the byte slice, and returns the updated slice. Spaces are always added  between operands and a newline is appended. 


[\(view code\)](<./Fmt.hx#L1196>)


## function errorf


```haxe
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error
```


Errorf formats according to a format specifier and returns the string as a  value that satisfies error.    If the format specifier includes a %w verb with an error operand,  the returned error will implement an Unwrap method returning the operand. It is  invalid to include more than one %w verb or to supply it with an operand  that does not implement the error interface. The %w verb is otherwise  a synonym for %v. 


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


[\(view code\)](<./Fmt.hx#L1011>)


## function fprint


```haxe
function fprint(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fprint formats using the default formats for its operands and writes to w.  Spaces are added between operands when neither is a string.  It returns the number of bytes written and any write error encountered. 


### exampleFprint


<details><summary></summary>
<p>


```haxe
function exampleFprint():Void {
	{};
	var __tmp__ = stdgo.fmt.Fmt.fprint(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)),
		Go.toInterface((22 : GoInt)), Go.toInterface((" years old.\n" : GoString))),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprint: %v\n" : GoString), Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.print(Go.toInterface(_n), Go.toInterface((" bytes written.\n" : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1097>)


## function fprintf


```haxe
function fprintf(_w:stdgo.io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fprintf formats according to a format specifier and writes to w.  It returns the number of bytes written and any write error encountered. 


### exampleFprintf


<details><summary></summary>
<p>


```haxe
function exampleFprintf():Void {
	{};
	var __tmp__ = stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stdout), ("%s is %d years old.\n" : GoString), Go.toInterface(("Kim" : GoString)),
		Go.toInterface((22 : GoInt))),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintf: %v\n" : GoString), Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.printf(("%d bytes written.\n" : GoString), Go.toInterface(_n));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1043>)


## function fprintln


```haxe
function fprintln(_w:stdgo.io.Writer, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fprintln formats using the default formats for its operands and writes to w.  Spaces are always added between operands and a newline is appended.  It returns the number of bytes written and any write error encountered. 


### exampleFprintln


<details><summary></summary>
<p>


```haxe
function exampleFprintln():Void {
	{};
	var __tmp__ = stdgo.fmt.Fmt.fprintln(Go.asInterface(stdgo.os.Os.stdout), Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)),
		Go.toInterface((22 : GoInt)), Go.toInterface(("years old." : GoString))),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fprintln: %v\n" : GoString), Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.println(Go.toInterface(_n), Go.toInterface(("bytes written." : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1153>)


## function fscan


```haxe
function fscan(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fscan scans text read from r, storing successive space\-separated  values into successive arguments. Newlines count as space. It  returns the number of items successfully scanned. If that is less  than the number of arguments, err will report why. 


[\(view code\)](<./Fmt.hx#L1419>)


## function fscanf


```haxe
function fscanf(_r:stdgo.io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fscanf scans text read from r, storing successive space\-separated  values into successive arguments as determined by the format. It  returns the number of items successfully parsed.  Newlines in the input must match newlines in the format. 


### exampleFscanf


<details><summary></summary>
<p>


```haxe
function exampleFscanf():Void {
	var _0:GoInt = (0 : GoInt),
		_1:Bool = false,
		_2:GoString = ("" : GoString),
		_s:GoString = _2,
		_b:Bool = _1,
		_i:GoInt = _0;
	var _r = stdgo.strings.Strings.newReader(("5 true gophers" : GoString));
	var __tmp__ = stdgo.fmt.Fmt.fscanf(Go.asInterface(_r), ("%d %t %s" : GoString), Go.toInterface(Go.pointer(_i)), Go.toInterface(Go.pointer(_b)),
		Go.toInterface(Go.pointer(_s))),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		stdgo.fmt.Fmt.fprintf(Go.asInterface(stdgo.os.Os.stderr), ("Fscanf: %v\n" : GoString), Go.toInterface(_err));
	};
	stdgo.fmt.Fmt.println(Go.toInterface(_i), Go.toInterface(_b), Go.toInterface(_s));
	stdgo.fmt.Fmt.println(Go.toInterface(_n));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1459>)


## function fscanln


```haxe
function fscanln(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Fscanln is similar to Fscan, but stops scanning at a newline and  after the final item there must be a newline or EOF. 


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
		var __tmp__ = stdgo.fmt.Fmt.fscanln(Go.asInterface(_r), Go.toInterface(Go.pointer(_a)), Go.toInterface(Go.pointer(_b)),
			Go.toInterface(Go.pointer(_c))),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
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


[\(view code\)](<./Fmt.hx#L1438>)


## function isSpace


```haxe
function isSpace()
```


 


[\(view code\)](<./Fmt.hx#L425>)


## function parsenum


```haxe
function parsenum(:stdgo.GoString, :stdgo.GoInt, :stdgo.GoInt):{_2:stdgo.GoInt, _1:Bool, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt.hx#L431>)


## function print


```haxe
function print(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Print formats using the default formats for its operands and writes to standard output.  Spaces are added between operands when neither is a string.  It returns the number of bytes written and any write error encountered. 


### examplePrint


<details><summary></summary>
<p>


```haxe
function examplePrint():Void {
	{};
	stdgo.fmt.Fmt.print(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)),
		Go.toInterface((" years old.\n" : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1116>)


## function printf


```haxe
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Printf formats according to a format specifier and writes to standard output.  It returns the number of bytes written and any write error encountered. 


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


[\(view code\)](<./Fmt.hx#L1061>)


## function println


```haxe
function println(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Println formats using the default formats for its operands and writes to standard output.  Spaces are always added between operands and a newline is appended.  It returns the number of bytes written and any write error encountered. 


### examplePrintln


<details><summary></summary>
<p>


```haxe
function examplePrintln():Void {
	{};
	stdgo.fmt.Fmt.println(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)),
		Go.toInterface(("years old." : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1172>)


## function scan


```haxe
function scan(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Scan scans text read from standard input, storing successive  space\-separated values into successive arguments. Newlines count  as space. It returns the number of items successfully scanned.  If that is less than the number of arguments, err will report why. 


[\(view code\)](<./Fmt.hx#L1342>)


## function scanf


```haxe
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Scanf scans text read from standard input, storing successive  space\-separated values into successive arguments as determined by  the format. It returns the number of items successfully scanned.  If that is less than the number of arguments, err will report why.  Newlines in the input must match newlines in the format.  The one exception: the verb %c always scans the next rune in the  input, even if it is a space \(or tab etc.\) or newline. 


[\(view code\)](<./Fmt.hx#L1367>)


## function scanln


```haxe
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Scanln is similar to Scan, but stops scanning at a newline and  after the final item there must be a newline or EOF. 


[\(view code\)](<./Fmt.hx#L1352>)


## function sprint


```haxe
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


Sprint formats using the default formats for its operands and returns the resulting string.  Spaces are added between operands when neither is a string. 


### exampleSprint


<details><summary></summary>
<p>


```haxe
function exampleSprint():Void {
	{};
	var _s:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(("Kim" : GoString)), Go.toInterface((" is " : GoString)), Go.toInterface((22 : GoInt)),
		Go.toInterface((" years old.\n" : GoString)));
	stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1126>)


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


[\(view code\)](<./Fmt.hx#L1070>)


## function sprintln


```haxe
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString
```


Sprintln formats using the default formats for its operands and returns the resulting string.  Spaces are always added between operands and a newline is appended. 


### exampleSprintln


<details><summary></summary>
<p>


```haxe
function exampleSprintln():Void {
	{};
	var _s:GoString = stdgo.fmt.Fmt.sprintln(Go.toInterface(("Kim" : GoString)), Go.toInterface(("is" : GoString)), Go.toInterface((22 : GoInt)),
		Go.toInterface(("years old." : GoString)));
	stdgo.io.Io.writeString(Go.asInterface(stdgo.os.Os.stdout), _s);
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1182>)


## function sscan


```haxe
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Sscan scans the argument string, storing successive space\-separated  values into successive arguments. Newlines count as space. It  returns the number of items successfully scanned. If that is less  than the number of arguments, err will report why. 


[\(view code\)](<./Fmt.hx#L1379>)


## function sscanf


```haxe
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Sscanf scans the argument string, storing successive space\-separated  values into successive arguments as determined by the format. It  returns the number of items successfully parsed.  Newlines in the input must match newlines in the format. 


### exampleSscanf


<details><summary></summary>
<p>


```haxe
function exampleSscanf():Void {
	var _name:GoString = ("" : GoString);
	var _age:GoInt = (0 : GoInt);
	var __tmp__ = stdgo.fmt.Fmt.sscanf(("Kim is 22 years old" : GoString), ("%s is %d years old" : GoString), Go.toInterface(Go.pointer(_name)),
		Go.toInterface(Go.pointer(_age))),
		_n:GoInt = __tmp__._0,
		_err:Error = __tmp__._1;
	if (_err != null) {
		throw Go.toInterface(_err);
	};
	stdgo.fmt.Fmt.printf(("%d: %s, %d\n" : GoString), Go.toInterface(_n), Go.toInterface(_name), Go.toInterface(_age));
}
```


</p>
</details>


[\(view code\)](<./Fmt.hx#L1405>)


## function sscanln


```haxe
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Sscanln is similar to Sscan, but stops scanning at a newline and  after the final item there must be a newline or EOF. 


[\(view code\)](<./Fmt.hx#L1391>)


# Classes


```haxe
import stdgo.fmt.*
```


## class T\_buffer\_static\_extension


 


### T\_buffer\_static\_extension function \_write


```haxe
function _write(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _p:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Fmt.hx#L5253>)


### T\_buffer\_static\_extension function \_writeByte


```haxe
function _writeByte(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _c:stdgo.GoByte):Void
```


 


[\(view code\)](<./Fmt.hx#L5243>)


### T\_buffer\_static\_extension function \_writeRune


```haxe
function _writeRune(_bp:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _r:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L5228>)


### T\_buffer\_static\_extension function \_writeString


```haxe
function _writeString(_b:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>, _s:stdgo.GoString):Void
```


 


[\(view code\)](<./Fmt.hx#L5248>)


## class T\_fmt\_static\_extension


 


### T\_fmt\_static\_extension function \_clearflags


```haxe
function _clearflags(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>):Void
```


 


[\(view code\)](<./Fmt.hx#L2325>)


### T\_fmt\_static\_extension function \_fmtBoolean


```haxe
function _fmtBoolean(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _v:Bool):Void
```


fmtBoolean formats a boolean. 


[\(view code\)](<./Fmt.hx#L2244>)


### T\_fmt\_static\_extension function \_fmtBs


```haxe
function _fmtBs(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


fmtBs formats the byte slice b as if it was formatted as string with fmtS. 


[\(view code\)](<./Fmt.hx#L2025>)


### T\_fmt\_static\_extension function \_fmtBx


```haxe
function _fmtBx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void
```


fmtBx formats a byte slice as a hexadecimal encoding of its bytes. 


[\(view code\)](<./Fmt.hx#L1950>)


### T\_fmt\_static\_extension function \_fmtC


```haxe
function _fmtC(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _c:stdgo.GoUInt64):Void
```


fmtC formats an integer as a Unicode character.   If the character is not valid Unicode, it will print '\\ufffd'. 


[\(view code\)](<./Fmt.hx#L1916>)


### T\_fmt\_static\_extension function \_fmtFloat


```haxe
function _fmtFloat(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune, _prec:stdgo.GoInt):Void
```


fmtFloat formats a float64. It assumes that verb is a valid format specifier   for strconv.AppendFloat and therefore fits into a byte. 


[\(view code\)](<./Fmt.hx#L1789>)


### T\_fmt\_static\_extension function \_fmtInteger


```haxe
function _fmtInteger(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoRune, _digits:stdgo.GoString):Void
```


fmtInteger formats signed and unsigned integers. 


[\(view code\)](<./Fmt.hx#L2088>)


### T\_fmt\_static\_extension function \_fmtQ


```haxe
function _fmtQ(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void
```


fmtQ formats a string as a double\-quoted, escaped Go string constant.   If f.sharp is set a raw \(backquoted\) string may be returned instead   if the string does not contain any control characters other than tab. 


[\(view code\)](<./Fmt.hx#L1932>)


### T\_fmt\_static\_extension function \_fmtQc


```haxe
function _fmtQc(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _c:stdgo.GoUInt64):Void
```


fmtQc formats an integer as a single\-quoted, escaped Go character constant.   If the character is not valid Unicode, it will print '\\ufffd'. 


[\(view code\)](<./Fmt.hx#L1898>)


### T\_fmt\_static\_extension function \_fmtS


```haxe
function _fmtS(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void
```


fmtS formats a string. 


[\(view code\)](<./Fmt.hx#L2034>)


### T\_fmt\_static\_extension function \_fmtSbx


```haxe
function _fmtSbx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _digits:stdgo.GoString):Void
```


fmtSbx formats a string or byte slice as a hexadecimal encoding of its bytes. 


[\(view code\)](<./Fmt.hx#L1966>)


### T\_fmt\_static\_extension function \_fmtSx


```haxe
function _fmtSx(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString, _digits:stdgo.GoString):Void
```


fmtSx formats a string as a hexadecimal encoding of its bytes. 


[\(view code\)](<./Fmt.hx#L1958>)


### T\_fmt\_static\_extension function \_fmtUnicode


```haxe
function _fmtUnicode(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _u:stdgo.GoUInt64):Void
```


fmtUnicode formats a uint64 as "U\+0078" or with f.sharp set as "U\+0078 'x'". 


[\(view code\)](<./Fmt.hx#L2195>)


### T\_fmt\_static\_extension function \_init


```haxe
function _init(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _buf:stdgo.Ref<stdgo.fmt._Fmt.T_buffer>):Void
```


 


[\(view code\)](<./Fmt.hx#L2319>)


### T\_fmt\_static\_extension function \_pad


```haxe
function _pad(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):Void
```


pad appends b to f.buf, padded on left \(\!f.minus\) or right \(f.minus\). 


[\(view code\)](<./Fmt.hx#L2275>)


### T\_fmt\_static\_extension function \_padString


```haxe
function _padString(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):Void
```


padString appends s to f.buf, padded on left \(\!f.minus\) or right \(f.minus\). 


[\(view code\)](<./Fmt.hx#L2256>)


### T\_fmt\_static\_extension function \_truncate


```haxe
function _truncate(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


truncate truncates the byte slice b as a string of the specified precision, if present. 


[\(view code\)](<./Fmt.hx#L2043>)


### T\_fmt\_static\_extension function \_truncateString


```haxe
function _truncateString(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _s:stdgo.GoString):stdgo.GoString
```


truncateString truncates the string s to the specified precision, if present. 


[\(view code\)](<./Fmt.hx#L2071>)


### T\_fmt\_static\_extension function \_writePadding


```haxe
function _writePadding(_f:stdgo.Ref<stdgo.fmt._Fmt.T_fmt>, _n:stdgo.GoInt):Void
```


writePadding generates n bytes of padding. 


[\(view code\)](<./Fmt.hx#L2294>)


## class T\_pp\_static\_extension


 


### T\_pp\_static\_extension function \_argNumber


```haxe
function _argNumber(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{_2:Bool, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


argNumber returns the next argument to evaluate, which is either the value of the passed\-in   argNum or the value of the bracketed integer that begins format\[i:\]. It also returns   the new value of i, that is, the index of the next byte of the format to process. 


[\(view code\)](<./Fmt.hx#L2755>)


### T\_pp\_static\_extension function \_badArgNum


```haxe
function _badArgNum(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L2743>)


### T\_pp\_static\_extension function \_badVerb


```haxe
function _badVerb(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L3509>)


### T\_pp\_static\_extension function \_catchPanic


```haxe
function _catchPanic(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune, _method:stdgo.GoString):Void
```


 


[\(view code\)](<./Fmt.hx#L3275>)


### T\_pp\_static\_extension function \_doPrint


```haxe
function _doPrint(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Fmt.hx#L2506>)


### T\_pp\_static\_extension function \_doPrintf


```haxe
function _doPrintf(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void
```


 


[\(view code\)](<./Fmt.hx#L2520>)


### T\_pp\_static\_extension function \_doPrintln


```haxe
function _doPrintln(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void
```


doPrintln is like doPrint but always adds a space between arguments   and a newline after the last argument. 


[\(view code\)](<./Fmt.hx#L2495>)


### T\_pp\_static\_extension function \_fmt0x64


```haxe
function _fmt0x64(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void
```


fmt0x64 formats a uint64 in hexadecimal and prefixes it with 0x or   not, as requested, by temporarily setting the sharp flag. 


[\(view code\)](<./Fmt.hx#L3492>)


### T\_pp\_static\_extension function \_fmtBool


```haxe
function _fmtBool(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:Bool, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L3500>)


### T\_pp\_static\_extension function \_fmtBytes


```haxe
function _fmtBytes(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.Slice<stdgo.GoByte>, _verb:stdgo.GoRune, _typeString:stdgo.GoString):Void
```


 


[\(view code\)](<./Fmt.hx#L3352>)


### T\_pp\_static\_extension function \_fmtComplex


```haxe
function _fmtComplex(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void
```


fmtComplex formats a complex number v with   r = real\(v\) and j = imag\(v\) as \(r\+ji\) using   fmtFloat for r and j formatting. 


[\(view code\)](<./Fmt.hx#L3419>)


### T\_pp\_static\_extension function \_fmtFloat


```haxe
function _fmtFloat(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoRune):Void
```


fmtFloat formats a float. The default precision for each verb   is specified as last argument in the call to fmt\_float. 


[\(view code\)](<./Fmt.hx#L3440>)


### T\_pp\_static\_extension function \_fmtInteger


```haxe
function _fmtInteger(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoRune):Void
```


fmtInteger formats a signed or unsigned integer. 


[\(view code\)](<./Fmt.hx#L3459>)


### T\_pp\_static\_extension function \_fmtPointer


```haxe
function _fmtPointer(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _value:stdgo.reflect.Value, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L3310>)


### T\_pp\_static\_extension function \_fmtString


```haxe
function _fmtString(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L3393>)


### T\_pp\_static\_extension function \_free


```haxe
function _free(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):Void
```


free saves used pp structs in ppFree; avoids an allocation per invocation. 


[\(view code\)](<./Fmt.hx#L3594>)


### T\_pp\_static\_extension function \_handleMethods


```haxe
function _handleMethods(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Bool
```


 


[\(view code\)](<./Fmt.hx#L3132>)


### T\_pp\_static\_extension function \_missingArg


```haxe
function _missingArg(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L2736>)


### T\_pp\_static\_extension function \_printArg


```haxe
function _printArg(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt.hx#L3032>)


### T\_pp\_static\_extension function \_printValue


```haxe
function _printValue(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _value:stdgo.reflect.Value, _verb:stdgo.GoRune, _depth:stdgo.GoInt):Void
```


printValue is similar to printArg but starts with a reflect value, not an interface\{\} value.   It does not handle 'p' and 'T' verbs because these should have been already handled by printArg. 


[\(view code\)](<./Fmt.hx#L2779>)


### T\_pp\_static\_extension function \_unknownType


```haxe
function _unknownType(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _v:stdgo.reflect.Value):Void
```


 


[\(view code\)](<./Fmt.hx#L3530>)


### T\_pp\_static\_extension function flag


```haxe
function flag(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _b:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Fmt.hx#L3563>)


### T\_pp\_static\_extension function precision


```haxe
function precision(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):{_1:Bool, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt.hx#L3579>)


### T\_pp\_static\_extension function width


```haxe
function width(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>):{_1:Bool, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt.hx#L3585>)


### T\_pp\_static\_extension function write


```haxe
function write(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Implement Write so we can call Fprintf on a pp \(through State\), for   recursive use in custom verbs. 


[\(view code\)](<./Fmt.hx#L3556>)


### T\_pp\_static\_extension function writeString


```haxe
function writeString(_p:stdgo.Ref<stdgo.fmt._Fmt.T_pp>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Implement WriteString so that we can call io.WriteString   on a pp \(through state\), for efficiency. 


[\(view code\)](<./Fmt.hx#L3545>)


## class T\_readRune\_static\_extension


 


### T\_readRune\_static\_extension function \_readByte


```haxe
function _readByte(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):{_1:stdgo.Error, _0:stdgo.GoByte}
```


readByte returns the next byte from the input, which may be   left over from a previous read if the UTF\-8 was ill\-formed. 


[\(view code\)](<./Fmt.hx#L5177>)


### T\_readRune\_static\_extension function readRune


```haxe
function readRune(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune returns the next UTF\-8 encoded code point from the   io.Reader inside r. 


[\(view code\)](<./Fmt.hx#L5117>)


### T\_readRune\_static\_extension function unreadRune


```haxe
function unreadRune(_r:stdgo.Ref<stdgo.fmt._Fmt.T_readRune>):stdgo.Error
```


 


[\(view code\)](<./Fmt.hx#L5104>)


## class T\_ss\_static\_extension


 


### T\_ss\_static\_extension function \_accept


```haxe
function _accept(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString):Bool
```


accept checks the next rune in the input. If it's a byte \(sic\) in the string, it puts it in the   buffer and returns true. Otherwise it return false. 


[\(view code\)](<./Fmt.hx#L4781>)


### T\_ss\_static\_extension function \_advance


```haxe
function _advance(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _format:stdgo.GoString):stdgo.GoInt
```


advance determines whether the next characters in the input match   those of the format. It returns the number of bytes \(sic\) consumed   in the format. All runs of space characters in either input or   format behave as a single space. Newlines are special, though:   newlines in the format must match those in the input and vice versa.   This routine also handles the %% case. If the return value is zero,   either format starts with a % \(with no following %\) or the input   is empty. If it is negative, the input did not match the string. 


[\(view code\)](<./Fmt.hx#L4004>)


### T\_ss\_static\_extension function \_complexTokens


```haxe
function _complexTokens(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:stdgo.GoString, _0:stdgo.GoString}
```


complexTokens returns the real and imaginary parts of the complex number starting here.   The number might be parenthesized and has the format \(N\+Ni\) where N is a floating\-point   number and there are no spaces within. 


[\(view code\)](<./Fmt.hx#L4515>)


### T\_ss\_static\_extension function \_consume


```haxe
function _consume(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool
```


consume reads the next rune in the input and reports whether it is in the ok string.   If accept is true, it puts the character into the input token. 


[\(view code\)](<./Fmt.hx#L4813>)


### T\_ss\_static\_extension function \_convertFloat


```haxe
function _convertFloat(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64
```


convertFloat converts the string to a float64value. 


[\(view code\)](<./Fmt.hx#L4459>)


### T\_ss\_static\_extension function \_convertString


```haxe
function _convertString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):stdgo.GoString
```


convertString returns the string represented by the next input characters.   The format of the input is determined by the verb. 


[\(view code\)](<./Fmt.hx#L4417>)


### T\_ss\_static\_extension function \_doScan


```haxe
function _doScan(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _a:stdgo.Slice<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


doScan does the real work for scanning without a format string. 


[\(view code\)](<./Fmt.hx#L4084>)


### T\_ss\_static\_extension function \_doScanf


```haxe
function _doScanf(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


doScanf does the real work when scanning with a format string.   At the moment, it handles only pointers to basic types. 


[\(view code\)](<./Fmt.hx#L3898>)


### T\_ss\_static\_extension function \_error


```haxe
function _error(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _err:stdgo.Error):Void
```


 


[\(view code\)](<./Fmt.hx#L4973>)


### T\_ss\_static\_extension function \_errorString


```haxe
function _errorString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _err:stdgo.GoString):Void
```


 


[\(view code\)](<./Fmt.hx#L4968>)


### T\_ss\_static\_extension function \_floatToken


```haxe
function _floatToken(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString
```


floatToken returns the floating\-point number starting here, no longer than swid   if the width is specified. It's not rigorous about syntax because it doesn't check that   we have at least some digits, but Atof will do that. 


[\(view code\)](<./Fmt.hx#L4540>)


### T\_ss\_static\_extension function \_free


```haxe
function _free(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _old:stdgo.fmt._Fmt.T_ssave):Void
```


free saves used ss structs in ssFree; avoid an allocation per invocation. 


[\(view code\)](<./Fmt.hx#L4887>)


### T\_ss\_static\_extension function \_getBase


```haxe
function _getBase(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):{_1:stdgo.GoString, _0:stdgo.GoInt}
```


getBase returns the numeric base represented by the verb and its digit string. 


[\(view code\)](<./Fmt.hx#L4715>)


### T\_ss\_static\_extension function \_getRune


```haxe
function _getRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoRune
```


The public method returns an error; this private one panics.   If getRune reaches EOF, the return value is EOF \(\-1\). 


[\(view code\)](<./Fmt.hx#L5005>)


### T\_ss\_static\_extension function \_hexByte


```haxe
function _hexByte(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:Bool, _0:stdgo.GoByte}
```


hexByte returns the next hex\-encoded \(two\-character\) byte from the input.   It returns ok==false if the next bytes in the input do not encode a hex byte.   If the first byte is hex and the second is not, processing stops. 


[\(view code\)](<./Fmt.hx#L4341>)


### T\_ss\_static\_extension function \_hexString


```haxe
function _hexString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString
```


hexString returns the space\-delimited hexpair\-encoded string. 


[\(view code\)](<./Fmt.hx#L4317>)


### T\_ss\_static\_extension function \_mustReadRune


```haxe
function _mustReadRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoRune
```


mustReadRune turns io.EOF into a panic\(io.ErrUnexpectedEOF\).   It is called in cases such as string scanning where an EOF is a   syntax error. 


[\(view code\)](<./Fmt.hx#L4991>)


### T\_ss\_static\_extension function \_notEOF


```haxe
function _notEOF(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void
```


 


[\(view code\)](<./Fmt.hx#L4786>)


### T\_ss\_static\_extension function \_okVerb


```haxe
function _okVerb(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool
```


okVerb verifies that the verb is present in the list, setting s.err appropriately if not. 


[\(view code\)](<./Fmt.hx#L4766>)


### T\_ss\_static\_extension function \_peek


```haxe
function _peek(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _ok:stdgo.GoString):Bool
```


peek reports whether the next character is in the ok string, without consuming it. 


[\(view code\)](<./Fmt.hx#L4800>)


### T\_ss\_static\_extension function \_quotedString


```haxe
function _quotedString(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.GoString
```


quotedString returns the double\- or back\-quoted string represented by the next input characters. 


[\(view code\)](<./Fmt.hx#L4368>)


### T\_ss\_static\_extension function \_scanBasePrefix


```haxe
function _scanBasePrefix(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoInt}
```


scanBasePrefix reports whether the integer begins with a base prefix   and returns the base, digit string, and whether a zero was found.   It is called only if the verb is %v. 


[\(view code\)](<./Fmt.hx#L4659>)


### T\_ss\_static\_extension function \_scanBool


```haxe
function _scanBool(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune):Bool
```


scanBool returns the value of the boolean represented by the next token. 


[\(view code\)](<./Fmt.hx#L4737>)


### T\_ss\_static\_extension function \_scanComplex


```haxe
function _scanComplex(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _n:stdgo.GoInt):stdgo.GoComplex128
```


convertComplex converts the next token to a complex128 value.   The atof argument is a type\-specific reader for the underlying type.   If we're reading complex64, atof will parse float32s and convert them   to float64's to avoid reproducing this code for each complex type. 


[\(view code\)](<./Fmt.hx#L4441>)


### T\_ss\_static\_extension function \_scanInt


```haxe
function _scanInt(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoInt64
```


scanInt returns the value of the integer represented by the next   token, checking for overflow. Any error is stored in s.err. 


[\(view code\)](<./Fmt.hx#L4613>)


### T\_ss\_static\_extension function \_scanNumber


```haxe
function _scanNumber(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString
```


scanNumber returns the numerical string with specified digits starting here. 


[\(view code\)](<./Fmt.hx#L4700>)


### T\_ss\_static\_extension function \_scanOne


```haxe
function _scanOne(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _arg:stdgo.AnyInterface):Void
```


scanOne scans a single value, deriving the scanner from the type of the argument. 


[\(view code\)](<./Fmt.hx#L4142>)


### T\_ss\_static\_extension function \_scanPercent


```haxe
function _scanPercent(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void
```


scanPercent scans a literal percent character. 


[\(view code\)](<./Fmt.hx#L4305>)


### T\_ss\_static\_extension function \_scanRune


```haxe
function _scanRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _bitSize:stdgo.GoInt):stdgo.GoInt64
```


scanRune returns the next rune value in the input. 


[\(view code\)](<./Fmt.hx#L4685>)


### T\_ss\_static\_extension function \_scanUint


```haxe
function _scanUint(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _verb:stdgo.GoRune, _bitSize:stdgo.GoInt):stdgo.GoUInt64
```


scanUint returns the value of the unsigned integer represented   by the next token, checking for overflow. Any error is stored in s.err. 


[\(view code\)](<./Fmt.hx#L4571>)


### T\_ss\_static\_extension function \_token


```haxe
function _token(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _skipSpace:Bool, _f:()):stdgo.Slice<stdgo.GoByte>
```


token returns the next space\-delimited string from the input. It   skips white space. For Scanln, it stops at newlines. For Scan,   newlines are treated as spaces. 


[\(view code\)](<./Fmt.hx#L4836>)


### T\_ss\_static\_extension function read


```haxe
function read(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _buf:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


The Read method is only in ScanState so that ScanState   satisfies io.Reader. It will never be called when used as   intended, so there is no need to make it actually work. 


[\(view code\)](<./Fmt.hx#L5061>)


### T\_ss\_static\_extension function readRune


```haxe
function readRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


 


[\(view code\)](<./Fmt.hx#L5030>)


### T\_ss\_static\_extension function skipSpace


```haxe
function skipSpace(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):Void
```


SkipSpace provides Scan methods the ability to skip space and newline   characters in keeping with the current scanning mode set by format strings   and Scan/Scanln. 


[\(view code\)](<./Fmt.hx#L4860>)


### T\_ss\_static\_extension function token


```haxe
function token(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>, _skipSpace:Bool, _f:()):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


 


[\(view code\)](<./Fmt.hx#L4901>)


### T\_ss\_static\_extension function unreadRune


```haxe
function unreadRune(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):stdgo.Error
```


 


[\(view code\)](<./Fmt.hx#L4978>)


### T\_ss\_static\_extension function width


```haxe
function width(_s:stdgo.Ref<stdgo.fmt._Fmt.T_ss>):{_1:Bool, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt.hx#L5021>)


## class T\_stringReader\_static\_extension


 


### T\_stringReader\_static\_extension function read


```haxe
function read(____:stdgo.fmt._Fmt.T_stringReader, _r:stdgo.Pointer<stdgo.fmt._Fmt.T_stringReader>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt.hx#L5281>)


## class T\_wrapError\_static\_extension


 


### T\_wrapError\_static\_extension function error


```haxe
function error(_e:stdgo.Ref<stdgo.fmt._Fmt.T_wrapError>):stdgo.GoString
```


 


[\(view code\)](<./Fmt.hx#L1631>)


### T\_wrapError\_static\_extension function unwrap


```haxe
function unwrap(_e:stdgo.Ref<stdgo.fmt._Fmt.T_wrapError>):stdgo.Error
```


 


[\(view code\)](<./Fmt.hx#L1626>)


# Typedefs


```haxe
import stdgo.fmt.*
```


## typedef Formatter


```haxe
typedef Formatter = var a:{<__underlying__> | (_f:stdgo.fmt.State, _verb:stdgo.GoRune):Void | ():stdgo.AnyInterface}
```


Formatter is implemented by any value that has a Format method.  The implementation controls how State and rune are interpreted,  and may call Sprint\(f\) or Fprint\(f\) etc. to generate its output. 


## typedef GoStringer


```haxe
typedef GoStringer = var a:{<__underlying__> | ():stdgo.GoString | ():stdgo.AnyInterface}
```


GoStringer is implemented by any value that has a GoString method,  which defines the Go syntax for that value.  The GoString method is used to print values passed as an operand  to a %\#v format. 


### exampleGoStringer


<details><summary></summary>
<p>


```haxe
function exampleGoStringer():Void {
	var _p1:stdgo.fmt_test.Fmt_test.Person = ({name: ("Warren" : GoString), age: ("31" : GoUInt), addr: (({city: ("Denver" : GoString),
		state: ("CO" : GoString), country: ("U.S.A." : GoString)} : Address) : Ref<stdgo.fmt_test.Fmt_test.Address>)} : Person);
	stdgo.fmt.Fmt.printf(("%#v\n" : GoString), Go.toInterface(Go.asInterface(_p1)));
	var _p2:stdgo.fmt_test.Fmt_test.Person = ({name: ("Theia" : GoString), age: ("4" : GoUInt)} : Person);
	stdgo.fmt.Fmt.printf(("%#v\n" : GoString), Go.toInterface(Go.asInterface(_p2)));
}
```


</p>
</details>


## typedef ScanState


```haxe
typedef ScanState = var a:{<__underlying__> | ():{_1:Bool, _0:stdgo.GoInt} | {<haxe_doc>} | ():stdgo.Error | {<haxe_doc>} | (_skipSpace:Bool, _f:()):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>} | {<haxe_doc>} | ():Void | {<haxe_doc>} | ():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune} | {<haxe_doc>} | (_buf:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt} | {<haxe_doc>} | ():stdgo.AnyInterface}
```


ScanState represents the scanner state passed to custom scanners.  Scanners may do rune\-at\-a\-time scanning or ask the ScanState  to discover the next space\-delimited token. 


## typedef Scanner


```haxe
typedef Scanner = var a:{<__underlying__> | (_state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error | ():stdgo.AnyInterface}
```


Scanner is implemented by any value that has a Scan method, which scans  the input for the representation of a value and stores the result in the  receiver, which must be a pointer to be useful. The Scan method is called  for any argument to Scan, Scanf, or Scanln that implements it. 


## typedef State


```haxe
typedef State = var a:{<__underlying__> | (_b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt} | {<haxe_doc>} | ():{_1:Bool, _0:stdgo.GoInt} | {<haxe_doc>} | ():{_1:Bool, _0:stdgo.GoInt} | {<haxe_doc>} | (_c:stdgo.GoInt):Bool | {<haxe_doc>} | ():stdgo.AnyInterface}
```


State represents the printer state passed to custom formatters.  It provides access to the io.Writer interface plus information about  the flags and options for the operand's format specifier. 


## typedef Stringer


```haxe
typedef Stringer = var a:{<__underlying__> | ():stdgo.GoString | ():stdgo.AnyInterface}
```


Stringer is implemented by any value that has a String method,  which defines the “native” format for that value.  The String method is used to print values passed as an operand  to any format that accepts a string or to an unformatted printer  such as Print. 


### exampleStringer


<details><summary></summary>
<p>


```haxe
function exampleStringer():Void {
	var _a:stdgo.fmt_test.Fmt_test.Animal = ({name: ("Gopher" : GoString), age: ("2" : GoUInt)} : Animal);
	stdgo.fmt.Fmt.println(Go.toInterface(Go.asInterface(_a)));
}
```


</p>
</details>


