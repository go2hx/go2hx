package stdgo.io;
final seekStart : haxe.UInt64 = stdgo._internal.io.Io_seekStart.seekStart;
final seekCurrent : haxe.UInt64 = stdgo._internal.io.Io_seekCurrent.seekCurrent;
final seekEnd : haxe.UInt64 = stdgo._internal.io.Io_seekEnd.seekEnd;
var errShortWrite(get, set) : stdgo.Error;
private function get_errShortWrite():stdgo.Error return stdgo._internal.io.Io_errShortWrite.errShortWrite;
private function set_errShortWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errShortWrite.errShortWrite = v;
        return v;
    }
var errShortBuffer(get, set) : stdgo.Error;
private function get_errShortBuffer():stdgo.Error return stdgo._internal.io.Io_errShortBuffer.errShortBuffer;
private function set_errShortBuffer(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errShortBuffer.errShortBuffer = v;
        return v;
    }
var eof(get, set) : stdgo.Error;
private function get_eof():stdgo.Error return stdgo._internal.io.Io_eof.eof;
private function set_eof(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_eof.eof = v;
        return v;
    }
var errUnexpectedEOF(get, set) : stdgo.Error;
private function get_errUnexpectedEOF():stdgo.Error return stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
private function set_errUnexpectedEOF(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF = v;
        return v;
    }
var errNoProgress(get, set) : stdgo.Error;
private function get_errNoProgress():stdgo.Error return stdgo._internal.io.Io_errNoProgress.errNoProgress;
private function set_errNoProgress(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errNoProgress.errNoProgress = v;
        return v;
    }
var discard(get, set) : Writer;
private function get_discard():Writer return stdgo._internal.io.Io_discard.discard;
private function set_discard(v:Writer):Writer {
        stdgo._internal.io.Io_discard.discard = v;
        return v;
    }
var errClosedPipe(get, set) : stdgo.Error;
private function get_errClosedPipe():stdgo.Error return stdgo._internal.io.Io_errClosedPipe.errClosedPipe;
private function set_errClosedPipe(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errClosedPipe.errClosedPipe = v;
        return v;
    }
var errInvalidWrite(get, set) : stdgo.Error;
private function get_errInvalidWrite():stdgo.Error return stdgo._internal.io.Io_errInvalidWrite.errInvalidWrite;
private function set_errInvalidWrite(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errInvalidWrite.errInvalidWrite = v;
        return v;
    }
var errWhence(get, set) : stdgo.Error;
private function get_errWhence():stdgo.Error return stdgo._internal.io.Io_errWhence.errWhence;
private function set_errWhence(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errWhence.errWhence = v;
        return v;
    }
var errOffset(get, set) : stdgo.Error;
private function get_errOffset():stdgo.Error return stdgo._internal.io.Io_errOffset.errOffset;
private function set_errOffset(v:stdgo.Error):stdgo.Error {
        stdgo._internal.io.Io_errOffset.errOffset = v;
        return v;
    }
class Reader_static_extension {
    static public function read(t:stdgo._internal.io.Io_Reader.Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_Reader_static_extension.Reader_static_extension.read(t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Reader = stdgo._internal.io.Io_Reader.Reader;
class Writer_static_extension {
    static public function write(t:stdgo._internal.io.Io_Writer.Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_Writer_static_extension.Writer_static_extension.write(t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Writer = stdgo._internal.io.Io_Writer.Writer;
class Closer_static_extension {
    static public function close(t:stdgo._internal.io.Io_Closer.Closer):stdgo.Error {
        return stdgo._internal.io.Io_Closer_static_extension.Closer_static_extension.close(t);
    }
}
typedef Closer = stdgo._internal.io.Io_Closer.Closer;
class Seeker_static_extension {
    static public function seek(t:stdgo._internal.io.Io_Seeker.Seeker, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_Seeker_static_extension.Seeker_static_extension.seek(t, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef Seeker = stdgo._internal.io.Io_Seeker.Seeker;
class ReadWriter_static_extension {

}
typedef ReadWriter = stdgo._internal.io.Io_ReadWriter.ReadWriter;
class ReadCloser_static_extension {

}
typedef ReadCloser = stdgo._internal.io.Io_ReadCloser.ReadCloser;
class WriteCloser_static_extension {

}
typedef WriteCloser = stdgo._internal.io.Io_WriteCloser.WriteCloser;
class ReadWriteCloser_static_extension {

}
typedef ReadWriteCloser = stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
class ReadSeeker_static_extension {

}
typedef ReadSeeker = stdgo._internal.io.Io_ReadSeeker.ReadSeeker;
class ReadSeekCloser_static_extension {

}
typedef ReadSeekCloser = stdgo._internal.io.Io_ReadSeekCloser.ReadSeekCloser;
class WriteSeeker_static_extension {

}
typedef WriteSeeker = stdgo._internal.io.Io_WriteSeeker.WriteSeeker;
class ReadWriteSeeker_static_extension {

}
typedef ReadWriteSeeker = stdgo._internal.io.Io_ReadWriteSeeker.ReadWriteSeeker;
class ReaderFrom_static_extension {
    static public function readFrom(t:stdgo._internal.io.Io_ReaderFrom.ReaderFrom, _r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_ReaderFrom_static_extension.ReaderFrom_static_extension.readFrom(t, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ReaderFrom = stdgo._internal.io.Io_ReaderFrom.ReaderFrom;
class WriterTo_static_extension {
    static public function writeTo(t:stdgo._internal.io.Io_WriterTo.WriterTo, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_WriterTo_static_extension.WriterTo_static_extension.writeTo(t, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef WriterTo = stdgo._internal.io.Io_WriterTo.WriterTo;
class ReaderAt_static_extension {
    static public function readAt(t:stdgo._internal.io.Io_ReaderAt.ReaderAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_ReaderAt_static_extension.ReaderAt_static_extension.readAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ReaderAt = stdgo._internal.io.Io_ReaderAt.ReaderAt;
class WriterAt_static_extension {
    static public function writeAt(t:stdgo._internal.io.Io_WriterAt.WriterAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_WriterAt_static_extension.WriterAt_static_extension.writeAt(t, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef WriterAt = stdgo._internal.io.Io_WriterAt.WriterAt;
class ByteReader_static_extension {
    static public function readByte(t:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_ByteReader_static_extension.ByteReader_static_extension.readByte(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ByteReader = stdgo._internal.io.Io_ByteReader.ByteReader;
class ByteScanner_static_extension {
    static public function unreadByte(t:stdgo._internal.io.Io_ByteScanner.ByteScanner):stdgo.Error {
        return stdgo._internal.io.Io_ByteScanner_static_extension.ByteScanner_static_extension.unreadByte(t);
    }
}
typedef ByteScanner = stdgo._internal.io.Io_ByteScanner.ByteScanner;
class ByteWriter_static_extension {
    static public function writeByte(t:stdgo._internal.io.Io_ByteWriter.ByteWriter, _c:std.UInt):stdgo.Error {
        return stdgo._internal.io.Io_ByteWriter_static_extension.ByteWriter_static_extension.writeByte(t, _c);
    }
}
typedef ByteWriter = stdgo._internal.io.Io_ByteWriter.ByteWriter;
class RuneReader_static_extension {
    static public function readRune(t:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_RuneReader_static_extension.RuneReader_static_extension.readRune(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef RuneReader = stdgo._internal.io.Io_RuneReader.RuneReader;
class RuneScanner_static_extension {
    static public function unreadRune(t:stdgo._internal.io.Io_RuneScanner.RuneScanner):stdgo.Error {
        return stdgo._internal.io.Io_RuneScanner_static_extension.RuneScanner_static_extension.unreadRune(t);
    }
}
typedef RuneScanner = stdgo._internal.io.Io_RuneScanner.RuneScanner;
class StringWriter_static_extension {
    static public function writeString(t:stdgo._internal.io.Io_StringWriter.StringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_StringWriter_static_extension.StringWriter_static_extension.writeString(t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StringWriter = stdgo._internal.io.Io_StringWriter.StringWriter;
@:structInit @:using(stdgo.io.Io.LimitedReader_static_extension) abstract LimitedReader(stdgo._internal.io.Io_LimitedReader.LimitedReader) from stdgo._internal.io.Io_LimitedReader.LimitedReader to stdgo._internal.io.Io_LimitedReader.LimitedReader {
    public var r(get, set) : Reader;
    function get_r():Reader return this.r;
    function set_r(v:Reader):Reader {
        this.r = v;
        return v;
    }
    public var n(get, set) : haxe.Int64;
    function get_n():haxe.Int64 return this.n;
    function set_n(v:haxe.Int64):haxe.Int64 {
        this.n = v;
        return v;
    }
    public function new(?r:Reader, ?n:haxe.Int64) this = new stdgo._internal.io.Io_LimitedReader.LimitedReader(r, n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.SectionReader_static_extension) abstract SectionReader(stdgo._internal.io.Io_SectionReader.SectionReader) from stdgo._internal.io.Io_SectionReader.SectionReader to stdgo._internal.io.Io_SectionReader.SectionReader {
    public var _r(get, set) : ReaderAt;
    function get__r():ReaderAt return this._r;
    function set__r(v:ReaderAt):ReaderAt {
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
    public function new(?_r:ReaderAt, ?_base:haxe.Int64, ?_off:haxe.Int64, ?_limit:haxe.Int64) this = new stdgo._internal.io.Io_SectionReader.SectionReader(_r, _base, _off, _limit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.OffsetWriter_static_extension) abstract OffsetWriter(stdgo._internal.io.Io_OffsetWriter.OffsetWriter) from stdgo._internal.io.Io_OffsetWriter.OffsetWriter to stdgo._internal.io.Io_OffsetWriter.OffsetWriter {
    public var _w(get, set) : WriterAt;
    function get__w():WriterAt return this._w;
    function set__w(v:WriterAt):WriterAt {
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
    public function new(?_w:WriterAt, ?_base:haxe.Int64, ?_off:haxe.Int64) this = new stdgo._internal.io.Io_OffsetWriter.OffsetWriter(_w, _base, _off);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_teeReader_static_extension) abstract T_teeReader(stdgo._internal.io.Io_T_teeReader.T_teeReader) from stdgo._internal.io.Io_T_teeReader.T_teeReader to stdgo._internal.io.Io_T_teeReader.T_teeReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _w(get, set) : Writer;
    function get__w():Writer return this._w;
    function set__w(v:Writer):Writer {
        this._w = v;
        return v;
    }
    public function new(?_r:Reader, ?_w:Writer) this = new stdgo._internal.io.Io_T_teeReader.T_teeReader(_r, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_discard_static_extension) abstract T_discard(stdgo._internal.io.Io_T_discard.T_discard) from stdgo._internal.io.Io_T_discard.T_discard to stdgo._internal.io.Io_T_discard.T_discard {
    public function new() this = new stdgo._internal.io.Io_T_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_nopCloser_static_extension) abstract T_nopCloser(stdgo._internal.io.Io_T_nopCloser.T_nopCloser) from stdgo._internal.io.Io_T_nopCloser.T_nopCloser to stdgo._internal.io.Io_T_nopCloser.T_nopCloser {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_T_nopCloser.T_nopCloser(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_nopCloserWriterTo_static_extension) abstract T_nopCloserWriterTo(stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo) from stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo to stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_eofReader_static_extension) abstract T_eofReader(stdgo._internal.io.Io_T_eofReader.T_eofReader) from stdgo._internal.io.Io_T_eofReader.T_eofReader to stdgo._internal.io.Io_T_eofReader.T_eofReader {
    public function new() this = new stdgo._internal.io.Io_T_eofReader.T_eofReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_multiReader_static_extension) abstract T_multiReader(stdgo._internal.io.Io_T_multiReader.T_multiReader) from stdgo._internal.io.Io_T_multiReader.T_multiReader to stdgo._internal.io.Io_T_multiReader.T_multiReader {
    public var _readers(get, set) : Array<Reader>;
    function get__readers():Array<Reader> return [for (i in this._readers) i];
    function set__readers(v:Array<Reader>):Array<Reader> {
        this._readers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        return v;
    }
    public function new(?_readers:Array<Reader>) this = new stdgo._internal.io.Io_T_multiReader.T_multiReader(([for (i in _readers) i] : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_multiWriter_static_extension) abstract T_multiWriter(stdgo._internal.io.Io_T_multiWriter.T_multiWriter) from stdgo._internal.io.Io_T_multiWriter.T_multiWriter to stdgo._internal.io.Io_T_multiWriter.T_multiWriter {
    public var _writers(get, set) : Array<Writer>;
    function get__writers():Array<Writer> return [for (i in this._writers) i];
    function set__writers(v:Array<Writer>):Array<Writer> {
        this._writers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        return v;
    }
    public function new(?_writers:Array<Writer>) this = new stdgo._internal.io.Io_T_multiWriter.T_multiWriter(([for (i in _writers) i] : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_onceError_static_extension) abstract T_onceError(stdgo._internal.io.Io_T_onceError.T_onceError) from stdgo._internal.io.Io_T_onceError.T_onceError to stdgo._internal.io.Io_T_onceError.T_onceError {
    public var mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get_mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this.mutex;
    function set_mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this.mutex = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error) this = new stdgo._internal.io.Io_T_onceError.T_onceError(mutex, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.T_pipe_static_extension) abstract T_pipe(stdgo._internal.io.Io_T_pipe.T_pipe) from stdgo._internal.io.Io_T_pipe.T_pipe to stdgo._internal.io.Io_T_pipe.T_pipe {
    public var _wrMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__wrMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._wrMu;
    function set__wrMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
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
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>;
    function get__done():stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard> return this._done;
    function set__done(v:stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>):stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard> {
        this._done = v;
        return v;
    }
    public var _rerr(get, set) : T_onceError;
    function get__rerr():T_onceError return this._rerr;
    function set__rerr(v:T_onceError):T_onceError {
        this._rerr = v;
        return v;
    }
    public var _werr(get, set) : T_onceError;
    function get__werr():T_onceError return this._werr;
    function set__werr(v:T_onceError):T_onceError {
        this._werr = v;
        return v;
    }
    public function new(?_wrMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_done:stdgo.Chan<stdgo._internal.io.Io_T_discard.T_discard>, ?_rerr:T_onceError, ?_werr:T_onceError) this = new stdgo._internal.io.Io_T_pipe.T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.PipeReader_static_extension) abstract PipeReader(stdgo._internal.io.Io_PipeReader.PipeReader) from stdgo._internal.io.Io_PipeReader.PipeReader to stdgo._internal.io.Io_PipeReader.PipeReader {
    public var _p(get, set) : T_pipe;
    function get__p():T_pipe return this._p;
    function set__p(v:T_pipe):T_pipe {
        this._p = v;
        return v;
    }
    public function new(?_p:T_pipe) this = new stdgo._internal.io.Io_PipeReader.PipeReader(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.io.Io.PipeWriter_static_extension) abstract PipeWriter(stdgo._internal.io.Io_PipeWriter.PipeWriter) from stdgo._internal.io.Io_PipeWriter.PipeWriter to stdgo._internal.io.Io_PipeWriter.PipeWriter {
    public var _p(get, set) : T_pipe;
    function get__p():T_pipe return this._p;
    function set__p(v:T_pipe):T_pipe {
        this._p = v;
        return v;
    }
    public function new(?_p:T_pipe) this = new stdgo._internal.io.Io_PipeWriter.PipeWriter(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.io.Io_T__struct_0.T__struct_0;
class LimitedReader_static_extension {
    static public function read(_l:LimitedReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_LimitedReader_static_extension.LimitedReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class SectionReader_static_extension {
    static public function size(_s:SectionReader):haxe.Int64 {
        return stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.size(_s);
    }
    static public function readAt(_s:SectionReader, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.readAt(_s, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_s:SectionReader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.seek(_s, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_s:SectionReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_SectionReader_static_extension.SectionReader_static_extension.read(_s, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class OffsetWriter_static_extension {
    static public function seek(_o:OffsetWriter, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.seek(_o, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeAt(_o:OffsetWriter, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.writeAt(_o, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_o:OffsetWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_OffsetWriter_static_extension.OffsetWriter_static_extension.write(_o, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_teeReader_static_extension {
    static public function read(_t:T_teeReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_teeReader_static_extension.T_teeReader_static_extension.read(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_discard_static_extension {
    static public function readFrom(_:T_discard, _r:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.readFrom(_, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_:T_discard, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.writeString(_, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_:T_discard, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_discard_static_extension.T_discard_static_extension.write(_, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_nopCloser_static_extension {
    static public function close(_:T_nopCloser):stdgo.Error {
        return stdgo._internal.io.Io_T_nopCloser_static_extension.T_nopCloser_static_extension.close(_);
    }
    public static function read(__self__:stdgo._internal.io.Io_T_nopCloser.T_nopCloser, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_nopCloser_static_extension.T_nopCloser_static_extension.read(__self__, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_nopCloserWriterTo_static_extension {
    static public function writeTo(_c:T_nopCloserWriterTo, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.writeTo(_c, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_nopCloserWriterTo):stdgo.Error {
        return stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.close(_);
    }
    public static function read(__self__:stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.read(__self__, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_eofReader_static_extension {
    static public function read(_:T_eofReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_eofReader_static_extension.T_eofReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_multiReader_static_extension {
    static public function _writeToWithBuffer(_mr:T_multiReader, _w:Writer, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension._writeToWithBuffer(_mr, _w, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_mr:T_multiReader, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension.writeTo(_mr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_mr:T_multiReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension.read(_mr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_multiWriter_static_extension {
    static public function writeString(_t:T_multiWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_multiWriter_static_extension.T_multiWriter_static_extension.writeString(_t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_t:T_multiWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_multiWriter_static_extension.T_multiWriter_static_extension.write(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_onceError_static_extension {
    static public function load(_a:T_onceError):stdgo.Error {
        return stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension.load(_a);
    }
    static public function store(_a:T_onceError, _err:stdgo.Error):Void {
        stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension.store(_a, _err);
    }
    public static function _unlockSlow(__self__:stdgo._internal.io.Io_T_onceError.T_onceError, _new:StdTypes.Int) {
        stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension._unlockSlow(__self__, _new);
    }
    public static function _lockSlow(__self__:stdgo._internal.io.Io_T_onceError.T_onceError) {
        stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.io.Io_T_onceError.T_onceError) {
        stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.io.Io_T_onceError.T_onceError):Bool {
        return stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.io.Io_T_onceError.T_onceError) {
        stdgo._internal.io.Io_T_onceError_static_extension.T_onceError_static_extension.lock(__self__);
    }
}
class T_pipe_static_extension {
    static public function _writeCloseError(_p:T_pipe):stdgo.Error {
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._writeCloseError(_p);
    }
    static public function _readCloseError(_p:T_pipe):stdgo.Error {
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._readCloseError(_p);
    }
    static public function _closeWrite(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._closeWrite(_p, _err);
    }
    static public function _write(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _closeRead(_p:T_pipe, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._closeRead(_p, _err);
    }
    static public function _read(_p:T_pipe, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_pipe_static_extension.T_pipe_static_extension._read(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class PipeReader_static_extension {
    static public function closeWithError(_r:PipeReader, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.closeWithError(_r, _err);
    }
    static public function close(_r:PipeReader):stdgo.Error {
        return stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.close(_r);
    }
    static public function read(_r:PipeReader, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_PipeReader_static_extension.PipeReader_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class PipeWriter_static_extension {
    static public function closeWithError(_w:PipeWriter, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.closeWithError(_w, _err);
    }
    static public function close(_w:PipeWriter):stdgo.Error {
        return stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.close(_w);
    }
    static public function write(_w:PipeWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_PipeWriter_static_extension.PipeWriter_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
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
    static public function writeString(_w:Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
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
    static public function readAtLeast(_r:Reader, _buf:Array<std.UInt>, _min:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
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
    static public function readFull(_r:Reader, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
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
    static public function copyN(_dst:Writer, _src:Reader, _n:haxe.Int64):stdgo.Tuple<haxe.Int64, stdgo.Error> {
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
    static public function copy(_dst:Writer, _src:Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
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
    static public function copyBuffer(_dst:Writer, _src:Reader, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>);
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
    static public function limitReader(_r:Reader, _n:haxe.Int64):Reader {
        return stdgo._internal.io.Io_limitReader.limitReader(_r, _n);
    }
    /**
        NewSectionReader returns a SectionReader that reads from r
        starting at offset off and stops with EOF after n bytes.
    **/
    static public function newSectionReader(_r:ReaderAt, _off:haxe.Int64, _n:haxe.Int64):SectionReader {
        return stdgo._internal.io.Io_newSectionReader.newSectionReader(_r, _off, _n);
    }
    /**
        NewOffsetWriter returns an OffsetWriter that writes to w
        starting at offset off.
    **/
    static public function newOffsetWriter(_w:WriterAt, _off:haxe.Int64):OffsetWriter {
        return stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(_w, _off);
    }
    /**
        TeeReader returns a Reader that writes to w what it reads from r.
        All reads from r performed through it are matched with
        corresponding writes to w. There is no internal buffering -
        the write must complete before the read completes.
        Any error encountered while writing is reported as a read error.
    **/
    static public function teeReader(_r:Reader, _w:Writer):Reader {
        return stdgo._internal.io.Io_teeReader.teeReader(_r, _w);
    }
    /**
        NopCloser returns a ReadCloser with a no-op Close method wrapping
        the provided Reader r.
        If r implements WriterTo, the returned ReadCloser will implement WriterTo
        by forwarding calls to r.
    **/
    static public function nopCloser(_r:Reader):ReadCloser {
        return stdgo._internal.io.Io_nopCloser.nopCloser(_r);
    }
    /**
        ReadAll reads from r until an error or EOF and returns the data it read.
        A successful call returns err == nil, not err == EOF. Because ReadAll is
        defined to read from src until EOF, it does not treat an EOF from Read
        as an error to be reported.
    **/
    static public function readAll(_r:Reader):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
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
    static public function multiReader(_readers:haxe.Rest<Reader>):Reader {
        return stdgo._internal.io.Io_multiReader.multiReader(...[for (i in _readers) i]);
    }
    /**
        MultiWriter creates a writer that duplicates its writes to all the
        provided writers, similar to the Unix tee(1) command.
        
        Each write is written to each listed writer, one at a time.
        If a listed writer returns an error, that overall write operation
        stops and returns the error; it does not continue down the list.
    **/
    static public function multiWriter(_writers:haxe.Rest<Writer>):Writer {
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
    static public function pipe():stdgo.Tuple<PipeReader, PipeWriter> {
        return {
            final obj = stdgo._internal.io.Io_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
