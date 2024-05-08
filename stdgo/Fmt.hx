package stdgo;
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
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
private function get_isSpace():stdgo.GoInt32 -> Bool return _0 -> stdgo._internal.fmt.Fmt.isSpace(_0);
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.fmt.Fmt.isSpace = v;
        return v;
    }
var parsenum(get, set) : (stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; };
private function get_parsenum():(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } return (_0, _1, _2) -> stdgo._internal.fmt.Fmt.parsenum(_0, _1, _2);
private function set_parsenum(v:(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; }):(stdgo.GoString, stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        stdgo._internal.fmt.Fmt.parsenum = v;
        return v;
    }
typedef State = stdgo._internal.fmt.Fmt.State;
typedef Formatter = stdgo._internal.fmt.Fmt.Formatter;
typedef Stringer = stdgo._internal.fmt.Fmt.Stringer;
typedef GoStringer = stdgo._internal.fmt.Fmt.GoStringer;
typedef ScanState = stdgo._internal.fmt.Fmt.ScanState;
typedef Scanner = stdgo._internal.fmt.Fmt.Scanner;
abstract T_wrapError(stdgo._internal.fmt.Fmt.T_wrapError) from stdgo._internal.fmt.Fmt.T_wrapError to stdgo._internal.fmt.Fmt.T_wrapError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_msg:String, ?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt.T_wrapError(_msg, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_wrapErrors(stdgo._internal.fmt.Fmt.T_wrapErrors) from stdgo._internal.fmt.Fmt.T_wrapErrors to stdgo._internal.fmt.Fmt.T_wrapErrors {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) i] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_msg:String, ?_errs:Array<stdgo.Error>) this = new stdgo._internal.fmt.Fmt.T_wrapErrors(_msg, ([for (i in _errs) i] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fmtFlags(stdgo._internal.fmt.Fmt.T_fmtFlags) from stdgo._internal.fmt.Fmt.T_fmtFlags to stdgo._internal.fmt.Fmt.T_fmtFlags {
    public var _widPresent(get, set) : Bool;
    function get__widPresent():Bool return this._widPresent;
    function set__widPresent(v:Bool):Bool {
        this._widPresent = v;
        return v;
    }
    public var _precPresent(get, set) : Bool;
    function get__precPresent():Bool return this._precPresent;
    function set__precPresent(v:Bool):Bool {
        this._precPresent = v;
        return v;
    }
    public var _minus(get, set) : Bool;
    function get__minus():Bool return this._minus;
    function set__minus(v:Bool):Bool {
        this._minus = v;
        return v;
    }
    public var _plus(get, set) : Bool;
    function get__plus():Bool return this._plus;
    function set__plus(v:Bool):Bool {
        this._plus = v;
        return v;
    }
    public var _sharp(get, set) : Bool;
    function get__sharp():Bool return this._sharp;
    function set__sharp(v:Bool):Bool {
        this._sharp = v;
        return v;
    }
    public var _space(get, set) : Bool;
    function get__space():Bool return this._space;
    function set__space(v:Bool):Bool {
        this._space = v;
        return v;
    }
    public var _zero(get, set) : Bool;
    function get__zero():Bool return this._zero;
    function set__zero(v:Bool):Bool {
        this._zero = v;
        return v;
    }
    public var _plusV(get, set) : Bool;
    function get__plusV():Bool return this._plusV;
    function set__plusV(v:Bool):Bool {
        this._plusV = v;
        return v;
    }
    public var _sharpV(get, set) : Bool;
    function get__sharpV():Bool return this._sharpV;
    function set__sharpV(v:Bool):Bool {
        this._sharpV = v;
        return v;
    }
    public function new(?_widPresent:Bool, ?_precPresent:Bool, ?_minus:Bool, ?_plus:Bool, ?_sharp:Bool, ?_space:Bool, ?_zero:Bool, ?_plusV:Bool, ?_sharpV:Bool) this = new stdgo._internal.fmt.Fmt.T_fmtFlags(_widPresent, _precPresent, _minus, _plus, _sharp, _space, _zero, _plusV, _sharpV);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_fmt(stdgo._internal.fmt.Fmt.T_fmt) from stdgo._internal.fmt.Fmt.T_fmt to stdgo._internal.fmt.Fmt.T_fmt {
    public var _buf(get, set) : stdgo._internal.fmt.Fmt.T_buffer;
    function get__buf():stdgo._internal.fmt.Fmt.T_buffer return this._buf;
    function set__buf(v:stdgo._internal.fmt.Fmt.T_buffer):stdgo._internal.fmt.Fmt.T_buffer {
        this._buf = v;
        return v;
    }
    public var _fmtFlags(get, set) : stdgo._internal.fmt.Fmt.T_fmtFlags;
    function get__fmtFlags():stdgo._internal.fmt.Fmt.T_fmtFlags return this._fmtFlags;
    function set__fmtFlags(v:stdgo._internal.fmt.Fmt.T_fmtFlags):stdgo._internal.fmt.Fmt.T_fmtFlags {
        this._fmtFlags = v;
        return v;
    }
    public var _wid(get, set) : StdTypes.Int;
    function get__wid():StdTypes.Int return this._wid;
    function set__wid(v:StdTypes.Int):StdTypes.Int {
        this._wid = v;
        return v;
    }
    public var _prec(get, set) : StdTypes.Int;
    function get__prec():StdTypes.Int return this._prec;
    function set__prec(v:StdTypes.Int):StdTypes.Int {
        this._prec = v;
        return v;
    }
    public var _intbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__intbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._intbuf) i]);
    function set__intbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._intbuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_buf:stdgo._internal.fmt.Fmt.T_buffer, ?_fmtFlags:stdgo._internal.fmt.Fmt.T_fmtFlags, ?_wid:StdTypes.Int, ?_prec:StdTypes.Int, ?_intbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.fmt.Fmt.T_fmt(_buf, _fmtFlags, _wid, _prec, ([for (i in _intbuf) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_pp(stdgo._internal.fmt.Fmt.T_pp) from stdgo._internal.fmt.Fmt.T_pp to stdgo._internal.fmt.Fmt.T_pp {
    public var _buf(get, set) : stdgo._internal.fmt.Fmt.T_buffer;
    function get__buf():stdgo._internal.fmt.Fmt.T_buffer return this._buf;
    function set__buf(v:stdgo._internal.fmt.Fmt.T_buffer):stdgo._internal.fmt.Fmt.T_buffer {
        this._buf = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = v;
        return v;
    }
    public var _value(get, set) : stdgo._internal.reflect.Reflect.Value;
    function get__value():stdgo._internal.reflect.Reflect.Value return this._value;
    function set__value(v:stdgo._internal.reflect.Reflect.Value):stdgo._internal.reflect.Reflect.Value {
        this._value = v;
        return v;
    }
    public var _fmt(get, set) : stdgo._internal.fmt.Fmt.T_fmt;
    function get__fmt():stdgo._internal.fmt.Fmt.T_fmt return this._fmt;
    function set__fmt(v:stdgo._internal.fmt.Fmt.T_fmt):stdgo._internal.fmt.Fmt.T_fmt {
        this._fmt = v;
        return v;
    }
    public var _reordered(get, set) : Bool;
    function get__reordered():Bool return this._reordered;
    function set__reordered(v:Bool):Bool {
        this._reordered = v;
        return v;
    }
    public var _goodArgNum(get, set) : Bool;
    function get__goodArgNum():Bool return this._goodArgNum;
    function set__goodArgNum(v:Bool):Bool {
        this._goodArgNum = v;
        return v;
    }
    public var _panicking(get, set) : Bool;
    function get__panicking():Bool return this._panicking;
    function set__panicking(v:Bool):Bool {
        this._panicking = v;
        return v;
    }
    public var _erroring(get, set) : Bool;
    function get__erroring():Bool return this._erroring;
    function set__erroring(v:Bool):Bool {
        this._erroring = v;
        return v;
    }
    public var _wrapErrs(get, set) : Bool;
    function get__wrapErrs():Bool return this._wrapErrs;
    function set__wrapErrs(v:Bool):Bool {
        this._wrapErrs = v;
        return v;
    }
    public var _wrappedErrs(get, set) : Array<StdTypes.Int>;
    function get__wrappedErrs():Array<StdTypes.Int> return [for (i in this._wrappedErrs) i];
    function set__wrappedErrs(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._wrappedErrs = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_buf:stdgo._internal.fmt.Fmt.T_buffer, ?_arg:stdgo.AnyInterface, ?_value:stdgo._internal.reflect.Reflect.Value, ?_fmt:stdgo._internal.fmt.Fmt.T_fmt, ?_reordered:Bool, ?_goodArgNum:Bool, ?_panicking:Bool, ?_erroring:Bool, ?_wrapErrs:Bool, ?_wrappedErrs:Array<StdTypes.Int>) this = new stdgo._internal.fmt.Fmt.T_pp(_buf, _arg, _value, _fmt, _reordered, _goodArgNum, _panicking, _erroring, _wrapErrs, ([for (i in _wrappedErrs) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_scanError(stdgo._internal.fmt.Fmt.T_scanError) from stdgo._internal.fmt.Fmt.T_scanError to stdgo._internal.fmt.Fmt.T_scanError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt.T_scanError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_ss(stdgo._internal.fmt.Fmt.T_ss) from stdgo._internal.fmt.Fmt.T_ss to stdgo._internal.fmt.Fmt.T_ss {
    public var _rs(get, set) : stdgo._internal.io.Io.RuneScanner;
    function get__rs():stdgo._internal.io.Io.RuneScanner return this._rs;
    function set__rs(v:stdgo._internal.io.Io.RuneScanner):stdgo._internal.io.Io.RuneScanner {
        this._rs = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.fmt.Fmt.T_buffer;
    function get__buf():stdgo._internal.fmt.Fmt.T_buffer return this._buf;
    function set__buf(v:stdgo._internal.fmt.Fmt.T_buffer):stdgo._internal.fmt.Fmt.T_buffer {
        this._buf = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = v;
        return v;
    }
    public var _atEOF(get, set) : Bool;
    function get__atEOF():Bool return this._atEOF;
    function set__atEOF(v:Bool):Bool {
        this._atEOF = v;
        return v;
    }
    public var _ssave(get, set) : stdgo._internal.fmt.Fmt.T_ssave;
    function get__ssave():stdgo._internal.fmt.Fmt.T_ssave return this._ssave;
    function set__ssave(v:stdgo._internal.fmt.Fmt.T_ssave):stdgo._internal.fmt.Fmt.T_ssave {
        this._ssave = v;
        return v;
    }
    public function new(?_rs:stdgo._internal.io.Io.RuneScanner, ?_buf:stdgo._internal.fmt.Fmt.T_buffer, ?_count:StdTypes.Int, ?_atEOF:Bool, ?_ssave:stdgo._internal.fmt.Fmt.T_ssave) this = new stdgo._internal.fmt.Fmt.T_ss(_rs, _buf, _count, _atEOF, _ssave);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_ssave(stdgo._internal.fmt.Fmt.T_ssave) from stdgo._internal.fmt.Fmt.T_ssave to stdgo._internal.fmt.Fmt.T_ssave {
    public var _validSave(get, set) : Bool;
    function get__validSave():Bool return this._validSave;
    function set__validSave(v:Bool):Bool {
        this._validSave = v;
        return v;
    }
    public var _nlIsEnd(get, set) : Bool;
    function get__nlIsEnd():Bool return this._nlIsEnd;
    function set__nlIsEnd(v:Bool):Bool {
        this._nlIsEnd = v;
        return v;
    }
    public var _nlIsSpace(get, set) : Bool;
    function get__nlIsSpace():Bool return this._nlIsSpace;
    function set__nlIsSpace(v:Bool):Bool {
        this._nlIsSpace = v;
        return v;
    }
    public var _argLimit(get, set) : StdTypes.Int;
    function get__argLimit():StdTypes.Int return this._argLimit;
    function set__argLimit(v:StdTypes.Int):StdTypes.Int {
        this._argLimit = v;
        return v;
    }
    public var _limit(get, set) : StdTypes.Int;
    function get__limit():StdTypes.Int return this._limit;
    function set__limit(v:StdTypes.Int):StdTypes.Int {
        this._limit = v;
        return v;
    }
    public var _maxWid(get, set) : StdTypes.Int;
    function get__maxWid():StdTypes.Int return this._maxWid;
    function set__maxWid(v:StdTypes.Int):StdTypes.Int {
        this._maxWid = v;
        return v;
    }
    public function new(?_validSave:Bool, ?_nlIsEnd:Bool, ?_nlIsSpace:Bool, ?_argLimit:StdTypes.Int, ?_limit:StdTypes.Int, ?_maxWid:StdTypes.Int) this = new stdgo._internal.fmt.Fmt.T_ssave(_validSave, _nlIsEnd, _nlIsSpace, _argLimit, _limit, _maxWid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_readRune(stdgo._internal.fmt.Fmt.T_readRune) from stdgo._internal.fmt.Fmt.T_readRune to stdgo._internal.fmt.Fmt.T_readRune {
    public var _reader(get, set) : stdgo._internal.io.Io.Reader;
    function get__reader():stdgo._internal.io.Io.Reader return this._reader;
    function set__reader(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._reader = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _pending(get, set) : StdTypes.Int;
    function get__pending():StdTypes.Int return this._pending;
    function set__pending(v:StdTypes.Int):StdTypes.Int {
        this._pending = v;
        return v;
    }
    public var _pendBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pendBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pendBuf) i]);
    function set__pendBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pendBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _peekRune(get, set) : StdTypes.Int;
    function get__peekRune():StdTypes.Int return this._peekRune;
    function set__peekRune(v:StdTypes.Int):StdTypes.Int {
        this._peekRune = v;
        return v;
    }
    public function new(?_reader:stdgo._internal.io.Io.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_pending:StdTypes.Int, ?_pendBuf:haxe.ds.Vector<std.UInt>, ?_peekRune:StdTypes.Int) this = new stdgo._internal.fmt.Fmt.T_readRune(_reader, ([for (i in _buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _pending, ([for (i in _pendBuf) i] : stdgo.GoArray<stdgo.GoUInt8>), _peekRune);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_buffer = stdgo._internal.fmt.Fmt.T_buffer;
typedef T_stringReader = stdgo._internal.fmt.Fmt.T_stringReader;
class Fmt {
    /**
        Errorf formats according to a format specifier and returns the string as a
        value that satisfies error.
        
        If the format specifier includes a %w verb with an error operand,
        the returned error will implement an Unwrap method returning the operand.
        If there is more than one %w verb, the returned error will implement an
        Unwrap method returning a []error containing all the %w operands in the
        order they appear in the arguments.
        It is invalid to supply the %w verb with an operand that does not implement
        the error interface. The %w verb is otherwise a synonym for %v.
    **/
    static public function errorf(format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        return stdgo._internal.fmt.Fmt.errorf(format, ...a);
    }
    /**
        FormatString returns a string representing the fully qualified formatting
        directive captured by the State, followed by the argument verb. (State does not
        itself contain the verb.) The result has a leading percent sign followed by any
        flags, the width, and the precision. Missing flags, width, and precision are
        omitted. This function allows a Formatter to reconstruct the original
        directive triggering the call to Format.
    **/
    static public function formatString(state:State, verb:StdTypes.Int):String {
        return stdgo._internal.fmt.Fmt.formatString(state, verb);
    }
    /**
        Fprintf formats according to a format specifier and writes to w.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprintf(w:stdgo._internal.io.Io.Writer, format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fprintf(w, format, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Printf formats according to a format specifier and writes to standard output.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function printf(format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.printf(format, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprintf formats according to a format specifier and returns the resulting string.
    **/
    static public function sprintf(format:String, a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt.sprintf(format, ...a);
    }
    /**
        Appendf formats according to a format specifier, appends the result to the byte
        slice, and returns the updated slice.
    **/
    static public function appendf(b:Array<StdTypes.Int>, format:String, a:haxe.Rest<stdgo.AnyInterface>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.fmt.Fmt.appendf(b, format, ...a)) i];
    }
    /**
        Fprint formats using the default formats for its operands and writes to w.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprint(w:stdgo._internal.io.Io.Writer, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fprint(w, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Print formats using the default formats for its operands and writes to standard output.
        Spaces are added between operands when neither is a string.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function print(a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.print(...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprint formats using the default formats for its operands and returns the resulting string.
        Spaces are added between operands when neither is a string.
    **/
    static public function sprint(a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt.sprint(...a);
    }
    /**
        Append formats using the default formats for its operands, appends the result to
        the byte slice, and returns the updated slice.
    **/
    static public function append(b:Array<StdTypes.Int>, a:haxe.Rest<stdgo.AnyInterface>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.fmt.Fmt.append(b, ...a)) i];
    }
    /**
        Fprintln formats using the default formats for its operands and writes to w.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function fprintln(w:stdgo._internal.io.Io.Writer, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fprintln(w, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Println formats using the default formats for its operands and writes to standard output.
        Spaces are always added between operands and a newline is appended.
        It returns the number of bytes written and any write error encountered.
    **/
    static public function println(a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.println(...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sprintln formats using the default formats for its operands and returns the resulting string.
        Spaces are always added between operands and a newline is appended.
    **/
    static public function sprintln(a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.fmt.Fmt.sprintln(...a);
    }
    /**
        Appendln formats using the default formats for its operands, appends the result
        to the byte slice, and returns the updated slice. Spaces are always added
        between operands and a newline is appended.
    **/
    static public function appendln(b:Array<StdTypes.Int>, a:haxe.Rest<stdgo.AnyInterface>):Array<StdTypes.Int> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.fmt.Fmt.appendln(b, ...a)) i];
    }
    /**
        Scan scans text read from standard input, storing successive
        space-separated values into successive arguments. Newlines count
        as space. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
    **/
    static public function scan(a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.scan(...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Scanln is similar to Scan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function scanln(a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.scanln(...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Scanf scans text read from standard input, storing successive
        space-separated values into successive arguments as determined by
        the format. It returns the number of items successfully scanned.
        If that is less than the number of arguments, err will report why.
        Newlines in the input must match newlines in the format.
        The one exception: the verb %c always scans the next rune in the
        input, even if it is a space (or tab etc.) or newline.
    **/
    static public function scanf(format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.scanf(format, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscan scans the argument string, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
    **/
    static public function sscan(str:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.sscan(str, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscanln is similar to Sscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function sscanln(str:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.sscanln(str, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Sscanf scans the argument string, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
    **/
    static public function sscanf(str:String, format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.sscanf(str, format, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscan scans text read from r, storing successive space-separated
        values into successive arguments. Newlines count as space. It
        returns the number of items successfully scanned. If that is less
        than the number of arguments, err will report why.
    **/
    static public function fscan(r:stdgo._internal.io.Io.Reader, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fscan(r, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscanln is similar to Fscan, but stops scanning at a newline and
        after the final item there must be a newline or EOF.
    **/
    static public function fscanln(r:stdgo._internal.io.Io.Reader, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fscanln(r, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Fscanf scans text read from r, storing successive space-separated
        values into successive arguments as determined by the format. It
        returns the number of items successfully parsed.
        Newlines in the input must match newlines in the format.
    **/
    static public function fscanf(r:stdgo._internal.io.Io.Reader, format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.fmt.Fmt.fscanf(r, format, ...a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
