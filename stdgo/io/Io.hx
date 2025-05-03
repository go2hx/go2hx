package stdgo.io;
var seekStart : stdgo.GoUInt64 = 0i64;
var seekCurrent : stdgo.GoUInt64 = 1i64;
var seekEnd : stdgo.GoUInt64 = 2i64;
var errShortWrite(get, set) : stdgo.Error;
private function get_errShortWrite():stdgo.Error return stdgo._internal.io.Io_errshortwrite.errShortWrite;
private function set_errShortWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errshortwrite.errShortWrite = v;
        return v;
    }
var errShortBuffer(get, set) : stdgo.Error;
private function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io_errshortbuffer.errShortBuffer;
private function set_errShortBuffer(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errshortbuffer.errShortBuffer = v;
        return v;
    }
var eOF(get, set) : stdgo.Error;
private function get_eOF():stdgo.Error return stdgo._internal.io.Io_eof.eOF;
private function set_eOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_eof.eOF = v;
        return v;
    }
var errUnexpectedEOF(get, set) : stdgo.Error;
private function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
private function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF = v;
        return v;
    }
var errNoProgress(get, set) : stdgo.Error;
private function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io_errnoprogress.errNoProgress;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errnoprogress.errNoProgress = v;
        return v;
    }
var discard(get, set) : Writer;
private function get_discard():Writer return stdgo._internal.io.Io_discard.discard;
private function set_discard(v:Writer):stdgo._internal.io.Io_writer.Writer {
        stdgo._internal.io.Io_discard.discard = v;
        return v;
    }
var errClosedPipe(get, set) : stdgo.Error;
private function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io_errclosedpipe.errClosedPipe;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errclosedpipe.errClosedPipe = v;
        return v;
    }
var errInvalidWrite(get, set) : stdgo.Error;
private function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io_errinvalidwrite.errInvalidWrite;
private function set_errInvalidWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errinvalidwrite.errInvalidWrite = v;
        return v;
    }
var errWhence(get, set) : stdgo.Error;
private function get_errWhence():stdgo.Error return stdgo._internal.io.Io_errwhence.errWhence;
private function set_errWhence(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errwhence.errWhence = v;
        return v;
    }
var errOffset(get, set) : stdgo.Error;
private function get_errOffset():stdgo.Error return stdgo._internal.io.Io_erroffset.errOffset;
private function set_errOffset(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_erroffset.errOffset = v;
        return v;
    }
typedef Reader = stdgo._internal.io.Io_reader.Reader;
typedef Writer = stdgo._internal.io.Io_writer.Writer;
typedef Closer = stdgo._internal.io.Io_closer.Closer;
typedef Seeker = stdgo._internal.io.Io_seeker.Seeker;
typedef ReadWriter = stdgo._internal.io.Io_readwriter.ReadWriter;
typedef ReadCloser = stdgo._internal.io.Io_readcloser.ReadCloser;
typedef WriteCloser = stdgo._internal.io.Io_writecloser.WriteCloser;
typedef ReadWriteCloser = stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
typedef ReadSeeker = stdgo._internal.io.Io_readseeker.ReadSeeker;
typedef ReadSeekCloser = stdgo._internal.io.Io_readseekcloser.ReadSeekCloser;
typedef WriteSeeker = stdgo._internal.io.Io_writeseeker.WriteSeeker;
typedef ReadWriteSeeker = stdgo._internal.io.Io_readwriteseeker.ReadWriteSeeker;
typedef ReaderFrom = stdgo._internal.io.Io_readerfrom.ReaderFrom;
typedef WriterTo = stdgo._internal.io.Io_writerto.WriterTo;
typedef ReaderAt = stdgo._internal.io.Io_readerat.ReaderAt;
typedef WriterAt = stdgo._internal.io.Io_writerat.WriterAt;
typedef ByteReader = stdgo._internal.io.Io_bytereader.ByteReader;
typedef ByteScanner = stdgo._internal.io.Io_bytescanner.ByteScanner;
typedef ByteWriter = stdgo._internal.io.Io_bytewriter.ByteWriter;
typedef RuneReader = stdgo._internal.io.Io_runereader.RuneReader;
typedef RuneScanner = stdgo._internal.io.Io_runescanner.RuneScanner;
typedef StringWriter = stdgo._internal.io.Io_stringwriter.StringWriter;
typedef LimitedReader = stdgo._internal.io.Io_limitedreader.LimitedReader;
typedef SectionReader = stdgo._internal.io.Io_sectionreader.SectionReader;
typedef OffsetWriter = stdgo._internal.io.Io_offsetwriter.OffsetWriter;
typedef PipeReader = stdgo._internal.io.Io_pipereader.PipeReader;
typedef PipeWriter = stdgo._internal.io.Io_pipewriter.PipeWriter;
typedef LimitedReaderPointer = stdgo._internal.io.Io_limitedreaderpointer.LimitedReaderPointer;
typedef SectionReaderPointer = stdgo._internal.io.Io_sectionreaderpointer.SectionReaderPointer;
typedef OffsetWriterPointer = stdgo._internal.io.Io_offsetwriterpointer.OffsetWriterPointer;
typedef PipeReaderPointer = stdgo._internal.io.Io_pipereaderpointer.PipeReaderPointer;
typedef PipeWriterPointer = stdgo._internal.io.Io_pipewriterpointer.PipeWriterPointer;
/**
    * Package io provides basic interfaces to I/O primitives.
    * Its primary job is to wrap existing implementations of such primitives,
    * such as those in package os, into shared public interfaces that
    * abstract the functionality, plus some other related primitives.
    * 
    * Because these interfaces and primitives wrap lower-level operations with
    * various implementations, unless otherwise informed clients should not
    * assume they are safe for parallel execution.
**/
class Io {
    /**
        * WriteString writes the contents of the string s to w, which accepts a slice of bytes.
        * If w implements StringWriter, its WriteString method is invoked directly.
        * Otherwise, w.Write is called exactly once.
    **/
    static public inline function writeString(_w:Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.io.Io_writestring.writeString(_w, _s);
    /**
        * ReadAtLeast reads from r into buf until it has read at least min bytes.
        * It returns the number of bytes copied and an error if fewer bytes were read.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading fewer than min bytes,
        * ReadAtLeast returns ErrUnexpectedEOF.
        * If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
        * On return, n >= min if and only if err == nil.
        * If r returns an error having read at least min bytes, the error is dropped.
    **/
    static public inline function readAtLeast(_r:Reader, _buf:stdgo.Slice<stdgo.GoUInt8>, _min:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.io.Io_readatleast.readAtLeast(_r, _buf, _min);
    /**
        * ReadFull reads exactly len(buf) bytes from r into buf.
        * It returns the number of bytes copied and an error if fewer bytes were read.
        * The error is EOF only if no bytes were read.
        * If an EOF happens after reading some but not all the bytes,
        * ReadFull returns ErrUnexpectedEOF.
        * On return, n == len(buf) if and only if err == nil.
        * If r returns an error having read at least len(buf) bytes, the error is dropped.
    **/
    static public inline function readFull(_r:Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.io.Io_readfull.readFull(_r, _buf);
    /**
        * CopyN copies n bytes (or until an error) from src to dst.
        * It returns the number of bytes copied and the earliest
        * error encountered while copying.
        * On return, written == n if and only if err == nil.
        * 
        * If dst implements the ReaderFrom interface,
        * the copy is implemented using it.
    **/
    static public inline function copyN(_dst:Writer, _src:Reader, _n:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.io.Io_copyn.copyN(_dst, _src, _n);
    /**
        * Copy copies from src to dst until either EOF is reached
        * on src or an error occurs. It returns the number of bytes
        * copied and the first error encountered while copying, if any.
        * 
        * A successful Copy returns err == nil, not err == EOF.
        * Because Copy is defined to read from src until EOF, it does
        * not treat an EOF from Read as an error to be reported.
        * 
        * If src implements the WriterTo interface,
        * the copy is implemented by calling src.WriteTo(dst).
        * Otherwise, if dst implements the ReaderFrom interface,
        * the copy is implemented by calling dst.ReadFrom(src).
    **/
    static public inline function copy(_dst:Writer, _src:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.io.Io_copy.copy(_dst, _src);
    /**
        * CopyBuffer is identical to Copy except that it stages through the
        * provided buffer (if one is required) rather than allocating a
        * temporary one. If buf is nil, one is allocated; otherwise if it has
        * zero length, CopyBuffer panics.
        * 
        * If either src implements WriterTo or dst implements ReaderFrom,
        * buf will not be used to perform the copy.
    **/
    static public inline function copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return stdgo._internal.io.Io_copybuffer.copyBuffer(_dst, _src, _buf);
    /**
        * LimitReader returns a Reader that reads from r
        * but stops with EOF after n bytes.
        * The underlying implementation is a *LimitedReader.
    **/
    static public inline function limitReader(_r:Reader, _n:stdgo.GoInt64):stdgo._internal.io.Io_reader.Reader return stdgo._internal.io.Io_limitreader.limitReader(_r, _n);
    /**
        * NewSectionReader returns a SectionReader that reads from r
        * starting at offset off and stops with EOF after n bytes.
    **/
    static public inline function newSectionReader(_r:ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> return stdgo._internal.io.Io_newsectionreader.newSectionReader(_r, _off, _n);
    /**
        * NewOffsetWriter returns an OffsetWriter that writes to w
        * starting at offset off.
    **/
    static public inline function newOffsetWriter(_w:WriterAt, _off:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter> return stdgo._internal.io.Io_newoffsetwriter.newOffsetWriter(_w, _off);
    /**
        * TeeReader returns a Reader that writes to w what it reads from r.
        * All reads from r performed through it are matched with
        * corresponding writes to w. There is no internal buffering -
        * the write must complete before the read completes.
        * Any error encountered while writing is reported as a read error.
    **/
    static public inline function teeReader(_r:Reader, _w:Writer):stdgo._internal.io.Io_reader.Reader return stdgo._internal.io.Io_teereader.teeReader(_r, _w);
    /**
        * NopCloser returns a ReadCloser with a no-op Close method wrapping
        * the provided Reader r.
        * If r implements WriterTo, the returned ReadCloser will implement WriterTo
        * by forwarding calls to r.
    **/
    static public inline function nopCloser(_r:Reader):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.io.Io_nopcloser.nopCloser(_r);
    /**
        * ReadAll reads from r until an error or EOF and returns the data it read.
        * A successful call returns err == nil, not err == EOF. Because ReadAll is
        * defined to read from src until EOF, it does not treat an EOF from Read
        * as an error to be reported.
    **/
    static public inline function readAll(_r:Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return stdgo._internal.io.Io_readall.readAll(_r);
    /**
        * MultiReader returns a Reader that's the logical concatenation of
        * the provided input readers. They're read sequentially. Once all
        * inputs have returned EOF, Read will return EOF.  If any of the readers
        * return a non-nil, non-EOF error, Read will return that error.
    **/
    static public inline function multiReader(_readers:haxe.Rest<Reader>):stdgo._internal.io.Io_reader.Reader return stdgo._internal.io.Io_multireader.multiReader(...[for (i in _readers) i]);
    /**
        * MultiWriter creates a writer that duplicates its writes to all the
        * provided writers, similar to the Unix tee(1) command.
        * 
        * Each write is written to each listed writer, one at a time.
        * If a listed writer returns an error, that overall write operation
        * stops and returns the error; it does not continue down the list.
    **/
    static public inline function multiWriter(_writers:haxe.Rest<Writer>):stdgo._internal.io.Io_writer.Writer return stdgo._internal.io.Io_multiwriter.multiWriter(...[for (i in _writers) i]);
    /**
        * Pipe creates a synchronous in-memory pipe.
        * It can be used to connect code expecting an io.Reader
        * with code expecting an io.Writer.
        * 
        * Reads and Writes on the pipe are matched one to one
        * except when multiple Reads are needed to consume a single Write.
        * That is, each Write to the PipeWriter blocks until it has satisfied
        * one or more Reads from the PipeReader that fully consume
        * the written data.
        * The data is copied directly from the Write to the corresponding
        * Read (or Reads); there is no internal buffering.
        * 
        * It is safe to call Read and Write in parallel with each other or with Close.
        * Parallel calls to Read and parallel calls to Write are also safe:
        * the individual calls will be gated sequentially.
    **/
    static public inline function pipe():{ var _0 : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>; var _1 : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>; } return stdgo._internal.io.Io_pipe.pipe();
}
