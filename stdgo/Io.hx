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
private function set_errShortWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errShortWrite = v;
        return v;
    }
var errShortBuffer(get, set) : stdgo.Error;
private function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io.errShortBuffer;
private function set_errShortBuffer(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errShortBuffer = v;
        return v;
    }
var eof(get, set) : stdgo.Error;
private function get_eof():stdgo.Error return stdgo._internal.io.Io.eof;
private function set_eof(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.eof = v;
        return v;
    }
var errUnexpectedEOF(get, set) : stdgo.Error;
private function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io.errUnexpectedEOF;
private function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errUnexpectedEOF = v;
        return v;
    }
var errNoProgress(get, set) : stdgo.Error;
private function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io.errNoProgress;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errNoProgress = v;
        return v;
    }
var discard(get, set) : stdgo._internal.io.Io.Writer;
private function get_discard():stdgo._internal.io.Io.Writer return stdgo._internal.io.Io.discard;
private function set_discard(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        stdgo._internal.io.Io.discard = v;
        return v;
    }
var errClosedPipe(get, set) : stdgo.Error;
private function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io.errClosedPipe;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errClosedPipe = v;
        return v;
    }
var errInvalidWrite(get, set) : stdgo.Error;
private function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io.errInvalidWrite;
private function set_errInvalidWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errInvalidWrite = v;
        return v;
    }
var errWhence(get, set) : stdgo.Error;
private function get_errWhence():stdgo.Error return stdgo._internal.io.Io.errWhence;
private function set_errWhence(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errWhence = v;
        return v;
    }
var errOffset(get, set) : stdgo.Error;
private function get_errOffset():stdgo.Error return stdgo._internal.io.Io.errOffset;
private function set_errOffset(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io.errOffset = v;
        return v;
    }
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
abstract LimitedReader(stdgo._internal.io.Io.LimitedReader) from stdgo._internal.io.Io.LimitedReader to stdgo._internal.io.Io.LimitedReader {
    public var r(get, set) : stdgo._internal.io.Io.Reader;
    function get_r():stdgo._internal.io.Io.Reader return this.r;
    function set_r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this.r = v;
        return v;
    }
    public var n(get, set) : haxe.Int64;
    function get_n():haxe.Int64 return this.n;
    function set_n(v:haxe.Int64):haxe.Int64 {
        this.n = v;
        return v;
    }
    public function new(?r:stdgo._internal.io.Io.Reader, ?n:haxe.Int64) this = new stdgo._internal.io.Io.LimitedReader(r, n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract SectionReader(stdgo._internal.io.Io.SectionReader) from stdgo._internal.io.Io.SectionReader to stdgo._internal.io.Io.SectionReader {
    public var _r(get, set) : stdgo._internal.io.Io.ReaderAt;
    function get__r():stdgo._internal.io.Io.ReaderAt return this._r;
    function set__r(v:stdgo._internal.io.Io.ReaderAt):stdgo._internal.io.Io.ReaderAt {
        this._r = v;
        return v;
    }
    public var _base(get, set) : haxe.Int64;
    function get__base():haxe.Int64 return this._base;
    function set__base(v:haxe.Int64):haxe.Int64 {
        this._base = v;
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = v;
        return v;
    }
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.ReaderAt, ?_base:haxe.Int64, ?_off:haxe.Int64, ?_limit:haxe.Int64) this = new stdgo._internal.io.Io.SectionReader(_r, _base, _off, _limit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract OffsetWriter(stdgo._internal.io.Io.OffsetWriter) from stdgo._internal.io.Io.OffsetWriter to stdgo._internal.io.Io.OffsetWriter {
    public var _w(get, set) : stdgo._internal.io.Io.WriterAt;
    function get__w():stdgo._internal.io.Io.WriterAt return this._w;
    function set__w(v:stdgo._internal.io.Io.WriterAt):stdgo._internal.io.Io.WriterAt {
        this._w = v;
        return v;
    }
    public var _base(get, set) : haxe.Int64;
    function get__base():haxe.Int64 return this._base;
    function set__base(v:haxe.Int64):haxe.Int64 {
        this._base = v;
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.WriterAt, ?_base:haxe.Int64, ?_off:haxe.Int64) this = new stdgo._internal.io.Io.OffsetWriter(_w, _base, _off);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_teeReader(stdgo._internal.io.Io.T_teeReader) from stdgo._internal.io.Io.T_teeReader to stdgo._internal.io.Io.T_teeReader {
    public var _r(get, set) : stdgo._internal.io.Io.Reader;
    function get__r():stdgo._internal.io.Io.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this._r = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_w:stdgo._internal.io.Io.Writer) this = new stdgo._internal.io.Io.T_teeReader(_r, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_discard(stdgo._internal.io.Io.T_discard) from stdgo._internal.io.Io.T_discard to stdgo._internal.io.Io.T_discard {
    public function new() this = new stdgo._internal.io.Io.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_nopCloser(stdgo._internal.io.Io.T_nopCloser) from stdgo._internal.io.Io.T_nopCloser to stdgo._internal.io.Io.T_nopCloser {
    public var reader(get, set) : stdgo._internal.io.Io.Reader;
    function get_reader():stdgo._internal.io.Io.Reader return this.reader;
    function set_reader(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:stdgo._internal.io.Io.Reader) this = new stdgo._internal.io.Io.T_nopCloser(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_nopCloserWriterTo(stdgo._internal.io.Io.T_nopCloserWriterTo) from stdgo._internal.io.Io.T_nopCloserWriterTo to stdgo._internal.io.Io.T_nopCloserWriterTo {
    public var reader(get, set) : stdgo._internal.io.Io.Reader;
    function get_reader():stdgo._internal.io.Io.Reader return this.reader;
    function set_reader(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:stdgo._internal.io.Io.Reader) this = new stdgo._internal.io.Io.T_nopCloserWriterTo(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_eofReader(stdgo._internal.io.Io.T_eofReader) from stdgo._internal.io.Io.T_eofReader to stdgo._internal.io.Io.T_eofReader {
    public function new() this = new stdgo._internal.io.Io.T_eofReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_multiReader(stdgo._internal.io.Io.T_multiReader) from stdgo._internal.io.Io.T_multiReader to stdgo._internal.io.Io.T_multiReader {
    public var _readers(get, set) : Array<stdgo._internal.io.Io.Reader>;
    function get__readers():Array<stdgo._internal.io.Io.Reader> return [for (i in this._readers) i];
    function set__readers(v:Array<stdgo._internal.io.Io.Reader>):Array<stdgo._internal.io.Io.Reader> {
        this._readers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io.Reader>);
        return v;
    }
    public function new(?_readers:Array<stdgo._internal.io.Io.Reader>) this = new stdgo._internal.io.Io.T_multiReader(([for (i in _readers) i] : stdgo.Slice<stdgo._internal.io.Io.Reader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_multiWriter(stdgo._internal.io.Io.T_multiWriter) from stdgo._internal.io.Io.T_multiWriter to stdgo._internal.io.Io.T_multiWriter {
    public var _writers(get, set) : Array<stdgo._internal.io.Io.Writer>;
    function get__writers():Array<stdgo._internal.io.Io.Writer> return [for (i in this._writers) i];
    function set__writers(v:Array<stdgo._internal.io.Io.Writer>):Array<stdgo._internal.io.Io.Writer> {
        this._writers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io.Writer>);
        return v;
    }
    public function new(?_writers:Array<stdgo._internal.io.Io.Writer>) this = new stdgo._internal.io.Io.T_multiWriter(([for (i in _writers) i] : stdgo.Slice<stdgo._internal.io.Io.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_onceError(stdgo._internal.io.Io.T_onceError) from stdgo._internal.io.Io.T_onceError to stdgo._internal.io.Io.T_onceError {
    public var mutex(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get_mutex():stdgo._internal.sync.Sync.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this.mutex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync.Mutex, ?_err:stdgo.Error) this = new stdgo._internal.io.Io.T_onceError(mutex, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_pipe(stdgo._internal.io.Io.T_pipe) from stdgo._internal.io.Io.T_pipe to stdgo._internal.io.Io.T_pipe {
    public var _wrMu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__wrMu():stdgo._internal.sync.Sync.Mutex return this._wrMu;
    function set__wrMu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._wrMu = v;
        return v;
    }
    public var _wrCh(get, set) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>;
    function get__wrCh():stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> return this._wrCh;
    function set__wrCh(v:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> {
        this._wrCh = v;
        return v;
    }
    public var _rdCh(get, set) : stdgo.Chan<stdgo.GoInt>;
    function get__rdCh():stdgo.Chan<stdgo.GoInt> return this._rdCh;
    function set__rdCh(v:stdgo.Chan<stdgo.GoInt>):stdgo.Chan<stdgo.GoInt> {
        this._rdCh = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync.Once;
    function get__once():stdgo._internal.sync.Sync.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync.Once):stdgo._internal.sync.Sync.Once {
        this._once = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<T_discard>;
    function get__done():stdgo.Chan<T_discard> return this._done;
    function set__done(v:stdgo.Chan<T_discard>):stdgo.Chan<T_discard> {
        this._done = v;
        return v;
    }
    public var _rerr(get, set) : stdgo._internal.io.Io.T_onceError;
    function get__rerr():stdgo._internal.io.Io.T_onceError return this._rerr;
    function set__rerr(v:stdgo._internal.io.Io.T_onceError):stdgo._internal.io.Io.T_onceError {
        this._rerr = v;
        return v;
    }
    public var _werr(get, set) : stdgo._internal.io.Io.T_onceError;
    function get__werr():stdgo._internal.io.Io.T_onceError return this._werr;
    function set__werr(v:stdgo._internal.io.Io.T_onceError):stdgo._internal.io.Io.T_onceError {
        this._werr = v;
        return v;
    }
    public function new(?_wrMu:stdgo._internal.sync.Sync.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync.Once, ?_done:stdgo.Chan<T_discard>, ?_rerr:stdgo._internal.io.Io.T_onceError, ?_werr:stdgo._internal.io.Io.T_onceError) this = new stdgo._internal.io.Io.T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract PipeReader(stdgo._internal.io.Io.PipeReader) from stdgo._internal.io.Io.PipeReader to stdgo._internal.io.Io.PipeReader {
    public var _p(get, set) : stdgo._internal.io.Io.T_pipe;
    function get__p():stdgo._internal.io.Io.T_pipe return this._p;
    function set__p(v:stdgo._internal.io.Io.T_pipe):stdgo._internal.io.Io.T_pipe {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.io.Io.T_pipe) this = new stdgo._internal.io.Io.PipeReader(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract PipeWriter(stdgo._internal.io.Io.PipeWriter) from stdgo._internal.io.Io.PipeWriter to stdgo._internal.io.Io.PipeWriter {
    public var _p(get, set) : stdgo._internal.io.Io.T_pipe;
    function get__p():stdgo._internal.io.Io.T_pipe return this._p;
    function set__p(v:stdgo._internal.io.Io.T_pipe):stdgo._internal.io.Io.T_pipe {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.io.Io.T_pipe) this = new stdgo._internal.io.Io.PipeWriter(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.io.Io.T__struct_0;
class Io {
    /**
        WriteString writes the contents of the string s to w, which accepts a slice of bytes.
        If w implements StringWriter, its WriteString method is invoked directly.
        Otherwise, w.Write is called exactly once.
    **/
    static public function writeString(w:Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
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
    static public function readAtLeast(r:Reader, buf:Array<StdTypes.Int>, min:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
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
    static public function readFull(r:Reader, buf:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
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
    static public function copyN(dst:Writer, src:Reader, n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> {
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
    static public function copy(dst:Writer, src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
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
    static public function copyBuffer(dst:Writer, src:Reader, buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
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
    static public function limitReader(r:Reader, n:haxe.Int64):Reader {
        return stdgo._internal.io.Io.limitReader(r, n);
    }
    /**
        NewSectionReader returns a SectionReader that reads from r
        starting at offset off and stops with EOF after n bytes.
    **/
    static public function newSectionReader(r:ReaderAt, off:haxe.Int64, n:haxe.Int64):SectionReader {
        return stdgo._internal.io.Io.newSectionReader(r, off, n);
    }
    /**
        NewOffsetWriter returns an OffsetWriter that writes to w
        starting at offset off.
    **/
    static public function newOffsetWriter(w:WriterAt, off:haxe.Int64):OffsetWriter {
        return stdgo._internal.io.Io.newOffsetWriter(w, off);
    }
    /**
        TeeReader returns a Reader that writes to w what it reads from r.
        All reads from r performed through it are matched with
        corresponding writes to w. There is no internal buffering -
        the write must complete before the read completes.
        Any error encountered while writing is reported as a read error.
    **/
    static public function teeReader(r:Reader, w:Writer):Reader {
        return stdgo._internal.io.Io.teeReader(r, w);
    }
    /**
        NopCloser returns a ReadCloser with a no-op Close method wrapping
        the provided Reader r.
        If r implements WriterTo, the returned ReadCloser will implement WriterTo
        by forwarding calls to r.
    **/
    static public function nopCloser(r:Reader):ReadCloser {
        return stdgo._internal.io.Io.nopCloser(r);
    }
    /**
        ReadAll reads from r until an error or EOF and returns the data it read.
        A successful call returns err == nil, not err == EOF. Because ReadAll is
        defined to read from src until EOF, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public function readAll(r:Reader):stdgo.Tuple<Array<StdTypes.Int>, stdgo.Error> {
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
    static public function multiReader(readers:haxe.Rest<Reader>):Reader {
        return stdgo._internal.io.Io.multiReader(...readers);
    }
    /**
        MultiWriter creates a writer that duplicates its writes to all the
        provided writers, similar to the Unix tee(1) command.
        
        Each write is written to each listed writer, one at a time.
        If a listed writer returns an error, that overall write operation
        stops and returns the error; it does not continue down the list.
    **/
    static public function multiWriter(writers:haxe.Rest<Writer>):Writer {
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
    static public function pipe():stdgo.Tuple<PipeReader, PipeWriter> {
        return {
            final obj = stdgo._internal.io.Io.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
