package stdgo;
/**
    Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    object, creating another object (Reader or Writer) that also implements
    the interface but provides buffering and some help for textual I/O.
**/
private var __go2hxdoc__package : Bool;
final defaultBufSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.defaultBufSize;
final maxScanTokenSize : haxe.UInt64 = stdgo._internal.bufio.Bufio.maxScanTokenSize;
var errInvalidUnreadByte(get, set) : stdgo.Error;
private function get_errInvalidUnreadByte():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadByte;
private function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadByte = v;
var errInvalidUnreadRune(get, set) : stdgo.Error;
private function get_errInvalidUnreadRune():stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadRune;
private function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errInvalidUnreadRune = v;
var errBufferFull(get, set) : stdgo.Error;
private function get_errBufferFull():stdgo.Error return stdgo._internal.bufio.Bufio.errBufferFull;
private function set_errBufferFull(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errBufferFull = v;
var errNegativeCount(get, set) : stdgo.Error;
private function get_errNegativeCount():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeCount;
private function set_errNegativeCount(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeCount = v;
var errTooLong(get, set) : stdgo.Error;
private function get_errTooLong():stdgo.Error return stdgo._internal.bufio.Bufio.errTooLong;
private function set_errTooLong(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errTooLong = v;
var errNegativeAdvance(get, set) : stdgo.Error;
private function get_errNegativeAdvance():stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeAdvance;
private function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errNegativeAdvance = v;
var errAdvanceTooFar(get, set) : stdgo.Error;
private function get_errAdvanceTooFar():stdgo.Error return stdgo._internal.bufio.Bufio.errAdvanceTooFar;
private function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errAdvanceTooFar = v;
var errBadReadCount(get, set) : stdgo.Error;
private function get_errBadReadCount():stdgo.Error return stdgo._internal.bufio.Bufio.errBadReadCount;
private function set_errBadReadCount(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errBadReadCount = v;
var errFinalToken(get, set) : stdgo.Error;
private function get_errFinalToken():stdgo.Error return stdgo._internal.bufio.Bufio.errFinalToken;
private function set_errFinalToken(v:stdgo.Error):stdgo.Error return stdgo._internal.bufio.Bufio.errFinalToken = v;
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
private function get_isSpace():stdgo.GoInt32 -> Bool return stdgo._internal.bufio.Bufio.isSpace;
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool return stdgo._internal.bufio.Bufio.isSpace = v;
@:forward @:forward.new abstract Reader(stdgo._internal.bufio.Bufio.Reader) from stdgo._internal.bufio.Bufio.Reader to stdgo._internal.bufio.Bufio.Reader {

}
@:forward @:forward.new abstract Writer(stdgo._internal.bufio.Bufio.Writer) from stdgo._internal.bufio.Bufio.Writer to stdgo._internal.bufio.Bufio.Writer {

}
@:forward @:forward.new abstract ReadWriter(stdgo._internal.bufio.Bufio.ReadWriter) from stdgo._internal.bufio.Bufio.ReadWriter to stdgo._internal.bufio.Bufio.ReadWriter {

}
@:forward @:forward.new abstract Scanner(stdgo._internal.bufio.Bufio.Scanner) from stdgo._internal.bufio.Bufio.Scanner to stdgo._internal.bufio.Bufio.Scanner {

}
typedef SplitFunc = stdgo._internal.bufio.Bufio.SplitFunc;
/**
    NewReaderSize returns a new Reader whose buffer has at least the specified
    size. If the argument io.Reader is already a Reader with large enough
    size, it returns the underlying Reader.
**/
function newReaderSize(rd:stdgo._internal.io.Io.Reader, size:StdTypes.Int):Reader {
        return stdgo._internal.bufio.Bufio.newReaderSize(rd, size);
    }
/**
    NewReader returns a new Reader whose buffer has the default size.
**/
function newReader(rd:stdgo._internal.io.Io.Reader):Reader {
        return stdgo._internal.bufio.Bufio.newReader(rd);
    }
/**
    NewWriterSize returns a new Writer whose buffer has at least the specified
    size. If the argument io.Writer is already a Writer with large enough
    size, it returns the underlying Writer.
**/
function newWriterSize(w:stdgo._internal.io.Io.Writer, size:StdTypes.Int):Writer {
        return stdgo._internal.bufio.Bufio.newWriterSize(w, size);
    }
/**
    NewWriter returns a new Writer whose buffer has the default size.
    If the argument io.Writer is already a Writer with large enough buffer size,
    it returns the underlying Writer.
**/
function newWriter(w:stdgo._internal.io.Io.Writer):Writer {
        return stdgo._internal.bufio.Bufio.newWriter(w);
    }
/**
    NewReadWriter allocates a new ReadWriter that dispatches to r and w.
**/
function newReadWriter(r:Reader, w:Writer):ReadWriter {
        return stdgo._internal.bufio.Bufio.newReadWriter(r, w);
    }
/**
    NewScanner returns a new Scanner to read from r.
    The split function defaults to ScanLines.
**/
function newScanner(r:stdgo._internal.io.Io.Reader):Scanner {
        return stdgo._internal.bufio.Bufio.newScanner(r);
    }
/**
    ScanBytes is a split function for a Scanner that returns each byte as a token.
**/
function scanBytes(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanBytes(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
/**
    ScanRunes is a split function for a Scanner that returns each
    UTF-8-encoded rune as a token. The sequence of runes returned is
    equivalent to that from a range loop over the input as a string, which
    means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
    Because of the Scan interface, this makes it impossible for the client to
    distinguish correctly encoded replacement runes from encoding errors.
**/
function scanRunes(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanRunes(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
/**
    ScanLines is a split function for a Scanner that returns each line of
    text, stripped of any trailing end-of-line marker. The returned line may
    be empty. The end-of-line marker is one optional carriage return followed
    by one mandatory newline. In regular expression notation, it is `\r?\n`.
    The last non-empty line of input will be returned even if it has no
    newline.
**/
function scanLines(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanLines(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
/**
    ScanWords is a split function for a Scanner that returns each
    space-separated word of text, with surrounding spaces deleted. It will
    never return an empty string. The definition of space is set by
    unicode.IsSpace.
**/
function scanWords(data:Array<StdTypes.Int>, atEOF:Bool):stdgo.Tuple.Tuple3<StdTypes.Int, Array<StdTypes.Int>, stdgo.Error> {
        final data = ([for (i in data) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.bufio.Bufio.scanWords(data, atEOF);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
@:forward @:forward.new abstract Reader_asInterface(stdgo._internal.bufio.Bufio.Reader_asInterface) from stdgo._internal.bufio.Bufio.Reader_asInterface to stdgo._internal.bufio.Bufio.Reader_asInterface {

}
@:forward @:forward.new abstract Reader_static_extension(stdgo._internal.bufio.Bufio.Reader_static_extension) from stdgo._internal.bufio.Bufio.Reader_static_extension to stdgo._internal.bufio.Bufio.Reader_static_extension {

}
@:forward @:forward.new abstract Writer_asInterface(stdgo._internal.bufio.Bufio.Writer_asInterface) from stdgo._internal.bufio.Bufio.Writer_asInterface to stdgo._internal.bufio.Bufio.Writer_asInterface {

}
@:forward @:forward.new abstract Writer_static_extension(stdgo._internal.bufio.Bufio.Writer_static_extension) from stdgo._internal.bufio.Bufio.Writer_static_extension to stdgo._internal.bufio.Bufio.Writer_static_extension {

}
@:forward @:forward.new abstract ReadWriter_asInterface(stdgo._internal.bufio.Bufio.ReadWriter_asInterface) from stdgo._internal.bufio.Bufio.ReadWriter_asInterface to stdgo._internal.bufio.Bufio.ReadWriter_asInterface {

}
@:forward @:forward.new abstract ReadWriter_static_extension(stdgo._internal.bufio.Bufio.ReadWriter_static_extension) from stdgo._internal.bufio.Bufio.ReadWriter_static_extension to stdgo._internal.bufio.Bufio.ReadWriter_static_extension {

}
@:forward @:forward.new abstract Scanner_asInterface(stdgo._internal.bufio.Bufio.Scanner_asInterface) from stdgo._internal.bufio.Bufio.Scanner_asInterface to stdgo._internal.bufio.Bufio.Scanner_asInterface {

}
@:forward @:forward.new abstract Scanner_static_extension(stdgo._internal.bufio.Bufio.Scanner_static_extension) from stdgo._internal.bufio.Bufio.Scanner_static_extension to stdgo._internal.bufio.Bufio.Scanner_static_extension {

}
