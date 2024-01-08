package stdgo.fmt;
/**
    /|*
    Package fmt implements formatted I/O with functions analogous
    to C's printf and scanf.  The format 'verbs' are derived from C's but
    are simpler.
    
    # Printing
    
    The verbs:
    
    General:
    
    	%v	the value in a default format
    		when printing structs, the plus flag (%+v) adds field names
    	%#v	a Go-syntax representation of the value
    	%T	a Go-syntax representation of the type of the value
    	%%	a literal percent sign; consumes no value
    
    Boolean:
    
    	%t	the word true or false
    
    Integer:
    
    	%b	base 2
    	%c	the character represented by the corresponding Unicode code point
    	%d	base 10
    	%o	base 8
    	%O	base 8 with 0o prefix
    	%q	a single-quoted character literal safely escaped with Go syntax.
    	%x	base 16, with lower-case letters for a-f
    	%X	base 16, with upper-case letters for A-F
    	%U	Unicode format: U+1234; same as "U+%04X"
    
    Floating-point and complex constituents:
    
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
    
    String and slice of bytes (treated equivalently with these verbs):
    
    	%s	the uninterpreted bytes of the string or slice
    	%q	a double-quoted string safely escaped with Go syntax
    	%x	base 16, lower-case, two characters per byte
    	%X	base 16, upper-case, two characters per byte
    
    Slice:
    
    	%p	address of 0th element in base 16 notation, with leading 0x
    
    Pointer:
    
    	%p	base 16 notation, with leading 0x
    	The %b, %d, %o, %x and %X verbs also work with pointers,
    	formatting the value exactly as if it were an integer.
    
    The default format for %v is:
    
    	bool:                    %t
    	int, int8 etc.:          %d
    	uint, uint8 etc.:        %d, %#x if printed with %#v
    	float32, complex64, etc: %g
    	string:                  %s
    	chan:                    %p
    	pointer:                 %p
    
    For compound objects, the elements are printed using these rules, recursively,
    laid out like this:
    
    	struct:             {field0 field1 ...}
    	array, slice:       [elem0 elem1 ...]
    	maps:               map[key1:value1 key2:value2 ...]
    	pointer to above:   &{}, &[], &map[]
    
    Width is specified by an optional decimal number immediately preceding the verb.
    If absent, the width is whatever is necessary to represent the value.
    Precision is specified after the (optional) width by a period followed by a
    decimal number. If no period is present, a default precision is used.
    A period with no following number specifies a precision of zero.
    Examples:
    
    	%f     default width, default precision
    	%9f    width 9, default precision
    	%.2f   default width, precision 2
    	%9.2f  width 9, precision 2
    	%9.f   width 9, precision 0
    
    Width and precision are measured in units of Unicode code points,
    that is, runes. (This differs from C's printf where the
    units are always measured in bytes.) Either or both of the flags
    may be replaced with the character '*', causing their values to be
    obtained from the next operand (preceding the one to format),
    which must be of type int.
    
    For most values, width is the minimum number of runes to output,
    padding the formatted form with spaces if necessary.
    
    For strings, byte slices and byte arrays, however, precision
    limits the length of the input to be formatted (not the size of
    the output), truncating if necessary. Normally it is measured in
    runes, but for these types when formatted with the %x or %X format
    it is measured in bytes.
    
    For floating-point values, width sets the minimum width of the field and
    precision sets the number of places after the decimal, if appropriate,
    except that for %g/%G precision sets the maximum number of significant
    digits (trailing zeros are removed). For example, given 12.345 the format
    %6.3f prints 12.345 while %.3g prints 12.3. The default precision for %e, %f
    and %#g is 6; for %g it is the smallest number of digits necessary to identify
    the value uniquely.
    
    For complex numbers, the width and precision apply to the two
    components independently and the result is parenthesized, so %f applied
    to 1.2+3.4i produces (1.200000+3.400000i).
    
    When formatting a single integer code point or a rune string (type []rune)
    with %q, invalid Unicode code points are changed to the Unicode replacement
    character, U+FFFD, as in strconv.QuoteRune.
    
    Other flags:
    
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
    
    Flags are ignored by verbs that do not expect them.
    For example there is no alternate decimal format, so %#d and %d
    behave identically.
    
    For each Printf-like function, there is also a Print function
    that takes no format and is equivalent to saying %v for every
    operand.  Another variant Println inserts blanks between
    operands and appends a newline.
    
    Regardless of the verb, if an operand is an interface value,
    the internal concrete value is used, not the interface itself.
    Thus:
    
    	var i interface{} = 23
    	fmt.Printf("%v\n", i)
    
    will print 23.
    
    Except when printed using the verbs %T and %p, special
    formatting considerations apply for operands that implement
    certain interfaces. In order of application:
    
    1. If the operand is a reflect.Value, the operand is replaced by the
    concrete value that it holds, and printing continues with the next rule.
    
    2. If an operand implements the Formatter interface, it will
    be invoked. In this case the interpretation of verbs and flags is
    controlled by that implementation.
    
    3. If the %v verb is used with the # flag (%#v) and the operand
    implements the GoStringer interface, that will be invoked.
    
    If the format (which is implicitly %v for Println etc.) is valid
    for a string (%s %q %v %x %X), the following two rules apply:
    
    4. If an operand implements the error interface, the Error method
    will be invoked to convert the object to a string, which will then
    be formatted as required by the verb (if any).
    
    5. If an operand implements method String() string, that method
    will be invoked to convert the object to a string, which will then
    be formatted as required by the verb (if any).
    
    For compound operands such as slices and structs, the format
    applies to the elements of each operand, recursively, not to the
    operand as a whole. Thus %q will quote each element of a slice
    of strings, and %6.2f will control formatting for each element
    of a floating-point array.
    
    However, when printing a byte slice with a string-like verb
    (%s %q %x %X), it is treated identically to a string, as a single item.
    
    To avoid recursion in cases such as
    
    	type X string
    	func (x X) String() string { return Sprintf("<%s>", x) }
    
    convert the value before recurring:
    
    	func (x X) String() string { return Sprintf("<%s>", string(x)) }
    
    Infinite recursion can also be triggered by self-referential data
    structures, such as a slice that contains itself as an element, if
    that type has a String method. Such pathologies are rare, however,
    and the package does not protect against them.
    
    When printing a struct, fmt cannot and therefore does not invoke
    formatting methods such as Error or String on unexported fields.
    
    # Explicit argument indexes
    
    In Printf, Sprintf, and Fprintf, the default behavior is for each
    formatting verb to format successive arguments passed in the call.
    However, the notation [n] immediately before the verb indicates that the
    nth one-indexed argument is to be formatted instead. The same notation
    before a '*' for a width or precision selects the argument index holding
    the value. After processing a bracketed expression [n], subsequent verbs
    will use arguments n+1, n+2, etc. unless otherwise directed.
    
    For example,
    
    	fmt.Sprintf("%[2]d %[1]d\n", 11, 22)
    
    will yield "22 11", while
    
    	fmt.Sprintf("%[3]*.[2]*[1]f", 12.0, 2, 6)
    
    equivalent to
    
    	fmt.Sprintf("%6.2f", 12.0)
    
    will yield " 12.00". Because an explicit index affects subsequent verbs,
    this notation can be used to print the same values multiple times
    by resetting the index for the first argument to be repeated:
    
    	fmt.Sprintf("%d %d %#[1]x %#x", 16, 17)
    
    will yield "16 17 0x10 0x11".
    
    # Format errors
    
    If an invalid argument is given for a verb, such as providing
    a string to %d, the generated string will contain a
    description of the problem, as in these examples:
    
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
    
    All errors begin with the string "%!" followed sometimes
    by a single character (the verb) and end with a parenthesized
    description.
    
    If an Error or String method triggers a panic when called by a
    print routine, the fmt package reformats the error message
    from the panic, decorating it with an indication that it came
    through the fmt package.  For example, if a String method
    calls panic("bad"), the resulting formatted message will look
    like
    
    	%!s(PANIC=bad)
    
    The %!s just shows the print verb in use when the failure
    occurred. If the panic is caused by a nil receiver to an Error
    or String method, however, the output is the undecorated
    string, "<nil>".
    
    # Scanning
    
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
    The Printf verbs %p and %T and the flags # and + are not implemented.
    For floating-point and complex values, all valid formatting verbs
    (%b %e %E %f %F %g %G %x %X and %v) are equivalent and accept
    both decimal and hexadecimal notation (for example: "2.3e+7", "0x4.5p-8")
    and digit-separating underscores (for example: "3.14159_26535_89793").
    
    Input processed by verbs is implicitly space-delimited: the
    implementation of every verb except %c starts by discarding
    leading spaces from the remaining input, and the %s verb
    (and %v reading into a string) stops consuming input at the first
    space or newline character.
    
    The familiar base-setting prefixes 0b (binary), 0o and 0 (octal),
    and 0x (hexadecimal) are accepted when scanning integers
    without a format or with the %v verb, as are digit-separating
    underscores.
    
    Width is interpreted in the input text but there is no
    syntax for scanning with a precision (no %5.2f, just %5f).
    If width is provided, it applies after leading spaces are
    trimmed and specifies the maximum number of runes to read
    to satisfy the verb. For example,
    
    	Sscanf(" 1234567 ", "%5s%d", &s, &i)
    
    will set s to "12345" and i to 67 while
    
    	Sscanf(" 12 34 567 ", "%5s%d", &s, &i)
    
    will set s to "12" and i to 34.
    
    In all the scanning functions, a carriage return followed
    immediately by a newline is treated as a plain newline
    (\r\n means the same as \n).
    
    In all the scanning functions, if an operand implements method
    Scan (that is, it implements the Scanner interface) that
    method will be used to scan the text for that operand.  Also,
    if the number of arguments scanned is less than the number of
    arguments provided, an error is returned.
    
    All arguments to be scanned must be either pointers to basic
    types or implementations of the Scanner interface.
    
    Like Scanf and Fscanf, Sscanf need not consume its entire input.
    There is no way to recover how much of the input string Sscanf used.
    
    Note: Fscan etc. can read one character (rune) past the input
    they return, which means that a loop calling a scan routine
    may skip some of the input.  This is usually a problem only
    when there is no space between input values.  If the reader
    provided to Fscan implements ReadRune, that method will be used
    to read characters.  If the reader also implements UnreadRune,
    that method will be used to save the character and successive
    calls will not lose data.  To attach ReadRune and UnreadRune
    methods to a reader without that capability, use
    bufio.NewReader.
    *|/
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _ppFree : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.fmt.Fmt.T_pp)) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_pp>)));
    } } : stdgo.sync.Sync.Pool);
/**
    // space is a copy of the unicode.White_Space ranges,
    // to avoid depending on package unicode.
    
    
**/
var _space : stdgo.Slice<stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>> = (new stdgo.Slice<stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>>(
10,
10,
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((9 : stdgo.StdGoTypes.GoUInt16), (13 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((32 : stdgo.StdGoTypes.GoUInt16), (32 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((133 : stdgo.StdGoTypes.GoUInt16), (133 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((160 : stdgo.StdGoTypes.GoUInt16), (160 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((5760 : stdgo.StdGoTypes.GoUInt16), (5760 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((8192 : stdgo.StdGoTypes.GoUInt16), (8202 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((8232 : stdgo.StdGoTypes.GoUInt16), (8233 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((8239 : stdgo.StdGoTypes.GoUInt16), (8239 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((8287 : stdgo.StdGoTypes.GoUInt16), (8287 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>((12288 : stdgo.StdGoTypes.GoUInt16), (12288 : stdgo.StdGoTypes.GoUInt16)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>)) : stdgo.Slice<stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>>);
/**
    
    
    
**/
var _ssFree : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.fmt.Fmt.T_ss)) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_ss>)));
    } } : stdgo.sync.Sync.Pool);
/**
    
    
    
**/
var _errComplex : stdgo.Error = stdgo.errors.Errors.new_(("syntax error scanning complex number" : stdgo.GoString));
/**
    
    
    
**/
var _errBool : stdgo.Error = stdgo.errors.Errors.new_(("syntax error scanning boolean" : stdgo.GoString));
/**
    
    
    
**/
var isSpace : stdgo.StdGoTypes.GoInt32 -> Bool = _isSpace;
/**
    
    
    
**/
var parsenum : (stdgo.GoString, stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt) -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; var _2 : stdgo.StdGoTypes.GoInt; } = _parsenum;
/**
    
    
    
**/
final _ldigits : stdgo.GoString = ("0123456789abcdefx" : stdgo.GoString);
/**
    
    
    
**/
final _udigits : stdgo.GoString = ("0123456789ABCDEFX" : stdgo.GoString);
/**
    
    
    
**/
final _signed : Bool = true;
/**
    
    
    
**/
final _unsigned : Bool = false;
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _commaSpaceString : stdgo.GoString = (", " : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _nilAngleString : stdgo.GoString = ("<nil>" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _nilParenString : stdgo.GoString = ("(nil)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _nilString : stdgo.GoString = ("nil" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _mapString : stdgo.GoString = ("map[" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _percentBangString : stdgo.GoString = ("%!" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _missingString : stdgo.GoString = ("(MISSING)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _badIndexString : stdgo.GoString = ("(BADINDEX)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _panicString : stdgo.GoString = ("(PANIC=" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _extraString : stdgo.GoString = ("%!(EXTRA " : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _badWidthString : stdgo.GoString = ("%!(BADWIDTH)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _badPrecString : stdgo.GoString = ("%!(BADPREC)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _noVerbString : stdgo.GoString = ("%!(NOVERB)" : stdgo.GoString);
/**
    // Strings for use with buffer.WriteString.
    // This is less overhead than using buffer.Write with byte arrays.
    
    
**/
final _invReflectString : stdgo.GoString = ("<invalid reflect.Value>" : stdgo.GoString);
/**
    
    
    
**/
final _eof : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Numerical elements
    
    
**/
final _binaryDigits : stdgo.GoString = ("01" : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _octalDigits : stdgo.GoString = ("01234567" : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _decimalDigits : stdgo.GoString = ("0123456789" : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _hexadecimalDigits : stdgo.GoString = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _sign : stdgo.GoString = ("+-" : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _period : stdgo.GoString = ("." : stdgo.GoString);
/**
    // Numerical elements
    
    
**/
final _exponent : stdgo.GoString = ("eEpP" : stdgo.GoString);
/**
    
    
    
**/
final _floatVerbs : stdgo.GoString = ("beEfFgGv" : stdgo.GoString);
/**
    
    
    
**/
final _hugeWid : stdgo.StdGoTypes.GoUInt64 = (1073741824i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _intBits : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _uintptrBits : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // State represents the printer state passed to custom formatters.
    // It provides access to the io.Writer interface plus information about
    // the flags and options for the operand's format specifier.
    
    
**/
typedef State = stdgo.StdGoTypes.StructType & {
    /**
        // Write is the function to call to emit formatted output to be printed.
        
        
    **/
    public dynamic function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
    /**
        // Width returns the value of the width option and whether it has been set.
        
        
    **/
    public dynamic function width():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; };
    /**
        // Precision returns the value of the precision option and whether it has been set.
        
        
    **/
    public dynamic function precision():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; };
    /**
        // Flag reports whether the flag c, a character, has been set.
        
        
    **/
    public dynamic function flag(_c:stdgo.StdGoTypes.GoInt):Bool;
};
/**
    // Formatter is implemented by any value that has a Format method.
    // The implementation controls how State and rune are interpreted,
    // and may call Sprint() or Fprint(f) etc. to generate its output.
    
    
**/
typedef Formatter = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function format(_f:State, _verb:stdgo.StdGoTypes.GoRune):Void;
};
/**
    // Stringer is implemented by any value that has a String method,
    // which defines the “native” format for that value.
    // The String method is used to print values passed as an operand
    // to any format that accepts a string or to an unformatted printer
    // such as Print.
    
    
**/
typedef Stringer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
/**
    // GoStringer is implemented by any value that has a GoString method,
    // which defines the Go syntax for that value.
    // The GoString method is used to print values passed as an operand
    // to a %#v format.
    
    
**/
typedef GoStringer = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function goString():stdgo.GoString;
};
/**
    // ScanState represents the scanner state passed to custom scanners.
    // Scanners may do rune-at-a-time scanning or ask the ScanState
    // to discover the next space-delimited token.
    
    
**/
typedef ScanState = stdgo.StdGoTypes.StructType & {
    /**
        // ReadRune reads the next rune (Unicode code point) from the input.
        // If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will
        // return EOF after returning the first '\n' or when reading beyond
        // the specified width.
        
        
    **/
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; };
    /**
        // UnreadRune causes the next call to ReadRune to return the same rune.
        
        
    **/
    public dynamic function unreadRune():stdgo.Error;
    /**
        // SkipSpace skips space in the input. Newlines are treated appropriately
        // for the operation being performed; see the package documentation
        // for more information.
        
        
    **/
    public dynamic function skipSpace():Void;
    /**
        // Token skips space in the input if skipSpace is true, then returns the
        // run of Unicode code points c satisfying f(c).  If f is nil,
        // !unicode.IsSpace(c) is used; that is, the token will hold non-space
        // characters. Newlines are treated appropriately for the operation being
        // performed; see the package documentation for more information.
        // The returned slice points to shared data that may be overwritten
        // by the next call to Token, a call to a Scan function using the ScanState
        // as input, or when the calling Scan method returns.
        
        
    **/
    public dynamic function token(_skipSpace:Bool, _f:stdgo.StdGoTypes.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; };
    /**
        // Width returns the value of the width option and whether it has been set.
        // The unit is Unicode code points.
        
        
    **/
    public dynamic function width():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; };
    /**
        // Because ReadRune is implemented by the interface, Read should never be
        // called by the scanning routines and a valid implementation of
        // ScanState may choose always to return an error from Read.
        
        
    **/
    public dynamic function read(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; };
};
/**
    // Scanner is implemented by any value that has a Scan method, which scans
    // the input for the representation of a value and stores the result in the
    // receiver, which must be a pointer to be useful. The Scan method is called
    // for any argument to Scan, Scanf, or Scanln that implements it.
    
    
**/
typedef Scanner = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function scan(_state:ScanState, _verb:stdgo.StdGoTypes.GoRune):stdgo.Error;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_wrapError_static_extension) class T_wrapError {
    public var _msg : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_msg:stdgo.GoString, ?_err:stdgo.Error) {
        if (_msg != null) this._msg = _msg;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapError(_msg, _err);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_wrapErrors_static_extension) class T_wrapErrors {
    public var _msg : stdgo.GoString = "";
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_msg:stdgo.GoString, ?_errs:stdgo.Slice<stdgo.Error>) {
        if (_msg != null) this._msg = _msg;
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrapErrors(_msg, _errs);
    }
}
/**
    // flags placed in a separate struct for easy clearing.
    
    
**/
@:structInit @:private class T_fmtFlags {
    public var _widPresent : Bool = false;
    public var _precPresent : Bool = false;
    public var _minus : Bool = false;
    public var _plus : Bool = false;
    public var _sharp : Bool = false;
    public var _space : Bool = false;
    public var _zero : Bool = false;
    /**
        // For the formats %+v %#v, we set the plusV/sharpV flags
        // and clear the plus/sharp flags since %+v and %#v are in effect
        // different, flagless formats set at the top level.
    **/
    public var _plusV : Bool = false;
    public var _sharpV : Bool = false;
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) {
        if (_widPresent != null) this._widPresent = _widPresent;
        if (_precPresent != null) this._precPresent = _precPresent;
        if (_minus != null) this._minus = _minus;
        if (_plus != null) this._plus = _plus;
        if (_sharp != null) this._sharp = _sharp;
        if (_space != null) this._space = _space;
        if (_zero != null) this._zero = _zero;
        if (_plusV != null) this._plusV = _plusV;
        if (_sharpV != null) this._sharpV = _sharpV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    }
}
/**
    // A fmt is the raw formatter used by Printf etc.
    // It prints into a buffer that must be set up separately.
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_fmt_static_extension) class T_fmt {
    public var _buf : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_buffer> = (null : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_buffer>);
    @:embedded
    public var _fmtFlags : stdgo.fmt.Fmt.T_fmtFlags = ({} : stdgo.fmt.Fmt.T_fmtFlags);
    public var _wid : stdgo.StdGoTypes.GoInt = 0;
    public var _prec : stdgo.StdGoTypes.GoInt = 0;
    /**
        // intbuf is large enough to store %b of an int64 with a sign and
        // avoids padding at the end of the struct on 32 bit architectures.
    **/
    public var _intbuf : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 68) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?_buf:stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_buffer>, ?_fmtFlags:stdgo.fmt.Fmt.T_fmtFlags, ?_wid:stdgo.StdGoTypes.GoInt, ?_prec:stdgo.StdGoTypes.GoInt, ?_intbuf:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (_buf != null) this._buf = _buf;
        if (_fmtFlags != null) this._fmtFlags = _fmtFlags;
        if (_wid != null) this._wid = _wid;
        if (_prec != null) this._prec = _prec;
        if (_intbuf != null) this._intbuf = _intbuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fmt(_buf, _fmtFlags, _wid, _prec, _intbuf);
    }
}
/**
    // pp is used to store a printer's state and is reused with sync.Pool to avoid allocations.
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_pp_static_extension) class T_pp {
    public var _buf : stdgo.fmt.Fmt.T_buffer = new stdgo.fmt.Fmt.T_buffer(0, 0);
    /**
        // arg holds the current item, as an interface{}.
    **/
    public var _arg : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    /**
        // value is used instead of arg for reflect values.
    **/
    public var _value : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    /**
        // fmt is used to format basic items such as integers or strings.
    **/
    public var _fmt : stdgo.fmt.Fmt.T_fmt = ({} : stdgo.fmt.Fmt.T_fmt);
    /**
        // reordered records whether the format string used argument reordering.
    **/
    public var _reordered : Bool = false;
    /**
        // goodArgNum records whether the most recent reordering directive was valid.
    **/
    public var _goodArgNum : Bool = false;
    /**
        // panicking is set by catchPanic to avoid infinite panic, recover, panic, ... recursion.
    **/
    public var _panicking : Bool = false;
    /**
        // erroring is set when printing an error string to guard against calling handleMethods.
    **/
    public var _erroring : Bool = false;
    /**
        // wrapErrs is set when the format string may contain a %w verb.
    **/
    public var _wrapErrs : Bool = false;
    /**
        // wrappedErrs records the targets of the %w verb.
    **/
    public var _wrappedErrs : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public function new(?_buf:stdgo.fmt.Fmt.T_buffer, ?_arg:stdgo.StdGoTypes.AnyInterface, ?_value:stdgo.reflect.Reflect.Value, ?_fmt:stdgo.fmt.Fmt.T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:stdgo.Slice<stdgo.StdGoTypes.GoInt>) {
        if (_buf != null) this._buf = _buf;
        if (_arg != null) this._arg = _arg;
        if (_value != null) this._value = _value;
        if (_fmt != null) this._fmt = _fmt;
        if (_reordered != null) this._reordered = _reordered;
        if (_goodArgNum != null) this._goodArgNum = _goodArgNum;
        if (_panicking != null) this._panicking = _panicking;
        if (_erroring != null) this._erroring = _erroring;
        if (_wrapErrs != null) this._wrapErrs = _wrapErrs;
        if (_wrappedErrs != null) this._wrappedErrs = _wrappedErrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, _wrappedErrs);
    }
}
/**
    // scanError represents an error generated by the scanning software.
    // It's used as a unique signature to identify such errors when recovering.
    
    
**/
@:structInit @:private class T_scanError {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanError(_err);
    }
}
/**
    // ss is the internal implementation of ScanState.
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_ss_static_extension) class T_ss {
    public var _rs : stdgo.io.Io.RuneScanner = (null : stdgo.io.Io.RuneScanner);
    public var _buf : stdgo.fmt.Fmt.T_buffer = new stdgo.fmt.Fmt.T_buffer(0, 0);
    public var _count : stdgo.StdGoTypes.GoInt = 0;
    public var _atEOF : Bool = false;
    @:embedded
    public var _ssave : stdgo.fmt.Fmt.T_ssave = ({} : stdgo.fmt.Fmt.T_ssave);
    public function new(?_rs:stdgo.io.Io.RuneScanner, ?_buf:stdgo.fmt.Fmt.T_buffer, ?_count:stdgo.StdGoTypes.GoInt, ?_atEOF:Bool, ?_ssave:stdgo.fmt.Fmt.T_ssave) {
        if (_rs != null) this._rs = _rs;
        if (_buf != null) this._buf = _buf;
        if (_count != null) this._count = _count;
        if (_atEOF != null) this._atEOF = _atEOF;
        if (_ssave != null) this._ssave = _ssave;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ss(_rs, _buf, _count, _atEOF, _ssave);
    }
}
/**
    // ssave holds the parts of ss that need to be
    // saved and restored on recursive scans.
    
    
**/
@:structInit @:private class T_ssave {
    public var _validSave : Bool = false;
    public var _nlIsEnd : Bool = false;
    public var _nlIsSpace : Bool = false;
    public var _argLimit : stdgo.StdGoTypes.GoInt = 0;
    public var _limit : stdgo.StdGoTypes.GoInt = 0;
    public var _maxWid : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:stdgo.StdGoTypes.GoInt, ?_limit:stdgo.StdGoTypes.GoInt, ?_maxWid:stdgo.StdGoTypes.GoInt) {
        if (_validSave != null) this._validSave = _validSave;
        if (_nlIsEnd != null) this._nlIsEnd = _nlIsEnd;
        if (_nlIsSpace != null) this._nlIsSpace = _nlIsSpace;
        if (_argLimit != null) this._argLimit = _argLimit;
        if (_limit != null) this._limit = _limit;
        if (_maxWid != null) this._maxWid = _maxWid;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    }
}
/**
    // readRune is a structure to enable reading UTF-8 encoded code points
    // from an io.Reader. It is used if the Reader given to the scanner does
    // not already implement io.RuneScanner.
    
    
**/
@:structInit @:private @:using(stdgo.fmt.Fmt.T_readRune_static_extension) class T_readRune {
    public var _reader : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _buf : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var _pending : stdgo.StdGoTypes.GoInt = 0;
    public var _pendBuf : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var _peekRune : stdgo.StdGoTypes.GoInt32 = 0;
    public function new(?_reader:stdgo.io.Io.Reader, ?_buf:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?_pending:stdgo.StdGoTypes.GoInt, ?_pendBuf:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?_peekRune:stdgo.StdGoTypes.GoInt32) {
        if (_reader != null) this._reader = _reader;
        if (_buf != null) this._buf = _buf;
        if (_pending != null) this._pending = _pending;
        if (_pendBuf != null) this._pendBuf = _pendBuf;
        if (_peekRune != null) this._peekRune = _peekRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readRune(_reader, _buf, _pending, _pendBuf, _peekRune);
    }
}
/**
    // Use simple []byte instead of bytes.Buffer to avoid large dependency.
**/
@:named @:using(stdgo.fmt.Fmt.T_buffer_static_extension) typedef T_buffer = stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
@:named @:using(stdgo.fmt.Fmt.T_stringReader_static_extension) typedef T_stringReader = stdgo.GoString;
/**
    // Errorf formats according to a format specifier and returns the string as a
    // value that satisfies error.
    //
    // If the format specifier includes a %w verb with an error operand,
    // the returned error will implement an Unwrap method returning the operand.
    // If there is more than one %w verb, the returned error will implement an
    // Unwrap method returning a []error containing all the %w operands in the
    // order they appear in the arguments.
    // It is invalid to supply the %w verb with an operand that does not implement
    // the error interface. The %w verb is otherwise a synonym for %v.
**/
function errorf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._wrapErrs = true;
        _p._doPrintf(_format?.__copy__(), _a);
        var _s:stdgo.GoString = (_p._buf : stdgo.GoString)?.__copy__();
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = (_p._wrappedErrs.length);
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                _err = stdgo.errors.Errors.new_(_s?.__copy__());
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                var _w = (stdgo.Go.setRef(({ _msg : _s?.__copy__() } : stdgo.fmt.Fmt.T_wrapError)) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_wrapError>);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_a[(_p._wrappedErrs[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    };
                    _w._err = __tmp__._0;
                };
                _err = stdgo.Go.asInterface(_w);
            } else {
                if (_p._reordered) {
                    stdgo.sort.Sort.ints(_p._wrappedErrs);
                };
                var _errs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
                for (_i => _argNum in _p._wrappedErrs) {
                    if ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_p._wrappedErrs[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == _argNum)) {
                        continue;
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.StdGoTypes.GoInt)] : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _errs = (_errs.__append__(_e));
                        };
                    };
                };
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.fmt.Fmt.T_wrapErrors(_s?.__copy__(), _errs) : stdgo.fmt.Fmt.T_wrapErrors)) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_wrapErrors>));
            };
        };
        _p._free();
        return _err;
    }
/**
    // FormatString returns a string representing the fully qualified formatting
    // directive captured by the State, followed by the argument verb. (State does not
    // itself contain the verb.) The result has a leading percent sign followed by any
    // flags, the width, and the precision. Missing flags, width, and precision are
    // omitted. This function allows a Formatter to reconstruct the original
    // directive triggering the call to Format.
**/
function formatString(_state:State, _verb:stdgo.StdGoTypes.GoRune):stdgo.GoString {
        var _tmp:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 16) (0 : stdgo.StdGoTypes.GoUInt8)]);
        var _b = ((_tmp.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__append__((37 : stdgo.StdGoTypes.GoUInt8)));
        for (__0 => _c in (" +-#0" : stdgo.GoString)) {
            if (_state.flag((_c : stdgo.StdGoTypes.GoInt))) {
                _b = (_b.__append__((_c : stdgo.StdGoTypes.GoByte)));
            };
        };
        {
            var __tmp__ = _state.width(), _w:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = stdgo.strconv.Strconv.appendInt(_b, (_w : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
            };
        };
        {
            var __tmp__ = _state.precision(), _p:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = (_b.__append__((46 : stdgo.StdGoTypes.GoUInt8)));
                _b = stdgo.strconv.Strconv.appendInt(_b, (_p : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
            };
        };
        _b = stdgo.unicode.utf8.Utf8.appendRune(_b, _verb);
        return (_b : stdgo.GoString)?.__copy__();
    }
/**
    // newPrinter allocates a new pp struct or grabs a cached one.
**/
function _newPrinter():stdgo.StdGoTypes.Ref<T_pp> {
        var _p = (stdgo.Go.typeAssert((_ppFree.get() : stdgo.StdGoTypes.Ref<T_pp>)) : stdgo.StdGoTypes.Ref<T_pp>);
        _p._panicking = false;
        _p._erroring = false;
        _p._wrapErrs = false;
        _p._fmt._init((stdgo.Go.setRef(_p._buf) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_buffer>));
        return _p;
    }
/**
    // Fprintf formats according to a format specifier and writes to w.
    // It returns the number of bytes written and any write error encountered.
**/
function fprintf(_w:stdgo.io.Io.Writer, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
/**
    // Printf formats according to a format specifier and writes to standard output.
    // It returns the number of bytes written and any write error encountered.
**/
function printf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fprintf(stdgo.Go.asInterface(stdgo.os.Os.stdout), _format?.__copy__(), ..._a.__toArray__());
    }
/**
    // Sprintf formats according to a format specifier and returns the resulting string.
**/
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        var _s:stdgo.GoString = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
/**
    // Appendf formats according to a format specifier, appends the result to the byte
    // slice, and returns the updated slice.
**/
function appendf(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintf(_format?.__copy__(), _a);
        _b = (_b.__append__(..._p._buf.__toArray__()));
        _p._free();
        return _b;
    }
/**
    // Fprint formats using the default formats for its operands and writes to w.
    // Spaces are added between operands when neither is a string.
    // It returns the number of bytes written and any write error encountered.
**/
function fprint(_w:stdgo.io.Io.Writer, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrint(_a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
/**
    // Print formats using the default formats for its operands and writes to standard output.
    // Spaces are added between operands when neither is a string.
    // It returns the number of bytes written and any write error encountered.
**/
function print(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fprint(stdgo.Go.asInterface(stdgo.os.Os.stdout), ..._a.__toArray__());
    }
/**
    // Sprint formats using the default formats for its operands and returns the resulting string.
    // Spaces are added between operands when neither is a string.
**/
function sprint(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrint(_a);
        var _s:stdgo.GoString = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
/**
    // Append formats using the default formats for its operands, appends the result to
    // the byte slice, and returns the updated slice.
**/
function append(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrint(_a);
        _b = (_b.__append__(..._p._buf.__toArray__()));
        _p._free();
        return _b;
    }
/**
    // Fprintln formats using the default formats for its operands and writes to w.
    // Spaces are always added between operands and a newline is appended.
    // It returns the number of bytes written and any write error encountered.
**/
function fprintln(_w:stdgo.io.Io.Writer, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        {
            var __tmp__ = _w.write(_p._buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _p._free();
        return { _0 : _n, _1 : _err };
    }
/**
    // Println formats using the default formats for its operands and writes to standard output.
    // Spaces are always added between operands and a newline is appended.
    // It returns the number of bytes written and any write error encountered.
**/
function println(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fprintln(stdgo.Go.asInterface(stdgo.os.Os.stdout), ..._a.__toArray__());
    }
/**
    // Sprintln formats using the default formats for its operands and returns the resulting string.
    // Spaces are always added between operands and a newline is appended.
**/
function sprintln(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        var _s:stdgo.GoString = (_p._buf : stdgo.GoString)?.__copy__();
        _p._free();
        return _s?.__copy__();
    }
/**
    // Appendln formats using the default formats for its operands, appends the result
    // to the byte slice, and returns the updated slice. Spaces are always added
    // between operands and a newline is appended.
**/
function appendln(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _p = _newPrinter();
        _p._doPrintln(_a);
        _b = (_b.__append__(..._p._buf.__toArray__()));
        _p._free();
        return _b;
    }
/**
    // getField gets the i'th field of the struct value.
    // If the field is itself is an interface, return a value for
    // the thing inside the interface, not the interface itself.
**/
function _getField(_v:stdgo.reflect.Reflect.Value, _i:stdgo.StdGoTypes.GoInt):stdgo.reflect.Reflect.Value {
        var _val:stdgo.reflect.Reflect.Value = _v.field(_i)?.__copy__();
        if ((_val.kind() == (20u32 : stdgo.reflect.Reflect.Kind)) && !_val.isNil()) {
            _val = _val.elem()?.__copy__();
        };
        return _val?.__copy__();
    }
/**
    // tooLarge reports whether the magnitude of the integer is
    // too large to be used as a formatting width or precision.
**/
function _tooLarge(_x:stdgo.StdGoTypes.GoInt):Bool {
        {};
        return (_x > (1000000 : stdgo.StdGoTypes.GoInt)) || (_x < (-1000000 : stdgo.StdGoTypes.GoInt));
    }
/**
    // parsenum converts ASCII to integer.  num is 0 (and isnum is false) if no number present.
**/
function _parsenum(_s:stdgo.GoString, _start:stdgo.StdGoTypes.GoInt, _end:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; var _2 : stdgo.StdGoTypes.GoInt; } {
        var _num:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _isnum:Bool = false, _newi:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        if (_start >= _end) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false, _2 : _end };
        };
        {
            _newi = _start;
            stdgo.Go.cfor(((_newi < _end) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(_newi : stdgo.StdGoTypes.GoInt)])) && (_s[(_newi : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8)), _newi++, {
                if (_tooLarge(_num)) {
                    return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false, _2 : _end };
                };
                _num = (_num * (10 : stdgo.StdGoTypes.GoInt)) + (_s[(_newi : stdgo.StdGoTypes.GoInt)] - (48 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt);
                _isnum = true;
            });
        };
        return { _0 : _num, _1 : _isnum, _2 : _newi };
    }
/**
    // intFromArg gets the argNumth element of a. On return, isInt reports whether the argument has integer type.
**/
function _intFromArg(_a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>, _argNum:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; var _2 : stdgo.StdGoTypes.GoInt; } {
        var _num:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _isInt:Bool = false, _newArgNum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        _newArgNum = _argNum;
        if (_argNum < (_a.length)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false };
                };
                _num = __tmp__._0;
                _isInt = __tmp__._1;
            };
            if (!_isInt) {
                {
                    var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_a[(_argNum : stdgo.StdGoTypes.GoInt)])?.__copy__();
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                            var _n:stdgo.StdGoTypes.GoInt64 = _v.int_();
                            if (((_n : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64) == (_n)) {
                                _num = (_n : stdgo.StdGoTypes.GoInt);
                                _isInt = true;
                            };
                        } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                            var _n:stdgo.StdGoTypes.GoUInt64 = _v.uint();
                            if (((_n : stdgo.StdGoTypes.GoInt64) >= (0i64 : stdgo.StdGoTypes.GoInt64)) && (((_n : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt64) == _n)) {
                                _num = (_n : stdgo.StdGoTypes.GoInt);
                                _isInt = true;
                            };
                        } else {};
                    };
                };
            };
            _newArgNum = _argNum + (1 : stdgo.StdGoTypes.GoInt);
            if (_tooLarge(_num)) {
                _num = (0 : stdgo.StdGoTypes.GoInt);
                _isInt = false;
            };
        };
        return { _0 : _num, _1 : _isInt, _2 : _newArgNum };
    }
/**
    // parseArgNumber returns the value of the bracketed number, minus 1
    // (explicit argument numbers are one-indexed but we want zero-indexed).
    // The opening bracket is known to be present at format[0].
    // The returned values are the index, the number of bytes to consume
    // up to the closing paren, if present, and whether the number parsed
    // ok. The bytes to consume will be 1 if no closing paren is present.
**/
function _parseArgNumber(_format:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : Bool; } {
        var _index:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _wid:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _ok:Bool = false;
        if ((_format.length) < (3 : stdgo.StdGoTypes.GoInt)) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (1 : stdgo.StdGoTypes.GoInt), _2 : false };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_format.length), _i++, {
                if (_format[(_i : stdgo.StdGoTypes.GoInt)] == ((93 : stdgo.StdGoTypes.GoUInt8))) {
                    var __tmp__ = _parsenum(_format?.__copy__(), (1 : stdgo.StdGoTypes.GoInt), _i), _width:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1, _newi:stdgo.StdGoTypes.GoInt = __tmp__._2;
                    if (!_ok || (_newi != _i)) {
                        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _i + (1 : stdgo.StdGoTypes.GoInt), _2 : false };
                    };
                    return { _0 : _width - (1 : stdgo.StdGoTypes.GoInt), _1 : _i + (1 : stdgo.StdGoTypes.GoInt), _2 : true };
                };
            });
        };
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : (1 : stdgo.StdGoTypes.GoInt), _2 : false };
    }
/**
    // Scan scans text read from standard input, storing successive
    // space-separated values into successive arguments. Newlines count
    // as space. It returns the number of items successfully scanned.
    // If that is less than the number of arguments, err will report why.
**/
function scan(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscan(stdgo.Go.asInterface(stdgo.os.Os.stdin), ..._a.__toArray__());
    }
/**
    // Scanln is similar to Scan, but stops scanning at a newline and
    // after the final item there must be a newline or EOF.
**/
function scanln(_a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscanln(stdgo.Go.asInterface(stdgo.os.Os.stdin), ..._a.__toArray__());
    }
/**
    // Scanf scans text read from standard input, storing successive
    // space-separated values into successive arguments as determined by
    // the format. It returns the number of items successfully scanned.
    // If that is less than the number of arguments, err will report why.
    // Newlines in the input must match newlines in the format.
    // The one exception: the verb %c always scans the next rune in the
    // input, even if it is a space (or tab etc.) or newline.
**/
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscanf(stdgo.Go.asInterface(stdgo.os.Os.stdin), _format?.__copy__(), ..._a.__toArray__());
    }
/**
    // Sscan scans the argument string, storing successive space-separated
    // values into successive arguments. Newlines count as space. It
    // returns the number of items successfully scanned. If that is less
    // than the number of arguments, err will report why.
**/
function sscan(_str:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscan(stdgo.Go.asInterface(new stdgo.Pointer<stdgo.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo.fmt.Fmt.T_stringReader))), ..._a.__toArray__());
    }
/**
    // Sscanln is similar to Sscan, but stops scanning at a newline and
    // after the final item there must be a newline or EOF.
**/
function sscanln(_str:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscanln(stdgo.Go.asInterface(new stdgo.Pointer<stdgo.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo.fmt.Fmt.T_stringReader))), ..._a.__toArray__());
    }
/**
    // Sscanf scans the argument string, storing successive space-separated
    // values into successive arguments as determined by the format. It
    // returns the number of items successfully parsed.
    // Newlines in the input must match newlines in the format.
**/
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return fscanf(stdgo.Go.asInterface(new stdgo.Pointer<stdgo.fmt.Fmt.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo.fmt.Fmt.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo.fmt.Fmt.T_stringReader))), _format?.__copy__(), ..._a.__toArray__());
    }
/**
    // Fscan scans text read from r, storing successive space-separated
    // values into successive arguments. Newlines count as space. It
    // returns the number of items successfully scanned. If that is less
    // than the number of arguments, err will report why.
**/
function fscan(_r:stdgo.io.Io.Reader, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, true, false), _s:stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
/**
    // Fscanln is similar to Fscan, but stops scanning at a newline and
    // after the final item there must be a newline or EOF.
**/
function fscanln(_r:stdgo.io.Io.Reader, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, false, true), _s:stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
/**
    // Fscanf scans text read from r, storing successive space-separated
    // values into successive arguments as determined by the format. It
    // returns the number of items successfully parsed.
    // Newlines in the input must match newlines in the format.
**/
function fscanf(_r:stdgo.io.Io.Reader, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _newScanState(_r, false, false), _s:stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_ss> = __tmp__._0, _old:stdgo.fmt.Fmt.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScanf(_format?.__copy__(), _a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
function _isSpace(_r:stdgo.StdGoTypes.GoRune):Bool {
        if (_r >= (65536 : stdgo.StdGoTypes.GoInt32)) {
            return false;
        };
        var _rx:stdgo.StdGoTypes.GoUInt16 = (_r : stdgo.StdGoTypes.GoUInt16);
        for (__0 => _rng in _space) {
            if (_rx < _rng[(0 : stdgo.StdGoTypes.GoInt)]) {
                return false;
            };
            if (_rx <= _rng[(1 : stdgo.StdGoTypes.GoInt)]) {
                return true;
            };
        };
        return false;
    }
/**
    // notSpace is the default scanning function used in Token.
**/
function _notSpace(_r:stdgo.StdGoTypes.GoRune):Bool {
        return !_isSpace(_r);
    }
/**
    // newScanState allocates a new ss struct or grab a cached one.
**/
function _newScanState(_r:stdgo.io.Io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{ var _0 : stdgo.StdGoTypes.Ref<T_ss>; var _1 : T_ssave; } {
        var _s:stdgo.StdGoTypes.Ref<T_ss> = (null : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_ss>), _old:T_ssave = ({} : stdgo.fmt.Fmt.T_ssave);
        _s = (stdgo.Go.typeAssert((_ssFree.get() : stdgo.StdGoTypes.Ref<T_ss>)) : stdgo.StdGoTypes.Ref<T_ss>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.io.Io.RuneScanner)) : stdgo.io.Io.RuneScanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.io.Io.RuneScanner), _1 : false };
            }, _rs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _s._rs = _rs;
            } else {
                _s._rs = stdgo.Go.asInterface((stdgo.Go.setRef(({ _reader : _r, _peekRune : (-1 : stdgo.StdGoTypes.GoInt32) } : stdgo.fmt.Fmt.T_readRune)) : stdgo.StdGoTypes.Ref<stdgo.fmt.Fmt.T_readRune>));
            };
        };
        _s._ssave._nlIsSpace = _nlIsSpace;
        _s._ssave._nlIsEnd = _nlIsEnd;
        _s._atEOF = false;
        _s._ssave._limit = (1073741824 : stdgo.StdGoTypes.GoInt);
        _s._ssave._argLimit = (1073741824 : stdgo.StdGoTypes.GoInt);
        _s._ssave._maxWid = (1073741824 : stdgo.StdGoTypes.GoInt);
        _s._ssave._validSave = true;
        _s._count = (0 : stdgo.StdGoTypes.GoInt);
        return { _0 : _s, _1 : _old };
    }
function _indexRune(_s:stdgo.GoString, _r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoInt {
        for (_i => _c in _s) {
            if (_c == (_r)) {
                return _i;
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
function _hasX(_s:stdgo.GoString):Bool {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                if ((_s[(_i : stdgo.StdGoTypes.GoInt)] == (120 : stdgo.StdGoTypes.GoUInt8)) || (_s[(_i : stdgo.StdGoTypes.GoInt)] == (88 : stdgo.StdGoTypes.GoUInt8))) {
                    return true;
                };
            });
        };
        return false;
    }
/**
    // hexDigit returns the value of the hexadecimal digit.
**/
function _hexDigit(_d:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        var _digit:stdgo.StdGoTypes.GoInt = (_d : stdgo.StdGoTypes.GoInt);
        {
            final __value__ = _digit;
            if (__value__ == ((48 : stdgo.StdGoTypes.GoInt)) || __value__ == ((49 : stdgo.StdGoTypes.GoInt)) || __value__ == ((50 : stdgo.StdGoTypes.GoInt)) || __value__ == ((51 : stdgo.StdGoTypes.GoInt)) || __value__ == ((52 : stdgo.StdGoTypes.GoInt)) || __value__ == ((53 : stdgo.StdGoTypes.GoInt)) || __value__ == ((54 : stdgo.StdGoTypes.GoInt)) || __value__ == ((55 : stdgo.StdGoTypes.GoInt)) || __value__ == ((56 : stdgo.StdGoTypes.GoInt)) || __value__ == ((57 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : _digit - (48 : stdgo.StdGoTypes.GoInt), _1 : true };
            } else if (__value__ == ((97 : stdgo.StdGoTypes.GoInt)) || __value__ == ((98 : stdgo.StdGoTypes.GoInt)) || __value__ == ((99 : stdgo.StdGoTypes.GoInt)) || __value__ == ((100 : stdgo.StdGoTypes.GoInt)) || __value__ == ((101 : stdgo.StdGoTypes.GoInt)) || __value__ == ((102 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : ((10 : stdgo.StdGoTypes.GoInt) + _digit) - (97 : stdgo.StdGoTypes.GoInt), _1 : true };
            } else if (__value__ == ((65 : stdgo.StdGoTypes.GoInt)) || __value__ == ((66 : stdgo.StdGoTypes.GoInt)) || __value__ == ((67 : stdgo.StdGoTypes.GoInt)) || __value__ == ((68 : stdgo.StdGoTypes.GoInt)) || __value__ == ((69 : stdgo.StdGoTypes.GoInt)) || __value__ == ((70 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : ((10 : stdgo.StdGoTypes.GoInt) + _digit) - (65 : stdgo.StdGoTypes.GoInt), _1 : true };
            };
        };
        return { _0 : (-1 : stdgo.StdGoTypes.GoInt), _1 : false };
    }
/**
    // errorHandler turns local panics into error returns.
**/
function _errorHandler(_errp:stdgo.StdGoTypes.Ref<stdgo.Error>):Void {
        {
            var _e:stdgo.StdGoTypes.AnyInterface = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_e != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : T_scanError)) : T_scanError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo.fmt.Fmt.T_scanError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _se._err;
                            _errp.error = __tmp__.error;
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _eof = __tmp__._0, _ok = __tmp__._1;
                        if (_ok && (stdgo.Go.toInterface(_eof) == stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                            {
                                var __tmp__ = _eof;
                                _errp.error = __tmp__.error;
                            };
                        } else {
                            throw stdgo.Go.toInterface(_e);
                        };
                    };
                };
            };
        };
    }
class T_wrapError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrapError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<T_wrapError>):stdgo.Error {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_wrapError> = _e;
        return _e._err;
    }
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_wrapError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_wrapError> = _e;
        return _e._msg?.__copy__();
    }
}
class T_wrapErrors_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Slice<stdgo.Error> return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_wrapErrors>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_wrapErrors_asInterface) class T_wrapErrors_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<T_wrapErrors>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_wrapErrors> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<T_wrapErrors>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_wrapErrors> = _e;
        return _e._msg?.__copy__();
    }
}
class T_fmt_asInterface {
    /**
        // fmtFloat formats a float64. It assumes that verb is a valid format specifier
        // for strconv.AppendFloat and therefore fits into a byte.
    **/
    @:keep
    public dynamic function _fmtFloat(_v:stdgo.StdGoTypes.GoFloat64, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune, _prec:stdgo.StdGoTypes.GoInt):Void __self__.value._fmtFloat(_v, _size, _verb, _prec);
    /**
        // fmtQc formats an integer as a single-quoted, escaped Go character constant.
        // If the character is not valid Unicode, it will print '\ufffd'.
    **/
    @:keep
    public dynamic function _fmtQc(_c:stdgo.StdGoTypes.GoUInt64):Void __self__.value._fmtQc(_c);
    /**
        // fmtC formats an integer as a Unicode character.
        // If the character is not valid Unicode, it will print '\ufffd'.
    **/
    @:keep
    public dynamic function _fmtC(_c:stdgo.StdGoTypes.GoUInt64):Void __self__.value._fmtC(_c);
    /**
        // fmtQ formats a string as a double-quoted, escaped Go string constant.
        // If f.sharp is set a raw (backquoted) string may be returned instead
        // if the string does not contain any control characters other than tab.
    **/
    @:keep
    public dynamic function _fmtQ(_s:stdgo.GoString):Void __self__.value._fmtQ(_s);
    /**
        // fmtBx formats a byte slice as a hexadecimal encoding of its bytes.
    **/
    @:keep
    public dynamic function _fmtBx(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _digits:stdgo.GoString):Void __self__.value._fmtBx(_b, _digits);
    /**
        // fmtSx formats a string as a hexadecimal encoding of its bytes.
    **/
    @:keep
    public dynamic function _fmtSx(_s:stdgo.GoString, _digits:stdgo.GoString):Void __self__.value._fmtSx(_s, _digits);
    /**
        // fmtSbx formats a string or byte slice as a hexadecimal encoding of its bytes.
    **/
    @:keep
    public dynamic function _fmtSbx(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _digits:stdgo.GoString):Void __self__.value._fmtSbx(_s, _b, _digits);
    /**
        // fmtBs formats the byte slice b as if it was formatted as string with fmtS.
    **/
    @:keep
    public dynamic function _fmtBs(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value._fmtBs(_b);
    /**
        // fmtS formats a string.
    **/
    @:keep
    public dynamic function _fmtS(_s:stdgo.GoString):Void __self__.value._fmtS(_s);
    /**
        // truncate truncates the byte slice b as a string of the specified precision, if present.
    **/
    @:keep
    public dynamic function _truncate(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value._truncate(_b);
    /**
        // truncateString truncates the string s to the specified precision, if present.
    **/
    @:keep
    public dynamic function _truncateString(_s:stdgo.GoString):stdgo.GoString return __self__.value._truncateString(_s);
    /**
        // fmtInteger formats signed and unsigned integers.
    **/
    @:keep
    public dynamic function _fmtInteger(_u:stdgo.StdGoTypes.GoUInt64, _base:stdgo.StdGoTypes.GoInt, _isSigned:Bool, _verb:stdgo.StdGoTypes.GoRune, _digits:stdgo.GoString):Void __self__.value._fmtInteger(_u, _base, _isSigned, _verb, _digits);
    /**
        // fmtUnicode formats a uint64 as "U+0078" or with f.sharp set as "U+0078 'x'".
    **/
    @:keep
    public dynamic function _fmtUnicode(_u:stdgo.StdGoTypes.GoUInt64):Void __self__.value._fmtUnicode(_u);
    /**
        // fmtBoolean formats a boolean.
    **/
    @:keep
    public dynamic function _fmtBoolean(_v:Bool):Void __self__.value._fmtBoolean(_v);
    /**
        // padString appends s to f.buf, padded on left (!f.minus) or right (f.minus).
    **/
    @:keep
    public dynamic function _padString(_s:stdgo.GoString):Void __self__.value._padString(_s);
    /**
        // pad appends b to f.buf, padded on left (!f.minus) or right (f.minus).
    **/
    @:keep
    public dynamic function _pad(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value._pad(_b);
    /**
        // writePadding generates n bytes of padding.
    **/
    @:keep
    public dynamic function _writePadding(_n:stdgo.StdGoTypes.GoInt):Void __self__.value._writePadding(_n);
    @:keep
    public dynamic function _init(_buf:stdgo.StdGoTypes.Ref<T_buffer>):Void __self__.value._init(_buf);
    @:keep
    public dynamic function _clearflags():Void __self__.value._clearflags();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fmt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_fmt_asInterface) class T_fmt_static_extension {
    /**
        // fmtFloat formats a float64. It assumes that verb is a valid format specifier
        // for strconv.AppendFloat and therefore fits into a byte.
    **/
    @:keep
    static public function _fmtFloat( _f:stdgo.StdGoTypes.Ref<T_fmt>, _v:stdgo.StdGoTypes.GoFloat64, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune, _prec:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            _prec = _f._prec;
        };
        var _num = stdgo.strconv.Strconv.appendFloat((_f._intbuf.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _v, (_verb : stdgo.StdGoTypes.GoByte), _prec, _size);
        if ((_num[(1 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8)) || (_num[(1 : stdgo.StdGoTypes.GoInt)] == (43 : stdgo.StdGoTypes.GoUInt8))) {
            _num = (_num.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        } else {
            _num[(0 : stdgo.StdGoTypes.GoInt)] = (43 : stdgo.StdGoTypes.GoUInt8);
        };
        if ((_f._fmtFlags._space && (_num[(0 : stdgo.StdGoTypes.GoInt)] == (43 : stdgo.StdGoTypes.GoUInt8))) && !_f._fmtFlags._plus) {
            _num[(0 : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
        };
        if ((_num[(1 : stdgo.StdGoTypes.GoInt)] == (73 : stdgo.StdGoTypes.GoUInt8)) || (_num[(1 : stdgo.StdGoTypes.GoInt)] == (78 : stdgo.StdGoTypes.GoUInt8))) {
            var _oldZero:Bool = _f._fmtFlags._zero;
            _f._fmtFlags._zero = false;
            if (((_num[(1 : stdgo.StdGoTypes.GoInt)] == (78 : stdgo.StdGoTypes.GoUInt8)) && !_f._fmtFlags._space) && !_f._fmtFlags._plus) {
                _num = (_num.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
            _f._pad(_num);
            _f._fmtFlags._zero = _oldZero;
            return;
        };
        if (_f._fmtFlags._sharp && (_verb != (98 : stdgo.StdGoTypes.GoInt32))) {
            var _digits:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            {
                final __value__ = _verb;
                if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((103 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((71 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32))) {
                    _digits = _prec;
                    if (_digits == ((-1 : stdgo.StdGoTypes.GoInt))) {
                        _digits = (6 : stdgo.StdGoTypes.GoInt);
                    };
                };
            };
            var _tailBuf:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 6) (0 : stdgo.StdGoTypes.GoUInt8)]);
            var _tail = (_tailBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var _hasDecimalPoint:Bool = false;
            var _sawNonzeroDigit:Bool = false;
            {
                var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (_num.length), _i++, {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _num[(_i : stdgo.StdGoTypes.GoInt)];
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (46 : stdgo.StdGoTypes.GoUInt8)))) {
                                    _hasDecimalPoint = true;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((112 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((80 : stdgo.StdGoTypes.GoUInt8))))) {
                                    _tail = (_tail.__append__(...(_num.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                                    _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((101 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((69 : stdgo.StdGoTypes.GoUInt8))))) {
                                    if ((_verb != (120 : stdgo.StdGoTypes.GoInt32)) && (_verb != (88 : stdgo.StdGoTypes.GoInt32))) {
                                        _tail = (_tail.__append__(...(_num.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                                        _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                                        break;
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    if (_num[(_i : stdgo.StdGoTypes.GoInt)] != ((48 : stdgo.StdGoTypes.GoUInt8))) {
                                        _sawNonzeroDigit = true;
                                    };
                                    if (_sawNonzeroDigit) {
                                        _digits--;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
            };
            if (!_hasDecimalPoint) {
                if ((_num.length == (2 : stdgo.StdGoTypes.GoInt)) && (_num[(1 : stdgo.StdGoTypes.GoInt)] == (48 : stdgo.StdGoTypes.GoUInt8))) {
                    _digits--;
                };
                _num = (_num.__append__((46 : stdgo.StdGoTypes.GoUInt8)));
            };
            while (_digits > (0 : stdgo.StdGoTypes.GoInt)) {
                _num = (_num.__append__((48 : stdgo.StdGoTypes.GoUInt8)));
                _digits--;
            };
            _num = (_num.__append__(..._tail.__toArray__()));
        };
        if (_f._fmtFlags._plus || (_num[(0 : stdgo.StdGoTypes.GoInt)] != (43 : stdgo.StdGoTypes.GoUInt8))) {
            if ((_f._fmtFlags._zero && _f._fmtFlags._widPresent) && (_f._wid > _num.length)) {
                _f._buf._writeByte(_num[(0 : stdgo.StdGoTypes.GoInt)]);
                _f._writePadding(_f._wid - (_num.length));
                _f._buf._write((_num.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                return;
            };
            _f._pad(_num);
            return;
        };
        _f._pad((_num.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
    }
    /**
        // fmtQc formats an integer as a single-quoted, escaped Go character constant.
        // If the character is not valid Unicode, it will print '\ufffd'.
    **/
    @:keep
    static public function _fmtQc( _f:stdgo.StdGoTypes.Ref<T_fmt>, _c:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        var _r:stdgo.StdGoTypes.GoInt32 = (_c : stdgo.StdGoTypes.GoRune);
        if (_c > (1114111i64 : stdgo.StdGoTypes.GoUInt64)) {
            _r = (65533 : stdgo.StdGoTypes.GoInt32);
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        if (_f._fmtFlags._plus) {
            _f._pad(stdgo.strconv.Strconv.appendQuoteRuneToASCII(_buf, _r));
        } else {
            _f._pad(stdgo.strconv.Strconv.appendQuoteRune(_buf, _r));
        };
    }
    /**
        // fmtC formats an integer as a Unicode character.
        // If the character is not valid Unicode, it will print '\ufffd'.
    **/
    @:keep
    static public function _fmtC( _f:stdgo.StdGoTypes.Ref<T_fmt>, _c:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        var _r:stdgo.StdGoTypes.GoInt32 = (_c : stdgo.StdGoTypes.GoRune);
        if (_c > (1114111i64 : stdgo.StdGoTypes.GoUInt64)) {
            _r = (65533 : stdgo.StdGoTypes.GoInt32);
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _f._pad(stdgo.unicode.utf8.Utf8.appendRune(_buf, _r));
    }
    /**
        // fmtQ formats a string as a double-quoted, escaped Go string constant.
        // If f.sharp is set a raw (backquoted) string may be returned instead
        // if the string does not contain any control characters other than tab.
    **/
    @:keep
    static public function _fmtQ( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _s = _f._truncateString(_s?.__copy__())?.__copy__();
        if (_f._fmtFlags._sharp && stdgo.strconv.Strconv.canBackquote(_s?.__copy__())) {
            _f._padString(("`" : stdgo.GoString) + _s?.__copy__() + ("`" : stdgo.GoString)?.__copy__()?.__copy__());
            return;
        };
        var _buf = (_f._intbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        if (_f._fmtFlags._plus) {
            _f._pad(stdgo.strconv.Strconv.appendQuoteToASCII(_buf, _s?.__copy__()));
        } else {
            _f._pad(stdgo.strconv.Strconv.appendQuote(_buf, _s?.__copy__()));
        };
    }
    /**
        // fmtBx formats a byte slice as a hexadecimal encoding of its bytes.
    **/
    @:keep
    static public function _fmtBx( _f:stdgo.StdGoTypes.Ref<T_fmt>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _f._fmtSbx(stdgo.Go.str()?.__copy__(), _b, _digits?.__copy__());
    }
    /**
        // fmtSx formats a string as a hexadecimal encoding of its bytes.
    **/
    @:keep
    static public function _fmtSx( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _f._fmtSbx(_s?.__copy__(), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _digits?.__copy__());
    }
    /**
        // fmtSbx formats a string or byte slice as a hexadecimal encoding of its bytes.
    **/
    @:keep
    static public function _fmtSbx( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        var _length:stdgo.StdGoTypes.GoInt = (_b.length);
        if (_b == null) {
            _length = (_s.length);
        };
        if (_f._fmtFlags._precPresent && (_f._prec < _length)) {
            _length = _f._prec;
        };
        var _width:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt) * _length;
        if (_width > (0 : stdgo.StdGoTypes.GoInt)) {
            if (_f._fmtFlags._space) {
                if (_f._fmtFlags._sharp) {
                    _width = _width * ((2 : stdgo.StdGoTypes.GoInt));
                };
                _width = _width + (_length - (1 : stdgo.StdGoTypes.GoInt));
            } else if (_f._fmtFlags._sharp) {
                _width = _width + ((2 : stdgo.StdGoTypes.GoInt));
            };
        } else {
            if (_f._fmtFlags._widPresent) {
                _f._writePadding(_f._wid);
            };
            return;
        };
        if ((_f._fmtFlags._widPresent && (_f._wid > _width)) && !_f._fmtFlags._minus) {
            _f._writePadding(_f._wid - _width);
        };
        var _buf:stdgo.fmt.Fmt.T_buffer = (_f._buf : stdgo.fmt.Fmt.T_buffer);
        if (_f._fmtFlags._sharp) {
            _buf = (_buf.__append__((48 : stdgo.StdGoTypes.GoUInt8), _digits[(16 : stdgo.StdGoTypes.GoInt)]));
        };
        var _c:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _length, _i++, {
                if (_f._fmtFlags._space && (_i > (0 : stdgo.StdGoTypes.GoInt))) {
                    _buf = (_buf.__append__((32 : stdgo.StdGoTypes.GoUInt8)));
                    if (_f._fmtFlags._sharp) {
                        _buf = (_buf.__append__((48 : stdgo.StdGoTypes.GoUInt8), _digits[(16 : stdgo.StdGoTypes.GoInt)]));
                    };
                };
                if (_b != null) {
                    _c = _b[(_i : stdgo.StdGoTypes.GoInt)];
                } else {
                    _c = _s[(_i : stdgo.StdGoTypes.GoInt)];
                };
                _buf = (_buf.__append__(_digits[(_c >> (4i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)], _digits[(_c & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
            });
        };
        _f._buf.__setData__(_buf);
        if ((_f._fmtFlags._widPresent && (_f._wid > _width)) && _f._fmtFlags._minus) {
            _f._writePadding(_f._wid - _width);
        };
    }
    /**
        // fmtBs formats the byte slice b as if it was formatted as string with fmtS.
    **/
    @:keep
    static public function _fmtBs( _f:stdgo.StdGoTypes.Ref<T_fmt>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _b = _f._truncate(_b);
        _f._pad(_b);
    }
    /**
        // fmtS formats a string.
    **/
    @:keep
    static public function _fmtS( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _s = _f._truncateString(_s?.__copy__())?.__copy__();
        _f._padString(_s?.__copy__());
    }
    /**
        // truncate truncates the byte slice b as a string of the specified precision, if present.
    **/
    @:keep
    static public function _truncate( _f:stdgo.StdGoTypes.Ref<T_fmt>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            var _n:stdgo.StdGoTypes.GoInt = _f._prec;
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                while (_i < (_b.length)) {
                    _n--;
                    if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
                        return (_b.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                    };
                    var _wid:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
                    if (_b[(_i : stdgo.StdGoTypes.GoInt)] >= (128 : stdgo.StdGoTypes.GoUInt8)) {
                        {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                            _wid = __tmp__._1;
                        };
                    };
                    _i = _i + (_wid);
                };
            };
        };
        return _b;
    }
    /**
        // truncateString truncates the string s to the specified precision, if present.
    **/
    @:keep
    static public function _truncateString( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (_f._fmtFlags._precPresent) {
            var _n:stdgo.StdGoTypes.GoInt = _f._prec;
            for (_i => _ in _s) {
                _n--;
                if (_n < (0 : stdgo.StdGoTypes.GoInt)) {
                    return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        return _s?.__copy__();
    }
    /**
        // fmtInteger formats signed and unsigned integers.
    **/
    @:keep
    static public function _fmtInteger( _f:stdgo.StdGoTypes.Ref<T_fmt>, _u:stdgo.StdGoTypes.GoUInt64, _base:stdgo.StdGoTypes.GoInt, _isSigned:Bool, _verb:stdgo.StdGoTypes.GoRune, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        var _negative:Bool = _isSigned && ((_u : stdgo.StdGoTypes.GoInt64) < (0i64 : stdgo.StdGoTypes.GoInt64));
        if (_negative) {
            _u = -_u;
        };
        var _buf = (_f._intbuf.__slice__((0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        if (_f._fmtFlags._widPresent || _f._fmtFlags._precPresent) {
            var _width:stdgo.StdGoTypes.GoInt = ((3 : stdgo.StdGoTypes.GoInt) + _f._wid) + _f._prec;
            if (_width > (_buf.length)) {
                _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_width : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            };
        };
        var _prec:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        if (_f._fmtFlags._precPresent) {
            _prec = _f._prec;
            if ((_prec == (0 : stdgo.StdGoTypes.GoInt)) && (_u == (0i64 : stdgo.StdGoTypes.GoUInt64))) {
                var _oldZero:Bool = _f._fmtFlags._zero;
                _f._fmtFlags._zero = false;
                _f._writePadding(_f._wid);
                _f._fmtFlags._zero = _oldZero;
                return;
            };
        } else if (_f._fmtFlags._zero && _f._fmtFlags._widPresent) {
            _prec = _f._wid;
            if ((_negative || _f._fmtFlags._plus) || _f._fmtFlags._space) {
                _prec--;
            };
        };
        var _i:stdgo.StdGoTypes.GoInt = (_buf.length);
        {
            final __value__ = _base;
            if (__value__ == ((10 : stdgo.StdGoTypes.GoInt))) {
                while (_u >= (10i64 : stdgo.StdGoTypes.GoUInt64)) {
                    _i--;
                    var _next:stdgo.StdGoTypes.GoUInt64 = _u / (10i64 : stdgo.StdGoTypes.GoUInt64);
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (((48i64 : stdgo.StdGoTypes.GoUInt64) + _u) - (_next * (10i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoByte);
                    _u = _next;
                };
            } else if (__value__ == ((16 : stdgo.StdGoTypes.GoInt))) {
                while (_u >= (16i64 : stdgo.StdGoTypes.GoUInt64)) {
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = _digits[(_u & (15i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)];
                    _u = _u >> ((4i64 : stdgo.StdGoTypes.GoUInt64));
                };
            } else if (__value__ == ((8 : stdgo.StdGoTypes.GoInt))) {
                while (_u >= (8i64 : stdgo.StdGoTypes.GoUInt64)) {
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = ((48i64 : stdgo.StdGoTypes.GoUInt64) + (_u & (7i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoByte);
                    _u = _u >> ((3i64 : stdgo.StdGoTypes.GoUInt64));
                };
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                while (_u >= (2i64 : stdgo.StdGoTypes.GoUInt64)) {
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = ((48i64 : stdgo.StdGoTypes.GoUInt64) + (_u & (1i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.StdGoTypes.GoByte);
                    _u = _u >> ((1i64 : stdgo.StdGoTypes.GoUInt64));
                };
            } else {
                throw stdgo.Go.toInterface(("fmt: unknown base; can\'t happen" : stdgo.GoString));
            };
        };
        _i--;
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = _digits[(_u : stdgo.StdGoTypes.GoInt)];
        while ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_prec > (_buf.length - _i))) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
        };
        if (_f._fmtFlags._sharp) {
            {
                final __value__ = _base;
                if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (98 : stdgo.StdGoTypes.GoUInt8);
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
                } else if (__value__ == ((8 : stdgo.StdGoTypes.GoInt))) {
                    if (_buf[(_i : stdgo.StdGoTypes.GoInt)] != ((48 : stdgo.StdGoTypes.GoUInt8))) {
                        _i--;
                        _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
                    };
                } else if (__value__ == ((16 : stdgo.StdGoTypes.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = _digits[(16 : stdgo.StdGoTypes.GoInt)];
                    _i--;
                    _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
                };
            };
        };
        if (_verb == ((79 : stdgo.StdGoTypes.GoInt32))) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (111 : stdgo.StdGoTypes.GoUInt8);
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
        };
        if (_negative) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (45 : stdgo.StdGoTypes.GoUInt8);
        } else if (_f._fmtFlags._plus) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (43 : stdgo.StdGoTypes.GoUInt8);
        } else if (_f._fmtFlags._space) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
        };
        var _oldZero:Bool = _f._fmtFlags._zero;
        _f._fmtFlags._zero = false;
        _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _f._fmtFlags._zero = _oldZero;
    }
    /**
        // fmtUnicode formats a uint64 as "U+0078" or with f.sharp set as "U+0078 'x'".
    **/
    @:keep
    static public function _fmtUnicode( _f:stdgo.StdGoTypes.Ref<T_fmt>, _u:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        var _buf = (_f._intbuf.__slice__((0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _prec:stdgo.StdGoTypes.GoInt = (4 : stdgo.StdGoTypes.GoInt);
        if (_f._fmtFlags._precPresent && (_f._prec > (4 : stdgo.StdGoTypes.GoInt))) {
            _prec = _f._prec;
            var _width:stdgo.StdGoTypes.GoInt = ((((2 : stdgo.StdGoTypes.GoInt) + _prec) + (2 : stdgo.StdGoTypes.GoInt)) + (4 : stdgo.StdGoTypes.GoInt)) + (1 : stdgo.StdGoTypes.GoInt);
            if (_width > (_buf.length)) {
                _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_width : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            };
        };
        var _i:stdgo.StdGoTypes.GoInt = (_buf.length);
        if ((_f._fmtFlags._sharp && (_u <= (1114111i64 : stdgo.StdGoTypes.GoUInt64))) && stdgo.strconv.Strconv.isPrint((_u : stdgo.StdGoTypes.GoRune))) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (39 : stdgo.StdGoTypes.GoUInt8);
            _i = _i - (stdgo.unicode.utf8.Utf8.runeLen((_u : stdgo.StdGoTypes.GoRune)));
            stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_u : stdgo.StdGoTypes.GoRune));
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (39 : stdgo.StdGoTypes.GoUInt8);
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (32 : stdgo.StdGoTypes.GoUInt8);
        };
        while (_u >= (16i64 : stdgo.StdGoTypes.GoUInt64)) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[(_u & (15i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)];
            _prec--;
            _u = _u >> ((4i64 : stdgo.StdGoTypes.GoUInt64));
        };
        _i--;
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[(_u : stdgo.StdGoTypes.GoInt)];
        _prec--;
        while (_prec > (0 : stdgo.StdGoTypes.GoInt)) {
            _i--;
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (48 : stdgo.StdGoTypes.GoUInt8);
            _prec--;
        };
        _i--;
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = (43 : stdgo.StdGoTypes.GoUInt8);
        _i--;
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = (85 : stdgo.StdGoTypes.GoUInt8);
        var _oldZero:Bool = _f._fmtFlags._zero;
        _f._fmtFlags._zero = false;
        _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _f._fmtFlags._zero = _oldZero;
    }
    /**
        // fmtBoolean formats a boolean.
    **/
    @:keep
    static public function _fmtBoolean( _f:stdgo.StdGoTypes.Ref<T_fmt>, _v:Bool):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (_v) {
            _f._padString(("true" : stdgo.GoString));
        } else {
            _f._padString(("false" : stdgo.GoString));
        };
    }
    /**
        // padString appends s to f.buf, padded on left (!f.minus) or right (f.minus).
    **/
    @:keep
    static public function _padString( _f:stdgo.StdGoTypes.Ref<T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (!_f._fmtFlags._widPresent || (_f._wid == (0 : stdgo.StdGoTypes.GoInt))) {
            _f._buf._writeString(_s?.__copy__());
            return;
        };
        var _width:stdgo.StdGoTypes.GoInt = _f._wid - stdgo.unicode.utf8.Utf8.runeCountInString(_s?.__copy__());
        if (!_f._fmtFlags._minus) {
            _f._writePadding(_width);
            _f._buf._writeString(_s?.__copy__());
        } else {
            _f._buf._writeString(_s?.__copy__());
            _f._writePadding(_width);
        };
    }
    /**
        // pad appends b to f.buf, padded on left (!f.minus) or right (f.minus).
    **/
    @:keep
    static public function _pad( _f:stdgo.StdGoTypes.Ref<T_fmt>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (!_f._fmtFlags._widPresent || (_f._wid == (0 : stdgo.StdGoTypes.GoInt))) {
            _f._buf._write(_b);
            return;
        };
        var _width:stdgo.StdGoTypes.GoInt = _f._wid - stdgo.unicode.utf8.Utf8.runeCount(_b);
        if (!_f._fmtFlags._minus) {
            _f._writePadding(_width);
            _f._buf._write(_b);
        } else {
            _f._buf._write(_b);
            _f._writePadding(_width);
        };
    }
    /**
        // writePadding generates n bytes of padding.
    **/
    @:keep
    static public function _writePadding( _f:stdgo.StdGoTypes.Ref<T_fmt>, _n:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        if (_n <= (0 : stdgo.StdGoTypes.GoInt)) {
            return;
        };
        var _buf:stdgo.fmt.Fmt.T_buffer = (_f._buf : stdgo.fmt.Fmt.T_buffer);
        var _oldLen:stdgo.StdGoTypes.GoInt = (_buf.length);
        var _newLen:stdgo.StdGoTypes.GoInt = _oldLen + _n;
        if (_newLen > _buf.capacity) {
            _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_buf.capacity * (2 : stdgo.StdGoTypes.GoInt)) + _n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            stdgo.Go.copySlice(_buf, (_f._buf : stdgo.fmt.Fmt.T_buffer));
        };
        var _padByte:stdgo.StdGoTypes.GoUInt8 = ((32 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
        if (_f._fmtFlags._zero) {
            _padByte = ((48 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
        };
        var _padding:stdgo.fmt.Fmt.T_buffer = (_buf.__slice__(_oldLen, _newLen) : stdgo.fmt.Fmt.T_buffer);
        for (_i => _ in _padding) {
            _padding[(_i : stdgo.StdGoTypes.GoInt)] = _padByte;
        };
        _f._buf.__setData__((_buf.__slice__(0, _newLen) : stdgo.fmt.Fmt.T_buffer));
    }
    @:keep
    static public function _init( _f:stdgo.StdGoTypes.Ref<T_fmt>, _buf:stdgo.StdGoTypes.Ref<T_buffer>):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _f._buf = _buf;
        _f._clearflags();
    }
    @:keep
    static public function _clearflags( _f:stdgo.StdGoTypes.Ref<T_fmt>):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<T_fmt> = _f;
        _f._fmtFlags = (new stdgo.fmt.Fmt.T_fmtFlags() : stdgo.fmt.Fmt.T_fmtFlags);
    }
}
class T_pp_asInterface {
    /**
        // doPrintln is like doPrint but always adds a space between arguments
        // and a newline after the last argument.
    **/
    @:keep
    public dynamic function _doPrintln(_a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void __self__.value._doPrintln(_a);
    @:keep
    public dynamic function _doPrint(_a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void __self__.value._doPrint(_a);
    @:keep
    public dynamic function _doPrintf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void __self__.value._doPrintf(_format, _a);
    @:keep
    public dynamic function _missingArg(_verb:stdgo.StdGoTypes.GoRune):Void __self__.value._missingArg(_verb);
    @:keep
    public dynamic function _badArgNum(_verb:stdgo.StdGoTypes.GoRune):Void __self__.value._badArgNum(_verb);
    /**
        // argNumber returns the next argument to evaluate, which is either the value of the passed-in
        // argNum or the value of the bracketed integer that begins format[i:]. It also returns
        // the new value of i, that is, the index of the next byte of the format to process.
    **/
    @:keep
    public dynamic function _argNumber(_argNum:stdgo.StdGoTypes.GoInt, _format:stdgo.GoString, _i:stdgo.StdGoTypes.GoInt, _numArgs:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : Bool; } return __self__.value._argNumber(_argNum, _format, _i, _numArgs);
    /**
        // printValue is similar to printArg but starts with a reflect value, not an interface{} value.
        // It does not handle 'p' and 'T' verbs because these should have been already handled by printArg.
    **/
    @:keep
    public dynamic function _printValue(_value:stdgo.reflect.Reflect.Value, _verb:stdgo.StdGoTypes.GoRune, _depth:stdgo.StdGoTypes.GoInt):Void __self__.value._printValue(_value, _verb, _depth);
    @:keep
    public dynamic function _printArg(_arg:stdgo.StdGoTypes.AnyInterface, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._printArg(_arg, _verb);
    @:keep
    public dynamic function _handleMethods(_verb:stdgo.StdGoTypes.GoRune):Bool return __self__.value._handleMethods(_verb);
    @:keep
    public dynamic function _catchPanic(_arg:stdgo.StdGoTypes.AnyInterface, _verb:stdgo.StdGoTypes.GoRune, _method:stdgo.GoString):Void __self__.value._catchPanic(_arg, _verb, _method);
    @:keep
    public dynamic function _fmtPointer(_value:stdgo.reflect.Reflect.Value, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtPointer(_value, _verb);
    @:keep
    public dynamic function _fmtBytes(_v:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _verb:stdgo.StdGoTypes.GoRune, _typeString:stdgo.GoString):Void __self__.value._fmtBytes(_v, _verb, _typeString);
    @:keep
    public dynamic function _fmtString(_v:stdgo.GoString, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtString(_v, _verb);
    /**
        // fmtComplex formats a complex number v with
        // r = real(v) and j = imag(v) as (r+ji) using
        // fmtFloat for r and j formatting.
    **/
    @:keep
    public dynamic function _fmtComplex(_v:stdgo.StdGoTypes.GoComplex128, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtComplex(_v, _size, _verb);
    /**
        // fmtFloat formats a float. The default precision for each verb
        // is specified as last argument in the call to fmt_float.
    **/
    @:keep
    public dynamic function _fmtFloat(_v:stdgo.StdGoTypes.GoFloat64, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtFloat(_v, _size, _verb);
    /**
        // fmtInteger formats a signed or unsigned integer.
    **/
    @:keep
    public dynamic function _fmtInteger(_v:stdgo.StdGoTypes.GoUInt64, _isSigned:Bool, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtInteger(_v, _isSigned, _verb);
    /**
        // fmt0x64 formats a uint64 in hexadecimal and prefixes it with 0x or
        // not, as requested, by temporarily setting the sharp flag.
    **/
    @:keep
    public dynamic function _fmt0x64(_v:stdgo.StdGoTypes.GoUInt64, _leading0x:Bool):Void __self__.value._fmt0x64(_v, _leading0x);
    @:keep
    public dynamic function _fmtBool(_v:Bool, _verb:stdgo.StdGoTypes.GoRune):Void __self__.value._fmtBool(_v, _verb);
    @:keep
    public dynamic function _badVerb(_verb:stdgo.StdGoTypes.GoRune):Void __self__.value._badVerb(_verb);
    @:keep
    public dynamic function _unknownType(_v:stdgo.reflect.Reflect.Value):Void __self__.value._unknownType(_v);
    /**
        // Implement WriteString so that we can call io.WriteString
        // on a pp (through state), for efficiency.
    **/
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    /**
        // Implement Write so we can call Fprintf on a pp (through State), for
        // recursive use in custom verbs.
    **/
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:keep
    public dynamic function flag(_b:stdgo.StdGoTypes.GoInt):Bool return __self__.value.flag(_b);
    @:keep
    public dynamic function precision():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__.value.precision();
    @:keep
    public dynamic function width():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__.value.width();
    /**
        // free saves used pp structs in ppFree; avoids an allocation per invocation.
    **/
    @:keep
    public dynamic function _free():Void __self__.value._free();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pp>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    /**
        // doPrintln is like doPrint but always adds a space between arguments
        // and a newline after the last argument.
    **/
    @:keep
    static public function _doPrintln( _p:stdgo.StdGoTypes.Ref<T_pp>, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        for (_argNum => _arg in _a) {
            if (_argNum > (0 : stdgo.StdGoTypes.GoInt)) {
                _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.StdGoTypes.GoInt32));
        };
        _p._buf._writeByte((10 : stdgo.StdGoTypes.GoUInt8));
    }
    @:keep
    static public function _doPrint( _p:stdgo.StdGoTypes.Ref<T_pp>, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _prevString:Bool = false;
        for (_argNum => _arg in _a) {
            var _isString:Bool = (_arg != null) && (stdgo.reflect.Reflect.typeOf(_arg).kind() == (24u32 : stdgo.reflect.Reflect.Kind));
            if (((_argNum > (0 : stdgo.StdGoTypes.GoInt)) && !_isString) && !_prevString) {
                _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
            };
            _p._printArg(_arg, (118 : stdgo.StdGoTypes.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    static public function _doPrintf( _p:stdgo.StdGoTypes.Ref<T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):Void {
        stdgo.internal.Macro.controlFlow({
            @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
            var _end:stdgo.StdGoTypes.GoInt = (_format.length);
            var _argNum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            var _afterIndex:Bool = false;
            _p._reordered = false;
            @:label("formatLoop") {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                while (_i < _end) {
                    _p._goodArgNum = true;
                    var _lasti:stdgo.StdGoTypes.GoInt = _i;
                    while ((_i < _end) && (_format[(_i : stdgo.StdGoTypes.GoInt)] != (37 : stdgo.StdGoTypes.GoUInt8))) {
                        _i++;
                    };
                    if (_i > _lasti) {
                        _p._buf._writeString((_format.__slice__(_lasti, _i) : stdgo.GoString)?.__copy__());
                    };
                    if (_i >= _end) {
                        break;
                    };
                    _i++;
                    _p._fmt._clearflags();
                    @:label("simpleFormat") stdgo.Go.cfor(_i < _end, _i++, {
                        var _c:stdgo.StdGoTypes.GoUInt8 = _format[(_i : stdgo.StdGoTypes.GoInt)];
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                {
                                    final __value__ = _c;
                                    if (__value__ == ((35 : stdgo.StdGoTypes.GoUInt8))) {
                                        _p._fmt._fmtFlags._sharp = true;
                                        break;
                                    } else if (__value__ == ((48 : stdgo.StdGoTypes.GoUInt8))) {
                                        _p._fmt._fmtFlags._zero = !_p._fmt._fmtFlags._minus;
                                        break;
                                    } else if (__value__ == ((43 : stdgo.StdGoTypes.GoUInt8))) {
                                        _p._fmt._fmtFlags._plus = true;
                                        break;
                                    } else if (__value__ == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                                        _p._fmt._fmtFlags._minus = true;
                                        _p._fmt._fmtFlags._zero = false;
                                        break;
                                    } else if (__value__ == ((32 : stdgo.StdGoTypes.GoUInt8))) {
                                        _p._fmt._fmtFlags._space = true;
                                        break;
                                    } else {
                                        if ((((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (122 : stdgo.StdGoTypes.GoUInt8))) && (_argNum < _a.length)) {
                                            {
                                                var __switchIndex__ = -1;
                                                var __run__ = true;
                                                while (__run__) {
                                                    __run__ = false;
                                                    {
                                                        final __value__ = _c;
                                                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (119 : stdgo.StdGoTypes.GoUInt8)))) {
                                                            _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum));
                                                            @:fallthrough {
                                                                __switchIndex__ = 1;
                                                                __run__ = true;
                                                                continue;
                                                            };
                                                            break;
                                                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (118 : stdgo.StdGoTypes.GoUInt8)))) {
                                                            _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                                                            _p._fmt._fmtFlags._sharp = false;
                                                            _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                                                            _p._fmt._fmtFlags._plus = false;
                                                            break;
                                                            break;
                                                        };
                                                    };
                                                    break;
                                                };
                                            };
                                            _p._printArg(_a[(_argNum : stdgo.StdGoTypes.GoInt)], (_c : stdgo.StdGoTypes.GoRune));
                                            _argNum++;
                                            _i++;
                                            @:jump("formatLoop") continue;
                                        };
                                        @:jump("simpleFormat") break;
                                    };
                                };
                                break;
                            };
                        };
                    });
                    {
                        var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                        _argNum = __tmp__._0;
                        _i = __tmp__._1;
                        _afterIndex = __tmp__._2;
                    };
                    if ((_i < _end) && (_format[(_i : stdgo.StdGoTypes.GoInt)] == (42 : stdgo.StdGoTypes.GoUInt8))) {
                        _i++;
                        {
                            var __tmp__ = _intFromArg(_a, _argNum);
                            _p._fmt._wid = __tmp__._0;
                            _p._fmt._fmtFlags._widPresent = __tmp__._1;
                            _argNum = __tmp__._2;
                        };
                        if (!_p._fmt._fmtFlags._widPresent) {
                            _p._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                        };
                        if (_p._fmt._wid < (0 : stdgo.StdGoTypes.GoInt)) {
                            _p._fmt._wid = -_p._fmt._wid;
                            _p._fmt._fmtFlags._minus = true;
                            _p._fmt._fmtFlags._zero = false;
                        };
                        _afterIndex = false;
                    } else {
                        {
                            var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                            _p._fmt._wid = __tmp__._0;
                            _p._fmt._fmtFlags._widPresent = __tmp__._1;
                            _i = __tmp__._2;
                        };
                        if (_afterIndex && _p._fmt._fmtFlags._widPresent) {
                            _p._goodArgNum = false;
                        };
                    };
                    if (((_i + (1 : stdgo.StdGoTypes.GoInt)) < _end) && (_format[(_i : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8))) {
                        _i++;
                        if (_afterIndex) {
                            _p._goodArgNum = false;
                        };
                        {
                            var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                            _argNum = __tmp__._0;
                            _i = __tmp__._1;
                            _afterIndex = __tmp__._2;
                        };
                        if ((_i < _end) && (_format[(_i : stdgo.StdGoTypes.GoInt)] == (42 : stdgo.StdGoTypes.GoUInt8))) {
                            _i++;
                            {
                                var __tmp__ = _intFromArg(_a, _argNum);
                                _p._fmt._prec = __tmp__._0;
                                _p._fmt._fmtFlags._precPresent = __tmp__._1;
                                _argNum = __tmp__._2;
                            };
                            if (_p._fmt._prec < (0 : stdgo.StdGoTypes.GoInt)) {
                                _p._fmt._prec = (0 : stdgo.StdGoTypes.GoInt);
                                _p._fmt._fmtFlags._precPresent = false;
                            };
                            if (!_p._fmt._fmtFlags._precPresent) {
                                _p._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                            };
                            _afterIndex = false;
                        } else {
                            {
                                var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                                _p._fmt._prec = __tmp__._0;
                                _p._fmt._fmtFlags._precPresent = __tmp__._1;
                                _i = __tmp__._2;
                            };
                            if (!_p._fmt._fmtFlags._precPresent) {
                                _p._fmt._prec = (0 : stdgo.StdGoTypes.GoInt);
                                _p._fmt._fmtFlags._precPresent = true;
                            };
                        };
                    };
                    if (!_afterIndex) {
                        {
                            var __tmp__ = _p._argNumber(_argNum, _format?.__copy__(), _i, (_a.length));
                            _argNum = __tmp__._0;
                            _i = __tmp__._1;
                            _afterIndex = __tmp__._2;
                        };
                    };
                    if (_i >= _end) {
                        _p._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                        break;
                    };
                    var __0:stdgo.StdGoTypes.GoInt32 = (_format[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoRune), __1:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt), _size:stdgo.StdGoTypes.GoInt = __1, _verb:stdgo.StdGoTypes.GoInt32 = __0;
                    if (_verb >= (128 : stdgo.StdGoTypes.GoInt32)) {
                        {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                            _verb = __tmp__._0;
                            _size = __tmp__._1;
                        };
                    };
                    _i = _i + (_size);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_verb == (37 : stdgo.StdGoTypes.GoInt32)))) {
                                _p._buf._writeByte((37 : stdgo.StdGoTypes.GoUInt8));
                                break;
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !_p._goodArgNum)) {
                                _p._badArgNum(_verb);
                                break;
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_argNum >= _a.length))) {
                                _p._missingArg(_verb);
                                break;
                                break;
                            } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_verb == (119 : stdgo.StdGoTypes.GoInt32)))) {
                                _p._wrappedErrs = (_p._wrappedErrs.__append__(_argNum));
                                @:fallthrough {
                                    __switchIndex__ = 4;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (_verb == (118 : stdgo.StdGoTypes.GoInt32)))) {
                                _p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
                                _p._fmt._fmtFlags._sharp = false;
                                _p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
                                _p._fmt._fmtFlags._plus = false;
                                @:fallthrough {
                                    __switchIndex__ = 5;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else {
                                _p._printArg(_a[(_argNum : stdgo.StdGoTypes.GoInt)], _verb);
                                _argNum++;
                                break;
                            };
                            break;
                        };
                    };
                };
            };
            if (!_p._reordered && (_argNum < _a.length)) {
                _p._fmt._clearflags();
                _p._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                for (_i => _arg in (_a.__slice__(_argNum) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) {
                    if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                        _p._buf._writeString((", " : stdgo.GoString));
                    };
                    if (_arg == null) {
                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                    } else {
                        _p._buf._writeString((stdgo.reflect.Reflect.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                        _p._buf._writeByte((61 : stdgo.StdGoTypes.GoUInt8));
                        _p._printArg(_arg, (118 : stdgo.StdGoTypes.GoInt32));
                    };
                };
                _p._buf._writeByte((41 : stdgo.StdGoTypes.GoUInt8));
            };
        });
    }
    @:keep
    static public function _missingArg( _p:stdgo.StdGoTypes.Ref<T_pp>, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    static public function _badArgNum( _p:stdgo.StdGoTypes.Ref<T_pp>, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    /**
        // argNumber returns the next argument to evaluate, which is either the value of the passed-in
        // argNum or the value of the bracketed integer that begins format[i:]. It also returns
        // the new value of i, that is, the index of the next byte of the format to process.
    **/
    @:keep
    static public function _argNumber( _p:stdgo.StdGoTypes.Ref<T_pp>, _argNum:stdgo.StdGoTypes.GoInt, _format:stdgo.GoString, _i:stdgo.StdGoTypes.GoInt, _numArgs:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _newArgNum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _newi:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _found:Bool = false;
        if ((_format.length <= _i) || (_format[(_i : stdgo.StdGoTypes.GoInt)] != (91 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _argNum, _1 : _i, _2 : false };
        };
        _p._reordered = true;
        var __tmp__ = _parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.StdGoTypes.GoInt = __tmp__._0, _wid:stdgo.StdGoTypes.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if ((_ok && ((0 : stdgo.StdGoTypes.GoInt) <= _index)) && (_index < _numArgs)) {
            return { _0 : _index, _1 : _i + _wid, _2 : true };
        };
        _p._goodArgNum = false;
        return { _0 : _argNum, _1 : _i + _wid, _2 : _ok };
    }
    /**
        // printValue is similar to printArg but starts with a reflect value, not an interface{} value.
        // It does not handle 'p' and 'T' verbs because these should have been already handled by printArg.
    **/
    @:keep
    static public function _printValue( _p:stdgo.StdGoTypes.Ref<T_pp>, _value:stdgo.reflect.Reflect.Value, _verb:stdgo.StdGoTypes.GoRune, _depth:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        if (((_depth > (0 : stdgo.StdGoTypes.GoInt)) && _value.isValid()) && _value.canInterface()) {
            _p._arg = _value.interface_();
            if (_p._handleMethods(_verb)) {
                return;
            };
        };
        _p._arg = (null : stdgo.StdGoTypes.AnyInterface);
        _p._value = _value?.__copy__();
        {
            var _f:stdgo.reflect.Reflect.Value = _value?.__copy__();
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _value.kind();
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo.reflect.Reflect.Kind)))) {
                            if (_depth == ((0 : stdgo.StdGoTypes.GoInt))) {
                                _p._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))))) {
                            _p._fmtInteger((_f.int_() : stdgo.StdGoTypes.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))))) {
                            _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtFloat(_f.float_(), (32 : stdgo.StdGoTypes.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtFloat(_f.float_(), (64 : stdgo.StdGoTypes.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtComplex(_f.complex(), (64 : stdgo.StdGoTypes.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtComplex(_f.complex(), (128 : stdgo.StdGoTypes.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo.reflect.Reflect.Kind)))) {
                            _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo.reflect.Reflect.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if (_f.isNil()) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.StdGoTypes.GoUInt8));
                            } else {
                                _p._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo.internal.fmtsort.Fmtsort.sort(_f?.__copy__());
                            for (_i => _key in _sorted.key) {
                                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                                    if (_p._fmt._fmtFlags._sharpV) {
                                        _p._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
                                    };
                                };
                                _p._printValue(_key?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                                _p._buf._writeByte((58 : stdgo.StdGoTypes.GoUInt8));
                                _p._printValue(_sorted.value[(_i : stdgo.StdGoTypes.GoInt)], _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeByte((125 : stdgo.StdGoTypes.GoUInt8));
                            } else {
                                _p._buf._writeByte((93 : stdgo.StdGoTypes.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo.reflect.Reflect.Kind)))) {
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            _p._buf._writeByte((123 : stdgo.StdGoTypes.GoUInt8));
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < _f.numField(), _i++, {
                                    if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                                        if (_p._fmt._fmtFlags._sharpV) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
                                        };
                                    };
                                    if (_p._fmt._fmtFlags._plusV || _p._fmt._fmtFlags._sharpV) {
                                        {
                                            var _name:stdgo.GoString = _f.type().field(_i).name?.__copy__();
                                            if (_name != (stdgo.Go.str())) {
                                                _p._buf._writeString(_name?.__copy__());
                                                _p._buf._writeByte((58 : stdgo.StdGoTypes.GoUInt8));
                                            };
                                        };
                                    };
                                    _p._printValue(_getField(_f?.__copy__(), _i)?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                                });
                            };
                            _p._buf._writeByte((125 : stdgo.StdGoTypes.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo.reflect.Reflect.Kind)))) {
                            var _value:stdgo.reflect.Reflect.Value = _f.elem()?.__copy__();
                            if (!_value.isValid()) {
                                if (_p._fmt._fmtFlags._sharpV) {
                                    _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    _p._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                _p._printValue(_value?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind))))) {
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((113 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                                    var _t:stdgo.reflect.Reflect.Type_ = _f.type();
                                    if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                                        if (_f.kind() == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.StdGoTypes.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_f.len() : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                                            for (_i in 0 ... _bytes.length.toBasic()) {
                                                _bytes[(_i : stdgo.StdGoTypes.GoInt)] = (_f.index(_i).uint() : stdgo.StdGoTypes.GoByte);
                                            };
                                        };
                                        _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        return;
                                    };
                                };
                            };
                            if (_p._fmt._fmtFlags._sharpV) {
                                _p._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                if ((_f.kind() == (23u32 : stdgo.reflect.Reflect.Kind)) && _f.isNil()) {
                                    _p._buf._writeString(("(nil)" : stdgo.GoString));
                                    return;
                                };
                                _p._buf._writeByte((123 : stdgo.StdGoTypes.GoUInt8));
                                {
                                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                    stdgo.Go.cfor(_i < _f.len(), _i++, {
                                        if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                                            _p._buf._writeString((", " : stdgo.GoString));
                                        };
                                        _p._printValue(_f.index(_i)?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                                    });
                                };
                                _p._buf._writeByte((125 : stdgo.StdGoTypes.GoUInt8));
                            } else {
                                _p._buf._writeByte((91 : stdgo.StdGoTypes.GoUInt8));
                                {
                                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                    stdgo.Go.cfor(_i < _f.len(), _i++, {
                                        if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                                            _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
                                        };
                                        _p._printValue(_f.index(_i)?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                                    });
                                };
                                _p._buf._writeByte((93 : stdgo.StdGoTypes.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo.reflect.Reflect.Kind)))) {
                            if ((_depth == (0 : stdgo.StdGoTypes.GoInt)) && (_f.pointer() != (0 : stdgo.StdGoTypes.GoUIntptr))) {
                                {
                                    var _a:stdgo.reflect.Reflect.Value = _f.elem()?.__copy__();
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((25u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                                            _p._buf._writeByte((38 : stdgo.StdGoTypes.GoUInt8));
                                            _p._printValue(_a?.__copy__(), _verb, _depth + (1 : stdgo.StdGoTypes.GoInt));
                                            return;
                                        };
                                    };
                                };
                            };
                            @:fallthrough {
                                __switchIndex__ = 14;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo.reflect.Reflect.Kind))))) {
                            _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            _p._unknownType(_f?.__copy__());
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    static public function _printArg( _p:stdgo.StdGoTypes.Ref<T_pp>, _arg:stdgo.StdGoTypes.AnyInterface, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        _p._arg = _arg;
        _p._value = (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value);
        if (_arg == null) {
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                    _p._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    _p._badVerb(_verb);
                };
            };
            return;
        };
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtS((stdgo.reflect.Reflect.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                return;
            } else if (__value__ == ((112 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmtPointer(stdgo.reflect.Reflect.valueOf(_arg)?.__copy__(), (112 : stdgo.StdGoTypes.GoInt32));
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat32))) {
                var _f:stdgo.StdGoTypes.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat((_f : stdgo.StdGoTypes.GoFloat64), (32 : stdgo.StdGoTypes.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat64))) {
                var _f:stdgo.StdGoTypes.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtFloat(_f, (64 : stdgo.StdGoTypes.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoComplex64))) {
                var _f:stdgo.StdGoTypes.GoComplex64 = __type__ == null ? new stdgo.StdGoTypes.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.StdGoTypes.GoComplex64(0, 0) : __type__ == null ? new stdgo.StdGoTypes.GoComplex64(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex((_f : stdgo.StdGoTypes.GoComplex128), (64 : stdgo.StdGoTypes.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoComplex128))) {
                var _f:stdgo.StdGoTypes.GoComplex128 = __type__ == null ? new stdgo.StdGoTypes.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.StdGoTypes.GoComplex128(0, 0) : __type__ == null ? new stdgo.StdGoTypes.GoComplex128(0, 0) : __type__.__underlying__().value;
                _p._fmtComplex(_f, (128 : stdgo.StdGoTypes.GoInt), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt))) {
                var _f:stdgo.StdGoTypes.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt8))) {
                var _f:stdgo.StdGoTypes.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt16))) {
                var _f:stdgo.StdGoTypes.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt32))) {
                var _f:stdgo.StdGoTypes.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt64))) {
                var _f:stdgo.StdGoTypes.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt))) {
                var _f:stdgo.StdGoTypes.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt8))) {
                var _f:stdgo.StdGoTypes.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt16))) {
                var _f:stdgo.StdGoTypes.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt32))) {
                var _f:stdgo.StdGoTypes.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt64))) {
                var _f:stdgo.StdGoTypes.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUIntptr))) {
                var _f:stdgo.StdGoTypes.GoUIntptr = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _p._fmtInteger((_f : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoByte>))) {
                var _f:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.reflect.Reflect.Value))) {
                var _f:stdgo.reflect.Reflect.Value = __type__ == null ? ({} : stdgo.reflect.Reflect.Value) : __type__.__underlying__() == null ? ({} : stdgo.reflect.Reflect.Value) : __type__ == null ? ({} : stdgo.reflect.Reflect.Value) : __type__.__underlying__().value;
                if (_f.isValid() && _f.canInterface()) {
                    _p._arg = _f.interface_();
                    if (_p._handleMethods(_verb)) {
                        return;
                    };
                };
                _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.StdGoTypes.GoInt));
            } else {
                var _f:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                if (!_p._handleMethods(_verb)) {
                    _p._printValue(stdgo.reflect.Reflect.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.StdGoTypes.GoInt));
                };
            };
        };
    }
    @:keep
    static public function _handleMethods( _p:stdgo.StdGoTypes.Ref<T_pp>, _verb:stdgo.StdGoTypes.GoRune):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _handled:Bool = false;
        try {
            if (_p._erroring) {
                return _handled;
            };
            if (_verb == ((119 : stdgo.StdGoTypes.GoInt32))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : stdgo.Error)) : stdgo.Error), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok || !_p._wrapErrs) {
                    _p._badVerb(_verb);
                    return true;
                };
                _verb = (118 : stdgo.StdGoTypes.GoInt32);
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_p._arg : Formatter)) : Formatter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.fmt.Fmt.Formatter), _1 : false };
                }, _formatter = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _handled = true;
                    {
                        var _a0 = _p._arg;
                        var _a1 = _verb;
                        var _a2 = ("Format" : stdgo.GoString);
                        __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                    };
                    _formatter.format(stdgo.Go.asInterface(_p), _verb);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _handled;
                    };
                };
            };
            if (_p._fmt._fmtFlags._sharpV) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_p._arg : GoStringer)) : GoStringer), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.fmt.Fmt.GoStringer), _1 : false };
                    }, _stringer = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _handled = true;
                        {
                            var _a0 = _p._arg;
                            var _a1 = _verb;
                            var _a2 = ("GoString" : stdgo.GoString);
                            __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                        };
                        _p._fmt._fmtS(_stringer.goString()?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _handled;
                        };
                    };
                };
            } else {
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((115 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((113 : stdgo.StdGoTypes.GoInt32))) {
                        {
                            final __type__ = _p._arg;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString(_v.error()?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : Stringer))) {
                                var _v:stdgo.fmt.Fmt.Stringer = __type__ == null ? (null : stdgo.fmt.Fmt.Stringer) : __type__.__underlying__() == null ? (null : stdgo.fmt.Fmt.Stringer) : __type__ == null ? (null : stdgo.fmt.Fmt.Stringer) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = _p._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("String" : stdgo.GoString);
                                    __deferstack__.unshift(() -> _p._catchPanic(_a0, _a1, _a2?.__copy__()));
                                };
                                _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return _handled;
                                };
                            };
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _handled;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _handled;
        };
    }
    @:keep
    static public function _catchPanic( _p:stdgo.StdGoTypes.Ref<T_pp>, _arg:stdgo.StdGoTypes.AnyInterface, _verb:stdgo.StdGoTypes.GoRune, _method:stdgo.GoString):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            var _err:stdgo.StdGoTypes.AnyInterface = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (_err != null) {
                {
                    var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_arg)?.__copy__();
                    if ((_v.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _v.isNil()) {
                        _p._buf._writeString(("<nil>" : stdgo.GoString));
                        return;
                    };
                };
                if (_p._panicking) {
                    throw stdgo.Go.toInterface(_err);
                };
                var _oldFlags:stdgo.fmt.Fmt.T_fmtFlags = _p._fmt._fmtFlags?.__copy__();
                _p._fmt._clearflags();
                _p._buf._writeString(("%!" : stdgo.GoString));
                _p._buf._writeRune(_verb);
                _p._buf._writeString(("(PANIC=" : stdgo.GoString));
                _p._buf._writeString(_method?.__copy__());
                _p._buf._writeString((" method: " : stdgo.GoString));
                _p._panicking = true;
                _p._printArg(_err, (118 : stdgo.StdGoTypes.GoInt32));
                _p._panicking = false;
                _p._buf._writeByte((41 : stdgo.StdGoTypes.GoUInt8));
                _p._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    static public function _fmtPointer( _p:stdgo.StdGoTypes.Ref<T_pp>, _value:stdgo.reflect.Reflect.Value, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _u:stdgo.StdGoTypes.GoUIntptr = (0 : stdgo.StdGoTypes.GoUIntptr);
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((19u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((26u32 : stdgo.reflect.Reflect.Kind))) {
                _u = _value.pointer();
            } else {
                _p._badVerb(_verb);
                return;
            };
        };
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeByte((40 : stdgo.StdGoTypes.GoUInt8));
                    _p._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    _p._buf._writeString((")(" : stdgo.GoString));
                    if (_u == ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                        _p._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.StdGoTypes.GoUInt64), true);
                    };
                    _p._buf._writeByte((41 : stdgo.StdGoTypes.GoUInt8));
                } else {
                    if (_u == ((0 : stdgo.StdGoTypes.GoUIntptr))) {
                        _p._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        _p._fmt0x64((_u : stdgo.StdGoTypes.GoUInt64), !_p._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt0x64((_u : stdgo.StdGoTypes.GoUInt64), !_p._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((111 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((100 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmtInteger((_u : stdgo.StdGoTypes.GoUInt64), false, _verb);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _fmtBytes( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _verb:stdgo.StdGoTypes.GoRune, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((100 : stdgo.StdGoTypes.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._buf._writeString(_typeString?.__copy__());
                    if (_v == null) {
                        _p._buf._writeString(("(nil)" : stdgo.GoString));
                        return;
                    };
                    _p._buf._writeByte((123 : stdgo.StdGoTypes.GoUInt8));
                    for (_i => _c in _v) {
                        if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                            _p._buf._writeString((", " : stdgo.GoString));
                        };
                        _p._fmt0x64((_c : stdgo.StdGoTypes.GoUInt64), true);
                    };
                    _p._buf._writeByte((125 : stdgo.StdGoTypes.GoUInt8));
                } else {
                    _p._buf._writeByte((91 : stdgo.StdGoTypes.GoUInt8));
                    for (_i => _c in _v) {
                        if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                            _p._buf._writeByte((32 : stdgo.StdGoTypes.GoUInt8));
                        };
                        _p._fmt._fmtInteger((_c : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    _p._buf._writeByte((93 : stdgo.StdGoTypes.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                _p._printValue(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_v))?.__copy__(), _verb, (0 : stdgo.StdGoTypes.GoInt));
            };
        };
    }
    @:keep
    static public function _fmtString( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.GoString, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV) {
                    _p._fmt._fmtQ(_v?.__copy__());
                } else {
                    _p._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtQ(_v?.__copy__());
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    /**
        // fmtComplex formats a complex number v with
        // r = real(v) and j = imag(v) as (r+ji) using
        // fmtFloat for r and j formatting.
    **/
    @:keep
    static public function _fmtComplex( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.StdGoTypes.GoComplex128, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((98 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((103 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((71 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((102 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((70 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((101 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((69 : stdgo.StdGoTypes.GoInt32))) {
                var _oldPlus:Bool = _p._fmt._fmtFlags._plus;
                _p._buf._writeByte((40 : stdgo.StdGoTypes.GoUInt8));
                _p._fmtFloat(_v.real, _size / (2 : stdgo.StdGoTypes.GoInt), _verb);
                _p._fmt._fmtFlags._plus = true;
                _p._fmtFloat(_v.imag, _size / (2 : stdgo.StdGoTypes.GoInt), _verb);
                _p._buf._writeString(("i)" : stdgo.GoString));
                _p._fmt._fmtFlags._plus = _oldPlus;
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    /**
        // fmtFloat formats a float. The default precision for each verb
        // is specified as last argument in the call to fmt_float.
    **/
    @:keep
    static public function _fmtFloat( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.StdGoTypes.GoFloat64, _size:stdgo.StdGoTypes.GoInt, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (103 : stdgo.StdGoTypes.GoInt32), (-1 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((98 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((103 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((71 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((102 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((101 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((69 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((70 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtFloat(_v, _size, (102 : stdgo.StdGoTypes.GoInt32), (6 : stdgo.StdGoTypes.GoInt));
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    /**
        // fmtInteger formats a signed or unsigned integer.
    **/
    @:keep
    static public function _fmtInteger( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.StdGoTypes.GoUInt64, _isSigned:Bool, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                if (_p._fmt._fmtFlags._sharpV && !_isSigned) {
                    _p._fmt0x64(_v, true);
                } else {
                    _p._fmt._fmtInteger(_v, (10 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtInteger(_v, (10 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtInteger(_v, (2 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((79 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtInteger(_v, (8 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtInteger(_v, (16 : stdgo.StdGoTypes.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtUnicode(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    /**
        // fmt0x64 formats a uint64 in hexadecimal and prefixes it with 0x or
        // not, as requested, by temporarily setting the sharp flag.
    **/
    @:keep
    static public function _fmt0x64( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.StdGoTypes.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _sharp:Bool = _p._fmt._fmtFlags._sharp;
        _p._fmt._fmtFlags._sharp = _leading0x;
        _p._fmt._fmtInteger(_v, (16 : stdgo.StdGoTypes.GoInt), false, (118 : stdgo.StdGoTypes.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        _p._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    static public function _fmtBool( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:Bool, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((118 : stdgo.StdGoTypes.GoInt32))) {
                _p._fmt._fmtBoolean(_v);
            } else {
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    static public function _badVerb( _p:stdgo.StdGoTypes.Ref<T_pp>, _verb:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        _p._erroring = true;
        _p._buf._writeString(("%!" : stdgo.GoString));
        _p._buf._writeRune(_verb);
        _p._buf._writeByte((40 : stdgo.StdGoTypes.GoUInt8));
        if (_p._arg != null) {
            _p._buf._writeString((stdgo.reflect.Reflect.typeOf(_p._arg).string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.StdGoTypes.GoUInt8));
            _p._printArg(_p._arg, (118 : stdgo.StdGoTypes.GoInt32));
        } else if (_p._value.isValid()) {
            _p._buf._writeString((_p._value.type().string() : stdgo.GoString)?.__copy__());
            _p._buf._writeByte((61 : stdgo.StdGoTypes.GoUInt8));
            _p._printValue(_p._value?.__copy__(), (118 : stdgo.StdGoTypes.GoInt32), (0 : stdgo.StdGoTypes.GoInt));
        } else {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
        };
        _p._buf._writeByte((41 : stdgo.StdGoTypes.GoUInt8));
        _p._erroring = false;
    }
    @:keep
    static public function _unknownType( _p:stdgo.StdGoTypes.Ref<T_pp>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        if (!_v.isValid()) {
            _p._buf._writeString(("<nil>" : stdgo.GoString));
            return;
        };
        _p._buf._writeByte((63 : stdgo.StdGoTypes.GoUInt8));
        _p._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        _p._buf._writeByte((63 : stdgo.StdGoTypes.GoUInt8));
    }
    /**
        // Implement WriteString so that we can call io.WriteString
        // on a pp (through state), for efficiency.
    **/
    @:keep
    static public function writeString( _p:stdgo.StdGoTypes.Ref<T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _ret:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _p._buf._writeString(_s?.__copy__());
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    /**
        // Implement Write so we can call Fprintf on a pp (through State), for
        // recursive use in custom verbs.
    **/
    @:keep
    static public function write( _p:stdgo.StdGoTypes.Ref<T_pp>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _ret:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _p._buf._write(_b);
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function flag( _p:stdgo.StdGoTypes.Ref<T_pp>, _b:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.StdGoTypes.GoInt))) {
                return _p._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.StdGoTypes.GoInt))) {
                return _p._fmt._fmtFlags._plus || _p._fmt._fmtFlags._plusV;
            } else if (__value__ == ((35 : stdgo.StdGoTypes.GoInt))) {
                return _p._fmt._fmtFlags._sharp || _p._fmt._fmtFlags._sharpV;
            } else if (__value__ == ((32 : stdgo.StdGoTypes.GoInt))) {
                return _p._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.StdGoTypes.GoInt))) {
                return _p._fmt._fmtFlags._zero;
            };
        };
        return false;
    }
    @:keep
    static public function precision( _p:stdgo.StdGoTypes.Ref<T_pp>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _prec:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _ok:Bool = false;
        return { _0 : _p._fmt._prec, _1 : _p._fmt._fmtFlags._precPresent };
    }
    @:keep
    static public function width( _p:stdgo.StdGoTypes.Ref<T_pp>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        var _wid:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _ok:Bool = false;
        return { _0 : _p._fmt._wid, _1 : _p._fmt._fmtFlags._widPresent };
    }
    /**
        // free saves used pp structs in ppFree; avoids an allocation per invocation.
    **/
    @:keep
    static public function _free( _p:stdgo.StdGoTypes.Ref<T_pp>):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<T_pp> = _p;
        if (_p._buf.capacity > (65536 : stdgo.StdGoTypes.GoInt)) {
            _p._buf = null;
        } else {
            _p._buf = (_p._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
        };
        if (_p._wrappedErrs.capacity > (8 : stdgo.StdGoTypes.GoInt)) {
            _p._wrappedErrs = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        };
        _p._arg = (null : stdgo.StdGoTypes.AnyInterface);
        _p._value = (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value);
        _p._wrappedErrs = (_p._wrappedErrs.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        _ppFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
}
class T_ss_asInterface {
    /**
        // doScanf does the real work when scanning with a format string.
        // At the moment, it handles only pointers to basic types.
    **/
    @:keep
    public dynamic function _doScanf(_format:stdgo.GoString, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._doScanf(_format, _a);
    /**
        // advance determines whether the next characters in the input match
        // those of the format. It returns the number of bytes (sic) consumed
        // in the format. All runs of space characters in either input or
        // format behave as a single space. Newlines are special, though:
        // newlines in the format must match those in the input and vice versa.
        // This routine also handles the %% case. If the return value is zero,
        // either format starts with a % (with no following %) or the input
        // is empty. If it is negative, the input did not match the string.
    **/
    @:keep
    public dynamic function _advance(_format:stdgo.GoString):stdgo.StdGoTypes.GoInt return __self__.value._advance(_format);
    /**
        // doScan does the real work for scanning without a format string.
    **/
    @:keep
    public dynamic function _doScan(_a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._doScan(_a);
    /**
        // scanOne scans a single value, deriving the scanner from the type of the argument.
    **/
    @:keep
    public dynamic function _scanOne(_verb:stdgo.StdGoTypes.GoRune, _arg:stdgo.StdGoTypes.AnyInterface):Void __self__.value._scanOne(_verb, _arg);
    /**
        // scanPercent scans a literal percent character.
    **/
    @:keep
    public dynamic function _scanPercent():Void __self__.value._scanPercent();
    /**
        // hexString returns the space-delimited hexpair-encoded string.
    **/
    @:keep
    public dynamic function _hexString():stdgo.GoString return __self__.value._hexString();
    /**
        // hexByte returns the next hex-encoded (two-character) byte from the input.
        // It returns ok==false if the next bytes in the input do not encode a hex byte.
        // If the first byte is hex and the second is not, processing stops.
    **/
    @:keep
    public dynamic function _hexByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : Bool; } return __self__.value._hexByte();
    /**
        // quotedString returns the double- or back-quoted string represented by the next input characters.
    **/
    @:keep
    public dynamic function _quotedString():stdgo.GoString return __self__.value._quotedString();
    /**
        // convertString returns the string represented by the next input characters.
        // The format of the input is determined by the verb.
    **/
    @:keep
    public dynamic function _convertString(_verb:stdgo.StdGoTypes.GoRune):stdgo.GoString return __self__.value._convertString(_verb);
    /**
        // scanComplex converts the next token to a complex128 value.
        // The atof argument is a type-specific reader for the underlying type.
        // If we're reading complex64, atof will parse float32s and convert them
        // to float64's to avoid reproducing this code for each complex type.
    **/
    @:keep
    public dynamic function _scanComplex(_verb:stdgo.StdGoTypes.GoRune, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoComplex128 return __self__.value._scanComplex(_verb, _n);
    /**
        // convertFloat converts the string to a float64value.
    **/
    @:keep
    public dynamic function _convertFloat(_str:stdgo.GoString, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoFloat64 return __self__.value._convertFloat(_str, _n);
    /**
        // complexTokens returns the real and imaginary parts of the complex number starting here.
        // The number might be parenthesized and has the format (N+Ni) where N is a floating-point
        // number and there are no spaces within.
    **/
    @:keep
    public dynamic function _complexTokens():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return __self__.value._complexTokens();
    /**
        // floatToken returns the floating-point number starting here, no longer than swid
        // if the width is specified. It's not rigorous about syntax because it doesn't check that
        // we have at least some digits, but Atof will do that.
    **/
    @:keep
    public dynamic function _floatToken():stdgo.GoString return __self__.value._floatToken();
    /**
        // scanUint returns the value of the unsigned integer represented
        // by the next token, checking for overflow. Any error is stored in s.err.
    **/
    @:keep
    public dynamic function _scanUint(_verb:stdgo.StdGoTypes.GoRune, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoUInt64 return __self__.value._scanUint(_verb, _bitSize);
    /**
        // scanInt returns the value of the integer represented by the next
        // token, checking for overflow. Any error is stored in s.err.
    **/
    @:keep
    public dynamic function _scanInt(_verb:stdgo.StdGoTypes.GoRune, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt64 return __self__.value._scanInt(_verb, _bitSize);
    /**
        // scanBasePrefix reports whether the integer begins with a base prefix
        // and returns the base, digit string, and whether a zero was found.
        // It is called only if the verb is %v.
    **/
    @:keep
    public dynamic function _scanBasePrefix():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } return __self__.value._scanBasePrefix();
    /**
        // scanRune returns the next rune value in the input.
    **/
    @:keep
    public dynamic function _scanRune(_bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt64 return __self__.value._scanRune(_bitSize);
    /**
        // scanNumber returns the numerical string with specified digits starting here.
    **/
    @:keep
    public dynamic function _scanNumber(_digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString return __self__.value._scanNumber(_digits, _haveDigits);
    /**
        // getBase returns the numeric base represented by the verb and its digit string.
    **/
    @:keep
    public dynamic function _getBase(_verb:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; } return __self__.value._getBase(_verb);
    /**
        // scanBool returns the value of the boolean represented by the next token.
    **/
    @:keep
    public dynamic function _scanBool(_verb:stdgo.StdGoTypes.GoRune):Bool return __self__.value._scanBool(_verb);
    /**
        // okVerb verifies that the verb is present in the list, setting s.err appropriately if not.
    **/
    @:keep
    public dynamic function _okVerb(_verb:stdgo.StdGoTypes.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool return __self__.value._okVerb(_verb, _okVerbs, _typ);
    /**
        // accept checks the next rune in the input. If it's a byte (sic) in the string, it puts it in the
        // buffer and returns true. Otherwise it return false.
    **/
    @:keep
    public dynamic function _accept(_ok:stdgo.GoString):Bool return __self__.value._accept(_ok);
    @:keep
    public dynamic function _notEOF():Void __self__.value._notEOF();
    /**
        // peek reports whether the next character is in the ok string, without consuming it.
    **/
    @:keep
    public dynamic function _peek(_ok:stdgo.GoString):Bool return __self__.value._peek(_ok);
    /**
        // consume reads the next rune in the input and reports whether it is in the ok string.
        // If accept is true, it puts the character into the input token.
    **/
    @:keep
    public dynamic function _consume(_ok:stdgo.GoString, _accept:Bool):Bool return __self__.value._consume(_ok, _accept);
    /**
        // token returns the next space-delimited string from the input. It
        // skips white space. For Scanln, it stops at newlines. For Scan,
        // newlines are treated as spaces.
    **/
    @:keep
    public dynamic function _token(_skipSpace:Bool, _f:stdgo.StdGoTypes.GoRune -> Bool):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value._token(_skipSpace, _f);
    /**
        // SkipSpace provides Scan methods the ability to skip space and newline
        // characters in keeping with the current scanning mode set by format strings
        // and Scan/Scanln.
    **/
    @:keep
    public dynamic function skipSpace():Void __self__.value.skipSpace();
    /**
        // free saves used ss structs in ssFree; avoid an allocation per invocation.
    **/
    @:keep
    public dynamic function _free(_old:T_ssave):Void __self__.value._free(_old);
    @:keep
    public dynamic function token(_skipSpace:Bool, _f:stdgo.StdGoTypes.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.token(_skipSpace, _f);
    @:keep
    public dynamic function _errorString(_err:stdgo.GoString):Void __self__.value._errorString(_err);
    @:keep
    public dynamic function _error(_err:stdgo.Error):Void __self__.value._error(_err);
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    /**
        // mustReadRune turns io.EOF into a panic(io.ErrUnexpectedEOF).
        // It is called in cases such as string scanning where an EOF is a
        // syntax error.
    **/
    @:keep
    public dynamic function _mustReadRune():stdgo.StdGoTypes.GoRune return __self__.value._mustReadRune();
    /**
        // The public method returns an error; this private one panics.
        // If getRune reaches EOF, the return value is EOF (-1).
    **/
    @:keep
    public dynamic function _getRune():stdgo.StdGoTypes.GoRune return __self__.value._getRune();
    @:keep
    public dynamic function width():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__.value.width();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    /**
        // The Read method is only in ScanState so that ScanState
        // satisfies io.Reader. It will never be called when used as
        // intended, so there is no need to make it actually work.
    **/
    @:keep
    public dynamic function read(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ss>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_ss_asInterface) class T_ss_static_extension {
    /**
        // doScanf does the real work when scanning with a format string.
        // At the moment, it handles only pointers to basic types.
    **/
    @:keep
    static public function _doScanf( _s:stdgo.StdGoTypes.Ref<T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.StdGoTypes.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _errorHandler(_a0));
            };
            var _end:stdgo.StdGoTypes.GoInt = (_format.length) - (1 : stdgo.StdGoTypes.GoInt);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                while (_i <= _end) {
                    var _w:stdgo.StdGoTypes.GoInt = _s._advance((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                    if (_w > (0 : stdgo.StdGoTypes.GoInt)) {
                        _i = _i + (_w);
                        continue;
                    };
                    if (_format[(_i : stdgo.StdGoTypes.GoInt)] != ((37 : stdgo.StdGoTypes.GoUInt8))) {
                        if (_w < (0 : stdgo.StdGoTypes.GoInt)) {
                            _s._errorString(("input does not match format" : stdgo.GoString));
                        };
                        break;
                    };
                    _i++;
                    var _widPresent:Bool = false;
                    {
                        var __tmp__ = _parsenum(_format?.__copy__(), _i, _end);
                        _s._ssave._maxWid = __tmp__._0;
                        _widPresent = __tmp__._1;
                        _i = __tmp__._2;
                    };
                    if (!_widPresent) {
                        _s._ssave._maxWid = (1073741824 : stdgo.StdGoTypes.GoInt);
                    };
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _c:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _w:stdgo.StdGoTypes.GoInt = __tmp__._1;
                    _i = _i + (_w);
                    if (_c != ((99 : stdgo.StdGoTypes.GoInt32))) {
                        _s.skipSpace();
                    };
                    if (_c == ((37 : stdgo.StdGoTypes.GoInt32))) {
                        _s._scanPercent();
                        continue;
                    };
                    _s._ssave._argLimit = _s._ssave._limit;
                    {
                        var _f:stdgo.StdGoTypes.GoInt = _s._count + _s._ssave._maxWid;
                        if (_f < _s._ssave._argLimit) {
                            _s._ssave._argLimit = _f;
                        };
                    };
                    if (_numProcessed >= (_a.length)) {
                        _s._errorString(("too few operands for format \'%" : stdgo.GoString) + (_format.__slice__(_i - _w) : stdgo.GoString)?.__copy__() + ("\'" : stdgo.GoString)?.__copy__()?.__copy__());
                        break;
                    };
                    var _arg:stdgo.StdGoTypes.AnyInterface = _a[(_numProcessed : stdgo.StdGoTypes.GoInt)];
                    _s._scanOne(_c, _arg);
                    _numProcessed++;
                    _s._ssave._argLimit = _s._ssave._limit;
                };
            };
            if (_numProcessed < (_a.length)) {
                _s._errorString(("too many operands" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _numProcessed, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _numProcessed, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _numProcessed, _1 : _err };
        };
    }
    /**
        // advance determines whether the next characters in the input match
        // those of the format. It returns the number of bytes (sic) consumed
        // in the format. All runs of space characters in either input or
        // format behave as a single space. Newlines are special, though:
        // newlines in the format must match those in the input and vice versa.
        // This routine also handles the %% case. If the return value is zero,
        // either format starts with a % (with no following %) or the input
        // is empty. If it is negative, the input did not match the string.
    **/
    @:keep
    static public function _advance( _s:stdgo.StdGoTypes.Ref<T_ss>, _format:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (_i < (_format.length)) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _fmtc:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _w:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if (_isSpace(_fmtc)) {
                var _newlines:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                var _trailingSpace:Bool = false;
                while (_isSpace(_fmtc) && (_i < _format.length)) {
                    if (_fmtc == ((10 : stdgo.StdGoTypes.GoInt32))) {
                        _newlines++;
                        _trailingSpace = false;
                    } else {
                        _trailingSpace = true;
                    };
                    _i = _i + (_w);
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                        _fmtc = __tmp__._0;
                        _w = __tmp__._1;
                    };
                };
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < _newlines, _j++, {
                        var _inputc:stdgo.StdGoTypes.GoInt32 = _s._getRune();
                        while (_isSpace(_inputc) && (_inputc != (10 : stdgo.StdGoTypes.GoInt32))) {
                            _inputc = _s._getRune();
                        };
                        if ((_inputc != (10 : stdgo.StdGoTypes.GoInt32)) && (_inputc != (-1 : stdgo.StdGoTypes.GoInt32))) {
                            _s._errorString(("newline in format does not match input" : stdgo.GoString));
                        };
                    });
                };
                if (_trailingSpace) {
                    var _inputc:stdgo.StdGoTypes.GoInt32 = _s._getRune();
                    if (_newlines == ((0 : stdgo.StdGoTypes.GoInt))) {
                        if (!_isSpace(_inputc) && (_inputc != (-1 : stdgo.StdGoTypes.GoInt32))) {
                            _s._errorString(("expected space in input to match format" : stdgo.GoString));
                        };
                        if (_inputc == ((10 : stdgo.StdGoTypes.GoInt32))) {
                            _s._errorString(("newline in input does not match format" : stdgo.GoString));
                        };
                    };
                    while (_isSpace(_inputc) && (_inputc != (10 : stdgo.StdGoTypes.GoInt32))) {
                        _inputc = _s._getRune();
                    };
                    if (_inputc != ((-1 : stdgo.StdGoTypes.GoInt32))) {
                        _s.unreadRune();
                    };
                };
                continue;
            };
            if (_fmtc == ((37 : stdgo.StdGoTypes.GoInt32))) {
                if (_i + _w == ((_format.length))) {
                    _s._errorString(("missing verb: % at end of format string" : stdgo.GoString));
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i + _w) : stdgo.GoString)?.__copy__()), _nextc:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1;
                if (_nextc != ((37 : stdgo.StdGoTypes.GoInt32))) {
                    return _i;
                };
                _i = _i + (_w);
            };
            var _inputc:stdgo.StdGoTypes.GoInt32 = _s._mustReadRune();
            if (_fmtc != (_inputc)) {
                _s.unreadRune();
                return (-1 : stdgo.StdGoTypes.GoInt);
            };
            _i = _i + (_w);
        };
        return _i;
    }
    /**
        // doScan does the real work for scanning without a format string.
    **/
    @:keep
    static public function _doScan( _s:stdgo.StdGoTypes.Ref<T_ss>, _a:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.StdGoTypes.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> _errorHandler(_a0));
            };
            for (__0 => _arg in _a) {
                _s._scanOne((118 : stdgo.StdGoTypes.GoInt32), _arg);
                _numProcessed++;
            };
            if (_s._ssave._nlIsEnd) {
                while (true) {
                    var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
                    if ((_r == (10 : stdgo.StdGoTypes.GoInt32)) || (_r == (-1 : stdgo.StdGoTypes.GoInt32))) {
                        break;
                    };
                    if (!_isSpace(_r)) {
                        _s._errorString(("expected newline" : stdgo.GoString));
                        break;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _numProcessed, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _numProcessed, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _numProcessed, _1 : _err };
        };
    }
    /**
        // scanOne scans a single value, deriving the scanner from the type of the argument.
    **/
    @:keep
    static public function _scanOne( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune, _arg:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_arg : Scanner)) : Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.fmt.Fmt.Scanner), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _v.scan(stdgo.Go.asInterface(_s), _verb);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    _s._error(_err);
                };
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                _v.value = _s._scanBool(_verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoComplex64>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoComplex64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex64>) : __type__.__underlying__().value;
                _v.value = (_s._scanComplex(_verb, (64 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoComplex64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoComplex128>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoComplex128> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex128>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex128>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoComplex128>) : __type__.__underlying__().value;
                _v.value = _s._scanComplex(_verb, (128 : stdgo.StdGoTypes.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (16 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanInt(_verb, (64 : stdgo.StdGoTypes.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (16 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanUint(_verb, (64 : stdgo.StdGoTypes.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoUIntptr);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float32" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = (_s._convertFloat(_s._floatToken()?.__copy__(), (32 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoFloat32);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>))) {
                var _v:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float64" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = _s._convertFloat(_s._floatToken()?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _v:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                _v.value = _s._convertString(_verb)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoByte>>))) {
                var _v:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>) : __type__.__underlying__().value;
                _v.__setData__((_s._convertString(_verb) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            } else {
                var _v:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                var _val:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_v)?.__copy__();
                var _ptr:stdgo.reflect.Reflect.Value = _val?.__copy__();
                if (_ptr.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
                    _s._errorString(("type not a pointer: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__()?.__copy__());
                    return;
                };
                {
                    var _v:stdgo.reflect.Reflect.Value = _ptr.elem()?.__copy__();
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                            _v.setBool(_s._scanBool(_verb));
                        } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                            _v.setInt(_s._scanInt(_verb, _v.type().bits()));
                        } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                            _v.setUint(_s._scanUint(_verb, _v.type().bits()));
                        } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                            _v.setString(_s._convertString(_verb)?.__copy__());
                        } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                            var _typ:stdgo.reflect.Reflect.Type_ = _v.type();
                            if (_typ.elem().kind() != ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                _s._errorString(("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__()?.__copy__());
                            };
                            var _str:stdgo.GoString = _s._convertString(_verb)?.__copy__();
                            _v.set(stdgo.reflect.Reflect.makeSlice(_typ, (_str.length), (_str.length))?.__copy__());
                            {
                                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_i < (_str.length), _i++, {
                                    _v.index(_i).setUint((_str[(_i : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64));
                                });
                            };
                        } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                            _s.skipSpace();
                            _s._notEOF();
                            _v.setFloat(_s._convertFloat(_s._floatToken()?.__copy__(), _v.type().bits()));
                        } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                            _v.setComplex(_s._scanComplex(_verb, _v.type().bits()));
                        } else {
                            _s._errorString(("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__()?.__copy__());
                        };
                    };
                };
            };
        };
    }
    /**
        // scanPercent scans a literal percent character.
    **/
    @:keep
    static public function _scanPercent( _s:stdgo.StdGoTypes.Ref<T_ss>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._accept(("%" : stdgo.GoString))) {
            _s._errorString(("missing literal %" : stdgo.GoString));
        };
    }
    /**
        // hexString returns the space-delimited hexpair-encoded string.
    **/
    @:keep
    static public function _hexString( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._notEOF();
        while (true) {
            var __tmp__ = _s._hexByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                break;
            };
            _s._buf._writeByte(_b);
        };
        if ((_s._buf.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            _s._errorString(("no hex data for %x string" : stdgo.GoString));
            return stdgo.Go.str()?.__copy__();
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    /**
        // hexByte returns the next hex-encoded (two-character) byte from the input.
        // It returns ok==false if the next bytes in the input do not encode a hex byte.
        // If the first byte is hex and the second is not, processing stops.
    **/
    @:keep
    static public function _hexByte( _s:stdgo.StdGoTypes.Ref<T_ss>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : Bool; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _b:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8), _ok:Bool = false;
        var _rune1:stdgo.StdGoTypes.GoInt32 = _s._getRune();
        if (_rune1 == ((-1 : stdgo.StdGoTypes.GoInt32))) {
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = _hexDigit(_rune1), _value1:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s.unreadRune();
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = _hexDigit(_s._mustReadRune()), _value2:stdgo.StdGoTypes.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s._errorString(("illegal hex digit" : stdgo.GoString));
            return { _0 : _b, _1 : _ok };
        };
        return { _0 : ((_value1 << (4i64 : stdgo.StdGoTypes.GoUInt64)) | _value2 : stdgo.StdGoTypes.GoByte), _1 : true };
    }
    /**
        // quotedString returns the double- or back-quoted string represented by the next input characters.
    **/
    @:keep
    static public function _quotedString( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._notEOF();
        var _quote:stdgo.StdGoTypes.GoInt32 = _s._getRune();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.StdGoTypes.GoInt32))) {
                        while (true) {
                            var _r:stdgo.StdGoTypes.GoInt32 = _s._mustReadRune();
                            if (_r == (_quote)) {
                                break;
                            };
                            _s._buf._writeRune(_r);
                        };
                        return (_s._buf : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == ((34 : stdgo.StdGoTypes.GoInt32))) {
                        _s._buf._writeByte((34 : stdgo.StdGoTypes.GoUInt8));
                        while (true) {
                            var _r:stdgo.StdGoTypes.GoInt32 = _s._mustReadRune();
                            _s._buf._writeRune(_r);
                            if (_r == ((92 : stdgo.StdGoTypes.GoInt32))) {
                                _s._buf._writeRune(_s._mustReadRune());
                            } else if (_r == ((34 : stdgo.StdGoTypes.GoInt32))) {
                                break;
                            };
                        };
                        var __tmp__ = stdgo.strconv.Strconv.unquote((_s._buf : stdgo.GoString)?.__copy__()), _result:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _s._error(_err);
                        };
                        return _result?.__copy__();
                        break;
                    } else {
                        _s._errorString(("expected quoted string" : stdgo.GoString));
                    };
                };
                break;
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    /**
        // convertString returns the string represented by the next input characters.
        // The format of the input is determined by the verb.
    **/
    @:keep
    static public function _convertString( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _str:stdgo.GoString = ("" : stdgo.GoString);
        if (!_s._okVerb(_verb, ("svqxX" : stdgo.GoString), ("string" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        _s.skipSpace();
        _s._notEOF();
        {
            final __value__ = _verb;
            if (__value__ == ((113 : stdgo.StdGoTypes.GoInt32))) {
                _str = _s._quotedString()?.__copy__();
            } else if (__value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32))) {
                _str = _s._hexString()?.__copy__();
            } else {
                _str = (_s._token(true, _notSpace) : stdgo.GoString)?.__copy__();
            };
        };
        return _str;
    }
    /**
        // scanComplex converts the next token to a complex128 value.
        // The atof argument is a type-specific reader for the underlying type.
        // If we're reading complex64, atof will parse float32s and convert them
        // to float64's to avoid reproducing this code for each complex type.
    **/
    @:keep
    static public function _scanComplex( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoComplex128 {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (!_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("complex" : stdgo.GoString))) {
            return ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64));
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._complexTokens(), _sreal:stdgo.GoString = __tmp__._0, _simag:stdgo.GoString = __tmp__._1;
        var _real:stdgo.StdGoTypes.GoFloat64 = _s._convertFloat(_sreal?.__copy__(), _n / (2 : stdgo.StdGoTypes.GoInt));
        var _imag:stdgo.StdGoTypes.GoFloat64 = _s._convertFloat(_simag?.__copy__(), _n / (2 : stdgo.StdGoTypes.GoInt));
        return new stdgo.StdGoTypes.GoComplex128(_real, _imag);
    }
    /**
        // convertFloat converts the string to a float64value.
    **/
    @:keep
    static public function _convertFloat( _s:stdgo.StdGoTypes.Ref<T_ss>, _str:stdgo.GoString, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoFloat64 {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        {
            var _p:stdgo.StdGoTypes.GoInt = _indexRune(_str?.__copy__(), (112 : stdgo.StdGoTypes.GoInt32));
            if ((_p >= (0 : stdgo.StdGoTypes.GoInt)) && !_hasX(_str?.__copy__())) {
                var __tmp__ = stdgo.strconv.Strconv.parseFloat((_str.__slice__(0, _p) : stdgo.GoString)?.__copy__(), _n), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                var __tmp__ = stdgo.strconv.Strconv.atoi((_str.__slice__(_p + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__()), _m:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                return stdgo.math.Math.ldexp(_f, _m);
            };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_str?.__copy__(), _n), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        return _f;
    }
    /**
        // complexTokens returns the real and imaginary parts of the complex number starting here.
        // The number might be parenthesized and has the format (N+Ni) where N is a floating-point
        // number and there are no spaces within.
    **/
    @:keep
    static public function _complexTokens( _s:stdgo.StdGoTypes.Ref<T_ss>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _real:stdgo.GoString = ("" : stdgo.GoString), _imag:stdgo.GoString = ("" : stdgo.GoString);
        var _parens:Bool = _s._accept(("(" : stdgo.GoString));
        _real = _s._floatToken()?.__copy__();
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
        if (!_s._accept(("+-" : stdgo.GoString))) {
            _s._error(_errComplex);
        };
        var _imagSign:stdgo.GoString = (_s._buf : stdgo.GoString)?.__copy__();
        _imag = _s._floatToken()?.__copy__();
        if (!_s._accept(("i" : stdgo.GoString))) {
            _s._error(_errComplex);
        };
        if (_parens && !_s._accept((")" : stdgo.GoString))) {
            _s._error(_errComplex);
        };
        return { _0 : _real?.__copy__(), _1 : _imagSign + _imag?.__copy__()?.__copy__() };
    }
    /**
        // floatToken returns the floating-point number starting here, no longer than swid
        // if the width is specified. It's not rigorous about syntax because it doesn't check that
        // we have at least some digits, but Atof will do that.
    **/
    @:keep
    static public function _floatToken( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
        if ((_s._accept(("nN" : stdgo.GoString)) && _s._accept(("aA" : stdgo.GoString))) && _s._accept(("nN" : stdgo.GoString))) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        _s._accept(("+-" : stdgo.GoString));
        if ((_s._accept(("iI" : stdgo.GoString)) && _s._accept(("nN" : stdgo.GoString))) && _s._accept(("fF" : stdgo.GoString))) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        var _digits:stdgo.GoString = ("0123456789_" : stdgo.GoString);
        var _exp:stdgo.GoString = ("eEpP" : stdgo.GoString);
        if (_s._accept(("0" : stdgo.GoString)) && _s._accept(("xX" : stdgo.GoString))) {
            _digits = ("0123456789aAbBcCdDeEfF_" : stdgo.GoString);
            _exp = ("pP" : stdgo.GoString);
        };
        while (_s._accept(_digits?.__copy__())) {};
        if (_s._accept(("." : stdgo.GoString))) {
            while (_s._accept(_digits?.__copy__())) {};
        };
        if (_s._accept(_exp?.__copy__())) {
            _s._accept(("+-" : stdgo.GoString));
            while (_s._accept(("0123456789_" : stdgo.GoString))) {};
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    /**
        // scanUint returns the value of the unsigned integer represented
        // by the next token, checking for overflow. Any error is stored in s.err.
    **/
    @:keep
    static public function _scanUint( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (_verb == ((99 : stdgo.StdGoTypes.GoInt32))) {
            return (_s._scanRune(_bitSize) : stdgo.StdGoTypes.GoUInt64);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.StdGoTypes.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits:Bool = false;
        if (_verb == ((85 : stdgo.StdGoTypes.GoInt32))) {
            if (!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else if (_verb == ((118 : stdgo.StdGoTypes.GoInt32))) {
            {
                var __tmp__ = _s._scanBasePrefix();
                _base = __tmp__._0;
                _digits = __tmp__._1?.__copy__();
                _haveDigits = __tmp__._2;
            };
        };
        var _tok:stdgo.GoString = _s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__();
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_tok?.__copy__(), _base, (64 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n:stdgo.StdGoTypes.GoUInt = (_bitSize : stdgo.StdGoTypes.GoUInt);
        var _x:stdgo.StdGoTypes.GoUInt64 = (_i << ((64u32 : stdgo.StdGoTypes.GoUInt) - _n)) >> ((64u32 : stdgo.StdGoTypes.GoUInt) - _n);
        if (_x != (_i)) {
            _s._errorString(("unsigned integer overflow on token " : stdgo.GoString) + _tok?.__copy__()?.__copy__());
        };
        return _i;
    }
    /**
        // scanInt returns the value of the integer represented by the next
        // token, checking for overflow. Any error is stored in s.err.
    **/
    @:keep
    static public function _scanInt( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt64 {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (_verb == ((99 : stdgo.StdGoTypes.GoInt32))) {
            return _s._scanRune(_bitSize);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.StdGoTypes.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits:Bool = false;
        if (_verb == ((85 : stdgo.StdGoTypes.GoInt32))) {
            if (!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else {
            _s._accept(("+-" : stdgo.GoString));
            if (_verb == ((118 : stdgo.StdGoTypes.GoInt32))) {
                {
                    var __tmp__ = _s._scanBasePrefix();
                    _base = __tmp__._0;
                    _digits = __tmp__._1?.__copy__();
                    _haveDigits = __tmp__._2;
                };
            };
        };
        var _tok:stdgo.GoString = _s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__();
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_tok?.__copy__(), _base, (64 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n:stdgo.StdGoTypes.GoUInt = (_bitSize : stdgo.StdGoTypes.GoUInt);
        var _x:stdgo.StdGoTypes.GoInt64 = (_i << ((64u32 : stdgo.StdGoTypes.GoUInt) - _n)) >> ((64u32 : stdgo.StdGoTypes.GoUInt) - _n);
        if (_x != (_i)) {
            _s._errorString(("integer overflow on token " : stdgo.GoString) + _tok?.__copy__()?.__copy__());
        };
        return _i;
    }
    /**
        // scanBasePrefix reports whether the integer begins with a base prefix
        // and returns the base, digit string, and whether a zero was found.
        // It is called only if the verb is %v.
    **/
    @:keep
    static public function _scanBasePrefix( _s:stdgo.StdGoTypes.Ref<T_ss>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _base:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _digits:stdgo.GoString = ("" : stdgo.GoString), _zeroFound:Bool = false;
        if (!_s._peek(("0" : stdgo.GoString))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("0123456789_" : stdgo.GoString), _2 : false };
        };
        _s._accept(("0" : stdgo.GoString));
        if (_s._peek(("bB" : stdgo.GoString))) {
            _s._consume(("bB" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("01_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("oO" : stdgo.GoString))) {
            _s._consume(("oO" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("xX" : stdgo.GoString))) {
            _s._consume(("xX" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("0123456789aAbBcCdDeEfF_" : stdgo.GoString), _2 : true };
        } else {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        };
    }
    /**
        // scanRune returns the next rune value in the input.
    **/
    @:keep
    static public function _scanRune( _s:stdgo.StdGoTypes.Ref<T_ss>, _bitSize:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt64 {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._notEOF();
        var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
        var _n:stdgo.StdGoTypes.GoUInt = (_bitSize : stdgo.StdGoTypes.GoUInt);
        var _x:stdgo.StdGoTypes.GoInt64 = ((_r : stdgo.StdGoTypes.GoInt64) << ((64u32 : stdgo.StdGoTypes.GoUInt) - _n)) >> ((64u32 : stdgo.StdGoTypes.GoUInt) - _n);
        if (_x != ((_r : stdgo.StdGoTypes.GoInt64))) {
            _s._errorString(("overflow on character value " : stdgo.GoString) + (_r : stdgo.GoString)?.__copy__()?.__copy__());
        };
        return (_r : stdgo.StdGoTypes.GoInt64);
    }
    /**
        // scanNumber returns the numerical string with specified digits starting here.
    **/
    @:keep
    static public function _scanNumber( _s:stdgo.StdGoTypes.Ref<T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (!_haveDigits) {
            _s._notEOF();
            if (!_s._accept(_digits?.__copy__())) {
                _s._errorString(("expected integer" : stdgo.GoString));
            };
        };
        while (_s._accept(_digits?.__copy__())) {};
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    /**
        // getBase returns the numeric base represented by the verb and its digit string.
    **/
    @:keep
    static public function _getBase( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _base:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _digits:stdgo.GoString = ("" : stdgo.GoString);
        _s._okVerb(_verb, ("bdoUxXv" : stdgo.GoString), ("integer" : stdgo.GoString));
        _base = (10 : stdgo.StdGoTypes.GoInt);
        _digits = ("0123456789" : stdgo.GoString);
        {
            final __value__ = _verb;
            if (__value__ == ((98 : stdgo.StdGoTypes.GoInt32))) {
                _base = (2 : stdgo.StdGoTypes.GoInt);
                _digits = ("01" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.StdGoTypes.GoInt32))) {
                _base = (8 : stdgo.StdGoTypes.GoInt);
                _digits = ("01234567" : stdgo.GoString);
            } else if (__value__ == ((120 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((88 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((85 : stdgo.StdGoTypes.GoInt32))) {
                _base = (16 : stdgo.StdGoTypes.GoInt);
                _digits = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
            };
        };
        return { _0 : _base, _1 : _digits };
    }
    /**
        // scanBool returns the value of the boolean represented by the next token.
    **/
    @:keep
    static public function _scanBool( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._okVerb(_verb, ("tv" : stdgo.GoString), ("boolean" : stdgo.GoString))) {
            return false;
        };
        {
            final __value__ = _s._getRune();
            if (__value__ == ((48 : stdgo.StdGoTypes.GoInt32))) {
                return false;
            } else if (__value__ == ((49 : stdgo.StdGoTypes.GoInt32))) {
                return true;
            } else if (__value__ == ((116 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((84 : stdgo.StdGoTypes.GoInt32))) {
                if (_s._accept(("rR" : stdgo.GoString)) && (!_s._accept(("uU" : stdgo.GoString)) || !_s._accept(("eE" : stdgo.GoString)))) {
                    _s._error(_errBool);
                };
                return true;
            } else if (__value__ == ((102 : stdgo.StdGoTypes.GoInt32)) || __value__ == ((70 : stdgo.StdGoTypes.GoInt32))) {
                if (_s._accept(("aA" : stdgo.GoString)) && ((!_s._accept(("lL" : stdgo.GoString)) || !_s._accept(("sS" : stdgo.GoString))) || !_s._accept(("eE" : stdgo.GoString)))) {
                    _s._error(_errBool);
                };
                return false;
            };
        };
        return false;
    }
    /**
        // okVerb verifies that the verb is present in the list, setting s.err appropriately if not.
    **/
    @:keep
    static public function _okVerb( _s:stdgo.StdGoTypes.Ref<T_ss>, _verb:stdgo.StdGoTypes.GoRune, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        for (__0 => _v in _okVerbs) {
            if (_v == (_verb)) {
                return true;
            };
        };
        _s._errorString(("bad verb \'%" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() + ("\' for " : stdgo.GoString)?.__copy__() + _typ?.__copy__()?.__copy__());
        return false;
    }
    /**
        // accept checks the next rune in the input. If it's a byte (sic) in the string, it puts it in the
        // buffer and returns true. Otherwise it return false.
    **/
    @:keep
    static public function _accept( _s:stdgo.StdGoTypes.Ref<T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        return _s._consume(_ok?.__copy__(), true);
    }
    @:keep
    static public function _notEOF( _s:stdgo.StdGoTypes.Ref<T_ss>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        {
            var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
            if (_r == ((-1 : stdgo.StdGoTypes.GoInt32))) {
                throw stdgo.Go.toInterface(stdgo.io.Io.eof);
            };
        };
        _s.unreadRune();
    }
    /**
        // peek reports whether the next character is in the ok string, without consuming it.
    **/
    @:keep
    static public function _peek( _s:stdgo.StdGoTypes.Ref<T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
        if (_r != ((-1 : stdgo.StdGoTypes.GoInt32))) {
            _s.unreadRune();
        };
        return _indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // consume reads the next rune in the input and reports whether it is in the ok string.
        // If accept is true, it puts the character into the input token.
    **/
    @:keep
    static public function _consume( _s:stdgo.StdGoTypes.Ref<T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
        if (_r == ((-1 : stdgo.StdGoTypes.GoInt32))) {
            return false;
        };
        if (_indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.StdGoTypes.GoInt)) {
            if (_accept) {
                _s._buf._writeRune(_r);
            };
            return true;
        };
        if ((_r != (-1 : stdgo.StdGoTypes.GoInt32)) && _accept) {
            _s.unreadRune();
        };
        return false;
    }
    /**
        // token returns the next space-delimited string from the input. It
        // skips white space. For Scanln, it stops at newlines. For Scan,
        // newlines are treated as spaces.
    **/
    @:keep
    static public function _token( _s:stdgo.StdGoTypes.Ref<T_ss>, _skipSpace:Bool, _f:stdgo.StdGoTypes.GoRune -> Bool):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (_skipSpace) {
            _s.skipSpace();
        };
        while (true) {
            var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
            if (_r == ((-1 : stdgo.StdGoTypes.GoInt32))) {
                break;
            };
            if (!_f(_r)) {
                _s.unreadRune();
                break;
            };
            _s._buf._writeRune(_r);
        };
        return _s._buf;
    }
    /**
        // SkipSpace provides Scan methods the ability to skip space and newline
        // characters in keeping with the current scanning mode set by format strings
        // and Scan/Scanln.
    **/
    @:keep
    static public function skipSpace( _s:stdgo.StdGoTypes.Ref<T_ss>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        while (true) {
            var _r:stdgo.StdGoTypes.GoInt32 = _s._getRune();
            if (_r == ((-1 : stdgo.StdGoTypes.GoInt32))) {
                return;
            };
            if ((_r == (13 : stdgo.StdGoTypes.GoInt32)) && _s._peek(("\n" : stdgo.GoString))) {
                continue;
            };
            if (_r == ((10 : stdgo.StdGoTypes.GoInt32))) {
                if (_s._ssave._nlIsSpace) {
                    continue;
                };
                _s._errorString(("unexpected newline" : stdgo.GoString));
                return;
            };
            if (!_isSpace(_r)) {
                _s.unreadRune();
                break;
            };
        };
    }
    /**
        // free saves used ss structs in ssFree; avoid an allocation per invocation.
    **/
    @:keep
    static public function _free( _s:stdgo.StdGoTypes.Ref<T_ss>, _old:T_ssave):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        if (_old._validSave) {
            _s._ssave = _old?.__copy__();
            return;
        };
        if (_s._buf.capacity > (1024 : stdgo.StdGoTypes.GoInt)) {
            return;
        };
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
        _s._rs = (null : stdgo.io.Io.RuneScanner);
        _ssFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
    }
    @:keep
    static public function token( _s:stdgo.StdGoTypes.Ref<T_ss>, _skipSpace:Bool, _f:stdgo.StdGoTypes.GoRune -> Bool):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _tok:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e : T_scanError)) : T_scanError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo.fmt.Fmt.T_scanError), _1 : false };
                                }, _se = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _se._err;
                                } else {
                                    throw stdgo.Go.toInterface(_e);
                                };
                            };
                        };
                    };
                };
                a();
            });
            if (_f == null) {
                _f = _notSpace;
            };
            _s._buf = (_s._buf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.fmt.Fmt.T_buffer);
            _tok = _s._token(_skipSpace, _f);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _tok, _1 : _err };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _tok, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _tok, _1 : _err };
        };
    }
    @:keep
    static public function _errorString( _s:stdgo.StdGoTypes.Ref<T_ss>, _err:stdgo.GoString):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo.fmt.Fmt.T_scanError(stdgo.errors.Errors.new_(_err?.__copy__())) : stdgo.fmt.Fmt.T_scanError));
    }
    @:keep
    static public function _error( _s:stdgo.StdGoTypes.Ref<T_ss>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo.fmt.Fmt.T_scanError(_err) : stdgo.fmt.Fmt.T_scanError));
    }
    @:keep
    static public function unreadRune( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.Error {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        _s._rs.unreadRune();
        _s._atEOF = false;
        _s._count--;
        return (null : stdgo.Error);
    }
    /**
        // mustReadRune turns io.EOF into a panic(io.ErrUnexpectedEOF).
        // It is called in cases such as string scanning where an EOF is a
        // syntax error.
    **/
    @:keep
    static public function _mustReadRune( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.StdGoTypes.GoRune {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
        _r = _s._getRune();
        if (_r == ((-1 : stdgo.StdGoTypes.GoInt32))) {
            _s._error(stdgo.io.Io.errUnexpectedEOF);
        };
        return _r;
    }
    /**
        // The public method returns an error; this private one panics.
        // If getRune reaches EOF, the return value is EOF (-1).
    **/
    @:keep
    static public function _getRune( _s:stdgo.StdGoTypes.Ref<T_ss>):stdgo.StdGoTypes.GoRune {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
        var __tmp__ = _s.readRune(), _r:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                return (-1 : stdgo.StdGoTypes.GoInt32);
            };
            _s._error(_err);
        };
        return _r;
    }
    @:keep
    static public function width( _s:stdgo.StdGoTypes.Ref<T_ss>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _wid:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _ok:Bool = false;
        if (_s._ssave._maxWid == ((1073741824 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : false };
        };
        return { _0 : _s._ssave._maxWid, _1 : true };
    }
    @:keep
    static public function readRune( _s:stdgo.StdGoTypes.Ref<T_ss>):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_s._atEOF || (_s._count >= _s._ssave._argLimit)) {
            _err = stdgo.io.Io.eof;
            return { _0 : _r, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _s._rs.readRune();
            _r = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err == null) {
            _s._count++;
            if (_s._ssave._nlIsEnd && (_r == (10 : stdgo.StdGoTypes.GoInt32))) {
                _s._atEOF = true;
            };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
            _s._atEOF = true;
        };
        return { _0 : _r, _1 : _size, _2 : _err };
    }
    /**
        // The Read method is only in ScanState so that ScanState
        // satisfies io.Reader. It will never be called when used as
        // intended, so there is no need to make it actually work.
    **/
    @:keep
    static public function read( _s:stdgo.StdGoTypes.Ref<T_ss>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_ss> = _s;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : stdgo.errors.Errors.new_(("ScanState\'s Read should not be called. Use ReadRune" : stdgo.GoString)) };
    }
}
class T_readRune_asInterface {
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    /**
        // ReadRune returns the next UTF-8 encoded code point from the
        // io.Reader inside r.
    **/
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    /**
        // readByte returns the next byte from the input, which may be
        // left over from a previous read if the UTF-8 was ill-formed.
    **/
    @:keep
    public dynamic function _readByte():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } return __self__.value._readByte();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_readRune>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
    @:keep
    static public function unreadRune( _r:stdgo.StdGoTypes.Ref<T_readRune>):stdgo.Error {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_readRune> = _r;
        if (_r._peekRune >= (0 : stdgo.StdGoTypes.GoInt32)) {
            return stdgo.errors.Errors.new_(("fmt: scanning called UnreadRune with no rune available" : stdgo.GoString));
        };
        _r._peekRune = (-1 ^ _r._peekRune);
        return (null : stdgo.Error);
    }
    /**
        // ReadRune returns the next UTF-8 encoded code point from the
        // io.Reader inside r.
    **/
    @:keep
    static public function readRune( _r:stdgo.StdGoTypes.Ref<T_readRune>):{ var _0 : stdgo.StdGoTypes.GoRune; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_readRune> = _r;
        var _rr:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32), _size:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_r._peekRune >= (0 : stdgo.StdGoTypes.GoInt32)) {
            _rr = _r._peekRune;
            _r._peekRune = (-1 ^ _r._peekRune);
            _size = stdgo.unicode.utf8.Utf8.runeLen(_rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _r._readByte();
            _r._buf[(0 : stdgo.StdGoTypes.GoInt)] = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        if (_r._buf[(0 : stdgo.StdGoTypes.GoInt)] < (128 : stdgo.StdGoTypes.GoUInt8)) {
            _rr = (_r._buf[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoRune);
            _size = (1 : stdgo.StdGoTypes.GoInt);
            _r._peekRune = (-1 ^ _rr);
            return { _0 : _rr, _1 : _size, _2 : _err };
        };
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            _n = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(!stdgo.unicode.utf8.Utf8.fullRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n++, {
                {
                    var __tmp__ = _r._readByte();
                    _r._buf[(_n : stdgo.StdGoTypes.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _err = (null : stdgo.Error);
                        break;
                    };
                    return { _0 : _rr, _1 : _size, _2 : _err };
                };
            });
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_r._buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _rr = __tmp__._0;
            _size = __tmp__._1;
        };
        if (_size < _n) {
            stdgo.Go.copySlice((_r._pendBuf.__slice__(_r._pending) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_r._buf.__slice__(_size, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _r._pending = _r._pending + (_n - _size);
        };
        _r._peekRune = (-1 ^ _rr);
        return { _0 : _rr, _1 : _size, _2 : _err };
    }
    /**
        // readByte returns the next byte from the input, which may be
        // left over from a previous read if the UTF-8 was ill-formed.
    **/
    @:keep
    static public function _readByte( _r:stdgo.StdGoTypes.Ref<T_readRune>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_readRune> = _r;
        var _b:stdgo.StdGoTypes.GoByte = (0 : stdgo.StdGoTypes.GoUInt8), _err:stdgo.Error = (null : stdgo.Error);
        if (_r._pending > (0 : stdgo.StdGoTypes.GoInt)) {
            _b = _r._pendBuf[(0 : stdgo.StdGoTypes.GoInt)];
            stdgo.Go.copySlice((_r._pendBuf.__slice__((0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_r._pendBuf.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _r._pending--;
            return { _0 : _b, _1 : _err };
        };
        var __tmp__ = stdgo.io.Io.readFull(_r._reader, (_r._pendBuf.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : _err };
        };
        return { _0 : _r._pendBuf[(0 : stdgo.StdGoTypes.GoInt)], _1 : _err };
    }
}
class T_buffer_asInterface {
    @:keep
    public dynamic function _writeRune(_r:stdgo.StdGoTypes.GoRune):Void __self__.value._writeRune(_r);
    @:keep
    public dynamic function _writeByte(_c:stdgo.StdGoTypes.GoByte):Void __self__.value._writeByte(_c);
    @:keep
    public dynamic function _writeString(_s:stdgo.GoString):Void __self__.value._writeString(_s);
    @:keep
    public dynamic function _write(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value._write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_buffer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_buffer_asInterface) class T_buffer_static_extension {
    @:keep
    static public function _writeRune( _bp:stdgo.StdGoTypes.Ref<T_buffer>, _r:stdgo.StdGoTypes.GoRune):Void {
        @:recv var _bp:stdgo.StdGoTypes.Ref<T_buffer> = _bp;
        _bp.__setData__(stdgo.unicode.utf8.Utf8.appendRune((_bp : stdgo.fmt.Fmt.T_buffer), _r));
    }
    @:keep
    static public function _writeByte( _b:stdgo.StdGoTypes.Ref<T_buffer>, _c:stdgo.StdGoTypes.GoByte):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_buffer> = _b;
        _b.__setData__(((_b : stdgo.fmt.Fmt.T_buffer).__append__(_c)));
    }
    @:keep
    static public function _writeString( _b:stdgo.StdGoTypes.Ref<T_buffer>, _s:stdgo.GoString):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_buffer> = _b;
        _b.__setData__(((_b : stdgo.fmt.Fmt.T_buffer).__append__(..._s.__toArray__())));
    }
    @:keep
    static public function _write( _b:stdgo.StdGoTypes.Ref<T_buffer>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        @:recv var _b:stdgo.StdGoTypes.Ref<T_buffer> = _b;
        _b.__setData__(((_b : stdgo.fmt.Fmt.T_buffer).__append__(..._p.__toArray__())));
    }
}
class T_stringReader_asInterface {
    @:keep
    @:pointer
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(__self__, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
    @:keep
    @:pointer
    static public function read(____:T_stringReader,  _r:stdgo.Pointer<T_stringReader>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _n = stdgo.Go.copySlice(_b, _r.value);
        _r.value = ((_r.value).__slice__(_n) : stdgo.fmt.Fmt.T_stringReader);
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
}
