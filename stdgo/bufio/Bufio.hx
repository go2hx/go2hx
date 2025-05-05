package stdgo.bufio;
var defaultBufSize : stdgo.GoUInt64 = 4096i64;
var maxScanTokenSize : stdgo.GoUInt64 = 65536i64;
var errInvalidUnreadByte(get, set) : stdgo.Error;
private function get_errInvalidUnreadByte():stdgo.Error return stdgo._internal.bufio.Bufio_errinvalidunreadbyte.errInvalidUnreadByte;
private function set_errInvalidUnreadByte(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errinvalidunreadbyte.errInvalidUnreadByte = v;
        return v;
    }
var errInvalidUnreadRune(get, set) : stdgo.Error;
private function get_errInvalidUnreadRune():stdgo.Error return stdgo._internal.bufio.Bufio_errinvalidunreadrune.errInvalidUnreadRune;
private function set_errInvalidUnreadRune(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errinvalidunreadrune.errInvalidUnreadRune = v;
        return v;
    }
var errBufferFull(get, set) : stdgo.Error;
private function get_errBufferFull():stdgo.Error return stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull;
private function set_errBufferFull(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errbufferfull.errBufferFull = v;
        return v;
    }
var errNegativeCount(get, set) : stdgo.Error;
private function get_errNegativeCount():stdgo.Error return stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount;
private function set_errNegativeCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errnegativecount.errNegativeCount = v;
        return v;
    }
var errTooLong(get, set) : stdgo.Error;
private function get_errTooLong():stdgo.Error return stdgo._internal.bufio.Bufio_errtoolong.errTooLong;
private function set_errTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errtoolong.errTooLong = v;
        return v;
    }
var errNegativeAdvance(get, set) : stdgo.Error;
private function get_errNegativeAdvance():stdgo.Error return stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance;
private function set_errNegativeAdvance(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errnegativeadvance.errNegativeAdvance = v;
        return v;
    }
var errAdvanceTooFar(get, set) : stdgo.Error;
private function get_errAdvanceTooFar():stdgo.Error return stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar;
private function set_errAdvanceTooFar(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_erradvancetoofar.errAdvanceTooFar = v;
        return v;
    }
var errBadReadCount(get, set) : stdgo.Error;
private function get_errBadReadCount():stdgo.Error return stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount;
private function set_errBadReadCount(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errbadreadcount.errBadReadCount = v;
        return v;
    }
var errFinalToken(get, set) : stdgo.Error;
private function get_errFinalToken():stdgo.Error return stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken;
private function set_errFinalToken(v:stdgo.Error):stdgo.Error {
        stdgo._internal.bufio.Bufio_errfinaltoken.errFinalToken = v;
        return v;
    }
var isSpace(get, set) : stdgo.GoInt32 -> Bool;
private function get_isSpace():stdgo.GoInt32 -> Bool return stdgo._internal.bufio.Bufio_isspace.isSpace;
private function set_isSpace(v:stdgo.GoInt32 -> Bool):stdgo.GoInt32 -> Bool {
        stdgo._internal.bufio.Bufio_isspace.isSpace = v;
        return v;
    }
typedef Reader = stdgo._internal.bufio.Bufio_reader.Reader;
typedef Writer = stdgo._internal.bufio.Bufio_writer.Writer;
typedef ReadWriter = stdgo._internal.bufio.Bufio_readwriter.ReadWriter;
typedef Scanner = stdgo._internal.bufio.Bufio_scanner.Scanner;
typedef SplitFunc = stdgo._internal.bufio.Bufio_splitfunc.SplitFunc;
typedef ReaderPointer = stdgo._internal.bufio.Bufio_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.bufio.Bufio_writerpointer.WriterPointer;
typedef ReadWriterPointer = stdgo._internal.bufio.Bufio_readwriterpointer.ReadWriterPointer;
typedef ScannerPointer = stdgo._internal.bufio.Bufio_scannerpointer.ScannerPointer;
typedef SplitFuncPointer = stdgo._internal.bufio.Bufio_splitfuncpointer.SplitFuncPointer;
/**
    * Package bufio implements buffered I/O. It wraps an io.Reader or io.Writer
    * object, creating another object (Reader or Writer) that also implements
    * the interface but provides buffering and some help for textual I/O.
**/
class Bufio {
    /**
        * NewReaderSize returns a new Reader whose buffer has at least the specified
        * size. If the argument io.Reader is already a Reader with large enough
        * size, it returns the underlying Reader.
    **/
    static public inline function newReaderSize(_rd:stdgo._internal.io.Io_reader.Reader, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> return stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(_rd, _size);
    /**
        * NewReader returns a new Reader whose buffer has the default size.
    **/
    static public inline function newReader(_rd:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> return stdgo._internal.bufio.Bufio_newreader.newReader(_rd);
    /**
        * NewWriterSize returns a new Writer whose buffer has at least the specified
        * size. If the argument io.Writer is already a Writer with large enough
        * size, it returns the underlying Writer.
    **/
    static public inline function newWriterSize(_w:stdgo._internal.io.Io_writer.Writer, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> return stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(_w, _size);
    /**
        * NewWriter returns a new Writer whose buffer has the default size.
        * If the argument io.Writer is already a Writer with large enough buffer size,
        * it returns the underlying Writer.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> return stdgo._internal.bufio.Bufio_newwriter.newWriter(_w);
    /**
        * NewReadWriter allocates a new ReadWriter that dispatches to r and w.
    **/
    static public inline function newReadWriter(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter> return stdgo._internal.bufio.Bufio_newreadwriter.newReadWriter(_r, _w);
    /**
        * NewScanner returns a new Scanner to read from r.
        * The split function defaults to ScanLines.
    **/
    static public inline function newScanner(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> return stdgo._internal.bufio.Bufio_newscanner.newScanner(_r);
    /**
        * ScanBytes is a split function for a Scanner that returns each byte as a token.
    **/
    static public inline function scanBytes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return stdgo._internal.bufio.Bufio_scanbytes.scanBytes(_data, _atEOF);
    /**
        * ScanRunes is a split function for a Scanner that returns each
        * UTF-8-encoded rune as a token. The sequence of runes returned is
        * equivalent to that from a range loop over the input as a string, which
        * means that erroneous UTF-8 encodings translate to U+FFFD = "\xef\xbf\xbd".
        * Because of the Scan interface, this makes it impossible for the client to
        * distinguish correctly encoded replacement runes from encoding errors.
    **/
    static public inline function scanRunes(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return stdgo._internal.bufio.Bufio_scanrunes.scanRunes(_data, _atEOF);
    /**
        * ScanLines is a split function for a Scanner that returns each line of
        * text, stripped of any trailing end-of-line marker. The returned line may
        * be empty. The end-of-line marker is one optional carriage return followed
        * by one mandatory newline. In regular expression notation, it is `\r?\n`.
        * The last non-empty line of input will be returned even if it has no
        * newline.
    **/
    static public inline function scanLines(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return stdgo._internal.bufio.Bufio_scanlines.scanLines(_data, _atEOF);
    /**
        * ScanWords is a split function for a Scanner that returns each
        * space-separated word of text, with surrounding spaces deleted. It will
        * never return an empty string. The definition of space is set by
        * unicode.IsSpace.
    **/
    static public inline function scanWords(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return stdgo._internal.bufio.Bufio_scanwords.scanWords(_data, _atEOF);
}
