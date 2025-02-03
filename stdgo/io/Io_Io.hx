package stdgo.io;
/**
    Package io provides basic interfaces to I/O primitives.
    Its primary job is to wrap existing implementations of such primitives,
    such as those in package os, into shared public interfaces that
    abstract the functionality, plus some other related primitives.
    
    Because these interfaces and primitives wrap lower-level operations with
    various implementations, unless otherwise informed clients should not
    assume they are safe for parallel execution.
**/
class Io {
    /**
        WriteString writes the contents of the string s to w, which accepts a slice of bytes.
        If w implements StringWriter, its WriteString method is invoked directly.
        Otherwise, w.Write is called exactly once.
    **/
    static public inline function writeString(_w:Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.Io_writeString.writeString(_w, _s);
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
    static public inline function readAtLeast(_r:Reader, _buf:Array<std.UInt>, _min:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _min = (_min : stdgo.GoInt);
        return {
            final obj = stdgo._internal.io.Io_readAtLeast.readAtLeast(_r, _buf, _min);
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
    static public inline function readFull(_r:Reader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_readFull.readFull(_r, _buf);
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
    static public inline function copyN(_dst:Writer, _src:Reader, _n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _n = (_n : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.io.Io_copyN.copyN(_dst, _src, _n);
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
    static public inline function copy(_dst:Writer, _src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_copy.copy(_dst, _src);
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
    static public inline function copyBuffer(_dst:Writer, _src:Reader, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_copyBuffer.copyBuffer(_dst, _src, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LimitReader returns a Reader that reads from r
        but stops with EOF after n bytes.
        The underlying implementation is a *LimitedReader.
    **/
    static public inline function limitReader(_r:Reader, _n:haxe.Int64):Reader {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.io.Io_limitReader.limitReader(_r, _n);
    }
    /**
        NewSectionReader returns a SectionReader that reads from r
        starting at offset off and stops with EOF after n bytes.
    **/
    static public inline function newSectionReader(_r:ReaderAt, _off:haxe.Int64, _n:haxe.Int64):SectionReader {
        final _off = (_off : stdgo.GoInt64);
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, _off, _n);
    }
    /**
        NewOffsetWriter returns an OffsetWriter that writes to w
        starting at offset off.
    **/
    static public inline function newOffsetWriter(_w:WriterAt, _off:haxe.Int64):OffsetWriter {
        final _off = (_off : stdgo.GoInt64);
        return stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(_w, _off);
    }
    /**
        TeeReader returns a Reader that writes to w what it reads from r.
        All reads from r performed through it are matched with
        corresponding writes to w. There is no internal buffering -
        the write must complete before the read completes.
        Any error encountered while writing is reported as a read error.
    **/
    static public inline function teeReader(_r:Reader, _w:Writer):Reader {
        return stdgo._internal.io.Io_teeReader.teeReader(_r, _w);
    }
    /**
        NopCloser returns a ReadCloser with a no-op Close method wrapping
        the provided Reader r.
        If r implements WriterTo, the returned ReadCloser will implement WriterTo
        by forwarding calls to r.
    **/
    static public inline function nopCloser(_r:Reader):ReadCloser {
        return stdgo._internal.io.Io_nopCloser.nopCloser(_r);
    }
    /**
        ReadAll reads from r until an error or EOF and returns the data it read.
        A successful call returns err == nil, not err == EOF. Because ReadAll is
        defined to read from src until EOF, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public inline function readAll(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_readAll.readAll(_r);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        MultiReader returns a Reader that's the logical concatenation of
        the provided input readers. They're read sequentially. Once all
        inputs have returned EOF, Read will return EOF.  If any of the readers
        return a non-nil, non-EOF error, Read will return that error.
    **/
    static public inline function multiReader(_readers:haxe.Rest<Reader>):Reader {
        return stdgo._internal.io.Io_multiReader.multiReader(...[for (i in _readers) i]);
    }
    /**
        MultiWriter creates a writer that duplicates its writes to all the
        provided writers, similar to the Unix tee(1) command.
        
        Each write is written to each listed writer, one at a time.
        If a listed writer returns an error, that overall write operation
        stops and returns the error; it does not continue down the list.
    **/
    static public inline function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        return stdgo._internal.io.Io_multiWriter.multiWriter(...[for (i in _writers) i]);
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
    static public inline function pipe():stdgo.Tuple<PipeReader, PipeWriter> {
        return {
            final obj = stdgo._internal.io.Io_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
