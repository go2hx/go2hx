package stdgo;
/**
    Package io provides basic interfaces to I/O primitives.
    Its primary job is to wrap existing implementations of such primitives,
    such as those in package os, into shared public interfaces that
    abstract the functionality, plus some other related primitives.
    
    Because these interfaces and primitives wrap lower-level operations with
    various implementations, unless otherwise informed clients should not
    assume they are safe for parallel execution.
**/
private var __go2hxdoc__package : Bool;
final seekStart : haxe.UInt64 = stdgo._internal.io.Io.seekStart;
final seekCurrent : haxe.UInt64 = stdgo._internal.io.Io.seekCurrent;
final seekEnd : haxe.UInt64 = stdgo._internal.io.Io.seekEnd;
var errShortWrite(get, set) : stdgo.Error;
private function get_errShortWrite():stdgo.Error return stdgo._internal.io.Io.errShortWrite;
private function set_errShortWrite(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errShortWrite = v;
var errShortBuffer(get, set) : stdgo.Error;
private function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io.errShortBuffer;
private function set_errShortBuffer(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errShortBuffer = v;
var eof(get, set) : stdgo.Error;
private function get_eof():stdgo.Error return stdgo._internal.io.Io.eof;
private function set_eof(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.eof = v;
var errUnexpectedEOF(get, set) : stdgo.Error;
private function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io.errUnexpectedEOF;
private function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errUnexpectedEOF = v;
var errNoProgress(get, set) : stdgo.Error;
private function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io.errNoProgress;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errNoProgress = v;
var discard(get, set) : stdgo._internal.io.Io.Writer;
private function get_discard():stdgo._internal.io.Io.Writer return stdgo._internal.io.Io.discard;
private function set_discard(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer return stdgo._internal.io.Io.discard = v;
var errClosedPipe(get, set) : stdgo.Error;
private function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io.errClosedPipe;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errClosedPipe = v;
var errInvalidWrite(get, set) : stdgo.Error;
private function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io.errInvalidWrite;
private function set_errInvalidWrite(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errInvalidWrite = v;
var errWhence(get, set) : stdgo.Error;
private function get_errWhence():stdgo.Error return stdgo._internal.io.Io.errWhence;
private function set_errWhence(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errWhence = v;
var errOffset(get, set) : stdgo.Error;
private function get_errOffset():stdgo.Error return stdgo._internal.io.Io.errOffset;
private function set_errOffset(v:stdgo.Error):stdgo.Error return stdgo._internal.io.Io.errOffset = v;
@:forward @:forward.new abstract Reader_static_extension(stdgo._internal.io.Io.Reader_static_extension) from stdgo._internal.io.Io.Reader_static_extension to stdgo._internal.io.Io.Reader_static_extension {

}
typedef Reader = stdgo._internal.io.Io.Reader;
@:forward @:forward.new abstract Writer_static_extension(stdgo._internal.io.Io.Writer_static_extension) from stdgo._internal.io.Io.Writer_static_extension to stdgo._internal.io.Io.Writer_static_extension {

}
typedef Writer = stdgo._internal.io.Io.Writer;
@:forward @:forward.new abstract Closer_static_extension(stdgo._internal.io.Io.Closer_static_extension) from stdgo._internal.io.Io.Closer_static_extension to stdgo._internal.io.Io.Closer_static_extension {

}
typedef Closer = stdgo._internal.io.Io.Closer;
@:forward @:forward.new abstract Seeker_static_extension(stdgo._internal.io.Io.Seeker_static_extension) from stdgo._internal.io.Io.Seeker_static_extension to stdgo._internal.io.Io.Seeker_static_extension {

}
typedef Seeker = stdgo._internal.io.Io.Seeker;
@:forward @:forward.new abstract ReadWriter_static_extension(stdgo._internal.io.Io.ReadWriter_static_extension) from stdgo._internal.io.Io.ReadWriter_static_extension to stdgo._internal.io.Io.ReadWriter_static_extension {

}
typedef ReadWriter = stdgo._internal.io.Io.ReadWriter;
@:forward @:forward.new abstract ReadCloser_static_extension(stdgo._internal.io.Io.ReadCloser_static_extension) from stdgo._internal.io.Io.ReadCloser_static_extension to stdgo._internal.io.Io.ReadCloser_static_extension {

}
typedef ReadCloser = stdgo._internal.io.Io.ReadCloser;
@:forward @:forward.new abstract WriteCloser_static_extension(stdgo._internal.io.Io.WriteCloser_static_extension) from stdgo._internal.io.Io.WriteCloser_static_extension to stdgo._internal.io.Io.WriteCloser_static_extension {

}
typedef WriteCloser = stdgo._internal.io.Io.WriteCloser;
@:forward @:forward.new abstract ReadWriteCloser_static_extension(stdgo._internal.io.Io.ReadWriteCloser_static_extension) from stdgo._internal.io.Io.ReadWriteCloser_static_extension to stdgo._internal.io.Io.ReadWriteCloser_static_extension {

}
typedef ReadWriteCloser = stdgo._internal.io.Io.ReadWriteCloser;
@:forward @:forward.new abstract ReadSeeker_static_extension(stdgo._internal.io.Io.ReadSeeker_static_extension) from stdgo._internal.io.Io.ReadSeeker_static_extension to stdgo._internal.io.Io.ReadSeeker_static_extension {

}
typedef ReadSeeker = stdgo._internal.io.Io.ReadSeeker;
@:forward @:forward.new abstract ReadSeekCloser_static_extension(stdgo._internal.io.Io.ReadSeekCloser_static_extension) from stdgo._internal.io.Io.ReadSeekCloser_static_extension to stdgo._internal.io.Io.ReadSeekCloser_static_extension {

}
typedef ReadSeekCloser = stdgo._internal.io.Io.ReadSeekCloser;
@:forward @:forward.new abstract WriteSeeker_static_extension(stdgo._internal.io.Io.WriteSeeker_static_extension) from stdgo._internal.io.Io.WriteSeeker_static_extension to stdgo._internal.io.Io.WriteSeeker_static_extension {

}
typedef WriteSeeker = stdgo._internal.io.Io.WriteSeeker;
@:forward @:forward.new abstract ReadWriteSeeker_static_extension(stdgo._internal.io.Io.ReadWriteSeeker_static_extension) from stdgo._internal.io.Io.ReadWriteSeeker_static_extension to stdgo._internal.io.Io.ReadWriteSeeker_static_extension {

}
typedef ReadWriteSeeker = stdgo._internal.io.Io.ReadWriteSeeker;
@:forward @:forward.new abstract ReaderFrom_static_extension(stdgo._internal.io.Io.ReaderFrom_static_extension) from stdgo._internal.io.Io.ReaderFrom_static_extension to stdgo._internal.io.Io.ReaderFrom_static_extension {

}
typedef ReaderFrom = stdgo._internal.io.Io.ReaderFrom;
@:forward @:forward.new abstract WriterTo_static_extension(stdgo._internal.io.Io.WriterTo_static_extension) from stdgo._internal.io.Io.WriterTo_static_extension to stdgo._internal.io.Io.WriterTo_static_extension {

}
typedef WriterTo = stdgo._internal.io.Io.WriterTo;
@:forward @:forward.new abstract ReaderAt_static_extension(stdgo._internal.io.Io.ReaderAt_static_extension) from stdgo._internal.io.Io.ReaderAt_static_extension to stdgo._internal.io.Io.ReaderAt_static_extension {

}
typedef ReaderAt = stdgo._internal.io.Io.ReaderAt;
@:forward @:forward.new abstract WriterAt_static_extension(stdgo._internal.io.Io.WriterAt_static_extension) from stdgo._internal.io.Io.WriterAt_static_extension to stdgo._internal.io.Io.WriterAt_static_extension {

}
typedef WriterAt = stdgo._internal.io.Io.WriterAt;
@:forward @:forward.new abstract ByteReader_static_extension(stdgo._internal.io.Io.ByteReader_static_extension) from stdgo._internal.io.Io.ByteReader_static_extension to stdgo._internal.io.Io.ByteReader_static_extension {

}
typedef ByteReader = stdgo._internal.io.Io.ByteReader;
@:forward @:forward.new abstract ByteScanner_static_extension(stdgo._internal.io.Io.ByteScanner_static_extension) from stdgo._internal.io.Io.ByteScanner_static_extension to stdgo._internal.io.Io.ByteScanner_static_extension {

}
typedef ByteScanner = stdgo._internal.io.Io.ByteScanner;
@:forward @:forward.new abstract ByteWriter_static_extension(stdgo._internal.io.Io.ByteWriter_static_extension) from stdgo._internal.io.Io.ByteWriter_static_extension to stdgo._internal.io.Io.ByteWriter_static_extension {

}
typedef ByteWriter = stdgo._internal.io.Io.ByteWriter;
@:forward @:forward.new abstract RuneReader_static_extension(stdgo._internal.io.Io.RuneReader_static_extension) from stdgo._internal.io.Io.RuneReader_static_extension to stdgo._internal.io.Io.RuneReader_static_extension {

}
typedef RuneReader = stdgo._internal.io.Io.RuneReader;
@:forward @:forward.new abstract RuneScanner_static_extension(stdgo._internal.io.Io.RuneScanner_static_extension) from stdgo._internal.io.Io.RuneScanner_static_extension to stdgo._internal.io.Io.RuneScanner_static_extension {

}
typedef RuneScanner = stdgo._internal.io.Io.RuneScanner;
@:forward @:forward.new abstract StringWriter_static_extension(stdgo._internal.io.Io.StringWriter_static_extension) from stdgo._internal.io.Io.StringWriter_static_extension to stdgo._internal.io.Io.StringWriter_static_extension {

}
typedef StringWriter = stdgo._internal.io.Io.StringWriter;
@:forward @:forward.new abstract LimitedReader(stdgo._internal.io.Io.LimitedReader) from stdgo._internal.io.Io.LimitedReader to stdgo._internal.io.Io.LimitedReader {

}
@:forward @:forward.new abstract SectionReader(stdgo._internal.io.Io.SectionReader) from stdgo._internal.io.Io.SectionReader to stdgo._internal.io.Io.SectionReader {

}
@:forward @:forward.new abstract OffsetWriter(stdgo._internal.io.Io.OffsetWriter) from stdgo._internal.io.Io.OffsetWriter to stdgo._internal.io.Io.OffsetWriter {

}
@:forward @:forward.new abstract T_teeReader(stdgo._internal.io.Io.T_teeReader) from stdgo._internal.io.Io.T_teeReader to stdgo._internal.io.Io.T_teeReader {

}
@:forward @:forward.new abstract T_discard(stdgo._internal.io.Io.T_discard) from stdgo._internal.io.Io.T_discard to stdgo._internal.io.Io.T_discard {

}
@:forward @:forward.new abstract T_nopCloser(stdgo._internal.io.Io.T_nopCloser) from stdgo._internal.io.Io.T_nopCloser to stdgo._internal.io.Io.T_nopCloser {

}
@:forward @:forward.new abstract T_nopCloserWriterTo(stdgo._internal.io.Io.T_nopCloserWriterTo) from stdgo._internal.io.Io.T_nopCloserWriterTo to stdgo._internal.io.Io.T_nopCloserWriterTo {

}
@:forward @:forward.new abstract T_eofReader(stdgo._internal.io.Io.T_eofReader) from stdgo._internal.io.Io.T_eofReader to stdgo._internal.io.Io.T_eofReader {

}
@:forward @:forward.new abstract T_multiReader(stdgo._internal.io.Io.T_multiReader) from stdgo._internal.io.Io.T_multiReader to stdgo._internal.io.Io.T_multiReader {

}
@:forward @:forward.new abstract T_multiWriter(stdgo._internal.io.Io.T_multiWriter) from stdgo._internal.io.Io.T_multiWriter to stdgo._internal.io.Io.T_multiWriter {

}
@:forward @:forward.new abstract T_onceError(stdgo._internal.io.Io.T_onceError) from stdgo._internal.io.Io.T_onceError to stdgo._internal.io.Io.T_onceError {

}
@:forward @:forward.new abstract T_pipe(stdgo._internal.io.Io.T_pipe) from stdgo._internal.io.Io.T_pipe to stdgo._internal.io.Io.T_pipe {

}
@:forward @:forward.new abstract PipeReader(stdgo._internal.io.Io.PipeReader) from stdgo._internal.io.Io.PipeReader to stdgo._internal.io.Io.PipeReader {

}
@:forward @:forward.new abstract PipeWriter(stdgo._internal.io.Io.PipeWriter) from stdgo._internal.io.Io.PipeWriter to stdgo._internal.io.Io.PipeWriter {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.io.Io.T__struct_0_asInterface) from stdgo._internal.io.Io.T__struct_0_asInterface to stdgo._internal.io.Io.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.io.Io.T__struct_0_static_extension) from stdgo._internal.io.Io.T__struct_0_static_extension to stdgo._internal.io.Io.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.io.Io.T__struct_0;
/**
    WriteString writes the contents of the string s to w, which accepts a slice of bytes.
    If w implements StringWriter, its WriteString method is invoked directly.
    Otherwise, w.Write is called exactly once.
**/
function writeString(w:Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io.writeString(w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    ReadAtLeast reads from r into buf until it has read at least min bytes.
    It returns the number of bytes copied and an error if fewer bytes were read.
    The error is EOF only if no bytes were read.
    If an EOF happens after reading fewer than min bytes,
    ReadAtLeast returns ErrUnexpectedEOF.
    If min is greater than the length of buf, ReadAtLeast returns ErrShortBuffer.
    On return, n >= min if and only if err == nil.
    If r returns an error having read at least min bytes, the error is dropped.
**/
function readAtLeast(r:Reader, buf:Array<StdTypes.Int>, min:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.io.Io.readAtLeast(r, buf, min);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    ReadFull reads exactly len(buf) bytes from r into buf.
    It returns the number of bytes copied and an error if fewer bytes were read.
    The error is EOF only if no bytes were read.
    If an EOF happens after reading some but not all the bytes,
    ReadFull returns ErrUnexpectedEOF.
    On return, n == len(buf) if and only if err == nil.
    If r returns an error having read at least len(buf) bytes, the error is dropped.
**/
function readFull(r:Reader, buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.io.Io.readFull(r, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    CopyN copies n bytes (or until an error) from src to dst.
    It returns the number of bytes copied and the earliest
    error encountered while copying.
    On return, written == n if and only if err == nil.
    
    If dst implements the ReaderFrom interface,
    the copy is implemented using it.
**/
function copyN(dst:Writer, src:Reader, n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io.copyN(dst, src, n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    Copy copies from src to dst until either EOF is reached
    on src or an error occurs. It returns the number of bytes
    copied and the first error encountered while copying, if any.
    
    A successful Copy returns err == nil, not err == EOF.
    Because Copy is defined to read from src until EOF, it does
    not treat an EOF from Read as an error to be reported.
    
    If src implements the WriterTo interface,
    the copy is implemented by calling src.WriteTo(dst).
    Otherwise, if dst implements the ReaderFrom interface,
    the copy is implemented by calling dst.ReadFrom(src).
**/
function copy(dst:Writer, src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io.copy(dst, src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    CopyBuffer is identical to Copy except that it stages through the
    provided buffer (if one is required) rather than allocating a
    temporary one. If buf is nil, one is allocated; otherwise if it has
    zero length, CopyBuffer panics.
    
    If either src implements WriterTo or dst implements ReaderFrom,
    buf will not be used to perform the copy.
**/
function copyBuffer(dst:Writer, src:Reader, buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.io.Io.copyBuffer(dst, src, buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
/**
    LimitReader returns a Reader that reads from r
    but stops with EOF after n bytes.
    The underlying implementation is a *LimitedReader.
**/
function limitReader(r:Reader, n:haxe.Int64):Reader {
        return stdgo._internal.io.Io.limitReader(r, n);
    }
/**
    NewSectionReader returns a SectionReader that reads from r
    starting at offset off and stops with EOF after n bytes.
**/
function newSectionReader(r:ReaderAt, off:haxe.Int64, n:haxe.Int64):SectionReader {
        return stdgo._internal.io.Io.newSectionReader(r, off, n);
    }
/**
    NewOffsetWriter returns an OffsetWriter that writes to w
    starting at offset off.
**/
function newOffsetWriter(w:WriterAt, off:haxe.Int64):OffsetWriter {
        return stdgo._internal.io.Io.newOffsetWriter(w, off);
    }
/**
    TeeReader returns a Reader that writes to w what it reads from r.
    All reads from r performed through it are matched with
    corresponding writes to w. There is no internal buffering -
    the write must complete before the read completes.
    Any error encountered while writing is reported as a read error.
**/
function teeReader(r:Reader, w:Writer):Reader {
        return stdgo._internal.io.Io.teeReader(r, w);
    }
/**
    NopCloser returns a ReadCloser with a no-op Close method wrapping
    the provided Reader r.
    If r implements WriterTo, the returned ReadCloser will implement WriterTo
    by forwarding calls to r.
**/
function nopCloser(r:Reader):ReadCloser {
        return stdgo._internal.io.Io.nopCloser(r);
    }
/**
    ReadAll reads from r until an error or EOF and returns the data it read.
    A successful call returns err == nil, not err == EOF. Because ReadAll is
    defined to read from src until EOF, it does not treat an EOF from Read
    as an error to be reported.
**/
function readAll(r:Reader):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io.readAll(r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
/**
    MultiReader returns a Reader that's the logical concatenation of
    the provided input readers. They're read sequentially. Once all
    inputs have returned EOF, Read will return EOF.  If any of the readers
    return a non-nil, non-EOF error, Read will return that error.
**/
function multiReader(readers:haxe.Rest<Reader>):Reader {
        return stdgo._internal.io.Io.multiReader(...readers);
    }
/**
    MultiWriter creates a writer that duplicates its writes to all the
    provided writers, similar to the Unix tee(1) command.
    
    Each write is written to each listed writer, one at a time.
    If a listed writer returns an error, that overall write operation
    stops and returns the error; it does not continue down the list.
**/
function multiWriter(writers:haxe.Rest<Writer>):Writer {
        return stdgo._internal.io.Io.multiWriter(...writers);
    }
/**
    Pipe creates a synchronous in-memory pipe.
    It can be used to connect code expecting an io.Reader
    with code expecting an io.Writer.
    
    Reads and Writes on the pipe are matched one to one
    except when multiple Reads are needed to consume a single Write.
    That is, each Write to the PipeWriter blocks until it has satisfied
    one or more Reads from the PipeReader that fully consume
    the written data.
    The data is copied directly from the Write to the corresponding
    Read (or Reads); there is no internal buffering.
    
    It is safe to call Read and Write in parallel with each other or with Close.
    Parallel calls to Read and parallel calls to Write are also safe:
    the individual calls will be gated sequentially.
**/
function pipe():stdgo.Tuple<PipeReader, PipeWriter> {
        return {
            final obj = stdgo._internal.io.Io.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
@:forward @:forward.new abstract LimitedReader_asInterface(stdgo._internal.io.Io.LimitedReader_asInterface) from stdgo._internal.io.Io.LimitedReader_asInterface to stdgo._internal.io.Io.LimitedReader_asInterface {

}
@:forward @:forward.new abstract LimitedReader_static_extension(stdgo._internal.io.Io.LimitedReader_static_extension) from stdgo._internal.io.Io.LimitedReader_static_extension to stdgo._internal.io.Io.LimitedReader_static_extension {

}
@:forward @:forward.new abstract SectionReader_asInterface(stdgo._internal.io.Io.SectionReader_asInterface) from stdgo._internal.io.Io.SectionReader_asInterface to stdgo._internal.io.Io.SectionReader_asInterface {

}
@:forward @:forward.new abstract SectionReader_static_extension(stdgo._internal.io.Io.SectionReader_static_extension) from stdgo._internal.io.Io.SectionReader_static_extension to stdgo._internal.io.Io.SectionReader_static_extension {

}
@:forward @:forward.new abstract OffsetWriter_asInterface(stdgo._internal.io.Io.OffsetWriter_asInterface) from stdgo._internal.io.Io.OffsetWriter_asInterface to stdgo._internal.io.Io.OffsetWriter_asInterface {

}
@:forward @:forward.new abstract OffsetWriter_static_extension(stdgo._internal.io.Io.OffsetWriter_static_extension) from stdgo._internal.io.Io.OffsetWriter_static_extension to stdgo._internal.io.Io.OffsetWriter_static_extension {

}
@:forward @:forward.new abstract T_teeReader_asInterface(stdgo._internal.io.Io.T_teeReader_asInterface) from stdgo._internal.io.Io.T_teeReader_asInterface to stdgo._internal.io.Io.T_teeReader_asInterface {

}
@:forward @:forward.new abstract T_teeReader_static_extension(stdgo._internal.io.Io.T_teeReader_static_extension) from stdgo._internal.io.Io.T_teeReader_static_extension to stdgo._internal.io.Io.T_teeReader_static_extension {

}
@:forward @:forward.new abstract T_discard_asInterface(stdgo._internal.io.Io.T_discard_asInterface) from stdgo._internal.io.Io.T_discard_asInterface to stdgo._internal.io.Io.T_discard_asInterface {

}
@:forward @:forward.new abstract T_discard_static_extension(stdgo._internal.io.Io.T_discard_static_extension) from stdgo._internal.io.Io.T_discard_static_extension to stdgo._internal.io.Io.T_discard_static_extension {

}
@:forward @:forward.new abstract T_nopCloser_asInterface(stdgo._internal.io.Io.T_nopCloser_asInterface) from stdgo._internal.io.Io.T_nopCloser_asInterface to stdgo._internal.io.Io.T_nopCloser_asInterface {

}
@:forward @:forward.new abstract T_nopCloser_static_extension(stdgo._internal.io.Io.T_nopCloser_static_extension) from stdgo._internal.io.Io.T_nopCloser_static_extension to stdgo._internal.io.Io.T_nopCloser_static_extension {

}
@:forward @:forward.new abstract T_nopCloserWriterTo_asInterface(stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface) from stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface to stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface {

}
@:forward @:forward.new abstract T_nopCloserWriterTo_static_extension(stdgo._internal.io.Io.T_nopCloserWriterTo_static_extension) from stdgo._internal.io.Io.T_nopCloserWriterTo_static_extension to stdgo._internal.io.Io.T_nopCloserWriterTo_static_extension {

}
@:forward @:forward.new abstract T_eofReader_asInterface(stdgo._internal.io.Io.T_eofReader_asInterface) from stdgo._internal.io.Io.T_eofReader_asInterface to stdgo._internal.io.Io.T_eofReader_asInterface {

}
@:forward @:forward.new abstract T_eofReader_static_extension(stdgo._internal.io.Io.T_eofReader_static_extension) from stdgo._internal.io.Io.T_eofReader_static_extension to stdgo._internal.io.Io.T_eofReader_static_extension {

}
@:forward @:forward.new abstract T_multiReader_asInterface(stdgo._internal.io.Io.T_multiReader_asInterface) from stdgo._internal.io.Io.T_multiReader_asInterface to stdgo._internal.io.Io.T_multiReader_asInterface {

}
@:forward @:forward.new abstract T_multiReader_static_extension(stdgo._internal.io.Io.T_multiReader_static_extension) from stdgo._internal.io.Io.T_multiReader_static_extension to stdgo._internal.io.Io.T_multiReader_static_extension {

}
@:forward @:forward.new abstract T_multiWriter_asInterface(stdgo._internal.io.Io.T_multiWriter_asInterface) from stdgo._internal.io.Io.T_multiWriter_asInterface to stdgo._internal.io.Io.T_multiWriter_asInterface {

}
@:forward @:forward.new abstract T_multiWriter_static_extension(stdgo._internal.io.Io.T_multiWriter_static_extension) from stdgo._internal.io.Io.T_multiWriter_static_extension to stdgo._internal.io.Io.T_multiWriter_static_extension {

}
@:forward @:forward.new abstract T_onceError_asInterface(stdgo._internal.io.Io.T_onceError_asInterface) from stdgo._internal.io.Io.T_onceError_asInterface to stdgo._internal.io.Io.T_onceError_asInterface {

}
@:forward @:forward.new abstract T_onceError_static_extension(stdgo._internal.io.Io.T_onceError_static_extension) from stdgo._internal.io.Io.T_onceError_static_extension to stdgo._internal.io.Io.T_onceError_static_extension {

}
@:forward @:forward.new abstract T_pipe_asInterface(stdgo._internal.io.Io.T_pipe_asInterface) from stdgo._internal.io.Io.T_pipe_asInterface to stdgo._internal.io.Io.T_pipe_asInterface {

}
@:forward @:forward.new abstract T_pipe_static_extension(stdgo._internal.io.Io.T_pipe_static_extension) from stdgo._internal.io.Io.T_pipe_static_extension to stdgo._internal.io.Io.T_pipe_static_extension {

}
@:forward @:forward.new abstract PipeReader_asInterface(stdgo._internal.io.Io.PipeReader_asInterface) from stdgo._internal.io.Io.PipeReader_asInterface to stdgo._internal.io.Io.PipeReader_asInterface {

}
@:forward @:forward.new abstract PipeReader_static_extension(stdgo._internal.io.Io.PipeReader_static_extension) from stdgo._internal.io.Io.PipeReader_static_extension to stdgo._internal.io.Io.PipeReader_static_extension {

}
@:forward @:forward.new abstract PipeWriter_asInterface(stdgo._internal.io.Io.PipeWriter_asInterface) from stdgo._internal.io.Io.PipeWriter_asInterface to stdgo._internal.io.Io.PipeWriter_asInterface {

}
@:forward @:forward.new abstract PipeWriter_static_extension(stdgo._internal.io.Io.PipeWriter_static_extension) from stdgo._internal.io.Io.PipeWriter_static_extension to stdgo._internal.io.Io.PipeWriter_static_extension {

}
