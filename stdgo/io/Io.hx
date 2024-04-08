package stdgo.io;
/**
    // Package io provides basic interfaces to I/O primitives.
    // Its primary job is to wrap existing implementations of such primitives,
    // such as those in package os, into shared public interfaces that
    // abstract the functionality, plus some other related primitives.
    //
    // Because these interfaces and primitives wrap lower-level operations with
    // various implementations, unless otherwise informed clients should not
    // assume they are safe for parallel execution.
**/
private var __go2hxdoc__package : Bool;
final seekStart : haxe.UInt64 = stdgo._internal.io.Io.seekStart;
final seekCurrent : haxe.UInt64 = stdgo._internal.io.Io.seekCurrent;
final seekEnd : haxe.UInt64 = stdgo._internal.io.Io.seekEnd;
var errShortWrite(get, set) : stdgo.Error;
function get_errShortWrite():stdgo.Error return stdgo._internal.io.Io.errShortWrite;
function set_errShortWrite(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errShortWrite = v;
var errShortBuffer(get, set) : stdgo.Error;
function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io.errShortBuffer;
function set_errShortBuffer(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errShortBuffer = v;
var eof(get, set) : stdgo.Error;
function get_eof():stdgo.Error return stdgo._internal.io.Io.eof;
function set_eof(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.eof = v;
var errUnexpectedEOF(get, set) : stdgo.Error;
function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io.errUnexpectedEOF;
function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errUnexpectedEOF = v;
var errNoProgress(get, set) : stdgo.Error;
function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io.errNoProgress;
function set_errNoProgress(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errNoProgress = v;
var discard(get, set) : stdgo._internal.io.Io.Writer;
function get_discard():stdgo._internal.io.Io.Writer return stdgo._internal.io.Io.discard;
function set_discard(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer return stdgo._internal.io.Io.discard = v;
var errClosedPipe(get, set) : stdgo.Error;
function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io.errClosedPipe;
function set_errClosedPipe(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errClosedPipe = v;
var errInvalidWrite(get, set) : stdgo.Error;
function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io.errInvalidWrite;
function set_errInvalidWrite(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errInvalidWrite = v;
var errWhence(get, set) : stdgo.Error;
function get_errWhence():stdgo.Error return stdgo._internal.io.Io.errWhence;
function set_errWhence(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errWhence = v;
var errOffset(get, set) : stdgo.Error;
function get_errOffset():stdgo.Error return stdgo._internal.io.Io.errOffset;
function set_errOffset(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errOffset = v;
typedef Reader = stdgo._internal.io.Io.Reader;
typedef Writer = stdgo._internal.io.Io.Writer;
typedef Closer = stdgo._internal.io.Io.Closer;
typedef Seeker = stdgo._internal.io.Io.Seeker;
typedef ReadWriter = stdgo._internal.io.Io.ReadWriter;
typedef ReadCloser = stdgo._internal.io.Io.ReadCloser;
typedef WriteCloser = stdgo._internal.io.Io.WriteCloser;
typedef ReadWriteCloser = stdgo._internal.io.Io.ReadWriteCloser;
typedef ReadSeeker = stdgo._internal.io.Io.ReadSeeker;
typedef ReadSeekCloser = stdgo._internal.io.Io.ReadSeekCloser;
typedef WriteSeeker = stdgo._internal.io.Io.WriteSeeker;
typedef ReadWriteSeeker = stdgo._internal.io.Io.ReadWriteSeeker;
typedef ReaderFrom = stdgo._internal.io.Io.ReaderFrom;
typedef WriterTo = stdgo._internal.io.Io.WriterTo;
typedef ReaderAt = stdgo._internal.io.Io.ReaderAt;
typedef WriterAt = stdgo._internal.io.Io.WriterAt;
typedef ByteReader = stdgo._internal.io.Io.ByteReader;
typedef ByteScanner = stdgo._internal.io.Io.ByteScanner;
typedef ByteWriter = stdgo._internal.io.Io.ByteWriter;
typedef RuneReader = stdgo._internal.io.Io.RuneReader;
typedef RuneScanner = stdgo._internal.io.Io.RuneScanner;
typedef StringWriter = stdgo._internal.io.Io.StringWriter;
@:invalid typedef LimitedReader = Dynamic;
@:invalid typedef SectionReader = Dynamic;
@:invalid typedef OffsetWriter = Dynamic;
@:invalid typedef T_teeReader = Dynamic;
@:invalid typedef T_discard = Dynamic;
@:invalid typedef T_nopCloser = Dynamic;
@:invalid typedef T_nopCloserWriterTo = Dynamic;
@:invalid typedef T_eofReader = Dynamic;
@:invalid typedef T_multiReader = Dynamic;
@:invalid typedef T_multiWriter = Dynamic;
@:invalid typedef T_onceError = Dynamic;
@:invalid typedef T_pipe = Dynamic;
@:invalid typedef PipeReader = Dynamic;
@:invalid typedef PipeWriter = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.io.Io.T__struct_0;
/**
    // WriteString writes the contents of the string s to w, which accepts a slice of bytes.
    // If w implements StringWriter, its WriteString method is invoked directly.
    // Otherwise, w.Write is called exactly once.
**/
inline function writeString(w:Writer, s:String):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
/**
    // ReadAtLeast reads from r into buf until it has read at least min bytes.
    // It returns the number of bytes copied and an error if fewer bytes were read.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading fewer than min bytes,
    // ReadAtLeast returns ErrUnexpectedEOF.
    // If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
    // On return, n >= min if and only if err == nil.
    // If r returns an error having read at least min bytes, the error is dropped.
**/
inline function readAtLeast(r:Reader, buf:Array<Int>, min:Int):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
/**
    // ReadFull reads exactly len(buf) bytes from r into buf.
    // It returns the number of bytes copied and an error if fewer bytes were read.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadFull returns ErrUnexpectedEOF.
    // On return, n == len(buf) if and only if err == nil.
    // If r returns an error having read at least len(buf) bytes, the error is dropped.
**/
inline function readFull(r:Reader, buf:Array<Int>):stdgo.Tuple<Int, stdgo.Error> throw "not implemented";
/**
    // CopyN copies n bytes (or until an error) from src to dst.
    // It returns the number of bytes copied and the earliest
    // error encountered while copying.
    // On return, written == n if and only if err == nil.
    //
    // If dst implements the ReaderFrom interface,
    // the copy is implemented using it.
**/
inline function copyN(dst:Writer, src:Reader, n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
/**
    // Copy copies from src to dst until either EOF is reached
    // on src or an error occurs. It returns the number of bytes
    // copied and the first error encountered while copying, if any.
    //
    // A successful Copy returns err == nil, not err == EOF.
    // Because Copy is defined to read from src until EOF, it does
    // not treat an EOF from Read as an error to be reported.
    //
    // If src implements the WriterTo interface,
    // the copy is implemented by calling src.WriteTo(dst).
    // Otherwise, if dst implements the ReaderFrom interface,
    // the copy is implemented by calling dst.ReadFrom(src).
**/
inline function copy(dst:Writer, src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
/**
    // CopyBuffer is identical to Copy except that it stages through the
    // provided buffer (if one is required) rather than allocating a
    // temporary one. If buf is nil, one is allocated; otherwise if it has
    // zero length, CopyBuffer panics.
    //
    // If either src implements WriterTo or dst implements ReaderFrom,
    // buf will not be used to perform the copy.
**/
inline function copyBuffer(dst:Writer, src:Reader, buf:Array<Int>):stdgo.Tuple<haxe.Int64, stdgo.Error> throw "not implemented";
/**
    // LimitReader returns a Reader that reads from r
    // but stops with EOF after n bytes.
    // The underlying implementation is a *LimitedReader.
**/
inline function limitReader(r:Reader, n:haxe.Int64):Reader throw "not implemented";
/**
    // NewSectionReader returns a SectionReader that reads from r
    // starting at offset off and stops with EOF after n bytes.
**/
inline function newSectionReader(r:ReaderAt, off:haxe.Int64, n:haxe.Int64):SectionReader throw "not implemented";
/**
    // NewOffsetWriter returns an OffsetWriter that writes to w
    // starting at offset off.
**/
inline function newOffsetWriter(w:WriterAt, off:haxe.Int64):OffsetWriter throw "not implemented";
/**
    // TeeReader returns a Reader that writes to w what it reads from r.
    // All reads from r performed through it are matched with
    // corresponding writes to w. There is no internal buffering -
    // the write must complete before the read completes.
    // Any error encountered while writing is reported as a read error.
**/
inline function teeReader(r:Reader, w:Writer):Reader throw "not implemented";
/**
    // NopCloser returns a ReadCloser with a no-op Close method wrapping
    // the provided Reader r.
    // If r implements WriterTo, the returned ReadCloser will implement WriterTo
    // by forwarding calls to r.
**/
inline function nopCloser(r:Reader):ReadCloser throw "not implemented";
/**
    // ReadAll reads from r until an error or EOF and returns the data it read.
    // A successful call returns err == nil, not err == EOF. Because ReadAll is
    // defined to read from src until EOF, it does not treat an EOF from Read
    // as an error to be reported.
**/
inline function readAll(r:Reader):stdgo.Tuple<Array<Int>, stdgo.Error> throw "not implemented";
/**
    // MultiReader returns a Reader that's the logical concatenation of
    // the provided input readers. They're read sequentially. Once all
    // inputs have returned EOF, Read will return EOF.  If any of the readers
    // return a non-nil, non-EOF error, Read will return that error.
**/
inline function multiReader(readers:haxe.Rest<Reader>):Reader throw "not implemented";
/**
    // MultiWriter creates a writer that duplicates its writes to all the
    // provided writers, similar to the Unix tee(1) command.
    //
    // Each write is written to each listed writer, one at a time.
    // If a listed writer returns an error, that overall write operation
    // stops and returns the error; it does not continue down the list.
**/
inline function multiWriter(writers:haxe.Rest<Writer>):Writer throw "not implemented";
/**
    // Pipe creates a synchronous in-memory pipe.
    // It can be used to connect code expecting an io.Reader
    // with code expecting an io.Writer.
    //
    // Reads and Writes on the pipe are matched one to one
    // except when multiple Reads are needed to consume a single Write.
    // That is, each Write to the PipeWriter blocks until it has satisfied
    // one or more Reads from the PipeReader that fully consume
    // the written data.
    // The data is copied directly from the Write to the corresponding
    // Read (or Reads); there is no internal buffering.
    //
    // It is safe to call Read and Write in parallel with each other or with Close.
    // Parallel calls to Read and parallel calls to Write are also safe:
    // the individual calls will be gated sequentially.
**/
inline function pipe():stdgo.Tuple<PipeReader, PipeWriter> throw "not implemented";
@:invalid typedef LimitedReader_asInterface = Dynamic;
@:invalid typedef LimitedReader_static_extension = Dynamic;
@:invalid typedef SectionReader_asInterface = Dynamic;
@:invalid typedef SectionReader_static_extension = Dynamic;
@:invalid typedef OffsetWriter_asInterface = Dynamic;
@:invalid typedef OffsetWriter_static_extension = Dynamic;
@:invalid typedef T_teeReader_asInterface = Dynamic;
@:invalid typedef T_teeReader_static_extension = Dynamic;
@:invalid typedef T_discard_asInterface = Dynamic;
@:invalid typedef T_discard_static_extension = Dynamic;
@:invalid typedef T_nopCloser_asInterface = Dynamic;
@:invalid typedef T_nopCloser_static_extension = Dynamic;
@:invalid typedef T_nopCloserWriterTo_asInterface = Dynamic;
@:invalid typedef T_nopCloserWriterTo_static_extension = Dynamic;
@:invalid typedef T_eofReader_asInterface = Dynamic;
@:invalid typedef T_eofReader_static_extension = Dynamic;
@:invalid typedef T_multiReader_asInterface = Dynamic;
@:invalid typedef T_multiReader_static_extension = Dynamic;
@:invalid typedef T_multiWriter_asInterface = Dynamic;
@:invalid typedef T_multiWriter_static_extension = Dynamic;
@:invalid typedef T_onceError_asInterface = Dynamic;
@:invalid typedef T_onceError_static_extension = Dynamic;
@:invalid typedef T_pipe_asInterface = Dynamic;
@:invalid typedef T_pipe_static_extension = Dynamic;
@:invalid typedef PipeReader_asInterface = Dynamic;
@:invalid typedef PipeReader_static_extension = Dynamic;
@:invalid typedef PipeWriter_asInterface = Dynamic;
@:invalid typedef PipeWriter_static_extension = Dynamic;
