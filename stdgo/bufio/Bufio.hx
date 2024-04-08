package stdgo.bufio;
/**
    // Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    // object, creating another object (Reader or Writer) that also implements
    // the interface but provides buffering and some help for textual I/O.
**/
private var __go2hxdoc__package : Bool;
final defaultBufSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.defaultBufSize;
final maxScanTokenSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.maxScanTokenSize;
var errInvalidUnreadByte(get, set) : stdgo.Error;
function get_errInvalidUnreadByte():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadByte;
function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadByte = v;
var errInvalidUnreadRune(get, set) : stdgo.Error;
function get_errInvalidUnreadRune():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadRune;
function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadRune = v;
var errBufferFull(get, set) : stdgo.Error;
function get_errBufferFull():stdgo.Error return stdgo._internal.bufio.Bufio.errBufferFull;
function set_errBufferFull(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errBufferFull = v;
var errNegativeCount(get, set) : stdgo.Error;
function get_errNegativeCount():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeCount;
function set_errNegativeCount(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeCount = v;
var errTooLong(get, set) : stdgo.Error;
function get_errTooLong():stdgo.Error return stdgo._internal.bufio.Bufio.errTooLong;
function set_errTooLong(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errTooLong = v;
var errNegativeAdvance(get, set) : stdgo.Error;
function get_errNegativeAdvance():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeAdvance;
function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeAdvance = v;
var errAdvanceTooFar(get, set) : stdgo.Error;
function get_errAdvanceTooFar():stdgo.Error return stdgo._internal.bufio.Bufio.errAdvanceTooFar;
function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errAdvanceTooFar = v;
var errBadReadCount(get, set) : stdgo.Error;
function get_errBadReadCount():stdgo.Error return stdgo._internal.bufio.Bufio.errBadReadCount;
function set_errBadReadCount(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errBadReadCount = v;
var errFinalToken(get, set) : stdgo.Error;
function get_errFinalToken():stdgo.Error return stdgo._internal.bufio.Bufio.errFinalToken;
function set_errFinalToken(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errFinalToken = v;
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
function get_isSpace():stdgo.GoInt32 -> Bool return stdgo._internal.bufio.Bufio.isSpace;
function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool return stdgo._internal.bufio.Bufio.isSpace = v;
@:invalid typedef Reader = Dynamic;
@:invalid typedef Writer = Dynamic;
@:invalid typedef ReadWriter = Dynamic;
@:invalid typedef Scanner = Dynamic;
typedef SplitFunc = stdgo._internal.bufio.Bufio.SplitFunc;
/**
    // NewReaderSize returns a new Reader whose buffer has at least the specified
    // size. If the argument io.Reader is already a Reader with large enough
    // size, it returns the underlying Reader.
**/
inline function newReaderSize(rd:stdgo._internal.io.Io.Reader, size:Int):Reader throw "not implemented";
/**
    // NewReader returns a new Reader whose buffer has the default size.
**/
inline function newReader(rd:stdgo._internal.io.Io.Reader):Reader throw "not implemented";
/**
    // NewWriterSize returns a new Writer whose buffer has at least the specified
    // size. If the argument io.Writer is already a Writer with large enough
    // size, it returns the underlying Writer.
**/
inline function newWriterSize(w:stdgo._internal.io.Io.Writer, size:Int):Writer throw "not implemented";
/**
    // NewWriter returns a new Writer whose buffer has the default size.
    // If the argument io.Writer is already a Writer with large enough buffer size,
    // it returns the underlying Writer.
**/
inline function newWriter(w:stdgo._internal.io.Io.Writer):Writer throw "not implemented";
/**
    // NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
inline function newReadWriter(r:Reader, w:Writer):ReadWriter throw "not implemented";
/**
    // NewScanner returns a new Scanner to read from r.
    // The split function defaults to ScanLines.
**/
inline function newScanner(r:stdgo._internal.io.Io.Reader):Scanner throw "not implemented";
/**
    // ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
inline function scanBytes(data:Array<Int>, atEOF:Bool):stdgo.Tuple.Tuple3<Int, Array<Int>, stdgo.Error> throw "not implemented";
/**
    // ScanRunes is a split function for a Scanner that returns each
    // UTF-8-encoded rune as a token. The sequence of runes returned is
    // equivalent to that from a range loop over the input as a string, which
    // means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    // Because of the Scan interface, this makes it impossible for the client to
    // distinguish correctly encoded replacement runes from encoding errors.
**/
inline function scanRunes(data:Array<Int>, atEOF:Bool):stdgo.Tuple.Tuple3<Int, Array<Int>, stdgo.Error> throw "not implemented";
/**
    // ScanLines is a split function for a Scanner that returns each line of
    // text, stripped of any trailing end-of-line marker. The returned line may
    // be empty. The end-of-line marker is one optional carriage return followed
    // by one mandatory newline. In regular expression notation, it is `\r?\n`.
    // The last non-empty line of input will be returned even if it has no
    // newline.
**/
inline function scanLines(data:Array<Int>, atEOF:Bool):stdgo.Tuple.Tuple3<Int, Array<Int>, stdgo.Error> throw "not implemented";
/**
    // ScanWords is a split function for a Scanner that returns each
    // space-separated word of text, with surrounding spaces deleted. It will
    // never return an empty string. The definition of space is set by
    // unicode.IsSpace.
**/
inline function scanWords(data:Array<Int>, atEOF:Bool):stdgo.Tuple.Tuple3<Int, Array<Int>, stdgo.Error> throw "not implemented";
@:invalid typedef Reader_asInterface = Dynamic;
@:invalid typedef Reader_static_extension = Dynamic;
@:invalid typedef Writer_asInterface = Dynamic;
@:invalid typedef Writer_static_extension = Dynamic;
@:invalid typedef ReadWriter_asInterface = Dynamic;
@:invalid typedef ReadWriter_static_extension = Dynamic;
@:invalid typedef Scanner_asInterface = Dynamic;
@:invalid typedef Scanner_static_extension = Dynamic;
