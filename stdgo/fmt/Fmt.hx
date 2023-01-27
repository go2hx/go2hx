package stdgo.fmt;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

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
private var __go2hxdoc__package:Bool;

private var _ppFree:stdgo.sync.Sync.Pool = ({
	new_: function():AnyInterface {
		return Go.toInterface(({} : T_pp));
	}
} : stdgo.sync.Sync.Pool);

/**
	// space is a copy of the unicode.White_Space ranges,
	// to avoid depending on package unicode.
**/
private var _space:Slice<GoArray<GoUInt16>> = (new Slice<GoArray<GoUInt16>>(0, 0,
	(new GoArray<GoUInt16>((9 : GoUInt16), (13 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((32 : GoUInt16), (32 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((133 : GoUInt16), (133 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((160 : GoUInt16), (160 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((5760 : GoUInt16), (5760 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((8192 : GoUInt16), (8202 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((8232 : GoUInt16), (8233 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((8239 : GoUInt16), (8239 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((8287 : GoUInt16), (8287 : GoUInt16)) : GoArray<GoUInt16>),
	(new GoArray<GoUInt16>((12288 : GoUInt16), (12288 : GoUInt16)) : GoArray<GoUInt16>)) : Slice<GoArray<GoUInt16>>);

private var _ssFree:stdgo.sync.Sync.Pool = ({
	new_: function():AnyInterface {
		return Go.toInterface(({} : T_ss));
	}
} : stdgo.sync.Sync.Pool);

private var _complexError:Error = stdgo.errors.Errors.new_(("syntax error scanning complex number" : GoString));
private var _boolError:Error = stdgo.errors.Errors.new_(("syntax error scanning boolean" : GoString));
var isSpace:GoInt32->Bool = _isSpace;

var parsenum:(GoString, GoInt, GoInt) -> {
	var _0:GoInt;
	var _1:Bool;
	var _2:GoInt;
} = _parsenum;

private final _ldigits:GoString = ("0123456789abcdefx" : GoString);
private final _udigits:GoString = ("0123456789ABCDEFX" : GoString);
private final _signed:InvalidType = true;
private final _unsigned:InvalidType = false;

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _commaSpaceString:GoString = (", " : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _nilAngleString:GoString = ("<nil>" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _nilParenString:GoString = ("(nil)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _nilString:GoString = ("nil" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _mapString:GoString = ("map[" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _percentBangString:GoString = ("%!" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _missingString:GoString = ("(MISSING)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _badIndexString:GoString = ("(BADINDEX)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _panicString:GoString = ("(PANIC=" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _extraString:GoString = ("%!(EXTRA " : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _badWidthString:GoString = ("%!(BADWIDTH)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _badPrecString:GoString = ("%!(BADPREC)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _noVerbString:GoString = ("%!(NOVERB)" : GoString);

/**
	// Strings for use with buffer.WriteString.
	// This is less overhead than using buffer.Write with byte arrays.
**/
private final _invReflectString:GoString = ("<invalid reflect.Value>" : GoString);

private final _eof:GoUInt64 = ("0" : GoUInt64);

/**
	// Numerical elements
**/
private final _binaryDigits:GoString = ("01" : GoString);

/**
	// Numerical elements
**/
private final _octalDigits:GoString = ("01234567" : GoString);

/**
	// Numerical elements
**/
private final _decimalDigits:GoString = ("0123456789" : GoString);

/**
	// Numerical elements
**/
private final _hexadecimalDigits:GoString = ("0123456789aAbBcCdDeEfF" : GoString);

/**
	// Numerical elements
**/
private final _sign:GoString = ("+-" : GoString);

/**
	// Numerical elements
**/
private final _period:GoString = ("." : GoString);

/**
	// Numerical elements
**/
private final _exponent:GoString = ("eEpP" : GoString);

private final _floatVerbs:GoString = ("beEfFgGv" : GoString);
private final _hugeWid:GoUInt64 = ("1073741824" : GoUInt64);
private final _intBits:GoUInt64 = ("32" : GoUInt64);
private final _uintptrBits:GoUInt64 = ("32" : GoUInt64);

/**
	// State represents the printer state passed to custom formatters.
	// It provides access to the io.Writer interface plus information about
	// the flags and options for the operand's format specifier.
**/
typedef State = StructType & {
	/**
		// Write is the function to call to emit formatted output to be printed.
	**/
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;};

	/**
		// Width returns the value of the width option and whether it has been set.
	**/
	public function width():{var _0:GoInt; var _1:Bool;};

	/**
		// Precision returns the value of the precision option and whether it has been set.
	**/
	public function precision():{var _0:GoInt; var _1:Bool;};

	/**
		// Flag reports whether the flag c, a character, has been set.
	**/
	public function flag(_c:GoInt):Bool;
};

/**
	// Formatter is implemented by any value that has a Format method.
	// The implementation controls how State and rune are interpreted,
	// and may call Sprint(f) or Fprint(f) etc. to generate its output.
**/
typedef Formatter = StructType & {
	public function format(_f:State, _verb:GoRune):Void;
};

/**
	// Stringer is implemented by any value that has a String method,
	// which defines the “native” format for that value.
	// The String method is used to print values passed as an operand
	// to any format that accepts a string or to an unformatted printer
	// such as Print.
**/
typedef Stringer = StructType & {
	public function string():GoString;
};

/**
	// GoStringer is implemented by any value that has a GoString method,
	// which defines the Go syntax for that value.
	// The GoString method is used to print values passed as an operand
	// to a %#v format.
**/
typedef GoStringer = StructType & {
	public function goString():GoString;
};

/**
	// ScanState represents the scanner state passed to custom scanners.
	// Scanners may do rune-at-a-time scanning or ask the ScanState
	// to discover the next space-delimited token.
**/
typedef ScanState = StructType & {
	/**
		// ReadRune reads the next rune (Unicode code point) from the input.
		// If invoked during Scanln, Fscanln, or Sscanln, ReadRune() will
		// return EOF after returning the first '\n' or when reading beyond
		// the specified width.
	**/
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;};

	/**
		// UnreadRune causes the next call to ReadRune to return the same rune.
	**/
	public function unreadRune():Error;

	/**
		// SkipSpace skips space in the input. Newlines are treated appropriately
		// for the operation being performed; see the package documentation
		// for more information.
	**/
	public function skipSpace():Void;

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
	public function token(_skipSpace:Bool, _f:GoRune->Bool):{var _0:Slice<GoByte>; var _1:Error;};

	/**
		// Width returns the value of the width option and whether it has been set.
		// The unit is Unicode code points.
	**/
	public function width():{var _0:GoInt; var _1:Bool;};

	/**
		// Because ReadRune is implemented by the interface, Read should never be
		// called by the scanning routines and a valid implementation of
		// ScanState may choose always to return an error from Read.
	**/
	public function read(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;};
};

/**
	// Scanner is implemented by any value that has a Scan method, which scans
	// the input for the representation of a value and stores the result in the
	// receiver, which must be a pointer to be useful. The Scan method is called
	// for any argument to Scan, Scanf, or Scanln that implements it.
**/
typedef Scanner = StructType & {
	public function scan(_state:ScanState, _verb:GoRune):Error;
};

@:structInit @:using(stdgo.fmt.Fmt.T_wrapError_static_extension) private class T_wrapError {
	public var _msg:GoString = "";
	public var _err:Error = (null : Error);

	public function new(?_msg:GoString, ?_err:Error) {
		if (_msg != null)
			this._msg = _msg;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_wrapError(_msg, _err);
	}
}

/**
	// flags placed in a separate struct for easy clearing.
**/
@:structInit private class T_fmtFlags {
	public var _widPresent:Bool = false;
	public var _precPresent:Bool = false;
	public var _minus:Bool = false;
	public var _plus:Bool = false;
	public var _sharp:Bool = false;
	public var _space:Bool = false;
	public var _zero:Bool = false;

	/**
		// For the formats %+v %#v, we set the plusV/sharpV flags
		// and clear the plus/sharp flags since %+v and %#v are in effect
		// different, flagless formats set at the top level.
	**/
	public var _plusV:Bool = false;

	public var _sharpV:Bool = false;

	public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool,
			?_sharpV:Bool) {
		if (_widPresent != null)
			this._widPresent = _widPresent;
		if (_precPresent != null)
			this._precPresent = _precPresent;
		if (_minus != null)
			this._minus = _minus;
		if (_plus != null)
			this._plus = _plus;
		if (_sharp != null)
			this._sharp = _sharp;
		if (_space != null)
			this._space = _space;
		if (_zero != null)
			this._zero = _zero;
		if (_plusV != null)
			this._plusV = _plusV;
		if (_sharpV != null)
			this._sharpV = _sharpV;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
	}
}

/**
	// A fmt is the raw formatter used by Printf etc.
	// It prints into a buffer that must be set up separately.
**/
@:structInit @:using(stdgo.fmt.Fmt.T_fmt_static_extension) private class T_fmt {
	public var _buf:Ref<T_buffer> = (null : Ref<T_buffer>);
	@:embedded
	public var _fmtFlags:T_fmtFlags = ({} : T_fmtFlags);

	/**
		// width
	**/
	public var _wid:GoInt = 0;

	/**
		// precision
	**/
	public var _prec:GoInt = 0;

	/**
		// intbuf is large enough to store %b of an int64 with a sign and
		// avoids padding at the end of the struct on 32 bit architectures.
	**/
	public var _intbuf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...68) (0 : GoUInt8)]);

	public function new(?_buf:Ref<T_buffer>, ?_fmtFlags:T_fmtFlags, ?_wid:GoInt, ?_prec:GoInt, ?_intbuf:GoArray<GoUInt8>) {
		if (_buf != null)
			this._buf = _buf;
		if (_fmtFlags != null)
			this._fmtFlags = _fmtFlags;
		if (_wid != null)
			this._wid = _wid;
		if (_prec != null)
			this._prec = _prec;
		if (_intbuf != null)
			this._intbuf = _intbuf;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fmt(_buf, _fmtFlags, _wid, _prec, _intbuf);
	}
}

/**
	// pp is used to store a printer's state and is reused with sync.Pool to avoid allocations.
**/
@:structInit @:using(stdgo.fmt.Fmt.T_pp_static_extension) private class T_pp {
	public var _buf:T_buffer = new T_buffer(0, 0);

	/**
		// arg holds the current item, as an interface{}.
	**/
	public var _arg:AnyInterface = (null : AnyInterface);

	/**
		// value is used instead of arg for reflect values.
	**/
	public var _value:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);

	/**
		// fmt is used to format basic items such as integers or strings.
	**/
	public var _fmt:T_fmt = ({} : T_fmt);

	/**
		// reordered records whether the format string used argument reordering.
	**/
	public var _reordered:Bool = false;

	/**
		// goodArgNum records whether the most recent reordering directive was valid.
	**/
	public var _goodArgNum:Bool = false;

	/**
		// panicking is set by catchPanic to avoid infinite panic, recover, panic, ... recursion.
	**/
	public var _panicking:Bool = false;

	/**
		// erroring is set when printing an error string to guard against calling handleMethods.
	**/
	public var _erroring:Bool = false;

	/**
		// wrapErrs is set when the format string may contain a %w verb.
	**/
	public var _wrapErrs:Bool = false;

	/**
		// wrappedErr records the target of the %w verb.
	**/
	public var _wrappedErr:Error = (null : Error);

	public function new(?_buf:T_buffer, ?_arg:AnyInterface, ?_value:stdgo.reflect.Reflect.Value, ?_fmt:T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool,
			?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErr:Error) {
		if (_buf != null)
			this._buf = _buf;
		if (_arg != null)
			this._arg = _arg;
		if (_value != null)
			this._value = _value;
		if (_fmt != null)
			this._fmt = _fmt;
		if (_reordered != null)
			this._reordered = _reordered;
		if (_goodArgNum != null)
			this._goodArgNum = _goodArgNum;
		if (_panicking != null)
			this._panicking = _panicking;
		if (_erroring != null)
			this._erroring = _erroring;
		if (_wrapErrs != null)
			this._wrapErrs = _wrapErrs;
		if (_wrappedErr != null)
			this._wrappedErr = _wrappedErr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, _wrappedErr);
	}
}

/**
	// scanError represents an error generated by the scanning software.
	// It's used as a unique signature to identify such errors when recovering.
**/
@:structInit private class T_scanError {
	public var _err:Error = (null : Error);

	public function new(?_err:Error) {
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_scanError(_err);
	}
}

/**
	// ss is the internal implementation of ScanState.
**/
@:structInit @:using(stdgo.fmt.Fmt.T_ss_static_extension) private class T_ss {
	/**
		// where to read input
	**/
	public var _rs:stdgo.io.Io.RuneScanner = (null : stdgo.io.Io.RuneScanner);

	/**
		// token accumulator
	**/
	public var _buf:T_buffer = new T_buffer(0, 0);

	/**
		// runes consumed so far.
	**/
	public var _count:GoInt = 0;

	/**
		// already read EOF
	**/
	public var _atEOF:Bool = false;

	@:embedded
	public var _ssave:T_ssave = ({} : T_ssave);

	public function new(?_rs:stdgo.io.Io.RuneScanner, ?_buf:T_buffer, ?_count:GoInt, ?_atEOF:Bool, ?_ssave:T_ssave) {
		if (_rs != null)
			this._rs = _rs;
		if (_buf != null)
			this._buf = _buf;
		if (_count != null)
			this._count = _count;
		if (_atEOF != null)
			this._atEOF = _atEOF;
		if (_ssave != null)
			this._ssave = _ssave;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ss(_rs, _buf, _count, _atEOF, _ssave);
	}
}

/**
	// ssave holds the parts of ss that need to be
	// saved and restored on recursive scans.
**/
@:structInit private class T_ssave {
	/**
		// is or was a part of an actual ss.
	**/
	public var _validSave:Bool = false;

	/**
		// whether newline terminates scan
	**/
	public var _nlIsEnd:Bool = false;

	/**
		// whether newline counts as white space
	**/
	public var _nlIsSpace:Bool = false;

	/**
		// max value of ss.count for this arg; argLimit <= limit
	**/
	public var _argLimit:GoInt = 0;

	/**
		// max value of ss.count.
	**/
	public var _limit:GoInt = 0;

	/**
		// width of this arg.
	**/
	public var _maxWid:GoInt = 0;

	public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:GoInt, ?_limit:GoInt, ?_maxWid:GoInt) {
		if (_validSave != null)
			this._validSave = _validSave;
		if (_nlIsEnd != null)
			this._nlIsEnd = _nlIsEnd;
		if (_nlIsSpace != null)
			this._nlIsSpace = _nlIsSpace;
		if (_argLimit != null)
			this._argLimit = _argLimit;
		if (_limit != null)
			this._limit = _limit;
		if (_maxWid != null)
			this._maxWid = _maxWid;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
	}
}

/**
	// readRune is a structure to enable reading UTF-8 encoded code points
	// from an io.Reader. It is used if the Reader given to the scanner does
	// not already implement io.RuneScanner.
**/
@:structInit @:using(stdgo.fmt.Fmt.T_readRune_static_extension) private class T_readRune {
	public var _reader:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	/**
		// used only inside ReadRune
	**/
	public var _buf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);

	/**
		// number of bytes in pendBuf; only >0 for bad UTF-8
	**/
	public var _pending:GoInt = 0;

	/**
		// bytes left over
	**/
	public var _pendBuf:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...4) (0 : GoUInt8)]);

	/**
		// if >=0 next rune; when <0 is ^(previous Rune)
	**/
	public var _peekRune:GoInt32 = 0;

	public function new(?_reader:stdgo.io.Io.Reader, ?_buf:GoArray<GoUInt8>, ?_pending:GoInt, ?_pendBuf:GoArray<GoUInt8>, ?_peekRune:GoInt32) {
		if (_reader != null)
			this._reader = _reader;
		if (_buf != null)
			this._buf = _buf;
		if (_pending != null)
			this._pending = _pending;
		if (_pendBuf != null)
			this._pendBuf = _pendBuf;
		if (_peekRune != null)
			this._peekRune = _peekRune;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_readRune(_reader, _buf, _pending, _pendBuf, _peekRune);
	}
}

/**
	// Use simple []byte instead of bytes.Buffer to avoid large dependency.
**/
@:named @:using(stdgo.fmt.Fmt.T_buffer_static_extension) private typedef T_buffer = Slice<GoUInt8>;

@:named @:using(stdgo.fmt.Fmt.T_stringReader_static_extension) private typedef T_stringReader = GoString;

/**
	// Errorf formats according to a format specifier and returns the string as a
	// value that satisfies error.
	//
	// If the format specifier includes a %w verb with an error operand,
	// the returned error will implement an Unwrap method returning the operand. It is
	// invalid to include more than one %w verb or to supply it with an operand
	// that does not implement the error interface. The %w verb is otherwise
	// a synonym for %v.
**/
function errorf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._wrapErrs = true;
	_p._doPrintf(_format, _a);
	var _s:GoString = (_p._buf : GoString);
	var _err:Error = (null : Error);
	if (_p._wrappedErr == null) {
		_err = stdgo.errors.Errors.new_(_s);
	} else {
		_err = Go.asInterface(((new T_wrapError(_s, _p._wrappedErr) : T_wrapError) : Ref<T_wrapError>));
	};
	_p._free();
	return _err;
}

/**
	// newPrinter allocates a new pp struct or grabs a cached one.
**/
function _newPrinter():Ref<T_pp> {
	var _p = (Go.typeAssert((_ppFree.get() : Ref<T_pp>)) : Ref<T_pp>);
	_p._panicking = false;
	_p._erroring = false;
	_p._wrapErrs = false;
	_p._fmt._init((_p._buf : Ref<T_buffer>));
	return _p;
}

/**
	// Fprintf formats according to a format specifier and writes to w.
	// It returns the number of bytes written and any write error encountered.
**/
function fprintf(_w:stdgo.io.Io.Writer, _format:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var _p = _newPrinter();
	_p._doPrintf(_format, _a);
	{
		var __tmp__ = _w.write(_p._buf);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_p._free();
	return {_0: _n, _1: _err};
}

/**
	// Printf formats according to a format specifier and writes to standard output.
	// It returns the number of bytes written and any write error encountered.
**/
function printf(_format:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fprintf(Go.asInterface(stdgo.os.Os.stdout), _format, ..._a.__toArray__());
}

/**
	// Sprintf formats according to a format specifier and returns the resulting string.
**/
function sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrintf(_format, _a);
	var _s:GoString = (_p._buf : GoString);
	_p._free();
	return _s;
}

/**
	// Appendf formats according to a format specifier, appends the result to the byte
	// slice, and returns the updated slice.
**/
function appendf(_b:Slice<GoByte>, _format:GoString, _a:haxe.Rest<AnyInterface>):Slice<GoByte> {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrintf(_format, _a);
	_b = _b.__appendref__(..._p._buf.__toArray__());
	_p._free();
	return _b;
}

/**
	// Fprint formats using the default formats for its operands and writes to w.
	// Spaces are added between operands when neither is a string.
	// It returns the number of bytes written and any write error encountered.
**/
function fprint(_w:stdgo.io.Io.Writer, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var _p = _newPrinter();
	_p._doPrint(_a);
	{
		var __tmp__ = _w.write(_p._buf);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_p._free();
	return {_0: _n, _1: _err};
}

/**
	// Print formats using the default formats for its operands and writes to standard output.
	// Spaces are added between operands when neither is a string.
	// It returns the number of bytes written and any write error encountered.
**/
function print(_a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fprint(Go.asInterface(stdgo.os.Os.stdout), ..._a.__toArray__());
}

/**
	// Sprint formats using the default formats for its operands and returns the resulting string.
	// Spaces are added between operands when neither is a string.
**/
function sprint(_a:haxe.Rest<AnyInterface>):GoString {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrint(_a);
	var _s:GoString = (_p._buf : GoString);
	_p._free();
	return _s;
}

/**
	// Append formats using the default formats for its operands, appends the result to
	// the byte slice, and returns the updated slice.
**/
function append(_b:Slice<GoByte>, _a:haxe.Rest<AnyInterface>):Slice<GoByte> {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrint(_a);
	_b = _b.__appendref__(..._p._buf.__toArray__());
	_p._free();
	return _b;
}

/**
	// Fprintln formats using the default formats for its operands and writes to w.
	// Spaces are always added between operands and a newline is appended.
	// It returns the number of bytes written and any write error encountered.
**/
function fprintln(_w:stdgo.io.Io.Writer, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var _p = _newPrinter();
	_p._doPrintln(_a);
	{
		var __tmp__ = _w.write(_p._buf);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_p._free();
	return {_0: _n, _1: _err};
}

/**
	// Println formats using the default formats for its operands and writes to standard output.
	// Spaces are always added between operands and a newline is appended.
	// It returns the number of bytes written and any write error encountered.
**/
function println(_a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fprintln(Go.asInterface(stdgo.os.Os.stdout), ..._a.__toArray__());
}

/**
	// Sprintln formats using the default formats for its operands and returns the resulting string.
	// Spaces are always added between operands and a newline is appended.
**/
function sprintln(_a:haxe.Rest<AnyInterface>):GoString {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrintln(_a);
	var _s:GoString = (_p._buf : GoString);
	_p._free();
	return _s;
}

/**
	// Appendln formats using the default formats for its operands, appends the result
	// to the byte slice, and returns the updated slice. Spaces are always added
	// between operands and a newline is appended.
**/
function appendln(_b:Slice<GoByte>, _a:haxe.Rest<AnyInterface>):Slice<GoByte> {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _p = _newPrinter();
	_p._doPrintln(_a);
	_b = _b.__appendref__(..._p._buf.__toArray__());
	_p._free();
	return _b;
}

/**
	// getField gets the i'th field of the struct value.
	// If the field is itself is an interface, return a value for
	// the thing inside the interface, not the interface itself.
**/
function _getField(_v:stdgo.reflect.Reflect.Value, _i:GoInt):stdgo.reflect.Reflect.Value {
	var _val:stdgo.reflect.Reflect.Value = (_v.field(_i) == null ? null : _v.field(_i).__copy__());
	if ((_val.kind() == (("20" : GoUInt) : stdgo.reflect.Reflect.Kind)) && !_val.isNil()) {
		_val = (_val.elem() == null ? null : _val.elem().__copy__());
	};
	return (_val == null ? null : _val.__copy__());
}

/**
	// tooLarge reports whether the magnitude of the integer is
	// too large to be used as a formatting width or precision.
**/
function _tooLarge(_x:GoInt):Bool {
	{};
	return (_x > (1000000 : GoInt)) || (_x < (-1000000:GoInt));
}

/**
	// parsenum converts ASCII to integer.  num is 0 (and isnum is false) if no number present.
**/
function _parsenum(_s:GoString, _start:GoInt, _end:GoInt):{var _0:GoInt; var _1:Bool; var _2:GoInt;} {
	var _num:GoInt = (0 : GoInt),
		_isnum:Bool = false,
		_newi:GoInt = (0 : GoInt);
	if (_start >= _end) {
		return {_0: (0 : GoInt), _1: false, _2: _end};
	};
	{
		_newi = _start;
		Go.cfor(((_newi < _end) && ((48 : GoUInt8) <= _s[(_newi : GoInt)])) && (_s[(_newi : GoInt)] <= (57 : GoUInt8)), _newi++, {
			if (_tooLarge(_num)) {
				return {_0: (0 : GoInt), _1: false, _2: _end};
			};
			_num = (_num * (10 : GoInt)) + (_s[(_newi : GoInt)] - (48 : GoUInt8): GoInt);
			_isnum = true;
		});
	};
	return {_0: _num, _1: _isnum, _2: _newi};
}

/**
	// intFromArg gets the argNumth element of a. On return, isInt reports whether the argument has integer type.
**/
function _intFromArg(_a:Slice<AnyInterface>, _argNum:GoInt):{var _0:GoInt; var _1:Bool; var _2:GoInt;} {
	var _num:GoInt = (0 : GoInt),
		_isInt:Bool = false,
		_newArgNum:GoInt = (0 : GoInt);
	_newArgNum = _argNum;
	if (_argNum < (_a.length)) {
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((_a[(_argNum : GoInt)] : GoInt)) : GoInt), ok: true};
			} catch (_) {
				{value: (0 : GoInt), ok: false};
			};
			_num = __tmp__.value;
			_isInt = __tmp__.ok;
		};
		if (!_isInt) {
			{
				var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_a[(_argNum : GoInt)]) == null ? null : stdgo.reflect.Reflect.valueOf(_a[(_argNum : GoInt)])
					.__copy__());
				if (_v.kind() == ((("2" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("3" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("4" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("5" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("6" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
					var _n:GoInt64 = _v.int_();
					if (((_n : GoInt) : GoInt64) == (_n)) {
						_num = (_n : GoInt);
						_isInt = true;
					};
				} else if (_v.kind() == ((("7" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("8" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("9" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("10" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("11" : GoUInt) : stdgo.reflect.Reflect.Kind))
					|| _v.kind() == ((("12" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
					var _n:GoUInt64 = _v.uint();
					if (((_n : GoInt64) >= (("0" : GoInt64) : GoInt64)) && (((_n : GoInt) : GoUInt64) == _n)) {
						_num = (_n : GoInt);
						_isInt = true;
					};
				} else {};
			};
		};
		_newArgNum = _argNum + (1 : GoInt);
		if (_tooLarge(_num)) {
			_num = (0 : GoInt);
			_isInt = false;
		};
	};
	return {_0: _num, _1: _isInt, _2: _newArgNum};
}

/**
	// parseArgNumber returns the value of the bracketed number, minus 1
	// (explicit argument numbers are one-indexed but we want zero-indexed).
	// The opening bracket is known to be present at format[0].
	// The returned values are the index, the number of bytes to consume
	// up to the closing paren, if present, and whether the number parsed
	// ok. The bytes to consume will be 1 if no closing paren is present.
**/
function _parseArgNumber(_format:GoString):{var _0:GoInt; var _1:GoInt; var _2:Bool;} {
	var _index:GoInt = (0 : GoInt), _wid:GoInt = (0 : GoInt), _ok:Bool = false;
	if ((_format.length) < (3 : GoInt)) {
		return {_0: (0 : GoInt), _1: (1 : GoInt), _2: false};
	};
	{
		var _i:GoInt = (1 : GoInt);
		Go.cfor(_i < (_format.length), _i++, {
			if (_format[(_i : GoInt)] == ((93 : GoUInt8))) {
				var __tmp__ = _parsenum(_format, (1 : GoInt), _i),
					_width:GoInt = __tmp__._0,
					_ok:Bool = __tmp__._1,
					_newi:GoInt = __tmp__._2;
				if (!_ok || (_newi != _i)) {
					return {_0: (0 : GoInt), _1: _i + (1 : GoInt), _2: false};
				};
				return {_0: _width - (1 : GoInt), _1: _i + (1 : GoInt), _2: true};
			};
		});
	};
	return {_0: (0 : GoInt), _1: (1 : GoInt), _2: false};
}

/**
	// Scan scans text read from standard input, storing successive
	// space-separated values into successive arguments. Newlines count
	// as space. It returns the number of items successfully scanned.
	// If that is less than the number of arguments, err will report why.
**/
function scan(_a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscan(Go.asInterface(stdgo.os.Os.stdin), ..._a.__toArray__());
}

/**
	// Scanln is similar to Scan, but stops scanning at a newline and
	// after the final item there must be a newline or EOF.
**/
function scanln(_a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscanln(Go.asInterface(stdgo.os.Os.stdin), ..._a.__toArray__());
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
function scanf(_format:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscanf(Go.asInterface(stdgo.os.Os.stdin), _format, ..._a.__toArray__());
}

/**
	// Sscan scans the argument string, storing successive space-separated
	// values into successive arguments. Newlines count as space. It
	// returns the number of items successfully scanned. If that is less
	// than the number of arguments, err will report why.
**/
function sscan(_str:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscan(Go.asInterface(new Pointer<T_stringReader>(() -> (Go.pointer(_str).value : T_stringReader),
		v -> (Go.pointer(_str).value = (v : GoString):T_stringReader))),
		..._a.__toArray__());
}

/**
	// Sscanln is similar to Sscan, but stops scanning at a newline and
	// after the final item there must be a newline or EOF.
**/
function sscanln(_str:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscanln(Go.asInterface(new Pointer<T_stringReader>(() -> (Go.pointer(_str).value : T_stringReader),
		v -> (Go.pointer(_str).value = (v : GoString):T_stringReader))),
		..._a.__toArray__());
}

/**
	// Sscanf scans the argument string, storing successive space-separated
	// values into successive arguments as determined by the format. It
	// returns the number of items successfully parsed.
	// Newlines in the input must match newlines in the format.
**/
function sscanf(_str:GoString, _format:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	return fscanf(Go.asInterface(new Pointer<T_stringReader>(() -> (Go.pointer(_str).value : T_stringReader),
		v -> (Go.pointer(_str).value = (v : GoString):T_stringReader))),
		_format, ..._a.__toArray__());
}

/**
	// Fscan scans text read from r, storing successive space-separated
	// values into successive arguments. Newlines count as space. It
	// returns the number of items successfully scanned. If that is less
	// than the number of arguments, err will report why.
**/
function fscan(_r:stdgo.io.Io.Reader, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var __tmp__ = _newScanState(_r, true, false),
		_s:Ref<T_ss> = __tmp__._0,
		_old:T_ssave = __tmp__._1;
	{
		var __tmp__ = _s._doScan(_a);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_s._free((_old == null ? null : _old.__copy__()));
	return {_0: _n, _1: _err};
}

/**
	// Fscanln is similar to Fscan, but stops scanning at a newline and
	// after the final item there must be a newline or EOF.
**/
function fscanln(_r:stdgo.io.Io.Reader, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var __tmp__ = _newScanState(_r, false, true),
		_s:Ref<T_ss> = __tmp__._0,
		_old:T_ssave = __tmp__._1;
	{
		var __tmp__ = _s._doScan(_a);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_s._free((_old == null ? null : _old.__copy__()));
	return {_0: _n, _1: _err};
}

/**
	// Fscanf scans text read from r, storing successive space-separated
	// values into successive arguments as determined by the format. It
	// returns the number of items successfully parsed.
	// Newlines in the input must match newlines in the format.
**/
function fscanf(_r:stdgo.io.Io.Reader, _format:GoString, _a:haxe.Rest<AnyInterface>):{var _0:GoInt; var _1:Error;} {
	var _a = new Slice<AnyInterface>(0, 0, ..._a);
	var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
	var __tmp__ = _newScanState(_r, false, false),
		_s:Ref<T_ss> = __tmp__._0,
		_old:T_ssave = __tmp__._1;
	{
		var __tmp__ = _s._doScanf(_format, _a);
		_n = __tmp__._0;
		_err = __tmp__._1;
	};
	_s._free((_old == null ? null : _old.__copy__()));
	return {_0: _n, _1: _err};
}

function _isSpace(_r:GoRune):Bool {
	if (_r >= (65536 : GoInt32)) {
		return false;
	};
	var _rx:GoUInt16 = (_r : GoUInt16);
	for (_0 => _rng in _space) {
		if (_rx < _rng[(0 : GoInt)]) {
			return false;
		};
		if (_rx <= _rng[(1 : GoInt)]) {
			return true;
		};
	};
	return false;
}

/**
	// notSpace is the default scanning function used in Token.
**/
function _notSpace(_r:GoRune):Bool {
	return !_isSpace(_r);
}

/**
	// newScanState allocates a new ss struct or grab a cached one.
**/
function _newScanState(_r:stdgo.io.Io.Reader, _nlIsSpace:Bool, _nlIsEnd:Bool):{var _0:Ref<T_ss>; var _1:T_ssave;} {
	var _s:Ref<T_ss> = (null : Ref<T_ss>), _old:T_ssave = ({} : T_ssave);
	_s = (Go.typeAssert((_ssFree.get() : Ref<T_ss>)) : Ref<T_ss>);
	{
		var __tmp__ = try {
			{value: (Go.typeAssert((Go.toInterface(_r) : stdgo.io.Io.RuneScanner)) : stdgo.io.Io.RuneScanner), ok: true};
		} catch (_) {
			{value: (null : stdgo.io.Io.RuneScanner), ok: false};
		}, _rs = __tmp__.value, _ok = __tmp__.ok;
		if (_ok) {
			_s._rs = _rs;
		} else {
			_s._rs = Go.asInterface((({_reader: _r, _peekRune: (-1 : GoInt32)} : T_readRune) : Ref<T_readRune>));
		};
	};
	_s._ssave._nlIsSpace = _nlIsSpace;
	_s._ssave._nlIsEnd = _nlIsEnd;
	_s._atEOF = false;
	_s._ssave._limit = (1073741824 : GoInt);
	_s._ssave._argLimit = (1073741824 : GoInt);
	_s._ssave._maxWid = (1073741824 : GoInt);
	_s._ssave._validSave = true;
	_s._count = (0 : GoInt);
	return {_0: _s, _1: _old};
}

function _indexRune(_s:GoString, _r:GoRune):GoInt {
	for (_i => _c in _s) {
		if (_c == (_r)) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

function _hasX(_s:GoString):Bool {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			if ((_s[(_i : GoInt)] == (120 : GoUInt8)) || (_s[(_i : GoInt)] == (88 : GoUInt8))) {
				return true;
			};
		});
	};
	return false;
}

/**
	// hexDigit returns the value of the hexadecimal digit.
**/
function _hexDigit(_d:GoRune):{var _0:GoInt; var _1:Bool;} {
	var _digit:GoInt = (_d : GoInt);
	if (_digit == ((48 : GoInt)) || _digit == ((49 : GoInt)) || _digit == ((50 : GoInt)) || _digit == ((51 : GoInt)) || _digit == ((52 : GoInt))
		|| _digit == ((53 : GoInt)) || _digit == ((54 : GoInt)) || _digit == ((55 : GoInt)) || _digit == ((56 : GoInt)) || _digit == ((57 : GoInt))) {
		return {_0: _digit - (48 : GoInt), _1: true};
	} else if (_digit == ((97 : GoInt)) || _digit == ((98 : GoInt)) || _digit == ((99 : GoInt)) || _digit == ((100 : GoInt)) || _digit == ((101 : GoInt))
		|| _digit == ((102 : GoInt))) {
		return {_0: ((10 : GoInt) + _digit) - (97 : GoInt), _1: true};
	} else if (_digit == ((65 : GoInt)) || _digit == ((66 : GoInt)) || _digit == ((67 : GoInt)) || _digit == ((68 : GoInt)) || _digit == ((69 : GoInt))
		|| _digit == ((70 : GoInt))) {
		return {_0: ((10 : GoInt) + _digit) - (65 : GoInt), _1: true};
	};
	return {_0: (-1 : GoInt), _1: false};
}

/**
	// errorHandler turns local panics into error returns.
**/
function _errorHandler(_errp:Ref<Error>):Void {
	{
		var _e:AnyInterface = ({
			final r = Go.recover_exception;
			Go.recover_exception = null;
			r;
		});
		if (_e != null) {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((_e : T_scanError)) : T_scanError), ok: true};
				} catch (_) {
					{value: ({} : T_scanError), ok: false};
				}, _se = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_errp = _se._err;
				} else {
					var __tmp__ = try {
						{value: (Go.typeAssert((_e : Error)) : Error), ok: true};
					} catch (_) {
						{value: (null : Error), ok: false};
					}, _eof = __tmp__.value, _ok = __tmp__.ok;
					if (_ok && (Go.toInterface(_eof) == Go.toInterface(stdgo.io.Io.eof))) {
						_errp = _eof;
					} else {
						throw Go.toInterface(_e);
					};
				};
			};
		};
	};
}

class T_wrapError_asInterface {
	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_wrapError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
	@:keep
	static public function unwrap(_e:Ref<T_wrapError>):Error {
		return _e._err;
	}

	@:keep
	static public function error(_e:Ref<T_wrapError>):GoString {
		return _e._msg;
	}
}

class T_fmt_asInterface {
	/**
		// fmtFloat formats a float64. It assumes that verb is a valid format specifier
		// for strconv.AppendFloat and therefore fits into a byte.
	**/
	@:keep
	public function _fmtFloat(_v:GoFloat64, _size:GoInt, _verb:GoRune, _prec:GoInt):Void
		__self__.value._fmtFloat(_v, _size, _verb, _prec);

	/**
		// fmtQc formats an integer as a single-quoted, escaped Go character constant.
		// If the character is not valid Unicode, it will print '\ufffd'.
	**/
	@:keep
	public function _fmtQc(_c:GoUInt64):Void
		__self__.value._fmtQc(_c);

	/**
		// fmtC formats an integer as a Unicode character.
		// If the character is not valid Unicode, it will print '\ufffd'.
	**/
	@:keep
	public function _fmtC(_c:GoUInt64):Void
		__self__.value._fmtC(_c);

	/**
		// fmtQ formats a string as a double-quoted, escaped Go string constant.
		// If f.sharp is set a raw (backquoted) string may be returned instead
		// if the string does not contain any control characters other than tab.
	**/
	@:keep
	public function _fmtQ(_s:GoString):Void
		__self__.value._fmtQ(_s);

	/**
		// fmtBx formats a byte slice as a hexadecimal encoding of its bytes.
	**/
	@:keep
	public function _fmtBx(_b:Slice<GoByte>, _digits:GoString):Void
		__self__.value._fmtBx(_b, _digits);

	/**
		// fmtSx formats a string as a hexadecimal encoding of its bytes.
	**/
	@:keep
	public function _fmtSx(_s:GoString, _digits:GoString):Void
		__self__.value._fmtSx(_s, _digits);

	/**
		// fmtSbx formats a string or byte slice as a hexadecimal encoding of its bytes.
	**/
	@:keep
	public function _fmtSbx(_s:GoString, _b:Slice<GoByte>, _digits:GoString):Void
		__self__.value._fmtSbx(_s, _b, _digits);

	/**
		// fmtBs formats the byte slice b as if it was formatted as string with fmtS.
	**/
	@:keep
	public function _fmtBs(_b:Slice<GoByte>):Void
		__self__.value._fmtBs(_b);

	/**
		// fmtS formats a string.
	**/
	@:keep
	public function _fmtS(_s:GoString):Void
		__self__.value._fmtS(_s);

	/**
		// truncate truncates the byte slice b as a string of the specified precision, if present.
	**/
	@:keep
	public function _truncate(_b:Slice<GoByte>):Slice<GoByte>
		return __self__.value._truncate(_b);

	/**
		// truncateString truncates the string s to the specified precision, if present.
	**/
	@:keep
	public function _truncateString(_s:GoString):GoString
		return __self__.value._truncateString(_s);

	/**
		// fmtInteger formats signed and unsigned integers.
	**/
	@:keep
	public function _fmtInteger(_u:GoUInt64, _base:GoInt, _isSigned:Bool, _verb:GoRune, _digits:GoString):Void
		__self__.value._fmtInteger(_u, _base, _isSigned, _verb, _digits);

	/**
		// fmtUnicode formats a uint64 as "U+0078" or with f.sharp set as "U+0078 'x'".
	**/
	@:keep
	public function _fmtUnicode(_u:GoUInt64):Void
		__self__.value._fmtUnicode(_u);

	/**
		// fmtBoolean formats a boolean.
	**/
	@:keep
	public function _fmtBoolean(_v:Bool):Void
		__self__.value._fmtBoolean(_v);

	/**
		// padString appends s to f.buf, padded on left (!f.minus) or right (f.minus).
	**/
	@:keep
	public function _padString(_s:GoString):Void
		__self__.value._padString(_s);

	/**
		// pad appends b to f.buf, padded on left (!f.minus) or right (f.minus).
	**/
	@:keep
	public function _pad(_b:Slice<GoByte>):Void
		__self__.value._pad(_b);

	/**
		// writePadding generates n bytes of padding.
	**/
	@:keep
	public function _writePadding(_n:GoInt):Void
		__self__.value._writePadding(_n);

	@:keep
	public function _init(_buf:Ref<T_buffer>):Void
		__self__.value._init(_buf);

	@:keep
	public function _clearflags():Void
		__self__.value._clearflags();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_fmt>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_fmt_asInterface) class T_fmt_static_extension {
	/**
		// fmtFloat formats a float64. It assumes that verb is a valid format specifier
		// for strconv.AppendFloat and therefore fits into a byte.
	**/
	@:keep
	static public function _fmtFloat(_f:Ref<T_fmt>, _v:GoFloat64, _size:GoInt, _verb:GoRune, _prec:GoInt):Void {
		if (_f._fmtFlags._precPresent) {
			_prec = _f._prec;
		};
		var _num = stdgo.strconv.Strconv.appendFloat((_f._intbuf.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>), _v, (_verb : GoByte), _prec, _size);
		if ((_num[(1 : GoInt)] == (45 : GoUInt8)) || (_num[(1 : GoInt)] == (43 : GoUInt8))) {
			_num = (_num.__slice__((1 : GoInt)) : Slice<GoUInt8>);
		} else {
			_num[(0 : GoInt)] = (43 : GoUInt8);
		};
		if ((_f._fmtFlags._space && (_num[(0 : GoInt)] == (43 : GoUInt8))) && !_f._fmtFlags._plus) {
			_num[(0 : GoInt)] = (32 : GoUInt8);
		};
		if ((_num[(1 : GoInt)] == (73 : GoUInt8)) || (_num[(1 : GoInt)] == (78 : GoUInt8))) {
			var _oldZero:Bool = _f._fmtFlags._zero;
			_f._fmtFlags._zero = false;
			if (((_num[(1 : GoInt)] == (78 : GoUInt8)) && !_f._fmtFlags._space) && !_f._fmtFlags._plus) {
				_num = (_num.__slice__((1 : GoInt)) : Slice<GoUInt8>);
			};
			_f._pad(_num);
			_f._fmtFlags._zero = _oldZero;
			return;
		};
		if (_f._fmtFlags._sharp && (_verb != (98 : GoInt32))) {
			var _digits:GoInt = (0 : GoInt);
			if (_verb == ((118 : GoInt32)) || _verb == ((103 : GoInt32)) || _verb == ((71 : GoInt32)) || _verb == ((120 : GoInt32))) {
				_digits = _prec;
				if (_digits == ((-1 : GoInt))) {
					_digits = (6 : GoInt);
				};
			};
			var _tailBuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...6) (0 : GoUInt8)]);
			var _tail = (_tailBuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
			var _hasDecimalPoint:Bool = false;
			var _sawNonzeroDigit:Bool = false;
			{
				var _i:GoInt = (1 : GoInt);
				Go.cfor(_i < (_num.length), _i++, {
					{
						var __switchIndex__ = -1;
						while (true) {
							if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_num[(_i : GoInt)] == (46 : GoUInt8)))) {
								_hasDecimalPoint = true;
								break;
								break;
							} else if (__switchIndex__ == 1
								|| (__switchIndex__ == -1
									&& (_num[(_i : GoInt)] == ((112 : GoUInt8)) || _num[(_i : GoInt)] == ((80 : GoUInt8))))) {
								_tail = _tail.__appendref__(...(_num.__slice__(_i) : Slice<GoUInt8>).__toArray__());
								_num = (_num.__slice__(0, _i) : Slice<GoUInt8>);
								break;
								break;
							} else if (__switchIndex__ == 2
								|| (__switchIndex__ == -1
									&& (_num[(_i : GoInt)] == ((101 : GoUInt8)) || _num[(_i : GoInt)] == ((69 : GoUInt8))))) {
								if ((_verb != (120 : GoInt32)) && (_verb != (88 : GoInt32))) {
									_tail = _tail.__appendref__(...(_num.__slice__(_i) : Slice<GoUInt8>).__toArray__());
									_num = (_num.__slice__(0, _i) : Slice<GoUInt8>);
									break;
								};
								@:fallthrough {
									__switchIndex__ = 3;
									continue;
								};
								break;
							} else {
								if (_num[(_i : GoInt)] != ((48 : GoUInt8))) {
									_sawNonzeroDigit = true;
								};
								if (_sawNonzeroDigit) {
									_digits--;
								};
								break;
							};
							break;
						};
					};
				});
			};
			if (!_hasDecimalPoint) {
				if ((_num.length == (2 : GoInt)) && (_num[(1 : GoInt)] == (48 : GoUInt8))) {
					_digits--;
				};
				_num = _num.__appendref__((46 : GoUInt8));
			};
			while (_digits > (0 : GoInt)) {
				_num = _num.__appendref__((48 : GoUInt8));
				_digits--;
			};
			_num = _num.__appendref__(..._tail.__toArray__());
		};
		if (_f._fmtFlags._plus || (_num[(0 : GoInt)] != (43 : GoUInt8))) {
			if ((_f._fmtFlags._zero && _f._fmtFlags._widPresent) && (_f._wid > _num.length)) {
				_f._buf._writeByte(_num[(0 : GoInt)]);
				_f._writePadding(_f._wid - (_num.length));
				_f._buf._write((_num.__slice__((1 : GoInt)) : Slice<GoUInt8>));
				return;
			};
			_f._pad(_num);
			return;
		};
		_f._pad((_num.__slice__((1 : GoInt)) : Slice<GoUInt8>));
	}

	/**
		// fmtQc formats an integer as a single-quoted, escaped Go character constant.
		// If the character is not valid Unicode, it will print '\ufffd'.
	**/
	@:keep
	static public function _fmtQc(_f:Ref<T_fmt>, _c:GoUInt64):Void {
		var _r:GoInt32 = (_c : GoRune);
		if (_c > ("1114111" : GoUInt64)) {
			_r = (65533 : GoInt32);
		};
		var _buf = (_f._intbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
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
	static public function _fmtC(_f:Ref<T_fmt>, _c:GoUInt64):Void {
		var _r:GoInt32 = (_c : GoRune);
		if (_c > ("1114111" : GoUInt64)) {
			_r = (65533 : GoInt32);
		};
		var _buf = (_f._intbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
		var _w:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>), _r);
		_f._pad((_buf.__slice__(0, _w) : Slice<GoUInt8>));
	}

	/**
		// fmtQ formats a string as a double-quoted, escaped Go string constant.
		// If f.sharp is set a raw (backquoted) string may be returned instead
		// if the string does not contain any control characters other than tab.
	**/
	@:keep
	static public function _fmtQ(_f:Ref<T_fmt>, _s:GoString):Void {
		_s = _f._truncateString(_s);
		if (_f._fmtFlags._sharp && stdgo.strconv.Strconv.canBackquote(_s)) {
			_f._padString((("`" : GoString) + _s) + ("`" : GoString));
			return;
		};
		var _buf = (_f._intbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>);
		if (_f._fmtFlags._plus) {
			_f._pad(stdgo.strconv.Strconv.appendQuoteToASCII(_buf, _s));
		} else {
			_f._pad(stdgo.strconv.Strconv.appendQuote(_buf, _s));
		};
	}

	/**
		// fmtBx formats a byte slice as a hexadecimal encoding of its bytes.
	**/
	@:keep
	static public function _fmtBx(_f:Ref<T_fmt>, _b:Slice<GoByte>, _digits:GoString):Void {
		_f._fmtSbx(Go.str(), _b, _digits);
	}

	/**
		// fmtSx formats a string as a hexadecimal encoding of its bytes.
	**/
	@:keep
	static public function _fmtSx(_f:Ref<T_fmt>, _s:GoString, _digits:GoString):Void {
		_f._fmtSbx(_s, (null : Slice<GoUInt8>), _digits);
	}

	/**
		// fmtSbx formats a string or byte slice as a hexadecimal encoding of its bytes.
	**/
	@:keep
	static public function _fmtSbx(_f:Ref<T_fmt>, _s:GoString, _b:Slice<GoByte>, _digits:GoString):Void {
		var _length:GoInt = (_b.length);
		if (_b == null) {
			_length = (_s.length);
		};
		if (_f._fmtFlags._precPresent && (_f._prec < _length)) {
			_length = _f._prec;
		};
		var _width:GoInt = (2 : GoInt) * _length;
		if (_width > (0 : GoInt)) {
			if (_f._fmtFlags._space) {
				if (_f._fmtFlags._sharp) {
					_width = _width * ((2 : GoInt));
				};
				_width = _width + (_length - (1 : GoInt));
			} else if (_f._fmtFlags._sharp) {
				_width = _width + ((2 : GoInt));
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
		var _buf:T_buffer = _f._buf;
		if (_f._fmtFlags._sharp) {
			_buf = _buf.__appendref__((48 : GoUInt8), _digits[(16 : GoInt)]);
		};
		var _c:GoByte = (0 : GoUInt8);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _length, _i++, {
				if (_f._fmtFlags._space && (_i > (0 : GoInt))) {
					_buf = _buf.__appendref__((32 : GoUInt8));
					if (_f._fmtFlags._sharp) {
						_buf = _buf.__appendref__((48 : GoUInt8), _digits[(16 : GoInt)]);
					};
				};
				if (_b != null) {
					_c = _b[(_i : GoInt)];
				} else {
					_c = _s[(_i : GoInt)];
				};
				_buf = _buf.__appendref__(_digits[(_c >> ("4" : GoUInt64) : GoInt)], _digits[(_c & (15 : GoUInt8) : GoInt)]);
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
	static public function _fmtBs(_f:Ref<T_fmt>, _b:Slice<GoByte>):Void {
		_b = _f._truncate(_b);
		_f._pad(_b);
	}

	/**
		// fmtS formats a string.
	**/
	@:keep
	static public function _fmtS(_f:Ref<T_fmt>, _s:GoString):Void {
		_s = _f._truncateString(_s);
		_f._padString(_s);
	}

	/**
		// truncate truncates the byte slice b as a string of the specified precision, if present.
	**/
	@:keep
	static public function _truncate(_f:Ref<T_fmt>, _b:Slice<GoByte>):Slice<GoByte> {
		if (_f._fmtFlags._precPresent) {
			var _n:GoInt = _f._prec;
			{
				var _i:GoInt = (0 : GoInt);
				while (_i < (_b.length)) {
					_n--;
					if (_n < (0:GoInt)) {
						return (_b.__slice__(0, _i) : Slice<GoUInt8>);
					};
					var _wid:GoInt = (1 : GoInt);
					if (_b[(_i : GoInt)] >= (128 : GoUInt8)) {
						{
							var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_b.__slice__(_i) : Slice<GoUInt8>));
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
	static public function _truncateString(_f:Ref<T_fmt>, _s:GoString):GoString {
		if (_f._fmtFlags._precPresent) {
			var _n:GoInt = _f._prec;
			for (_i => _ in _s) {
				_n--;
				if (_n < (0:GoInt)) {
					return (_s.__slice__(0, _i) : GoString);
				};
			};
		};
		return _s;
	}

	/**
		// fmtInteger formats signed and unsigned integers.
	**/
	@:keep
	static public function _fmtInteger(_f:Ref<T_fmt>, _u:GoUInt64, _base:GoInt, _isSigned:Bool, _verb:GoRune, _digits:GoString):Void {
		var _negative:Bool = _isSigned && ((_u : GoInt64) < (("0" : GoInt64) : GoInt64));
		if (_negative) {
			_u = -_u;
		};
		var _buf = (_f._intbuf.__slice__((0 : GoInt)) : Slice<GoUInt8>);
		if (_f._fmtFlags._widPresent || _f._fmtFlags._precPresent) {
			var _width:GoInt = ((3 : GoInt) + _f._wid) + _f._prec;
			if (_width > (_buf.length)) {
				_buf = new Slice<GoUInt8>((_width : GoInt).toBasic(), 0, ...[for (i in 0...(_width : GoInt).toBasic()) (0 : GoUInt8)]);
			};
		};
		var _prec:GoInt = (0 : GoInt);
		if (_f._fmtFlags._precPresent) {
			_prec = _f._prec;
			if ((_prec == (0 : GoInt)) && (_u == ("0" : GoUInt64))) {
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
		var _i:GoInt = (_buf.length);
		if (_base == ((10 : GoInt))) {
			while (_u >= ("10" : GoUInt64)) {
				_i--;
				var _next:GoUInt64 = _u / ("10" : GoUInt64);
				_buf[(_i : GoInt)] = (((("48" : GoUInt64) : GoUInt64) + _u) - (_next * (("10" : GoUInt64) : GoUInt64)) : GoByte);
				_u = _next;
			};
		} else if (_base == ((16 : GoInt))) {
			while (_u >= ("16" : GoUInt64)) {
				_i--;
				_buf[(_i : GoInt)] = _digits[(_u & ("15" : GoUInt64) : GoInt)];
				_u = _u >> (("4" : GoUInt64));
			};
		} else if (_base == ((8 : GoInt))) {
			while (_u >= ("8" : GoUInt64)) {
				_i--;
				_buf[(_i : GoInt)] = (("48" : GoUInt64) + (_u & (("7" : GoUInt64) : GoUInt64)) : GoByte);
				_u = _u >> (("3" : GoUInt64));
			};
		} else if (_base == ((2 : GoInt))) {
			while (_u >= ("2" : GoUInt64)) {
				_i--;
				_buf[(_i : GoInt)] = (("48" : GoUInt64) + (_u & (("1" : GoUInt64) : GoUInt64)) : GoByte);
				_u = _u >> (("1" : GoUInt64));
			};
		} else {
			throw Go.toInterface(("fmt: unknown base; can\'t happen" : GoString));
		};
		_i--;
		_buf[(_i : GoInt)] = _digits[(_u : GoInt)];
		while ((_i > (0 : GoInt)) && (_prec > (_buf.length - _i))) {
			_i--;
			_buf[(_i : GoInt)] = (48 : GoUInt8);
		};
		if (_f._fmtFlags._sharp) {
			if (_base == ((2 : GoInt))) {
				_i--;
				_buf[(_i : GoInt)] = (98 : GoUInt8);
				_i--;
				_buf[(_i : GoInt)] = (48 : GoUInt8);
			} else if (_base == ((8 : GoInt))) {
				if (_buf[(_i : GoInt)] != ((48 : GoUInt8))) {
					_i--;
					_buf[(_i : GoInt)] = (48 : GoUInt8);
				};
			} else if (_base == ((16 : GoInt))) {
				_i--;
				_buf[(_i : GoInt)] = _digits[(16 : GoInt)];
				_i--;
				_buf[(_i : GoInt)] = (48 : GoUInt8);
			};
		};
		if (_verb == ((79 : GoInt32))) {
			_i--;
			_buf[(_i : GoInt)] = (111 : GoUInt8);
			_i--;
			_buf[(_i : GoInt)] = (48 : GoUInt8);
		};
		if (_negative) {
			_i--;
			_buf[(_i : GoInt)] = (45 : GoUInt8);
		} else if (_f._fmtFlags._plus) {
			_i--;
			_buf[(_i : GoInt)] = (43 : GoUInt8);
		} else if (_f._fmtFlags._space) {
			_i--;
			_buf[(_i : GoInt)] = (32 : GoUInt8);
		};
		var _oldZero:Bool = _f._fmtFlags._zero;
		_f._fmtFlags._zero = false;
		_f._pad((_buf.__slice__(_i) : Slice<GoUInt8>));
		_f._fmtFlags._zero = _oldZero;
	}

	/**
		// fmtUnicode formats a uint64 as "U+0078" or with f.sharp set as "U+0078 'x'".
	**/
	@:keep
	static public function _fmtUnicode(_f:Ref<T_fmt>, _u:GoUInt64):Void {
		var _buf = (_f._intbuf.__slice__((0 : GoInt)) : Slice<GoUInt8>);
		var _prec:GoInt = (4 : GoInt);
		if (_f._fmtFlags._precPresent && (_f._prec > (4 : GoInt))) {
			_prec = _f._prec;
			var _width:GoInt = ((((2 : GoInt) + _prec) + (2 : GoInt)) + (4 : GoInt)) + (1 : GoInt);
			if (_width > (_buf.length)) {
				_buf = new Slice<GoUInt8>((_width : GoInt).toBasic(), 0, ...[for (i in 0...(_width : GoInt).toBasic()) (0 : GoUInt8)]);
			};
		};
		var _i:GoInt = (_buf.length);
		if ((_f._fmtFlags._sharp && (_u <= (("1114111" : GoUInt64) : GoUInt64))) && stdgo.strconv.Strconv.isPrint((_u : GoRune))) {
			_i--;
			_buf[(_i : GoInt)] = (39 : GoUInt8);
			_i = _i - (stdgo.unicode.utf8.Utf8.runeLen((_u : GoRune)));
			stdgo.unicode.utf8.Utf8.encodeRune((_buf.__slice__(_i) : Slice<GoUInt8>), (_u : GoRune));
			_i--;
			_buf[(_i : GoInt)] = (39 : GoUInt8);
			_i--;
			_buf[(_i : GoInt)] = (32 : GoUInt8);
		};
		while (_u >= ("16" : GoUInt64)) {
			_i--;
			_buf[(_i : GoInt)] = ("0123456789ABCDEFX" : GoString)[(_u & ("15" : GoUInt64) : GoInt)];
			_prec--;
			_u = _u >> (("4" : GoUInt64));
		};
		_i--;
		_buf[(_i : GoInt)] = ("0123456789ABCDEFX" : GoString)[(_u : GoInt)];
		_prec--;
		while (_prec > (0 : GoInt)) {
			_i--;
			_buf[(_i : GoInt)] = (48 : GoUInt8);
			_prec--;
		};
		_i--;
		_buf[(_i : GoInt)] = (43 : GoUInt8);
		_i--;
		_buf[(_i : GoInt)] = (85 : GoUInt8);
		var _oldZero:Bool = _f._fmtFlags._zero;
		_f._fmtFlags._zero = false;
		_f._pad((_buf.__slice__(_i) : Slice<GoUInt8>));
		_f._fmtFlags._zero = _oldZero;
	}

	/**
		// fmtBoolean formats a boolean.
	**/
	@:keep
	static public function _fmtBoolean(_f:Ref<T_fmt>, _v:Bool):Void {
		if (_v) {
			_f._padString(("true" : GoString));
		} else {
			_f._padString(("false" : GoString));
		};
	}

	/**
		// padString appends s to f.buf, padded on left (!f.minus) or right (f.minus).
	**/
	@:keep
	static public function _padString(_f:Ref<T_fmt>, _s:GoString):Void {
		if (!_f._fmtFlags._widPresent || (_f._wid == (0 : GoInt))) {
			_f._buf._writeString(_s);
			return;
		};
		var _width:GoInt = _f._wid - stdgo.unicode.utf8.Utf8.runeCountInString(_s);
		if (!_f._fmtFlags._minus) {
			_f._writePadding(_width);
			_f._buf._writeString(_s);
		} else {
			_f._buf._writeString(_s);
			_f._writePadding(_width);
		};
	}

	/**
		// pad appends b to f.buf, padded on left (!f.minus) or right (f.minus).
	**/
	@:keep
	static public function _pad(_f:Ref<T_fmt>, _b:Slice<GoByte>):Void {
		if (!_f._fmtFlags._widPresent || (_f._wid == (0 : GoInt))) {
			_f._buf._write(_b);
			return;
		};
		var _width:GoInt = _f._wid - stdgo.unicode.utf8.Utf8.runeCount(_b);
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
	static public function _writePadding(_f:Ref<T_fmt>, _n:GoInt):Void {
		if (_n <= (0 : GoInt)) {
			return;
		};
		var _buf:T_buffer = _f._buf;
		var _oldLen:GoInt = (_buf.length);
		var _newLen:GoInt = _oldLen + _n;
		if (_newLen > _buf.capacity) {
			_buf = new T_buffer(((_buf.capacity * (2 : GoInt)) + _n : GoInt).toBasic(), 0, ...[
				for (i in 0...((_buf.capacity * (2 : GoInt)) + _n : GoInt).toBasic()) (0 : GoUInt8)
			]);
			Go.copySlice(_buf, _f._buf);
		};
		var _padByte:GoUInt8 = ((32 : GoUInt8) : GoByte);
		if (_f._fmtFlags._zero) {
			_padByte = ((48 : GoUInt8) : GoByte);
		};
		var _padding:T_buffer = (_buf.__slice__(_oldLen, _newLen) : T_buffer);
		for (_i => _ in _padding) {
			_padding[(_i : GoInt)] = _padByte;
		};
		_f._buf.__setData__((_buf.__slice__(0, _newLen) : T_buffer));
	}

	@:keep
	static public function _init(_f:Ref<T_fmt>, _buf:Ref<T_buffer>):Void {
		_f._buf = _buf;
		_f._clearflags();
	}

	@:keep
	static public function _clearflags(_f:Ref<T_fmt>):Void {
		_f._fmtFlags = (new T_fmtFlags() : T_fmtFlags);
	}
}

class T_pp_asInterface {
	/**
		// doPrintln is like doPrint but always adds a space between arguments
		// and a newline after the last argument.
	**/
	@:keep
	public function _doPrintln(_a:Slice<AnyInterface>):Void
		__self__.value._doPrintln(_a);

	@:keep
	public function _doPrint(_a:Slice<AnyInterface>):Void
		__self__.value._doPrint(_a);

	@:keep
	public function _doPrintf(_format:GoString, _a:Slice<AnyInterface>):Void
		__self__.value._doPrintf(_format, _a);

	@:keep
	public function _missingArg(_verb:GoRune):Void
		__self__.value._missingArg(_verb);

	@:keep
	public function _badArgNum(_verb:GoRune):Void
		__self__.value._badArgNum(_verb);

	/**
		// argNumber returns the next argument to evaluate, which is either the value of the passed-in
		// argNum or the value of the bracketed integer that begins format[i:]. It also returns
		// the new value of i, that is, the index of the next byte of the format to process.
	**/
	@:keep
	public function _argNumber(_argNum:GoInt, _format:GoString, _i:GoInt, _numArgs:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Bool;}
		return __self__.value._argNumber(_argNum, _format, _i, _numArgs);

	/**
		// printValue is similar to printArg but starts with a reflect value, not an interface{} value.
		// It does not handle 'p' and 'T' verbs because these should have been already handled by printArg.
	**/
	@:keep
	public function _printValue(_value:stdgo.reflect.Reflect.Value, _verb:GoRune, _depth:GoInt):Void
		__self__.value._printValue(_value, _verb, _depth);

	@:keep
	public function _printArg(_arg:AnyInterface, _verb:GoRune):Void
		__self__.value._printArg(_arg, _verb);

	@:keep
	public function _handleMethods(_verb:GoRune):Bool
		return __self__.value._handleMethods(_verb);

	@:keep
	public function _catchPanic(_arg:AnyInterface, _verb:GoRune, _method:GoString):Void
		__self__.value._catchPanic(_arg, _verb, _method);

	@:keep
	public function _fmtPointer(_value:stdgo.reflect.Reflect.Value, _verb:GoRune):Void
		__self__.value._fmtPointer(_value, _verb);

	@:keep
	public function _fmtBytes(_v:Slice<GoByte>, _verb:GoRune, _typeString:GoString):Void
		__self__.value._fmtBytes(_v, _verb, _typeString);

	@:keep
	public function _fmtString(_v:GoString, _verb:GoRune):Void
		__self__.value._fmtString(_v, _verb);

	/**
		// fmtComplex formats a complex number v with
		// r = real(v) and j = imag(v) as (r+ji) using
		// fmtFloat for r and j formatting.
	**/
	@:keep
	public function _fmtComplex(_v:GoComplex128, _size:GoInt, _verb:GoRune):Void
		__self__.value._fmtComplex(_v, _size, _verb);

	/**
		// fmtFloat formats a float. The default precision for each verb
		// is specified as last argument in the call to fmt_float.
	**/
	@:keep
	public function _fmtFloat(_v:GoFloat64, _size:GoInt, _verb:GoRune):Void
		__self__.value._fmtFloat(_v, _size, _verb);

	/**
		// fmtInteger formats a signed or unsigned integer.
	**/
	@:keep
	public function _fmtInteger(_v:GoUInt64, _isSigned:Bool, _verb:GoRune):Void
		__self__.value._fmtInteger(_v, _isSigned, _verb);

	/**
		// fmt0x64 formats a uint64 in hexadecimal and prefixes it with 0x or
		// not, as requested, by temporarily setting the sharp flag.
	**/
	@:keep
	public function _fmt0x64(_v:GoUInt64, _leading0x:Bool):Void
		__self__.value._fmt0x64(_v, _leading0x);

	@:keep
	public function _fmtBool(_v:Bool, _verb:GoRune):Void
		__self__.value._fmtBool(_v, _verb);

	@:keep
	public function _badVerb(_verb:GoRune):Void
		__self__.value._badVerb(_verb);

	@:keep
	public function _unknownType(_v:stdgo.reflect.Reflect.Value):Void
		__self__.value._unknownType(_v);

	/**
		// Implement WriteString so that we can call io.WriteString
		// on a pp (through state), for efficiency.
	**/
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	/**
		// Implement Write so we can call Fprintf on a pp (through State), for
		// recursive use in custom verbs.
	**/
	@:keep
	public function write(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_b);

	@:keep
	public function flag(_b:GoInt):Bool
		return __self__.value.flag(_b);

	@:keep
	public function precision():{var _0:GoInt; var _1:Bool;}
		return __self__.value.precision();

	@:keep
	public function width():{var _0:GoInt; var _1:Bool;}
		return __self__.value.width();

	/**
		// free saves used pp structs in ppFree; avoids an allocation per invocation.
	**/
	@:keep
	public function _free():Void
		__self__.value._free();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_pp>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
	/**
		// doPrintln is like doPrint but always adds a space between arguments
		// and a newline after the last argument.
	**/
	@:keep
	static public function _doPrintln(_p:Ref<T_pp>, _a:Slice<AnyInterface>):Void {
		for (_argNum => _arg in _a) {
			if (_argNum > (0 : GoInt)) {
				_p._buf._writeByte((32 : GoUInt8));
			};
			_p._printArg(_arg, (118 : GoInt32));
		};
		_p._buf._writeByte((10 : GoUInt8));
	}

	@:keep
	static public function _doPrint(_p:Ref<T_pp>, _a:Slice<AnyInterface>):Void {
		var _prevString:Bool = false;
		for (_argNum => _arg in _a) {
			var _isString:Bool = (_arg != null)
				&& (stdgo.reflect.Reflect.typeOf(_arg).kind() == (("24" : GoUInt) : stdgo.reflect.Reflect.Kind));
			if (((_argNum > (0 : GoInt)) && !_isString) && !_prevString) {
				_p._buf._writeByte((32 : GoUInt8));
			};
			_p._printArg(_arg, (118 : GoInt32));
			_prevString = _isString;
		};
	}

	@:keep
	static public function _doPrintf(_p:Ref<T_pp>, _format:GoString, _a:Slice<AnyInterface>):Void {
		stdgo.internal.Macro.controlFlow({
			var _end:GoInt = (_format.length);
			var _argNum:GoInt = (0 : GoInt);
			var _afterIndex:Bool = false;
			_p._reordered = false;
			var _k:GoInt = (0 : GoInt);
			@:label("formatLoop") {
				var _i:GoInt = (0 : GoInt);
				while (_i < _end) {
					_k++;
					if (_k > (20 : GoInt)) {
						throw Go.toInterface(("done" : GoString));
					};
					_p._goodArgNum = true;
					var _lasti:GoInt = _i;
					while ((_i < _end) && (_format[(_i : GoInt)] != (37 : GoUInt8))) {
						_i++;
					};
					if (_i > _lasti) {
						_p._buf._writeString((_format.__slice__(_lasti, _i) : GoString));
					};
					if (_i >= _end) {
						break;
					};
					_i++;
					_p._fmt._clearflags();
					@:label("simpleFormat") Go.cfor(_i < _end, _i++, {
						var _c:GoUInt8 = _format[(_i : GoInt)];
						{
							var __switchIndex__ = -1;
							while (true) {
								if (_c == ((35 : GoUInt8))) {
									_p._fmt._fmtFlags._sharp = true;
									break;
								} else if (_c == ((48 : GoUInt8))) {
									_p._fmt._fmtFlags._zero = !_p._fmt._fmtFlags._minus;
									break;
								} else if (_c == ((43 : GoUInt8))) {
									_p._fmt._fmtFlags._plus = true;
									break;
								} else if (_c == ((45 : GoUInt8))) {
									_p._fmt._fmtFlags._minus = true;
									_p._fmt._fmtFlags._zero = false;
									break;
								} else if (_c == ((32 : GoUInt8))) {
									_p._fmt._fmtFlags._space = true;
									break;
								} else {
									if ((((97 : GoUInt8) <= _c) && (_c <= (122 : GoUInt8))) && (_argNum < _a.length)) {
										if (_c == ((118 : GoUInt8))) {
											_p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
											_p._fmt._fmtFlags._sharp = false;
											_p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
											_p._fmt._fmtFlags._plus = false;
										};
										_p._printArg(_a[(_argNum : GoInt)], (_c : GoRune));
										_argNum++;
										_i++;
										@:jump("formatLoop") continue;
									};
									@:jump("simpleFormat") break;
								};
								break;
							};
						};
					});
					{
						var __tmp__ = _p._argNumber(_argNum, _format, _i, (_a.length));
						_argNum = __tmp__._0;
						_i = __tmp__._1;
						_afterIndex = __tmp__._2;
					};
					if ((_i < _end) && (_format[(_i : GoInt)] == (42 : GoUInt8))) {
						_i++;
						{
							var __tmp__ = _intFromArg(_a, _argNum);
							_p._fmt._wid = __tmp__._0;
							_p._fmt._fmtFlags._widPresent = __tmp__._1;
							_argNum = __tmp__._2;
						};
						if (!_p._fmt._fmtFlags._widPresent) {
							_p._buf._writeString(("%!(BADWIDTH)" : GoString));
						};
						if (_p._fmt._wid < (0:GoInt)) {
							_p._fmt._wid = -_p._fmt._wid;
							_p._fmt._fmtFlags._minus = true;
							_p._fmt._fmtFlags._zero = false;
						};
						_afterIndex = false;
					} else {
						{
							var __tmp__ = _parsenum(_format, _i, _end);
							_p._fmt._wid = __tmp__._0;
							_p._fmt._fmtFlags._widPresent = __tmp__._1;
							_i = __tmp__._2;
						};
						if (_afterIndex && _p._fmt._fmtFlags._widPresent) {
							_p._goodArgNum = false;
						};
					};
					if (((_i + (1 : GoInt)) < _end) && (_format[(_i : GoInt)] == (46 : GoUInt8))) {
						_i++;
						if (_afterIndex) {
							_p._goodArgNum = false;
						};
						{
							var __tmp__ = _p._argNumber(_argNum, _format, _i, (_a.length));
							_argNum = __tmp__._0;
							_i = __tmp__._1;
							_afterIndex = __tmp__._2;
						};
						if ((_i < _end) && (_format[(_i : GoInt)] == (42 : GoUInt8))) {
							_i++;
							{
								var __tmp__ = _intFromArg(_a, _argNum);
								_p._fmt._prec = __tmp__._0;
								_p._fmt._fmtFlags._precPresent = __tmp__._1;
								_argNum = __tmp__._2;
							};
							if (_p._fmt._prec < (0:GoInt)) {
								_p._fmt._prec = (0 : GoInt);
								_p._fmt._fmtFlags._precPresent = false;
							};
							if (!_p._fmt._fmtFlags._precPresent) {
								_p._buf._writeString(("%!(BADPREC)" : GoString));
							};
							_afterIndex = false;
						} else {
							{
								var __tmp__ = _parsenum(_format, _i, _end);
								_p._fmt._prec = __tmp__._0;
								_p._fmt._fmtFlags._precPresent = __tmp__._1;
								_i = __tmp__._2;
							};
							if (!_p._fmt._fmtFlags._precPresent) {
								_p._fmt._prec = (0 : GoInt);
								_p._fmt._fmtFlags._precPresent = true;
							};
						};
					};
					if (!_afterIndex) {
						{
							var __tmp__ = _p._argNumber(_argNum, _format, _i, (_a.length));
							_argNum = __tmp__._0;
							_i = __tmp__._1;
							_afterIndex = __tmp__._2;
						};
					};
					if (_i >= _end) {
						_p._buf._writeString(("%!(NOVERB)" : GoString));
						break;
					};
					var _0:GoInt32 = (_format[(_i : GoInt)] : GoRune),
						_1:GoInt = (1 : GoInt),
						_size:GoInt = _1,
						_verb:GoInt32 = _0;
					if (_verb >= (128 : GoInt32)) {
						{
							var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : GoString));
							_verb = __tmp__._0;
							_size = __tmp__._1;
						};
					};
					_i = _i + (_size);
					{
						var __switchIndex__ = -1;
						while (true) {
							if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_verb == (37 : GoInt32)))) {
								_p._buf._writeByte((37 : GoUInt8));
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
							} else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_verb == (118 : GoInt32)))) {
								_p._fmt._fmtFlags._sharpV = _p._fmt._fmtFlags._sharp;
								_p._fmt._fmtFlags._sharp = false;
								_p._fmt._fmtFlags._plusV = _p._fmt._fmtFlags._plus;
								_p._fmt._fmtFlags._plus = false;
								@:fallthrough {
									__switchIndex__ = 4;
									continue;
								};
								break;
							} else {
								_p._printArg(_a[(_argNum : GoInt)], _verb);
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
				_p._buf._writeString(("%!(EXTRA " : GoString));
				for (_i => _arg in (_a.__slice__(_argNum) : Slice<AnyInterface>)) {
					if (_i > (0 : GoInt)) {
						_p._buf._writeString((", " : GoString));
					};
					if (_arg == null) {
						_p._buf._writeString(("<nil>" : GoString));
					} else {
						_p._buf._writeString((stdgo.reflect.Reflect.typeOf(_arg).string() : GoString));
						_p._buf._writeByte((61 : GoUInt8));
						_p._printArg(_arg, (118 : GoInt32));
					};
				};
				_p._buf._writeByte((41 : GoUInt8));
			};
		});
	}

	@:keep
	static public function _missingArg(_p:Ref<T_pp>, _verb:GoRune):Void {
		_p._buf._writeString(("%!" : GoString));
		_p._buf._writeRune(_verb);
		_p._buf._writeString(("(MISSING)" : GoString));
	}

	@:keep
	static public function _badArgNum(_p:Ref<T_pp>, _verb:GoRune):Void {
		_p._buf._writeString(("%!" : GoString));
		_p._buf._writeRune(_verb);
		_p._buf._writeString(("(BADINDEX)" : GoString));
	}

	/**
		// argNumber returns the next argument to evaluate, which is either the value of the passed-in
		// argNum or the value of the bracketed integer that begins format[i:]. It also returns
		// the new value of i, that is, the index of the next byte of the format to process.
	**/
	@:keep
	static public function _argNumber(_p:Ref<T_pp>, _argNum:GoInt, _format:GoString, _i:GoInt, _numArgs:GoInt):{var _0:GoInt; var _1:GoInt; var _2:Bool;} {
		var _newArgNum:GoInt = (0 : GoInt),
			_newi:GoInt = (0 : GoInt),
			_found:Bool = false;
		if ((_format.length <= _i) || (_format[(_i : GoInt)] != (91 : GoUInt8))) {
			return {_0: _argNum, _1: _i, _2: false};
		};
		_p._reordered = true;
		var __tmp__ = _parseArgNumber((_format.__slice__(_i) : GoString)),
			_index:GoInt = __tmp__._0,
			_wid:GoInt = __tmp__._1,
			_ok:Bool = __tmp__._2;
		if ((_ok && ((0 : GoInt) <= _index)) && (_index < _numArgs)) {
			return {_0: _index, _1: _i + _wid, _2: true};
		};
		_p._goodArgNum = false;
		return {_0: _argNum, _1: _i + _wid, _2: _ok};
	}

	/**
		// printValue is similar to printArg but starts with a reflect value, not an interface{} value.
		// It does not handle 'p' and 'T' verbs because these should have been already handled by printArg.
	**/
	@:keep
	static public function _printValue(_p:Ref<T_pp>, _value:stdgo.reflect.Reflect.Value, _verb:GoRune, _depth:GoInt):Void {
		if (((_depth > (0 : GoInt)) && _value.isValid()) && _value.canInterface()) {
			_p._arg = _value.interface_();
			if (_p._handleMethods(_verb)) {
				return;
			};
		};
		_p._arg = (null : AnyInterface);
		_p._value = (_value == null ? null : _value.__copy__());
		{
			var _f:stdgo.reflect.Reflect.Value = (_value == null ? null : _value.__copy__());
			{
				var __switchIndex__ = -1;
				while (true) {
					if (__switchIndex__ == 0
						|| (__switchIndex__ == -1 && (_value.kind() == (("0" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						if (_depth == ((0 : GoInt))) {
							_p._buf._writeString(("<invalid reflect.Value>" : GoString));
						} else {
							if (_verb == ((118 : GoInt32))) {
								_p._buf._writeString(("<nil>" : GoString));
							} else {
								_p._badVerb(_verb);
							};
						};
						break;
						break;
					} else if (__switchIndex__ == 1
						|| (__switchIndex__ == -1 && (_value.kind() == (("1" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtBool(_f.bool_(), _verb);
						break;
						break;
					} else if (__switchIndex__ == 2
						|| (__switchIndex__ == -1
							&& (_value.kind() == ((("2" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("3" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("4" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("5" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("6" : GoUInt) : stdgo.reflect.Reflect.Kind))))) {
						_p._fmtInteger((_f.int_() : GoUInt64), true, _verb);
						break;
						break;
					} else if (__switchIndex__ == 3
						|| (__switchIndex__ == -1
							&& (_value.kind() == ((("7" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("8" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("9" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("10" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("11" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("12" : GoUInt) : stdgo.reflect.Reflect.Kind))))) {
						_p._fmtInteger(_f.uint(), false, _verb);
						break;
						break;
					} else if (__switchIndex__ == 4
						|| (__switchIndex__ == -1 && (_value.kind() == (("13" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtFloat(_f.float_(), (32 : GoInt), _verb);
						break;
						break;
					} else if (__switchIndex__ == 5
						|| (__switchIndex__ == -1 && (_value.kind() == (("14" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtFloat(_f.float_(), (64 : GoInt), _verb);
						break;
						break;
					} else if (__switchIndex__ == 6
						|| (__switchIndex__ == -1 && (_value.kind() == (("15" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtComplex(_f.complex(), (64 : GoInt), _verb);
						break;
						break;
					} else if (__switchIndex__ == 7
						|| (__switchIndex__ == -1 && (_value.kind() == (("16" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtComplex(_f.complex(), (128 : GoInt), _verb);
						break;
						break;
					} else if (__switchIndex__ == 8
						|| (__switchIndex__ == -1 && (_value.kind() == (("24" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						_p._fmtString((_f.string() : GoString), _verb);
						break;
						break;
					} else if (__switchIndex__ == 9
						|| (__switchIndex__ == -1 && (_value.kind() == (("21" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						if (_p._fmt._fmtFlags._sharpV) {
							_p._buf._writeString((_f.type().string() : GoString));
							if (_f.isNil()) {
								_p._buf._writeString(("(nil)" : GoString));
								return;
							};
							_p._buf._writeByte((123 : GoUInt8));
						} else {
							_p._buf._writeString(("map[" : GoString));
						};
						var _sorted = stdgo.internal.fmtsort.Fmtsort.sort((_f == null ? null : _f.__copy__()));
						for (_i => _key in _sorted.key) {
							if (_i > (0 : GoInt)) {
								if (_p._fmt._fmtFlags._sharpV) {
									_p._buf._writeString((", " : GoString));
								} else {
									_p._buf._writeByte((32 : GoUInt8));
								};
							};
							_p._printValue((_key == null ? null : _key.__copy__()), _verb, _depth + (1 : GoInt));
							_p._buf._writeByte((58 : GoUInt8));
							_p._printValue((_sorted.value[(_i : GoInt)] == null ? null : _sorted.value[(_i : GoInt)].__copy__()), _verb, _depth + (1 : GoInt));
						};
						if (_p._fmt._fmtFlags._sharpV) {
							_p._buf._writeByte((125 : GoUInt8));
						} else {
							_p._buf._writeByte((93 : GoUInt8));
						};
						break;
						break;
					} else if (__switchIndex__ == 10
						|| (__switchIndex__ == -1 && (_value.kind() == (("25" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						if (_p._fmt._fmtFlags._sharpV) {
							_p._buf._writeString((_f.type().string() : GoString));
						};
						_p._buf._writeByte((123 : GoUInt8));
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < _f.numField(), _i++, {
								if (_i > (0 : GoInt)) {
									if (_p._fmt._fmtFlags._sharpV) {
										_p._buf._writeString((", " : GoString));
									} else {
										_p._buf._writeByte((32 : GoUInt8));
									};
								};
								if (_p._fmt._fmtFlags._plusV || _p._fmt._fmtFlags._sharpV) {
									{
										var _name:GoString = _f.type().field(_i).name;
										if (_name != (Go.str())) {
											_p._buf._writeString(_name);
											_p._buf._writeByte((58 : GoUInt8));
										};
									};
								};
								_p._printValue((_getField((_f == null ? null : _f.__copy__()),
									_i) == null ? null : _getField((_f == null ? null : _f.__copy__()), _i).__copy__()),
									_verb, _depth
									+ (1 : GoInt));
							});
						};
						_p._buf._writeByte((125 : GoUInt8));
						break;
						break;
					} else if (__switchIndex__ == 11
						|| (__switchIndex__ == -1 && (_value.kind() == (("20" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						var _value:stdgo.reflect.Reflect.Value = (_f.elem() == null ? null : _f.elem().__copy__());
						if (!_value.isValid()) {
							if (_p._fmt._fmtFlags._sharpV) {
								_p._buf._writeString((_f.type().string() : GoString));
								_p._buf._writeString(("(nil)" : GoString));
							} else {
								_p._buf._writeString(("<nil>" : GoString));
							};
						} else {
							_p._printValue((_value == null ? null : _value.__copy__()), _verb, _depth + (1 : GoInt));
						};
						break;
						break;
					} else if (__switchIndex__ == 12
						|| (__switchIndex__ == -1
							&& (_value.kind() == ((("17" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))))) {
						if (_verb == ((115 : GoInt32)) || _verb == ((113 : GoInt32)) || _verb == ((120 : GoInt32)) || _verb == ((88 : GoInt32))) {
							var _t:stdgo.reflect.Reflect.Type = _f.type();
							if (_t.elem().kind() == ((("8" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
								var _bytes:Slice<GoByte> = (null : Slice<GoUInt8>);
								if (_f.kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
									_bytes = _f.bytes();
								} else if (_f.canAddr()) {
									_bytes = _f.slice((0 : GoInt), _f.len()).bytes();
								} else {
									_bytes = new Slice<GoUInt8>((_f.len() : GoInt).toBasic(), 0,
										...[for (i in 0...(_f.len() : GoInt).toBasic()) (0 : GoUInt8)]);
									for (_i in 0..._bytes.length.toBasic()) {
										_bytes[(_i : GoInt)] = (_f.index(_i).uint() : GoByte);
									};
								};
								_p._fmtBytes(_bytes, _verb, (_t.string() : GoString));
								return;
							};
						};
						if (_p._fmt._fmtFlags._sharpV) {
							_p._buf._writeString((_f.type().string() : GoString));
							if ((_f.kind() == (("23" : GoUInt) : stdgo.reflect.Reflect.Kind)) && _f.isNil()) {
								_p._buf._writeString(("(nil)" : GoString));
								return;
							};
							_p._buf._writeByte((123 : GoUInt8));
							{
								var _i:GoInt = (0 : GoInt);
								Go.cfor(_i < _f.len(), _i++, {
									if (_i > (0 : GoInt)) {
										_p._buf._writeString((", " : GoString));
									};
									_p._printValue((_f.index(_i) == null ? null : _f.index(_i).__copy__()), _verb, _depth + (1 : GoInt));
								});
							};
							_p._buf._writeByte((125 : GoUInt8));
						} else {
							_p._buf._writeByte((91 : GoUInt8));
							{
								var _i:GoInt = (0 : GoInt);
								Go.cfor(_i < _f.len(), _i++, {
									if (_i > (0 : GoInt)) {
										_p._buf._writeByte((32 : GoUInt8));
									};
									_p._printValue((_f.index(_i) == null ? null : _f.index(_i).__copy__()), _verb, _depth + (1 : GoInt));
								});
							};
							_p._buf._writeByte((93 : GoUInt8));
						};
						break;
						break;
					} else if (__switchIndex__ == 13
						|| (__switchIndex__ == -1 && (_value.kind() == (("22" : GoUInt) : stdgo.reflect.Reflect.Kind)))) {
						if ((_depth == (0 : GoInt)) && (_f.pointer() != (0 : GoUIntptr))) {
							var _a:stdgo.reflect.Reflect.Value = (_f.elem() == null ? null : _f.elem().__copy__());
							if (_a.kind() == ((("17" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _a.kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _a.kind() == ((("25" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _a.kind() == ((("21" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
								_p._buf._writeByte((38 : GoUInt8));
								_p._printValue((_a == null ? null : _a.__copy__()), _verb, _depth + (1 : GoInt));
								return;
							};
						};
						@:fallthrough {
							__switchIndex__ = 1;
							continue;
						};
						break;
					} else if (__switchIndex__ == 14
						|| (__switchIndex__ == -1
							&& (_value.kind() == ((("18" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("19" : GoUInt) : stdgo.reflect.Reflect.Kind))
								|| _value.kind() == ((("26" : GoUInt) : stdgo.reflect.Reflect.Kind))))) {
						_p._fmtPointer((_f == null ? null : _f.__copy__()), _verb);
						break;
						break;
					} else {
						println(Go.toInterface(("unknown type" : GoString)));
						_p._unknownType((_f == null ? null : _f.__copy__()));
						break;
					};
					break;
				};
			};
		};
	}

	@:keep
	static public function _printArg(_p:Ref<T_pp>, _arg:AnyInterface, _verb:GoRune):Void {
		_p._arg = _arg;
		_p._value = (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value);
		if (_arg == null) {
			if (_verb == ((84 : GoInt32)) || _verb == ((118 : GoInt32))) {
				_p._fmt._padString(("<nil>" : GoString));
			} else {
				_p._badVerb(_verb);
			};
			return;
		};
		if (_verb == ((84 : GoInt32))) {
			_p._fmt._fmtS((stdgo.reflect.Reflect.typeOf(_arg).string() : GoString));
			return;
		} else if (_verb == ((112 : GoInt32))) {
			_p._fmtPointer((stdgo.reflect.Reflect.valueOf(_arg) == null ? null : stdgo.reflect.Reflect.valueOf(_arg).__copy__()), (112 : GoInt32));
			return;
		};
		{
			final __type__ = _arg;
			if (Go.typeEquals((__type__ : Bool))) {
				var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__()
					.value;
				_p._fmtBool(_f, _verb);
			} else if (Go.typeEquals((__type__ : GoFloat32))) {
				var _f:GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtFloat((_f : GoFloat64), (32 : GoInt), _verb);
			} else if (Go.typeEquals((__type__ : GoFloat64))) {
				var _f:GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtFloat(_f, (64 : GoInt), _verb);
			} else if (Go.typeEquals((__type__ : GoComplex64))) {
				var _f:GoComplex64 = __type__ == null ? new GoComplex64(0,
					0) : __type__.__underlying__() == null ? new GoComplex64(0,
						0) : __type__ == null ? new GoComplex64(0, 0) : __type__.__underlying__().value;
				_p._fmtComplex((_f : GoComplex128), (64 : GoInt), _verb);
			} else if (Go.typeEquals((__type__ : GoComplex128))) {
				var _f:GoComplex128 = __type__ == null ? new GoComplex128(0,
					0) : __type__.__underlying__() == null ? new GoComplex128(0,
						0) : __type__ == null ? new GoComplex128(0, 0) : __type__.__underlying__().value;
				_p._fmtComplex(_f, (128 : GoInt), _verb);
			} else if (Go.typeEquals((__type__ : GoInt))) {
				var _f:GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), true, _verb);
			} else if (Go.typeEquals((__type__ : GoInt8))) {
				var _f:GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), true, _verb);
			} else if (Go.typeEquals((__type__ : GoInt16))) {
				var _f:GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), true, _verb);
			} else if (Go.typeEquals((__type__ : GoInt32))) {
				var _f:GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), true, _verb);
			} else if (Go.typeEquals((__type__ : GoInt64))) {
				var _f:GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), true, _verb);
			} else if (Go.typeEquals((__type__ : GoUInt))) {
				var _f:GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), false, _verb);
			} else if (Go.typeEquals((__type__ : GoUInt8))) {
				var _f:GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), false, _verb);
			} else if (Go.typeEquals((__type__ : GoUInt16))) {
				var _f:GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), false, _verb);
			} else if (Go.typeEquals((__type__ : GoUInt32))) {
				var _f:GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), false, _verb);
			} else if (Go.typeEquals((__type__ : GoUInt64))) {
				var _f:GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger(_f, false, _verb);
			} else if (Go.typeEquals((__type__ : GoUIntptr))) {
				var _f:GoUIntptr = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
				_p._fmtInteger((_f : GoUInt64), false, _verb);
			} else if (Go.typeEquals((__type__ : GoString))) {
				var _f:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
				_p._fmtString(_f, _verb);
			} else if (Go.typeEquals((__type__ : Slice<GoByte>))) {
				var _f:Slice<GoUInt8> = __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__() == null ? (null : Slice<GoUInt8>) : __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__()
					.value;
				_p._fmtBytes(_f, _verb, ("[]byte" : GoString));
			} else if (Go.typeEquals((__type__ : stdgo.reflect.Reflect.Value))) {
				var _f:stdgo.reflect.Reflect.Value = __type__ == null ? ({} : stdgo.reflect.Reflect.Value) : __type__.__underlying__() == null ? ({} : stdgo.reflect.Reflect.Value) : __type__ == null ? ({} : stdgo.reflect.Reflect.Value) : __type__.__underlying__()
					.value;
				if (_f.isValid() && _f.canInterface()) {
					_p._arg = _f.interface_();
					if (_p._handleMethods(_verb)) {
						return;
					};
				};
				_p._printValue((_f == null ? null : _f.__copy__()), _verb, (0 : GoInt));
			} else {
				var _f:AnyInterface = __type__ == null ? null : __type__.__underlying__();
				if (!_p._handleMethods(_verb)) {
					_p._printValue((stdgo.reflect.Reflect.valueOf(_f) == null ? null : stdgo.reflect.Reflect.valueOf(_f).__copy__()), _verb, (0 : GoInt));
				};
			};
		};
	}

	@:keep
	static public function _handleMethods(_p:Ref<T_pp>, _verb:GoRune):Bool {
		var __deferstack__:Array<Void->Void> = [];
		var _handled:Bool = false;
		if (_p._erroring) {
			return _handled;
		};
		try {
			if (_verb == ((119 : GoInt32))) {
				var __tmp__ = try {
					{value: (Go.typeAssert((_p._arg : Error)) : Error), ok: true};
				} catch (_) {
					{value: (null : Error), ok: false};
				}, _err = __tmp__.value, _ok = __tmp__.ok;
				if ((!_ok || !_p._wrapErrs) || (_p._wrappedErr != null)) {
					_p._wrappedErr = (null : Error);
					_p._wrapErrs = false;
					_p._badVerb(_verb);
					return true;
				};
				_p._wrappedErr = _err;
				_verb = (118 : GoInt32);
			};
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((_p._arg : Formatter)) : Formatter), ok: true};
				} catch (_) {
					{value: (null : Formatter), ok: false};
				}, _formatter = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_handled = true;
					{
						var _a0 = _p._arg;
						var _a1 = _verb;
						var _a2 = ("Format" : GoString);
						__deferstack__.unshift(() -> _p._catchPanic(Go.toInterface(_a0), _a1, _a2));
					};
					_formatter.format(Go.asInterface(_p), _verb);
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
						{value: (Go.typeAssert((_p._arg : GoStringer)) : GoStringer), ok: true};
					} catch (_) {
						{value: (null : GoStringer), ok: false};
					}, _stringer = __tmp__.value, _ok = __tmp__.ok;
					if (_ok) {
						_handled = true;
						{
							var _a0 = _p._arg;
							var _a1 = _verb;
							var _a2 = ("GoString" : GoString);
							__deferstack__.unshift(() -> _p._catchPanic(Go.toInterface(_a0), _a1, _a2));
						};
						_p._fmt._fmtS(_stringer.goString());
						{
							for (defer in __deferstack__) {
								defer();
							};
							return _handled;
						};
					};
				};
			} else {
				if (_verb == ((118 : GoInt32)) || _verb == ((115 : GoInt32)) || _verb == ((120 : GoInt32)) || _verb == ((88 : GoInt32))
					|| _verb == ((113 : GoInt32))) {
					{
						final __type__ = _p._arg;
						if (Go.typeEquals((__type__ : Error))) {
							var _v:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__()
								.value;
							_handled = true;
							{
								var _a0 = _p._arg;
								var _a1 = _verb;
								var _a2 = ("Error" : GoString);
								__deferstack__.unshift(() -> _p._catchPanic(Go.toInterface(_a0), _a1, _a2));
							};
							_p._fmtString(_v.error(), _verb);
							{
								for (defer in __deferstack__) {
									defer();
								};
								return _handled;
							};
						} else if (Go.typeEquals((__type__ : Stringer))) {
							var _v:Stringer = __type__ == null ? (null : Stringer) : __type__.__underlying__() == null ? (null : Stringer) : __type__ == null ? (null : Stringer) : __type__.__underlying__()
								.value;
							_handled = true;
							{
								var _a0 = _p._arg;
								var _a1 = _verb;
								var _a2 = ("String" : GoString);
								__deferstack__.unshift(() -> _p._catchPanic(Go.toInterface(_a0), _a1, _a2));
							};
							_p._fmtString((_v.string() : GoString), _verb);
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
			{
				for (defer in __deferstack__) {
					defer();
				};
				return false;
			};
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return _handled;
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return _handled;
		};
	}

	@:keep
	static public function _catchPanic(_p:Ref<T_pp>, _arg:AnyInterface, _verb:GoRune, _method:GoString):Void {
		{
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			if (_err != null) {
				{
					var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_arg) == null ? null : stdgo.reflect.Reflect.valueOf(_arg).__copy__());
					if ((_v.kind() == (("22" : GoUInt) : stdgo.reflect.Reflect.Kind)) && _v.isNil()) {
						_p._buf._writeString(("<nil>" : GoString));
						return;
					};
				};
				if (_p._panicking) {
					throw Go.toInterface(_err);
				};
				var _oldFlags:T_fmtFlags = (_p._fmt._fmtFlags == null ? null : _p._fmt._fmtFlags.__copy__());
				_p._fmt._clearflags();
				_p._buf._writeString(("%!" : GoString));
				_p._buf._writeRune(_verb);
				_p._buf._writeString(("(PANIC=" : GoString));
				_p._buf._writeString(_method);
				_p._buf._writeString((" method: " : GoString));
				_p._panicking = true;
				_p._printArg(_err, (118 : GoInt32));
				_p._panicking = false;
				_p._buf._writeByte((41 : GoUInt8));
				_p._fmt._fmtFlags = (_oldFlags == null ? null : _oldFlags.__copy__());
			};
		};
	}

	@:keep
	static public function _fmtPointer(_p:Ref<T_pp>, _value:stdgo.reflect.Reflect.Value, _verb:GoRune):Void {
		var _u:GoUIntptr = (0 : GoUIntptr);
		if (_value.kind() == ((("18" : GoUInt) : stdgo.reflect.Reflect.Kind))
			|| _value.kind() == ((("19" : GoUInt) : stdgo.reflect.Reflect.Kind))
			|| _value.kind() == ((("21" : GoUInt) : stdgo.reflect.Reflect.Kind))
			|| _value.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))
			|| _value.kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))
			|| _value.kind() == ((("26" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
			_u = _value.pointer();
		} else {
			_p._badVerb(_verb);
			return;
		};
		if (_verb == ((118 : GoInt32))) {
			if (_p._fmt._fmtFlags._sharpV) {
				_p._buf._writeByte((40 : GoUInt8));
				_p._buf._writeString((_value.type().string() : GoString));
				_p._buf._writeString((")(" : GoString));
				if (_u == ((0 : GoUIntptr))) {
					_p._buf._writeString(("nil" : GoString));
				} else {
					_p._fmt0x64((_u : GoUInt64), true);
				};
				_p._buf._writeByte((41 : GoUInt8));
			} else {
				if (_u == ((0 : GoUIntptr))) {
					_p._fmt._padString(("<nil>" : GoString));
				} else {
					_p._fmt0x64((_u : GoUInt64), !_p._fmt._fmtFlags._sharp);
				};
			};
		} else if (_verb == ((112 : GoInt32))) {
			_p._fmt0x64((_u : GoUInt64), !_p._fmt._fmtFlags._sharp);
		} else if (_verb == ((98 : GoInt32)) || _verb == ((111 : GoInt32)) || _verb == ((100 : GoInt32)) || _verb == ((120 : GoInt32))
			|| _verb == ((88 : GoInt32))) {
			_p._fmtInteger((_u : GoUInt64), false, _verb);
		} else {
			_p._badVerb(_verb);
		};
	}

	@:keep
	static public function _fmtBytes(_p:Ref<T_pp>, _v:Slice<GoByte>, _verb:GoRune, _typeString:GoString):Void {
		if (_verb == ((118 : GoInt32)) || _verb == ((100 : GoInt32))) {
			if (_p._fmt._fmtFlags._sharpV) {
				_p._buf._writeString(_typeString);
				if (_v == null) {
					_p._buf._writeString(("(nil)" : GoString));
					return;
				};
				_p._buf._writeByte((123 : GoUInt8));
				for (_i => _c in _v) {
					if (_i > (0 : GoInt)) {
						_p._buf._writeString((", " : GoString));
					};
					_p._fmt0x64((_c : GoUInt64), true);
				};
				_p._buf._writeByte((125 : GoUInt8));
			} else {
				_p._buf._writeByte((91 : GoUInt8));
				for (_i => _c in _v) {
					if (_i > (0 : GoInt)) {
						_p._buf._writeByte((32 : GoUInt8));
					};
					_p._fmt._fmtInteger((_c : GoUInt64), (10 : GoInt), false, _verb, ("0123456789abcdefx" : GoString));
				};
				_p._buf._writeByte((93 : GoUInt8));
			};
		} else if (_verb == ((115 : GoInt32))) {
			_p._fmt._fmtBs(_v);
		} else if (_verb == ((120 : GoInt32))) {
			_p._fmt._fmtBx(_v, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((88 : GoInt32))) {
			_p._fmt._fmtBx(_v, ("0123456789ABCDEFX" : GoString));
		} else if (_verb == ((113 : GoInt32))) {
			_p._fmt._fmtQ((_v : GoString));
		} else {
			_p._printValue((stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)).__copy__()),
				_verb, (0 : GoInt));
		};
	}

	@:keep
	static public function _fmtString(_p:Ref<T_pp>, _v:GoString, _verb:GoRune):Void {
		if (_verb == ((118 : GoInt32))) {
			if (_p._fmt._fmtFlags._sharpV) {
				_p._fmt._fmtQ(_v);
			} else {
				_p._fmt._fmtS(_v);
			};
		} else if (_verb == ((115 : GoInt32))) {
			_p._fmt._fmtS(_v);
		} else if (_verb == ((120 : GoInt32))) {
			_p._fmt._fmtSx(_v, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((88 : GoInt32))) {
			_p._fmt._fmtSx(_v, ("0123456789ABCDEFX" : GoString));
		} else if (_verb == ((113 : GoInt32))) {
			_p._fmt._fmtQ(_v);
		} else {
			_p._badVerb(_verb);
		};
	}

	/**
		// fmtComplex formats a complex number v with
		// r = real(v) and j = imag(v) as (r+ji) using
		// fmtFloat for r and j formatting.
	**/
	@:keep
	static public function _fmtComplex(_p:Ref<T_pp>, _v:GoComplex128, _size:GoInt, _verb:GoRune):Void {
		if (_verb == ((118 : GoInt32)) || _verb == ((98 : GoInt32)) || _verb == ((103 : GoInt32)) || _verb == ((71 : GoInt32))
			|| _verb == ((120 : GoInt32)) || _verb == ((88 : GoInt32)) || _verb == ((102 : GoInt32)) || _verb == ((70 : GoInt32))
			|| _verb == ((101 : GoInt32)) || _verb == ((69 : GoInt32))) {
			var _oldPlus:Bool = _p._fmt._fmtFlags._plus;
			_p._buf._writeByte((40 : GoUInt8));
			_p._fmtFloat(_v.real, _size / (2 : GoInt), _verb);
			_p._fmt._fmtFlags._plus = true;
			_p._fmtFloat(_v.imag, _size / (2 : GoInt), _verb);
			_p._buf._writeString(("i)" : GoString));
			_p._fmt._fmtFlags._plus = _oldPlus;
		} else {
			_p._badVerb(_verb);
		};
	}

	/**
		// fmtFloat formats a float. The default precision for each verb
		// is specified as last argument in the call to fmt_float.
	**/
	@:keep
	static public function _fmtFloat(_p:Ref<T_pp>, _v:GoFloat64, _size:GoInt, _verb:GoRune):Void {
		if (_verb == ((118 : GoInt32))) {
			_p._fmt._fmtFloat(_v, _size, (103 : GoInt32), (-1 : GoInt));
		} else if (_verb == ((98 : GoInt32)) || _verb == ((103 : GoInt32)) || _verb == ((71 : GoInt32)) || _verb == ((120 : GoInt32))
			|| _verb == ((88 : GoInt32))) {
			_p._fmt._fmtFloat(_v, _size, _verb, (-1 : GoInt));
		} else if (_verb == ((102 : GoInt32)) || _verb == ((101 : GoInt32)) || _verb == ((69 : GoInt32))) {
			_p._fmt._fmtFloat(_v, _size, _verb, (6 : GoInt));
		} else if (_verb == ((70 : GoInt32))) {
			_p._fmt._fmtFloat(_v, _size, (102 : GoInt32), (6 : GoInt));
		} else {
			_p._badVerb(_verb);
		};
	}

	/**
		// fmtInteger formats a signed or unsigned integer.
	**/
	@:keep
	static public function _fmtInteger(_p:Ref<T_pp>, _v:GoUInt64, _isSigned:Bool, _verb:GoRune):Void {
		if (_verb == ((118 : GoInt32))) {
			if (_p._fmt._fmtFlags._sharpV && !_isSigned) {
				_p._fmt0x64(_v, true);
			} else {
				_p._fmt._fmtInteger(_v, (10 : GoInt), _isSigned, _verb, ("0123456789abcdefx" : GoString));
			};
		} else if (_verb == ((100 : GoInt32))) {
			_p._fmt._fmtInteger(_v, (10 : GoInt), _isSigned, _verb, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((98 : GoInt32))) {
			_p._fmt._fmtInteger(_v, (2 : GoInt), _isSigned, _verb, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((111 : GoInt32)) || _verb == ((79 : GoInt32))) {
			_p._fmt._fmtInteger(_v, (8 : GoInt), _isSigned, _verb, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((120 : GoInt32))) {
			_p._fmt._fmtInteger(_v, (16 : GoInt), _isSigned, _verb, ("0123456789abcdefx" : GoString));
		} else if (_verb == ((88 : GoInt32))) {
			_p._fmt._fmtInteger(_v, (16 : GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : GoString));
		} else if (_verb == ((99 : GoInt32))) {
			_p._fmt._fmtC(_v);
		} else if (_verb == ((113 : GoInt32))) {
			_p._fmt._fmtQc(_v);
		} else if (_verb == ((85 : GoInt32))) {
			_p._fmt._fmtUnicode(_v);
		} else {
			_p._badVerb(_verb);
		};
	}

	/**
		// fmt0x64 formats a uint64 in hexadecimal and prefixes it with 0x or
		// not, as requested, by temporarily setting the sharp flag.
	**/
	@:keep
	static public function _fmt0x64(_p:Ref<T_pp>, _v:GoUInt64, _leading0x:Bool):Void {
		var _sharp:Bool = _p._fmt._fmtFlags._sharp;
		_p._fmt._fmtFlags._sharp = _leading0x;
		_p._fmt._fmtInteger(_v, (16 : GoInt), false, (118 : GoInt32), ("0123456789abcdefx" : GoString));
		_p._fmt._fmtFlags._sharp = _sharp;
	}

	@:keep
	static public function _fmtBool(_p:Ref<T_pp>, _v:Bool, _verb:GoRune):Void {
		if (_verb == ((116 : GoInt32)) || _verb == ((118 : GoInt32))) {
			_p._fmt._fmtBoolean(_v);
		} else {
			_p._badVerb(_verb);
		};
	}

	@:keep
	static public function _badVerb(_p:Ref<T_pp>, _verb:GoRune):Void {
		_p._erroring = true;
		_p._buf._writeString(("%!" : GoString));
		_p._buf._writeRune(_verb);
		_p._buf._writeByte((40 : GoUInt8));
		if (_p._arg != null) {
			_p._buf._writeString((stdgo.reflect.Reflect.typeOf(_p._arg).string() : GoString));
			_p._buf._writeByte((61 : GoUInt8));
			_p._printArg(_p._arg, (118 : GoInt32));
		} else if (_p._value.isValid()) {
			_p._buf._writeString((_p._value.type().string() : GoString));
			_p._buf._writeByte((61 : GoUInt8));
			_p._printValue((_p._value == null ? null : _p._value.__copy__()), (118 : GoInt32), (0 : GoInt));
		} else {
			_p._buf._writeString(("<nil>" : GoString));
		};
		_p._buf._writeByte((41 : GoUInt8));
		_p._erroring = false;
	}

	@:keep
	static public function _unknownType(_p:Ref<T_pp>, _v:stdgo.reflect.Reflect.Value):Void {
		if (!_v.isValid()) {
			_p._buf._writeString(("<nil>" : GoString));
			return;
		};
		_p._buf._writeByte((63 : GoUInt8));
		_p._buf._writeString((_v.type().string() : GoString));
		_p._buf._writeByte((63 : GoUInt8));
	}

	/**
		// Implement WriteString so that we can call io.WriteString
		// on a pp (through state), for efficiency.
	**/
	@:keep
	static public function writeString(_p:Ref<T_pp>, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _ret:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_p._buf._writeString(_s);
		return {_0: (_s.length), _1: (null : Error)};
	}

	/**
		// Implement Write so we can call Fprintf on a pp (through State), for
		// recursive use in custom verbs.
	**/
	@:keep
	static public function write(_p:Ref<T_pp>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _ret:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_p._buf._write(_b);
		return {_0: (_b.length), _1: (null : Error)};
	}

	@:keep
	static public function flag(_p:Ref<T_pp>, _b:GoInt):Bool {
		if (_b == ((45 : GoInt))) {
			return _p._fmt._fmtFlags._minus;
		} else if (_b == ((43 : GoInt))) {
			return _p._fmt._fmtFlags._plus || _p._fmt._fmtFlags._plusV;
		} else if (_b == ((35 : GoInt))) {
			return _p._fmt._fmtFlags._sharp || _p._fmt._fmtFlags._sharpV;
		} else if (_b == ((32 : GoInt))) {
			return _p._fmt._fmtFlags._space;
		} else if (_b == ((48 : GoInt))) {
			return _p._fmt._fmtFlags._zero;
		};
		return false;
	}

	@:keep
	static public function precision(_p:Ref<T_pp>):{var _0:GoInt; var _1:Bool;} {
		var _prec:GoInt = (0 : GoInt), _ok:Bool = false;
		return {_0: _p._fmt._prec, _1: _p._fmt._fmtFlags._precPresent};
	}

	@:keep
	static public function width(_p:Ref<T_pp>):{var _0:GoInt; var _1:Bool;} {
		var _wid:GoInt = (0 : GoInt), _ok:Bool = false;
		return {_0: _p._fmt._wid, _1: _p._fmt._fmtFlags._widPresent};
	}

	/**
		// free saves used pp structs in ppFree; avoids an allocation per invocation.
	**/
	@:keep
	static public function _free(_p:Ref<T_pp>):Void {
		if (_p._buf.capacity > (65536 : GoInt)) {
			return;
		};
		_p._buf = (_p._buf.__slice__(0, (0 : GoInt)) : T_buffer);
		_p._arg = (null : AnyInterface);
		_p._value = (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value);
		_p._wrappedErr = (null : Error);
		_ppFree.put(Go.toInterface(_p));
	}
}

class T_ss_asInterface {
	/**
		// doScanf does the real work when scanning with a format string.
		// At the moment, it handles only pointers to basic types.
	**/
	@:keep
	public function _doScanf(_format:GoString, _a:Slice<AnyInterface>):{var _0:GoInt; var _1:Error;}
		return __self__.value._doScanf(_format, _a);

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
	public function _advance(_format:GoString):GoInt
		return __self__.value._advance(_format);

	/**
		// doScan does the real work for scanning without a format string.
	**/
	@:keep
	public function _doScan(_a:Slice<AnyInterface>):{var _0:GoInt; var _1:Error;}
		return __self__.value._doScan(_a);

	/**
		// scanOne scans a single value, deriving the scanner from the type of the argument.
	**/
	@:keep
	public function _scanOne(_verb:GoRune, _arg:AnyInterface):Void
		__self__.value._scanOne(_verb, _arg);

	/**
		// scanPercent scans a literal percent character.
	**/
	@:keep
	public function _scanPercent():Void
		__self__.value._scanPercent();

	/**
		// hexString returns the space-delimited hexpair-encoded string.
	**/
	@:keep
	public function _hexString():GoString
		return __self__.value._hexString();

	/**
		// hexByte returns the next hex-encoded (two-character) byte from the input.
		// It returns ok==false if the next bytes in the input do not encode a hex byte.
		// If the first byte is hex and the second is not, processing stops.
	**/
	@:keep
	public function _hexByte():{var _0:GoByte; var _1:Bool;}
		return __self__.value._hexByte();

	/**
		// quotedString returns the double- or back-quoted string represented by the next input characters.
	**/
	@:keep
	public function _quotedString():GoString
		return __self__.value._quotedString();

	/**
		// convertString returns the string represented by the next input characters.
		// The format of the input is determined by the verb.
	**/
	@:keep
	public function _convertString(_verb:GoRune):GoString
		return __self__.value._convertString(_verb);

	/**
		// convertComplex converts the next token to a complex128 value.
		// The atof argument is a type-specific reader for the underlying type.
		// If we're reading complex64, atof will parse float32s and convert them
		// to float64's to avoid reproducing this code for each complex type.
	**/
	@:keep
	public function _scanComplex(_verb:GoRune, _n:GoInt):GoComplex128
		return __self__.value._scanComplex(_verb, _n);

	/**
		// convertFloat converts the string to a float64value.
	**/
	@:keep
	public function _convertFloat(_str:GoString, _n:GoInt):GoFloat64
		return __self__.value._convertFloat(_str, _n);

	/**
		// complexTokens returns the real and imaginary parts of the complex number starting here.
		// The number might be parenthesized and has the format (N+Ni) where N is a floating-point
		// number and there are no spaces within.
	**/
	@:keep
	public function _complexTokens():{var _0:GoString; var _1:GoString;}
		return __self__.value._complexTokens();

	/**
		// floatToken returns the floating-point number starting here, no longer than swid
		// if the width is specified. It's not rigorous about syntax because it doesn't check that
		// we have at least some digits, but Atof will do that.
	**/
	@:keep
	public function _floatToken():GoString
		return __self__.value._floatToken();

	/**
		// scanUint returns the value of the unsigned integer represented
		// by the next token, checking for overflow. Any error is stored in s.err.
	**/
	@:keep
	public function _scanUint(_verb:GoRune, _bitSize:GoInt):GoUInt64
		return __self__.value._scanUint(_verb, _bitSize);

	/**
		// scanInt returns the value of the integer represented by the next
		// token, checking for overflow. Any error is stored in s.err.
	**/
	@:keep
	public function _scanInt(_verb:GoRune, _bitSize:GoInt):GoInt64
		return __self__.value._scanInt(_verb, _bitSize);

	/**
		// scanBasePrefix reports whether the integer begins with a base prefix
		// and returns the base, digit string, and whether a zero was found.
		// It is called only if the verb is %v.
	**/
	@:keep
	public function _scanBasePrefix():{var _0:GoInt; var _1:GoString; var _2:Bool;}
		return __self__.value._scanBasePrefix();

	/**
		// scanRune returns the next rune value in the input.
	**/
	@:keep
	public function _scanRune(_bitSize:GoInt):GoInt64
		return __self__.value._scanRune(_bitSize);

	/**
		// scanNumber returns the numerical string with specified digits starting here.
	**/
	@:keep
	public function _scanNumber(_digits:GoString, _haveDigits:Bool):GoString
		return __self__.value._scanNumber(_digits, _haveDigits);

	/**
		// getBase returns the numeric base represented by the verb and its digit string.
	**/
	@:keep
	public function _getBase(_verb:GoRune):{var _0:GoInt; var _1:GoString;}
		return __self__.value._getBase(_verb);

	/**
		// scanBool returns the value of the boolean represented by the next token.
	**/
	@:keep
	public function _scanBool(_verb:GoRune):Bool
		return __self__.value._scanBool(_verb);

	/**
		// okVerb verifies that the verb is present in the list, setting s.err appropriately if not.
	**/
	@:keep
	public function _okVerb(_verb:GoRune, _okVerbs:GoString, _typ:GoString):Bool
		return __self__.value._okVerb(_verb, _okVerbs, _typ);

	/**
		// accept checks the next rune in the input. If it's a byte (sic) in the string, it puts it in the
		// buffer and returns true. Otherwise it return false.
	**/
	@:keep
	public function _accept(_ok:GoString):Bool
		return __self__.value._accept(_ok);

	@:keep
	public function _notEOF():Void
		__self__.value._notEOF();

	/**
		// peek reports whether the next character is in the ok string, without consuming it.
	**/
	@:keep
	public function _peek(_ok:GoString):Bool
		return __self__.value._peek(_ok);

	/**
		// consume reads the next rune in the input and reports whether it is in the ok string.
		// If accept is true, it puts the character into the input token.
	**/
	@:keep
	public function _consume(_ok:GoString, _accept:Bool):Bool
		return __self__.value._consume(_ok, _accept);

	/**
		// token returns the next space-delimited string from the input. It
		// skips white space. For Scanln, it stops at newlines. For Scan,
		// newlines are treated as spaces.
	**/
	@:keep
	public function _token(_skipSpace:Bool, _f:GoRune->Bool):Slice<GoByte>
		return __self__.value._token(_skipSpace, _f);

	/**
		// SkipSpace provides Scan methods the ability to skip space and newline
		// characters in keeping with the current scanning mode set by format strings
		// and Scan/Scanln.
	**/
	@:keep
	public function skipSpace():Void
		__self__.value.skipSpace();

	/**
		// free saves used ss structs in ssFree; avoid an allocation per invocation.
	**/
	@:keep
	public function _free(_old:T_ssave):Void
		__self__.value._free(_old);

	@:keep
	public function token(_skipSpace:Bool, _f:GoRune->Bool):{var _0:Slice<GoByte>; var _1:Error;}
		return __self__.value.token(_skipSpace, _f);

	@:keep
	public function _errorString(_err:GoString):Void
		__self__.value._errorString(_err);

	@:keep
	public function _error(_err:Error):Void
		__self__.value._error(_err);

	@:keep
	public function unreadRune():Error
		return __self__.value.unreadRune();

	/**
		// mustReadRune turns io.EOF into a panic(io.ErrUnexpectedEOF).
		// It is called in cases such as string scanning where an EOF is a
		// syntax error.
	**/
	@:keep
	public function _mustReadRune():GoRune
		return __self__.value._mustReadRune();

	/**
		// The public method returns an error; this private one panics.
		// If getRune reaches EOF, the return value is EOF (-1).
	**/
	@:keep
	public function _getRune():GoRune
		return __self__.value._getRune();

	@:keep
	public function width():{var _0:GoInt; var _1:Bool;}
		return __self__.value.width();

	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	/**
		// The Read method is only in ScanState so that ScanState
		// satisfies io.Reader. It will never be called when used as
		// intended, so there is no need to make it actually work.
	**/
	@:keep
	public function read(_buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_buf);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_ss>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_ss_asInterface) class T_ss_static_extension {
	/**
		// doScanf does the real work when scanning with a format string.
		// At the moment, it handles only pointers to basic types.
	**/
	@:keep
	static public function _doScanf(_s:Ref<T_ss>, _format:GoString, _a:Slice<AnyInterface>):{var _0:GoInt; var _1:Error;} {
		var __deferstack__:Array<Void->Void> = [];
		var _numProcessed:GoInt = (0 : GoInt), _err:Error = (null : Error);
		{
			var _a0 = (_err : Ref<Error>);
			__deferstack__.unshift(() -> _errorHandler(_a0));
		};
		var _end:GoInt = (_format.length) - (1 : GoInt);
		try {
			{
				var _i:GoInt = (0 : GoInt);
				while (_i <= _end) {
					var _w:GoInt = _s._advance((_format.__slice__(_i) : GoString));
					if (_w > (0 : GoInt)) {
						_i = _i + (_w);
						continue;
					};
					if (_format[(_i : GoInt)] != ((37 : GoUInt8))) {
						if (_w < (0:GoInt)) {
							_s._errorString(("input does not match format" : GoString));
						};
						break;
					};
					_i++;
					var _widPresent:Bool = false;
					{
						var __tmp__ = _parsenum(_format, _i, _end);
						_s._ssave._maxWid = __tmp__._0;
						_widPresent = __tmp__._1;
						_i = __tmp__._2;
					};
					if (!_widPresent) {
						_s._ssave._maxWid = (1073741824 : GoInt);
					};
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : GoString)),
						_c:GoInt32 = __tmp__._0,
						_w:GoInt = __tmp__._1;
					_i = _i + (_w);
					if (_c != ((99 : GoInt32))) {
						_s.skipSpace();
					};
					if (_c == ((37 : GoInt32))) {
						_s._scanPercent();
						continue;
					};
					_s._ssave._argLimit = _s._ssave._limit;
					{
						var _f:GoInt = _s._count + _s._ssave._maxWid;
						if (_f < _s._ssave._argLimit) {
							_s._ssave._argLimit = _f;
						};
					};
					if (_numProcessed >= (_a.length)) {
						_s._errorString((("too few operands for format \'%" : GoString) + (_format.__slice__(_i - _w) : GoString)) + ("\'" : GoString));
						break;
					};
					var _arg:AnyInterface = _a[(_numProcessed : GoInt)];
					_s._scanOne(_c, _arg);
					_numProcessed++;
					_s._ssave._argLimit = _s._ssave._limit;
				};
			};
			if (_numProcessed < (_a.length)) {
				_s._errorString(("too many operands" : GoString));
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				return {_0: _numProcessed, _1: _err};
			};
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return {_0: _numProcessed, _1: _err};
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: _numProcessed, _1: _err};
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
	static public function _advance(_s:Ref<T_ss>, _format:GoString):GoInt {
		var _i:GoInt = (0 : GoInt);
		while (_i < (_format.length)) {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : GoString)),
				_fmtc:GoInt32 = __tmp__._0,
				_w:GoInt = __tmp__._1;
			if (_isSpace(_fmtc)) {
				var _newlines:GoInt = (0 : GoInt);
				var _trailingSpace:Bool = false;
				while (_isSpace(_fmtc) && (_i < _format.length)) {
					if (_fmtc == ((10 : GoInt32))) {
						_newlines++;
						_trailingSpace = false;
					} else {
						_trailingSpace = true;
					};
					_i = _i + (_w);
					{
						var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i) : GoString));
						_fmtc = __tmp__._0;
						_w = __tmp__._1;
					};
				};
				{
					var _j:GoInt = (0 : GoInt);
					Go.cfor(_j < _newlines, _j++, {
						var _inputc:GoInt32 = _s._getRune();
						while (_isSpace(_inputc) && (_inputc != (10 : GoInt32))) {
							_inputc = _s._getRune();
						};
						if ((_inputc != (10 : GoInt32)) && (_inputc != (-1 : GoInt32))) {
							_s._errorString(("newline in format does not match input" : GoString));
						};
					});
				};
				if (_trailingSpace) {
					var _inputc:GoInt32 = _s._getRune();
					if (_newlines == ((0 : GoInt))) {
						if (!_isSpace(_inputc) && (_inputc != (-1 : GoInt32))) {
							_s._errorString(("expected space in input to match format" : GoString));
						};
						if (_inputc == ((10 : GoInt32))) {
							_s._errorString(("newline in input does not match format" : GoString));
						};
					};
					while (_isSpace(_inputc) && (_inputc != (10 : GoInt32))) {
						_inputc = _s._getRune();
					};
					if (_inputc != ((-1 : GoInt32))) {
						_s.unreadRune();
					};
				};
				continue;
			};
			if (_fmtc == ((37 : GoInt32))) {
				if (_i + _w == ((_format.length))) {
					_s._errorString(("missing verb: % at end of format string" : GoString));
				};
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_format.__slice__(_i + _w) : GoString)),
					_nextc:GoInt32 = __tmp__._0,
					_0:GoInt = __tmp__._1;
				if (_nextc != ((37 : GoInt32))) {
					return _i;
				};
				_i = _i + (_w);
			};
			var _inputc:GoInt32 = _s._mustReadRune();
			if (_fmtc != (_inputc)) {
				_s.unreadRune();
				return (-1 : GoInt);
			};
			_i = _i + (_w);
		};
		return _i;
	}

	/**
		// doScan does the real work for scanning without a format string.
	**/
	@:keep
	static public function _doScan(_s:Ref<T_ss>, _a:Slice<AnyInterface>):{var _0:GoInt; var _1:Error;} {
		var __deferstack__:Array<Void->Void> = [];
		var _numProcessed:GoInt = (0 : GoInt), _err:Error = (null : Error);
		{
			var _a0 = (_err : Ref<Error>);
			__deferstack__.unshift(() -> _errorHandler(_a0));
		};
		for (_0 => _arg in _a) {
			_s._scanOne((118 : GoInt32), _arg);
			_numProcessed++;
		};
		try {
			if (_s._ssave._nlIsEnd) {
				while (true) {
					var _r:GoInt32 = _s._getRune();
					if ((_r == (10 : GoInt32)) || (_r == (-1 : GoInt32))) {
						break;
					};
					if (!_isSpace(_r)) {
						_s._errorString(("expected newline" : GoString));
						break;
					};
				};
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				return {_0: _numProcessed, _1: _err};
			};
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return {_0: _numProcessed, _1: _err};
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: _numProcessed, _1: _err};
		};
	}

	/**
		// scanOne scans a single value, deriving the scanner from the type of the argument.
	**/
	@:keep
	static public function _scanOne(_s:Ref<T_ss>, _verb:GoRune, _arg:AnyInterface):Void {
		_s._buf = (_s._buf.__slice__(0, (0 : GoInt)) : T_buffer);
		var _err:Error = (null : Error);
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((_arg : Scanner)) : Scanner), ok: true};
			} catch (_) {
				{value: (null : Scanner), ok: false};
			}, _v = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				_err = _v.scan(Go.asInterface(_s), _verb);
				if (_err != null) {
					if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
						_err = stdgo.io.Io.errUnexpectedEOF;
					};
					_s._error(_err);
				};
				return;
			};
		};
		{
			final __type__ = _arg;
			if (Go.typeEquals((__type__ : Pointer<Bool>))) {
				var _v:Pointer<Bool> = __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__() == null ? (null : Pointer<Bool>) : __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__()
					.value;
				_v.value = _s._scanBool(_verb);
			} else if (Go.typeEquals((__type__ : Pointer<GoComplex64>))) {
				var _v:Pointer<GoComplex64> = __type__ == null ? (null : Pointer<GoComplex64>) : __type__.__underlying__() == null ? (null : Pointer<GoComplex64>) : __type__ == null ? (null : Pointer<GoComplex64>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanComplex(_verb, (64 : GoInt)) : GoComplex64);
			} else if (Go.typeEquals((__type__ : Pointer<GoComplex128>))) {
				var _v:Pointer<GoComplex128> = __type__ == null ? (null : Pointer<GoComplex128>) : __type__.__underlying__() == null ? (null : Pointer<GoComplex128>) : __type__ == null ? (null : Pointer<GoComplex128>) : __type__.__underlying__()
					.value;
				_v.value = _s._scanComplex(_verb, (128 : GoInt));
			} else if (Go.typeEquals((__type__ : Pointer<GoInt>))) {
				var _v:Pointer<GoInt> = __type__ == null ? (null : Pointer<GoInt>) : __type__.__underlying__() == null ? (null : Pointer<GoInt>) : __type__ == null ? (null : Pointer<GoInt>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanInt(_verb, (32 : GoInt)) : GoInt);
			} else if (Go.typeEquals((__type__ : Pointer<GoInt8>))) {
				var _v:Pointer<GoInt8> = __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoInt8>) : __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanInt(_verb, (8 : GoInt)) : GoInt8);
			} else if (Go.typeEquals((__type__ : Pointer<GoInt16>))) {
				var _v:Pointer<GoInt16> = __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoInt16>) : __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanInt(_verb, (16 : GoInt)) : GoInt16);
			} else if (Go.typeEquals((__type__ : Pointer<GoInt32>))) {
				var _v:Pointer<GoInt32> = __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoInt32>) : __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanInt(_verb, (32 : GoInt)) : GoInt32);
			} else if (Go.typeEquals((__type__ : Pointer<GoInt64>))) {
				var _v:Pointer<GoInt64> = __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoInt64>) : __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__()
					.value;
				_v.value = _s._scanInt(_verb, (64 : GoInt));
			} else if (Go.typeEquals((__type__ : Pointer<GoUInt>))) {
				var _v:Pointer<GoUInt> = __type__ == null ? (null : Pointer<GoUInt>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt>) : __type__ == null ? (null : Pointer<GoUInt>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanUint(_verb, (32 : GoInt)) : GoUInt);
			} else if (Go.typeEquals((__type__ : Pointer<GoUInt8>))) {
				var _v:Pointer<GoUInt8> = __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt8>) : __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanUint(_verb, (8 : GoInt)) : GoUInt8);
			} else if (Go.typeEquals((__type__ : Pointer<GoUInt16>))) {
				var _v:Pointer<GoUInt16> = __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt16>) : __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanUint(_verb, (16 : GoInt)) : GoUInt16);
			} else if (Go.typeEquals((__type__ : Pointer<GoUInt32>))) {
				var _v:Pointer<GoUInt32> = __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt32>) : __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanUint(_verb, (32 : GoInt)) : GoUInt32);
			} else if (Go.typeEquals((__type__ : Pointer<GoUInt64>))) {
				var _v:Pointer<GoUInt64> = __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt64>) : __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__()
					.value;
				_v.value = _s._scanUint(_verb, (64 : GoInt));
			} else if (Go.typeEquals((__type__ : Pointer<GoUIntptr>))) {
				var _v:Pointer<GoUIntptr> = __type__ == null ? (null : Pointer<GoUIntptr>) : __type__.__underlying__() == null ? (null : Pointer<GoUIntptr>) : __type__ == null ? (null : Pointer<GoUIntptr>) : __type__.__underlying__()
					.value;
				_v.value = (_s._scanUint(_verb, (32 : GoInt)) : GoUIntptr);
			} else if (Go.typeEquals((__type__ : Pointer<GoFloat32>))) {
				var _v:Pointer<GoFloat32> = __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat32>) : __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__()
					.value;
				if (_s._okVerb(_verb, ("beEfFgGv" : GoString), ("float32" : GoString))) {
					_s.skipSpace();
					_s._notEOF();
					_v.value = (_s._convertFloat(_s._floatToken(), (32 : GoInt)) : GoFloat32);
				};
			} else if (Go.typeEquals((__type__ : Pointer<GoFloat64>))) {
				var _v:Pointer<GoFloat64> = __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat64>) : __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__()
					.value;
				if (_s._okVerb(_verb, ("beEfFgGv" : GoString), ("float64" : GoString))) {
					_s.skipSpace();
					_s._notEOF();
					_v.value = _s._convertFloat(_s._floatToken(), (64 : GoInt));
				};
			} else if (Go.typeEquals((__type__ : Pointer<GoString>))) {
				var _v:Pointer<GoString> = __type__ == null ? (null : Pointer<GoString>) : __type__.__underlying__() == null ? (null : Pointer<GoString>) : __type__ == null ? (null : Pointer<GoString>) : __type__.__underlying__()
					.value;
				_v.value = _s._convertString(_verb);
			} else if (Go.typeEquals((__type__ : Ref<Slice<GoByte>>))) {
				var _v:Ref<Slice<GoUInt8>> = __type__ == null ? null : __type__.__underlying__() == null ? null : __type__ == null ? null : __type__.__underlying__()
					.value;
				_v.__setData__((_s._convertString(_verb) : Slice<GoByte>));
			} else {
				var _v:AnyInterface = __type__ == null ? null : __type__.__underlying__();
				var _val:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(_v) == null ? null : stdgo.reflect.Reflect.valueOf(_v).__copy__());
				var _ptr:stdgo.reflect.Reflect.Value = (_val == null ? null : _val.__copy__());
				if (_ptr.kind() != ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
					_s._errorString(("type not a pointer: " : GoString) + (_val.type().string() : GoString));
					return;
				};
				{
					var _v:stdgo.reflect.Reflect.Value = (_ptr.elem() == null ? null : _ptr.elem().__copy__());
					if (_v.kind() == ((("1" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_v.setBool(_s._scanBool(_verb));
					} else if (_v.kind() == ((("2" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("3" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("4" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("5" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("6" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_v.setInt(_s._scanInt(_verb, _v.type().bits()));
					} else if (_v.kind() == ((("7" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("8" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("9" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("10" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("11" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("12" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_v.setUint(_s._scanUint(_verb, _v.type().bits()));
					} else if (_v.kind() == ((("24" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_v.setString(_s._convertString(_verb));
					} else if (_v.kind() == ((("23" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						var _typ:stdgo.reflect.Reflect.Type = _v.type();
						if (_typ.elem().kind() != ((("8" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
							_s._errorString(("can\'t scan type: " : GoString) + (_val.type().string() : GoString));
						};
						var _str:GoString = _s._convertString(_verb);
						_v.set((stdgo.reflect.Reflect.makeSlice(_typ, (_str.length),
							(_str.length)) == null ? null : stdgo.reflect.Reflect.makeSlice(_typ, (_str.length), (_str.length)).__copy__()));
						{
							var _i:GoInt = (0 : GoInt);
							Go.cfor(_i < (_str.length), _i++, {
								_v.index(_i).setUint((_str[(_i : GoInt)] : GoUInt64));
							});
						};
					} else if (_v.kind() == ((("13" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("14" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_s.skipSpace();
						_s._notEOF();
						_v.setFloat(_s._convertFloat(_s._floatToken(), _v.type().bits()));
					} else if (_v.kind() == ((("15" : GoUInt) : stdgo.reflect.Reflect.Kind))
						|| _v.kind() == ((("16" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
						_v.setComplex(_s._scanComplex(_verb, _v.type().bits()));
					} else {
						_s._errorString(("can\'t scan type: " : GoString) + (_val.type().string() : GoString));
					};
				};
			};
		};
	}

	/**
		// scanPercent scans a literal percent character.
	**/
	@:keep
	static public function _scanPercent(_s:Ref<T_ss>):Void {
		_s.skipSpace();
		_s._notEOF();
		if (!_s._accept(("%" : GoString))) {
			_s._errorString(("missing literal %" : GoString));
		};
	}

	/**
		// hexString returns the space-delimited hexpair-encoded string.
	**/
	@:keep
	static public function _hexString(_s:Ref<T_ss>):GoString {
		_s._notEOF();
		while (true) {
			var __tmp__ = _s._hexByte(),
				_b:GoUInt8 = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				break;
			};
			_s._buf._writeByte(_b);
		};
		if ((_s._buf.length) == ((0 : GoInt))) {
			_s._errorString(("no hex data for %x string" : GoString));
			return Go.str();
		};
		return (_s._buf : GoString);
	}

	/**
		// hexByte returns the next hex-encoded (two-character) byte from the input.
		// It returns ok==false if the next bytes in the input do not encode a hex byte.
		// If the first byte is hex and the second is not, processing stops.
	**/
	@:keep
	static public function _hexByte(_s:Ref<T_ss>):{var _0:GoByte; var _1:Bool;} {
		var _b:GoByte = (0 : GoUInt8), _ok:Bool = false;
		var _rune1:GoInt32 = _s._getRune();
		if (_rune1 == ((-1 : GoInt32))) {
			return {_0: _b, _1: _ok};
		};
		var __tmp__ = _hexDigit(_rune1),
			_value1:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_s.unreadRune();
			return {_0: _b, _1: _ok};
		};
		var __tmp__ = _hexDigit(_s._mustReadRune()),
			_value2:GoInt = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (!_ok) {
			_s._errorString(("illegal hex digit" : GoString));
			return {_0: _b, _1: _ok};
		};
		return {_0: ((_value1 << (("4" : GoUInt64) : GoUInt64)) | _value2 : GoByte), _1: true};
	}

	/**
		// quotedString returns the double- or back-quoted string represented by the next input characters.
	**/
	@:keep
	static public function _quotedString(_s:Ref<T_ss>):GoString {
		_s._notEOF();
		var _quote:GoInt32 = _s._getRune();
		{
			var __switchIndex__ = -1;
			while (true) {
				if (_quote == ((96 : GoInt32))) {
					while (true) {
						var _r:GoInt32 = _s._mustReadRune();
						if (_r == (_quote)) {
							break;
						};
						_s._buf._writeRune(_r);
					};
					return (_s._buf : GoString);
					break;
				} else if (_quote == ((34 : GoInt32))) {
					_s._buf._writeByte((34 : GoUInt8));
					while (true) {
						var _r:GoInt32 = _s._mustReadRune();
						_s._buf._writeRune(_r);
						if (_r == ((92 : GoInt32))) {
							_s._buf._writeRune(_s._mustReadRune());
						} else if (_r == ((34 : GoInt32))) {
							break;
						};
					};
					var __tmp__ = stdgo.strconv.Strconv.unquote((_s._buf : GoString)),
						_result:GoString = __tmp__._0,
						_err:Error = __tmp__._1;
					if (_err != null) {
						_s._error(_err);
					};
					return _result;
					break;
				} else {
					_s._errorString(("expected quoted string" : GoString));
				};
				break;
			};
		};
		return Go.str();
	}

	/**
		// convertString returns the string represented by the next input characters.
		// The format of the input is determined by the verb.
	**/
	@:keep
	static public function _convertString(_s:Ref<T_ss>, _verb:GoRune):GoString {
		var _str:GoString = ("" : GoString);
		if (!_s._okVerb(_verb, ("svqxX" : GoString), ("string" : GoString))) {
			return Go.str();
		};
		_s.skipSpace();
		_s._notEOF();
		if (_verb == ((113 : GoInt32))) {
			_str = _s._quotedString();
		} else if (_verb == ((120 : GoInt32)) || _verb == ((88 : GoInt32))) {
			_str = _s._hexString();
		} else {
			_str = (_s._token(true, _notSpace) : GoString);
		};
		return _str;
	}

	/**
		// convertComplex converts the next token to a complex128 value.
		// The atof argument is a type-specific reader for the underlying type.
		// If we're reading complex64, atof will parse float32s and convert them
		// to float64's to avoid reproducing this code for each complex type.
	**/
	@:keep
	static public function _scanComplex(_s:Ref<T_ss>, _verb:GoRune, _n:GoInt):GoComplex128 {
		if (!_s._okVerb(_verb, ("beEfFgGv" : GoString), ("complex" : GoString))) {
			return ((0 : GoFloat64) + new GoComplex128(0, 0));
		};
		_s.skipSpace();
		_s._notEOF();
		var __tmp__ = _s._complexTokens(),
			_sreal:GoString = __tmp__._0,
			_simag:GoString = __tmp__._1;
		var _real:GoFloat64 = _s._convertFloat(_sreal, _n / (2 : GoInt));
		var _imag:GoFloat64 = _s._convertFloat(_simag, _n / (2 : GoInt));
		return new GoComplex128(_real, _imag);
	}

	/**
		// convertFloat converts the string to a float64value.
	**/
	@:keep
	static public function _convertFloat(_s:Ref<T_ss>, _str:GoString, _n:GoInt):GoFloat64 {
		{
			var _p:GoInt = _indexRune(_str, (112 : GoInt32));
			if ((_p >= (0 : GoInt)) && !_hasX(_str)) {
				var __tmp__ = stdgo.strconv.Strconv.parseFloat((_str.__slice__(0, _p) : GoString), _n),
					_f:GoFloat64 = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					{
						var __tmp__ = try {
							{value: (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.strconv.Strconv.NumError>)) : Ref<stdgo.strconv.Strconv.NumError>),
								ok: true};
						} catch (_) {
							{value: (null : Ref<stdgo.strconv.Strconv.NumError>), ok: false};
						}, _e = __tmp__.value, _ok = __tmp__.ok;
						if (_ok) {
							_e.num = _str;
						};
					};
					_s._error(_err);
				};
				var __tmp__ = stdgo.strconv.Strconv.atoi((_str.__slice__(_p + (1 : GoInt)) : GoString)),
					_m:GoInt = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					{
						var __tmp__ = try {
							{value: (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.strconv.Strconv.NumError>)) : Ref<stdgo.strconv.Strconv.NumError>),
								ok: true};
						} catch (_) {
							{value: (null : Ref<stdgo.strconv.Strconv.NumError>), ok: false};
						}, _e = __tmp__.value, _ok = __tmp__.ok;
						if (_ok) {
							_e.num = _str;
						};
					};
					_s._error(_err);
				};
				return stdgo.math.Math.ldexp(_f, _m);
			};
		};
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(_str, _n),
			_f:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	static public function _complexTokens(_s:Ref<T_ss>):{var _0:GoString; var _1:GoString;} {
		var _real:GoString = ("" : GoString), _imag:GoString = ("" : GoString);
		var _parens:Bool = _s._accept(("(" : GoString));
		_real = _s._floatToken();
		_s._buf = (_s._buf.__slice__(0, (0 : GoInt)) : T_buffer);
		if (!_s._accept(("+-" : GoString))) {
			_s._error(_complexError);
		};
		var _imagSign:GoString = (_s._buf : GoString);
		_imag = _s._floatToken();
		if (!_s._accept(("i" : GoString))) {
			_s._error(_complexError);
		};
		if (_parens && !_s._accept((")" : GoString))) {
			_s._error(_complexError);
		};
		return {_0: _real, _1: _imagSign + _imag};
	}

	/**
		// floatToken returns the floating-point number starting here, no longer than swid
		// if the width is specified. It's not rigorous about syntax because it doesn't check that
		// we have at least some digits, but Atof will do that.
	**/
	@:keep
	static public function _floatToken(_s:Ref<T_ss>):GoString {
		_s._buf = (_s._buf.__slice__(0, (0 : GoInt)) : T_buffer);
		if ((_s._accept(("nN" : GoString)) && _s._accept(("aA" : GoString))) && _s._accept(("nN" : GoString))) {
			return (_s._buf : GoString);
		};
		_s._accept(("+-" : GoString));
		if ((_s._accept(("iI" : GoString)) && _s._accept(("nN" : GoString))) && _s._accept(("fF" : GoString))) {
			return (_s._buf : GoString);
		};
		var _digits:GoString = ("0123456789_" : GoString);
		var _exp:GoString = ("eEpP" : GoString);
		if (_s._accept(("0" : GoString)) && _s._accept(("xX" : GoString))) {
			_digits = ("0123456789aAbBcCdDeEfF_" : GoString);
			_exp = ("pP" : GoString);
		};
		while (_s._accept(_digits)) {};
		if (_s._accept(("." : GoString))) {
			while (_s._accept(_digits)) {};
		};
		if (_s._accept(_exp)) {
			_s._accept(("+-" : GoString));
			while (_s._accept(("0123456789_" : GoString))) {};
		};
		return (_s._buf : GoString);
	}

	/**
		// scanUint returns the value of the unsigned integer represented
		// by the next token, checking for overflow. Any error is stored in s.err.
	**/
	@:keep
	static public function _scanUint(_s:Ref<T_ss>, _verb:GoRune, _bitSize:GoInt):GoUInt64 {
		if (_verb == ((99 : GoInt32))) {
			return (_s._scanRune(_bitSize) : GoUInt64);
		};
		_s.skipSpace();
		_s._notEOF();
		var __tmp__ = _s._getBase(_verb),
			_base:GoInt = __tmp__._0,
			_digits:GoString = __tmp__._1;
		var _haveDigits:Bool = false;
		if (_verb == ((85 : GoInt32))) {
			if (!_s._consume(("U" : GoString), false) || !_s._consume(("+" : GoString), false)) {
				_s._errorString(("bad unicode format " : GoString));
			};
		} else if (_verb == ((118 : GoInt32))) {
			{
				var __tmp__ = _s._scanBasePrefix();
				_base = __tmp__._0;
				_digits = __tmp__._1;
				_haveDigits = __tmp__._2;
			};
		};
		var _tok:GoString = _s._scanNumber(_digits, _haveDigits);
		var __tmp__ = stdgo.strconv.Strconv.parseUint(_tok, _base, (64 : GoInt)),
			_i:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_s._error(_err);
		};
		var _n:GoUInt = (_bitSize : GoUInt);
		var _x:GoUInt64 = (_i << ((("64" : GoUInt) : GoUInt) - _n)) >> ((("64" : GoUInt) : GoUInt) - _n);
		if (_x != (_i)) {
			_s._errorString(("unsigned integer overflow on token " : GoString) + _tok);
		};
		return _i;
	}

	/**
		// scanInt returns the value of the integer represented by the next
		// token, checking for overflow. Any error is stored in s.err.
	**/
	@:keep
	static public function _scanInt(_s:Ref<T_ss>, _verb:GoRune, _bitSize:GoInt):GoInt64 {
		if (_verb == ((99 : GoInt32))) {
			return _s._scanRune(_bitSize);
		};
		_s.skipSpace();
		_s._notEOF();
		var __tmp__ = _s._getBase(_verb),
			_base:GoInt = __tmp__._0,
			_digits:GoString = __tmp__._1;
		var _haveDigits:Bool = false;
		if (_verb == ((85 : GoInt32))) {
			if (!_s._consume(("U" : GoString), false) || !_s._consume(("+" : GoString), false)) {
				_s._errorString(("bad unicode format " : GoString));
			};
		} else {
			_s._accept(("+-" : GoString));
			if (_verb == ((118 : GoInt32))) {
				{
					var __tmp__ = _s._scanBasePrefix();
					_base = __tmp__._0;
					_digits = __tmp__._1;
					_haveDigits = __tmp__._2;
				};
			};
		};
		var _tok:GoString = _s._scanNumber(_digits, _haveDigits);
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_tok, _base, (64 : GoInt)),
			_i:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_s._error(_err);
		};
		var _n:GoUInt = (_bitSize : GoUInt);
		var _x:GoInt64 = (_i << ((("64" : GoUInt) : GoUInt) - _n)) >> ((("64" : GoUInt) : GoUInt) - _n);
		if (_x != (_i)) {
			_s._errorString(("integer overflow on token " : GoString) + _tok);
		};
		return _i;
	}

	/**
		// scanBasePrefix reports whether the integer begins with a base prefix
		// and returns the base, digit string, and whether a zero was found.
		// It is called only if the verb is %v.
	**/
	@:keep
	static public function _scanBasePrefix(_s:Ref<T_ss>):{var _0:GoInt; var _1:GoString; var _2:Bool;} {
		var _base:GoInt = (0 : GoInt),
			_digits:GoString = ("" : GoString),
			_zeroFound:Bool = false;
		if (!_s._peek(("0" : GoString))) {
			return {_0: (0 : GoInt), _1: ("0123456789_" : GoString), _2: false};
		};
		_s._accept(("0" : GoString));
		if (_s._peek(("bB" : GoString))) {
			_s._consume(("bB" : GoString), true);
			return {_0: (0 : GoInt), _1: ("01_" : GoString), _2: true};
		} else if (_s._peek(("oO" : GoString))) {
			_s._consume(("oO" : GoString), true);
			return {_0: (0 : GoInt), _1: ("01234567_" : GoString), _2: true};
		} else if (_s._peek(("xX" : GoString))) {
			_s._consume(("xX" : GoString), true);
			return {_0: (0 : GoInt), _1: ("0123456789aAbBcCdDeEfF_" : GoString), _2: true};
		} else {
			return {_0: (0 : GoInt), _1: ("01234567_" : GoString), _2: true};
		};
	}

	/**
		// scanRune returns the next rune value in the input.
	**/
	@:keep
	static public function _scanRune(_s:Ref<T_ss>, _bitSize:GoInt):GoInt64 {
		_s._notEOF();
		var _r:GoInt32 = _s._getRune();
		var _n:GoUInt = (_bitSize : GoUInt);
		var _x:GoInt64 = ((_r : GoInt64) << ((("64" : GoUInt) : GoUInt) - _n)) >> ((("64" : GoUInt) : GoUInt) - _n);
		if (_x != ((_r : GoInt64))) {
			_s._errorString(("overflow on character value " : GoString) + (_r : GoString));
		};
		return (_r : GoInt64);
	}

	/**
		// scanNumber returns the numerical string with specified digits starting here.
	**/
	@:keep
	static public function _scanNumber(_s:Ref<T_ss>, _digits:GoString, _haveDigits:Bool):GoString {
		if (!_haveDigits) {
			_s._notEOF();
			if (!_s._accept(_digits)) {
				_s._errorString(("expected integer" : GoString));
			};
		};
		while (_s._accept(_digits)) {};
		return (_s._buf : GoString);
	}

	/**
		// getBase returns the numeric base represented by the verb and its digit string.
	**/
	@:keep
	static public function _getBase(_s:Ref<T_ss>, _verb:GoRune):{var _0:GoInt; var _1:GoString;} {
		var _base:GoInt = (0 : GoInt), _digits:GoString = ("" : GoString);
		_s._okVerb(_verb, ("bdoUxXv" : GoString), ("integer" : GoString));
		_base = (10 : GoInt);
		_digits = ("0123456789" : GoString);
		if (_verb == ((98 : GoInt32))) {
			_base = (2 : GoInt);
			_digits = ("01" : GoString);
		} else if (_verb == ((111 : GoInt32))) {
			_base = (8 : GoInt);
			_digits = ("01234567" : GoString);
		} else if (_verb == ((120 : GoInt32)) || _verb == ((88 : GoInt32)) || _verb == ((85 : GoInt32))) {
			_base = (16 : GoInt);
			_digits = ("0123456789aAbBcCdDeEfF" : GoString);
		};
		return {_0: _base, _1: _digits};
	}

	/**
		// scanBool returns the value of the boolean represented by the next token.
	**/
	@:keep
	static public function _scanBool(_s:Ref<T_ss>, _verb:GoRune):Bool {
		_s.skipSpace();
		_s._notEOF();
		if (!_s._okVerb(_verb, ("tv" : GoString), ("boolean" : GoString))) {
			return false;
		};
		if (_s._getRune() == ((48 : GoInt32))) {
			return false;
		} else if (_s._getRune() == ((49 : GoInt32))) {
			return true;
		} else if (_s._getRune() == ((116 : GoInt32)) || _s._getRune() == ((84 : GoInt32))) {
			if (_s._accept(("rR" : GoString)) && (!_s._accept(("uU" : GoString)) || !_s._accept(("eE" : GoString)))) {
				_s._error(_boolError);
			};
			return true;
		} else if (_s._getRune() == ((102 : GoInt32)) || _s._getRune() == ((70 : GoInt32))) {
			if (_s._accept(("aA" : GoString))
				&& ((!_s._accept(("lL" : GoString)) || !_s._accept(("sS" : GoString))) || !_s._accept(("eE" : GoString)))) {
				_s._error(_boolError);
			};
			return false;
		};
		return false;
	}

	/**
		// okVerb verifies that the verb is present in the list, setting s.err appropriately if not.
	**/
	@:keep
	static public function _okVerb(_s:Ref<T_ss>, _verb:GoRune, _okVerbs:GoString, _typ:GoString):Bool {
		for (_0 => _v in _okVerbs) {
			if (_v == (_verb)) {
				return true;
			};
		};
		_s._errorString(((("bad verb \'%" : GoString) + (_verb : GoString)) + ("\' for " : GoString)) + _typ);
		return false;
	}

	/**
		// accept checks the next rune in the input. If it's a byte (sic) in the string, it puts it in the
		// buffer and returns true. Otherwise it return false.
	**/
	@:keep
	static public function _accept(_s:Ref<T_ss>, _ok:GoString):Bool {
		return _s._consume(_ok, true);
	}

	@:keep
	static public function _notEOF(_s:Ref<T_ss>):Void {
		{
			var _r:GoInt32 = _s._getRune();
			if (_r == ((-1 : GoInt32))) {
				throw Go.toInterface(stdgo.io.Io.eof);
			};
		};
		_s.unreadRune();
	}

	/**
		// peek reports whether the next character is in the ok string, without consuming it.
	**/
	@:keep
	static public function _peek(_s:Ref<T_ss>, _ok:GoString):Bool {
		var _r:GoInt32 = _s._getRune();
		if (_r != ((-1 : GoInt32))) {
			_s.unreadRune();
		};
		return _indexRune(_ok, _r) >= (0 : GoInt);
	}

	/**
		// consume reads the next rune in the input and reports whether it is in the ok string.
		// If accept is true, it puts the character into the input token.
	**/
	@:keep
	static public function _consume(_s:Ref<T_ss>, _ok:GoString, _accept:Bool):Bool {
		var _r:GoInt32 = _s._getRune();
		if (_r == ((-1 : GoInt32))) {
			return false;
		};
		if (_indexRune(_ok, _r) >= (0 : GoInt)) {
			if (_accept) {
				_s._buf._writeRune(_r);
			};
			return true;
		};
		if ((_r != (-1 : GoInt32)) && _accept) {
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
	static public function _token(_s:Ref<T_ss>, _skipSpace:Bool, _f:GoRune->Bool):Slice<GoByte> {
		if (_skipSpace) {
			_s.skipSpace();
		};
		while (true) {
			var _r:GoInt32 = _s._getRune();
			if (_r == ((-1 : GoInt32))) {
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
	static public function skipSpace(_s:Ref<T_ss>):Void {
		while (true) {
			var _r:GoInt32 = _s._getRune();
			if (_r == ((-1 : GoInt32))) {
				return;
			};
			if ((_r == (13 : GoInt32)) && _s._peek(("\n" : GoString))) {
				continue;
			};
			if (_r == ((10 : GoInt32))) {
				if (_s._ssave._nlIsSpace) {
					continue;
				};
				_s._errorString(("unexpected newline" : GoString));
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
	static public function _free(_s:Ref<T_ss>, _old:T_ssave):Void {
		if (_old._validSave) {
			_s._ssave = (_old == null ? null : _old.__copy__());
			return;
		};
		if (_s._buf.capacity > (1024 : GoInt)) {
			return;
		};
		_s._buf = (_s._buf.__slice__(0, (0 : GoInt)) : T_buffer);
		_s._rs = (null : stdgo.io.Io.RuneScanner);
		_ssFree.put(Go.toInterface(_s));
	}

	@:keep
	static public function token(_s:Ref<T_ss>, _skipSpace:Bool, _f:GoRune->Bool):{var _0:Slice<GoByte>; var _1:Error;} {
		var __deferstack__:Array<Void->Void> = [];
		var _tok:Slice<GoByte> = (null : Slice<GoUInt8>),
			_err:Error = (null : Error);
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _e:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (_e != null) {
						{
							var __tmp__ = try {
								{value: (Go.typeAssert((_e : T_scanError)) : T_scanError), ok: true};
							} catch (_) {
								{value: ({} : T_scanError), ok: false};
							}, _se = __tmp__.value, _ok = __tmp__.ok;
							if (_ok) {
								_err = _se._err;
							} else {
								throw Go.toInterface(_e);
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
		try {
			_s._buf = (_s._buf.__slice__(0, (0 : GoInt)) : T_buffer);
			_tok = _s._token(_skipSpace, _f);
			{
				for (defer in __deferstack__) {
					defer();
				};
				return {_0: _tok, _1: _err};
			};
			for (defer in __deferstack__) {
				defer();
			};
			{
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return {_0: _tok, _1: _err};
			};
		} catch (__exception__) {
			if (!(__exception__.native is AnyInterfaceData))
				throw __exception__;
			Go.recover_exception = __exception__.native;
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return {_0: _tok, _1: _err};
		};
	}

	@:keep
	static public function _errorString(_s:Ref<T_ss>, _err:GoString):Void {
		throw Go.toInterface((new T_scanError(stdgo.errors.Errors.new_(_err)) : T_scanError));
	}

	@:keep
	static public function _error(_s:Ref<T_ss>, _err:Error):Void {
		throw Go.toInterface((new T_scanError(_err) : T_scanError));
	}

	@:keep
	static public function unreadRune(_s:Ref<T_ss>):Error {
		_s._rs.unreadRune();
		_s._atEOF = false;
		_s._count--;
		return (null : Error);
	}

	/**
		// mustReadRune turns io.EOF into a panic(io.ErrUnexpectedEOF).
		// It is called in cases such as string scanning where an EOF is a
		// syntax error.
	**/
	@:keep
	static public function _mustReadRune(_s:Ref<T_ss>):GoRune {
		var _r:GoRune = (0 : GoInt32);
		_r = _s._getRune();
		if (_r == ((-1 : GoInt32))) {
			_s._error(stdgo.io.Io.errUnexpectedEOF);
		};
		return _r;
	}

	/**
		// The public method returns an error; this private one panics.
		// If getRune reaches EOF, the return value is EOF (-1).
	**/
	@:keep
	static public function _getRune(_s:Ref<T_ss>):GoRune {
		var _r:GoRune = (0 : GoInt32);
		var __tmp__ = _s.readRune(),
			_r:GoInt32 = __tmp__._0,
			_0:GoInt = __tmp__._1,
			_err:Error = __tmp__._2;
		if (_err != null) {
			if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
				return (-1 : GoInt32);
			};
			_s._error(_err);
		};
		return _r;
	}

	@:keep
	static public function width(_s:Ref<T_ss>):{var _0:GoInt; var _1:Bool;} {
		var _wid:GoInt = (0 : GoInt), _ok:Bool = false;
		if (_s._ssave._maxWid == ((1073741824 : GoInt))) {
			return {_0: (0 : GoInt), _1: false};
		};
		return {_0: _s._ssave._maxWid, _1: true};
	}

	@:keep
	static public function readRune(_s:Ref<T_ss>):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _r:GoRune = (0 : GoInt32),
			_size:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		if (_s._atEOF || (_s._count >= _s._ssave._argLimit)) {
			_err = stdgo.io.Io.eof;
			return {_0: _r, _1: _size, _2: _err};
		};
		{
			var __tmp__ = _s._rs.readRune();
			_r = __tmp__._0;
			_size = __tmp__._1;
			_err = __tmp__._2;
		};
		if (_err == null) {
			_s._count++;
			if (_s._ssave._nlIsEnd && (_r == (10 : GoInt32))) {
				_s._atEOF = true;
			};
		} else if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
			_s._atEOF = true;
		};
		return {_0: _r, _1: _size, _2: _err};
	}

	/**
		// The Read method is only in ScanState so that ScanState
		// satisfies io.Reader. It will never be called when used as
		// intended, so there is no need to make it actually work.
	**/
	@:keep
	static public function read(_s:Ref<T_ss>, _buf:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		return {_0: (0 : GoInt), _1: stdgo.errors.Errors.new_(("ScanState\'s Read should not be called. Use ReadRune" : GoString))};
	}
}

class T_readRune_asInterface {
	@:keep
	public function unreadRune():Error
		return __self__.value.unreadRune();

	/**
		// ReadRune returns the next UTF-8 encoded code point from the
		// io.Reader inside r.
	**/
	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	/**
		// readByte returns the next byte from the input, which may be
		// left over from a previous read if the UTF-8 was ill-formed.
	**/
	@:keep
	public function _readByte():{var _0:GoByte; var _1:Error;}
		return __self__.value._readByte();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_readRune>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_readRune_asInterface) class T_readRune_static_extension {
	@:keep
	static public function unreadRune(_r:Ref<T_readRune>):Error {
		if (_r._peekRune >= (0 : GoInt32)) {
			return stdgo.errors.Errors.new_(("fmt: scanning called UnreadRune with no rune available" : GoString));
		};
		_r._peekRune = (-1 ^ _r._peekRune);
		return (null : Error);
	}

	/**
		// ReadRune returns the next UTF-8 encoded code point from the
		// io.Reader inside r.
	**/
	@:keep
	static public function readRune(_r:Ref<T_readRune>):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _rr:GoRune = (0 : GoInt32),
			_size:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		if (_r._peekRune >= (0 : GoInt32)) {
			_rr = _r._peekRune;
			_r._peekRune = (-1 ^ _r._peekRune);
			_size = stdgo.unicode.utf8.Utf8.runeLen(_rr);
			return {_0: _rr, _1: _size, _2: _err};
		};
		{
			var __tmp__ = _r._readByte();
			_r._buf[(0 : GoInt)] = __tmp__._0;
			_err = __tmp__._1;
		};
		if (_err != null) {
			return {_0: _rr, _1: _size, _2: _err};
		};
		if (_r._buf[(0 : GoInt)] < (128 : GoUInt8)) {
			_rr = (_r._buf[(0 : GoInt)] : GoRune);
			_size = (1 : GoInt);
			_r._peekRune = (-1 ^ _rr);
			return {_0: _rr, _1: _size, _2: _err};
		};
		var _n:GoInt = (0 : GoInt);
		{
			_n = (1 : GoInt);
			Go.cfor(!stdgo.unicode.utf8.Utf8.fullRune((_r._buf.__slice__(0, _n) : Slice<GoUInt8>)), _n++, {
				{
					var __tmp__ = _r._readByte();
					_r._buf[(_n : GoInt)] = __tmp__._0;
					_err = __tmp__._1;
				};
				if (_err != null) {
					if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
						_err = (null : Error);
						break;
					};
					return {_0: _rr, _1: _size, _2: _err};
				};
			});
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_r._buf.__slice__(0, _n) : Slice<GoUInt8>));
			_rr = __tmp__._0;
			_size = __tmp__._1;
		};
		if (_size < _n) {
			Go.copySlice((_r._pendBuf.__slice__(_r._pending) : Slice<GoUInt8>), (_r._buf.__slice__(_size, _n) : Slice<GoUInt8>));
			_r._pending = _r._pending + (_n - _size);
		};
		_r._peekRune = (-1 ^ _rr);
		return {_0: _rr, _1: _size, _2: _err};
	}

	/**
		// readByte returns the next byte from the input, which may be
		// left over from a previous read if the UTF-8 was ill-formed.
	**/
	@:keep
	static public function _readByte(_r:Ref<T_readRune>):{var _0:GoByte; var _1:Error;} {
		var _b:GoByte = (0 : GoUInt8), _err:Error = (null : Error);
		if (_r._pending > (0 : GoInt)) {
			_b = _r._pendBuf[(0 : GoInt)];
			Go.copySlice((_r._pendBuf.__slice__((0 : GoInt)) : Slice<GoUInt8>), (_r._pendBuf.__slice__((1 : GoInt)) : Slice<GoUInt8>));
			_r._pending--;
			return {_0: _b, _1: _err};
		};
		var __tmp__ = stdgo.io.Io.readFull(_r._reader, (_r._pendBuf.__slice__(0, (1 : GoInt)) : Slice<GoUInt8>)),
			_n:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_n != ((1 : GoInt))) {
			return {_0: (0 : GoUInt8), _1: _err};
		};
		return {_0: _r._pendBuf[(0 : GoInt)], _1: _err};
	}
}

class T_buffer_asInterface {
	@:keep
	public function _writeRune(_r:GoRune):Void
		__self__.value._writeRune(_r);

	@:keep
	public function _writeByte(_c:GoByte):Void
		__self__.value._writeByte(_c);

	@:keep
	public function _writeString(_s:GoString):Void
		__self__.value._writeString(_s);

	@:keep
	public function _write(_p:Slice<GoByte>):Void
		__self__.value._write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_buffer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_buffer_asInterface) class T_buffer_static_extension {
	@:keep
	static public function _writeRune(_bp:Ref<T_buffer>, _r:GoRune):Void {
		if (_r < (128:GoInt32)) {
			_bp.__setData__(_bp.__appendref__((_r : GoByte)));
			return;
		};
		var _b:T_buffer = _bp;
		var _n:GoInt = (_b.length);
		while ((_n + (4 : GoInt)) > _b.capacity) {
			_b = _b.__appendref__((0 : GoUInt8));
		};
		var _w:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_n, _n + (4 : GoInt)) : T_buffer), _r);
		_bp.__setData__((_b.__slice__(0, _n + _w) : T_buffer));
	}

	@:keep
	static public function _writeByte(_b:Ref<T_buffer>, _c:GoByte):Void {
		_b.__setData__(_b.__appendref__(_c));
	}

	@:keep
	static public function _writeString(_b:Ref<T_buffer>, _s:GoString):Void {
		_b.__setData__(_b.__appendref__(..._s.__toArray__()));
	}

	@:keep
	static public function _write(_b:Ref<T_buffer>, _p:Slice<GoByte>):Void {
		_b.__setData__(_b.__appendref__(..._p.__toArray__()));
	}
}

class T_stringReader_asInterface {
	@:keep
	@:pointer
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(__self__, _b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_stringReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
	@:keep
	@:pointer
	static public function read(____:T_stringReader, _r:Pointer<T_stringReader>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_n = Go.copySlice(_b, _r.value);
		_r.value = ((_r.value).__slice__(_n) : T_stringReader);
		if (_n == ((0 : GoInt))) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}
}
