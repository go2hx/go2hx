package stdgo._internal.io;
private var __go2hxdoc__package : Bool;
final seekStart : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final seekCurrent : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final seekEnd : stdgo.GoUInt64 = (2i64 : stdgo.GoUInt64);
var errShortWrite : stdgo.Error = stdgo._internal.errors.Errors.new_(("short write" : stdgo.GoString));
var _errInvalidWrite : stdgo.Error = stdgo._internal.errors.Errors.new_(("invalid write result" : stdgo.GoString));
var errShortBuffer : stdgo.Error = stdgo._internal.errors.Errors.new_(("short buffer" : stdgo.GoString));
var eof : stdgo.Error = stdgo._internal.errors.Errors.new_(("EOF" : stdgo.GoString));
var errUnexpectedEOF : stdgo.Error = stdgo._internal.errors.Errors.new_(("unexpected EOF" : stdgo.GoString));
var errNoProgress : stdgo.Error = stdgo._internal.errors.Errors.new_(("multiple Read calls return no data or error" : stdgo.GoString));
var _errWhence : stdgo.Error = stdgo._internal.errors.Errors.new_(("Seek: invalid whence" : stdgo.GoString));
var _errOffset : stdgo.Error = stdgo._internal.errors.Errors.new_(("Seek: invalid offset" : stdgo.GoString));
var discard : stdgo._internal.io.Io.Writer = stdgo.Go.asInterface((new stdgo._internal.io.Io.T_discard() : stdgo._internal.io.Io.T_discard));
var _blackHolePool : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((8192 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
    } } : stdgo._internal.sync.Sync.Pool);
var errClosedPipe : stdgo.Error = stdgo._internal.errors.Errors.new_(("io: read/write on closed pipe" : stdgo.GoString));
var errInvalidWrite : stdgo.Error = _errInvalidWrite;
var errWhence : stdgo.Error = _errWhence;
var errOffset : stdgo.Error = _errOffset;
var __3 : stdgo._internal.io.Io.ReaderFrom = stdgo.Go.asInterface((new stdgo._internal.io.Io.T_discard() : stdgo._internal.io.Io.T_discard));
var __4 : stdgo._internal.io.Io.WriterTo = stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.io.Io.T_multiReader>) : stdgo.Ref<T_multiReader>));
var __5 : stdgo._internal.io.Io.StringWriter = stdgo.Go.asInterface(((null : stdgo.Ref<stdgo._internal.io.Io.T_multiWriter>) : stdgo.Ref<T_multiWriter>));
@:keep class Reader_static_extension {
    static public function read(t:Reader, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_p);
}
typedef Reader = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:keep class Writer_static_extension {
    static public function write(t:Writer, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_p);
}
typedef Writer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:keep class Closer_static_extension {
    static public function close(t:Closer):stdgo.Error return t.close();
}
typedef Closer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function close():stdgo.Error;
};
@:keep class Seeker_static_extension {
    static public function seek(t:Seeker, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.seek(_offset, _whence);
}
typedef Seeker = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
@:keep class ReadWriter_static_extension {

}
typedef ReadWriter = stdgo.StructType & {
    > Reader,
    > Writer,
};
@:keep class ReadCloser_static_extension {

}
typedef ReadCloser = stdgo.StructType & {
    > Reader,
    > Closer,
};
@:keep class WriteCloser_static_extension {

}
typedef WriteCloser = stdgo.StructType & {
    > Writer,
    > Closer,
};
@:keep class ReadWriteCloser_static_extension {

}
typedef ReadWriteCloser = stdgo.StructType & {
    > Reader,
    > Writer,
    > Closer,
};
@:keep class ReadSeeker_static_extension {

}
typedef ReadSeeker = stdgo.StructType & {
    > Reader,
    > Seeker,
};
@:keep class ReadSeekCloser_static_extension {

}
typedef ReadSeekCloser = stdgo.StructType & {
    > Reader,
    > Seeker,
    > Closer,
};
@:keep class WriteSeeker_static_extension {

}
typedef WriteSeeker = stdgo.StructType & {
    > Writer,
    > Seeker,
};
@:keep class ReadWriteSeeker_static_extension {

}
typedef ReadWriteSeeker = stdgo.StructType & {
    > Reader,
    > Writer,
    > Seeker,
};
@:keep class ReaderFrom_static_extension {
    static public function readFrom(t:ReaderFrom, _r:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.readFrom(_r);
}
typedef ReaderFrom = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function readFrom(_r:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
@:keep class WriterTo_static_extension {
    static public function writeTo(t:WriterTo, _w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return t.writeTo(_w);
}
typedef WriterTo = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
@:keep class ReaderAt_static_extension {
    static public function readAt(t:ReaderAt, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.readAt(_p, _off);
}
typedef ReaderAt = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function readAt(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:keep class WriterAt_static_extension {
    static public function writeAt(t:WriterAt, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeAt(_p, _off);
}
typedef WriterAt = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeAt(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:keep class ByteReader_static_extension {
    static public function readByte(t:ByteReader):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return t.readByte();
}
typedef ByteReader = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; };
};
@:keep class ByteScanner_static_extension {
    static public function unreadByte(t:ByteScanner):stdgo.Error return t.unreadByte();
}
typedef ByteScanner = stdgo.StructType & {
    > ByteReader,
    /**
        
        
        
    **/
    public dynamic function unreadByte():stdgo.Error;
};
@:keep class ByteWriter_static_extension {
    static public function writeByte(t:ByteWriter, _c:stdgo.GoByte):stdgo.Error return t.writeByte(_c);
}
typedef ByteWriter = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeByte(_c:stdgo.GoByte):stdgo.Error;
};
@:keep class RuneReader_static_extension {
    static public function readRune(t:RuneReader):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return t.readRune();
}
typedef RuneReader = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
};
@:keep class RuneScanner_static_extension {
    static public function unreadRune(t:RuneScanner):stdgo.Error return t.unreadRune();
}
typedef RuneScanner = stdgo.StructType & {
    > RuneReader,
    /**
        
        
        
    **/
    public dynamic function unreadRune():stdgo.Error;
};
@:keep class StringWriter_static_extension {
    static public function writeString(t:StringWriter, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeString(_s);
}
typedef StringWriter = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:structInit @:using(stdgo._internal.io.Io.LimitedReader_static_extension) class LimitedReader {
    public var r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var n : stdgo.GoInt64 = 0;
    public function new(?r:stdgo._internal.io.Io.Reader, ?n:stdgo.GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LimitedReader(r, n);
    }
}
@:structInit @:using(stdgo._internal.io.Io.SectionReader_static_extension) class SectionReader {
    public var _r : stdgo._internal.io.Io.ReaderAt = (null : stdgo._internal.io.Io.ReaderAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public var _limit : stdgo.GoInt64 = 0;
    public function new(?_r:stdgo._internal.io.Io.ReaderAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64, ?_limit:stdgo.GoInt64) {
        if (_r != null) this._r = _r;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionReader(_r, _base, _off, _limit);
    }
}
@:structInit @:using(stdgo._internal.io.Io.OffsetWriter_static_extension) class OffsetWriter {
    public var _w : stdgo._internal.io.Io.WriterAt = (null : stdgo._internal.io.Io.WriterAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io.WriterAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OffsetWriter(_w, _base, _off);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_teeReader_static_extension) class T_teeReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_w:stdgo._internal.io.Io.Writer) {
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_teeReader(_r, _w);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?reader:stdgo._internal.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.read(_p_);
    public function __copy__() {
        return new T_nopCloser(reader);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_nopCloserWriterTo_static_extension) class T_nopCloserWriterTo {
    @:embedded
    public var reader : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public function new(?reader:stdgo._internal.io.Io.Reader) {
        if (reader != null) this.reader = reader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function read(_p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return reader.read(_p_);
    public function __copy__() {
        return new T_nopCloserWriterTo(reader);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_eofReader_static_extension) class T_eofReader {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader();
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_multiReader_static_extension) class T_multiReader {
    public var _readers : stdgo.Slice<stdgo._internal.io.Io.Reader> = (null : stdgo.Slice<stdgo._internal.io.Io.Reader>);
    public function new(?_readers:stdgo.Slice<stdgo._internal.io.Io.Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_multiWriter_static_extension) class T_multiWriter {
    public var _writers : stdgo.Slice<stdgo._internal.io.Io.Writer> = (null : stdgo.Slice<stdgo._internal.io.Io.Writer>);
    public function new(?_writers:stdgo.Slice<stdgo._internal.io.Io.Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_onceError_static_extension) class T_onceError {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?mutex:stdgo._internal.sync.Sync.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() mutex.lock();
    @:embedded
    public function tryLock():Bool return mutex.tryLock();
    @:embedded
    public function unlock() mutex.unlock();
    @:embedded
    public function _lockSlow() mutex._lockSlow();
    @:embedded
    public function _unlockSlow(_new:stdgo.GoInt32) mutex._unlockSlow(_new);
    public function __copy__() {
        return new T_onceError(mutex, _err);
    }
}
@:structInit @:private @:using(stdgo._internal.io.Io.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _wrCh : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
    public var _rdCh : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var _once : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
    public var _done : stdgo.Chan<T_discard> = (null : stdgo.Chan<T_discard>);
    public var _rerr : stdgo._internal.io.Io.T_onceError = ({} : stdgo._internal.io.Io.T_onceError);
    public var _werr : stdgo._internal.io.Io.T_onceError = ({} : stdgo._internal.io.Io.T_onceError);
    public function new(?_wrMu:stdgo._internal.sync.Sync.Mutex, ?_wrCh:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdCh:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync.Once, ?_done:stdgo.Chan<T_discard>, ?_rerr:stdgo._internal.io.Io.T_onceError, ?_werr:stdgo._internal.io.Io.T_onceError) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_wrCh != null) this._wrCh = _wrCh;
        if (_rdCh != null) this._rdCh = _rdCh;
        if (_once != null) this._once = _once;
        if (_done != null) this._done = _done;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    }
}
@:structInit @:using(stdgo._internal.io.Io.PipeReader_static_extension) class PipeReader {
    public var _p : stdgo.Ref<stdgo._internal.io.Io.T_pipe> = (null : stdgo.Ref<stdgo._internal.io.Io.T_pipe>);
    public function new(?_p:stdgo.Ref<stdgo._internal.io.Io.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PipeReader(_p);
    }
}
@:structInit @:using(stdgo._internal.io.Io.PipeWriter_static_extension) class PipeWriter {
    public var _p : stdgo.Ref<stdgo._internal.io.Io.T_pipe> = (null : stdgo.Ref<stdgo._internal.io.Io.T_pipe>);
    public function new(?_p:stdgo.Ref<stdgo._internal.io.Io.T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PipeWriter(_p);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.io.Io.T__struct_0_static_extension) typedef T__struct_0 = {};
function writeString(_w:Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : StringWriter)) : StringWriter), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _sw.writeString(_s?.__copy__());
            };
        };
        return _w.write((_s : stdgo.Slice<stdgo.GoByte>));
    }
function readAtLeast(_r:Reader, _buf:stdgo.Slice<stdgo.GoByte>, _min:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_buf.length) < _min : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : errShortBuffer };
        };
        while (((_n < _min : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        if ((_n >= _min : Bool)) {
            _err = (null : stdgo.Error);
        } else if (((_n > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(eof)) : Bool)) {
            _err = errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
function readFull(_r:Reader, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return readAtLeast(_r, _buf, (_buf.length));
    }
function copyN(_dst:Writer, _src:Reader, _n:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = copy(_dst, limitReader(_src, _n));
            _written = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_written == (_n)) {
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        if (((_written < _n : Bool) && (_err == null) : Bool)) {
            _err = eof;
        };
        return { _0 : _written, _1 : _err };
    }
function copy(_dst:Writer, _src:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return _copyBuffer(_dst, _src, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
function copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        if (((_buf != null) && (_buf.length == (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("empty buffer in CopyBuffer" : stdgo.GoString));
        };
        return _copyBuffer(_dst, _src, _buf);
    }
function _copyBuffer(_dst:Writer, _src:Reader, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : WriterTo)) : WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
            }, _wt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _wt.writeTo(_dst);
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : ReaderFrom)) : ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.ReaderFrom), _1 : false };
            }, _rt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _rt.readFrom(_src);
            };
        };
        if (_buf == null) {
            var _size = (32768 : stdgo.GoInt);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<LimitedReader>)) : stdgo.Ref<LimitedReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io.LimitedReader>), _1 : false };
                }, _l = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_size : stdgo.GoInt64) > _l.n : Bool) : Bool)) {
                    if ((_l.n < (1i64 : stdgo.GoInt64) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else {
                        _size = (_l.n : stdgo.GoInt);
                    };
                };
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                if (((_nw < (0 : stdgo.GoInt) : Bool) || (_nr < _nw : Bool) : Bool)) {
                    _nw = (0 : stdgo.GoInt);
                    if (_ew == null) {
                        _ew = _errInvalidWrite;
                    };
                };
                _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                if (_ew != null) {
                    _err = _ew;
                    break;
                };
                if (_nr != (_nw)) {
                    _err = errShortWrite;
                    break;
                };
            };
            if (_er != null) {
                if (stdgo.Go.toInterface(_er) != (stdgo.Go.toInterface(eof))) {
                    _err = _er;
                };
                break;
            };
        };
        return { _0 : _written, _1 : _err };
    }
function limitReader(_r:Reader, _n:stdgo.GoInt64):Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io.LimitedReader(_r, _n) : stdgo._internal.io.Io.LimitedReader)) : stdgo.Ref<stdgo._internal.io.Io.LimitedReader>));
    }
function newSectionReader(_r:ReaderAt, _off:stdgo.GoInt64, _n:stdgo.GoInt64):stdgo.Ref<SectionReader> {
        var _remaining:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {};
        if ((_off <= ((9223372036854775807i64 : stdgo.GoInt64) - _n : stdgo.GoInt64) : Bool)) {
            _remaining = (_n + _off : stdgo.GoInt64);
        } else {
            _remaining = (9223372036854775807i64 : stdgo.GoInt64);
        };
        return (stdgo.Go.setRef((new stdgo._internal.io.Io.SectionReader(_r, _off, _off, _remaining) : stdgo._internal.io.Io.SectionReader)) : stdgo.Ref<stdgo._internal.io.Io.SectionReader>);
    }
function newOffsetWriter(_w:WriterAt, _off:stdgo.GoInt64):stdgo.Ref<OffsetWriter> {
        return (stdgo.Go.setRef((new stdgo._internal.io.Io.OffsetWriter(_w, _off, _off) : stdgo._internal.io.Io.OffsetWriter)) : stdgo.Ref<stdgo._internal.io.Io.OffsetWriter>);
    }
function teeReader(_r:Reader, _w:Writer):Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io.T_teeReader(_r, _w) : stdgo._internal.io.Io.T_teeReader)) : stdgo.Ref<stdgo._internal.io.Io.T_teeReader>));
    }
function nopCloser(_r:Reader):ReadCloser {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : WriterTo)) : WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io.WriterTo), _1 : false };
            }, __6 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo.Go.asInterface((new stdgo._internal.io.Io.T_nopCloserWriterTo(_r) : stdgo._internal.io.Io.T_nopCloserWriterTo));
            };
        };
        return stdgo.Go.asInterface((new stdgo._internal.io.Io.T_nopCloser(_r) : stdgo._internal.io.Io.T_nopCloser));
    }
function readAll(_r:Reader):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = _r.read((_b.__slice__((_b.length), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                    _err = (null : stdgo.Error);
                };
                return { _0 : _b, _1 : _err };
            };
            if ((_b.length) == (_b.capacity)) {
                _b = ((_b.__append__((0 : stdgo.GoUInt8))).__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
function multiReader(_readers:haxe.Rest<Reader>):Reader {
        var _readers = new stdgo.Slice<Reader>(_readers.length, 0, ..._readers);
        var _r = (new stdgo.Slice<stdgo._internal.io.Io.Reader>((_readers.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.Io.Reader>);
        stdgo.Go.copySlice(_r, _readers);
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io.T_multiReader(_r) : stdgo._internal.io.Io.T_multiReader)) : stdgo.Ref<stdgo._internal.io.Io.T_multiReader>));
    }
function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        var _writers = new stdgo.Slice<Writer>(_writers.length, 0, ..._writers);
        var _allWriters = (new stdgo.Slice<stdgo._internal.io.Io.Writer>((0 : stdgo.GoInt).toBasic(), (_writers.length)) : stdgo.Slice<stdgo._internal.io.Io.Writer>);
        for (__6 => _w in _writers) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<T_multiWriter>)) : stdgo.Ref<T_multiWriter>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io.T_multiWriter>), _1 : false };
                }, _mw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _allWriters = (_allWriters.__append__(...(_mw._writers : Array<stdgo._internal.io.Io.Writer>)));
                } else {
                    _allWriters = (_allWriters.__append__(_w));
                };
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io.T_multiWriter(_allWriters) : stdgo._internal.io.Io.T_multiWriter)) : stdgo.Ref<stdgo._internal.io.Io.T_multiWriter>));
    }
function pipe():{ var _0 : stdgo.Ref<PipeReader>; var _1 : stdgo.Ref<PipeWriter>; } {
        var _p = (stdgo.Go.setRef(({ _wrCh : (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), _rdCh : (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), _done : (new stdgo.Chan<T_discard>(0, () -> ({} : T_discard)) : stdgo.Chan<T_discard>) } : stdgo._internal.io.Io.T_pipe)) : stdgo.Ref<stdgo._internal.io.Io.T_pipe>);
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.io.Io.PipeReader(_p) : stdgo._internal.io.Io.PipeReader)) : stdgo.Ref<stdgo._internal.io.Io.PipeReader>), _1 : (stdgo.Go.setRef((new stdgo._internal.io.Io.PipeWriter(_p) : stdgo._internal.io.Io.PipeWriter)) : stdgo.Ref<stdgo._internal.io.Io.PipeWriter>) };
    }
class LimitedReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<LimitedReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.LimitedReader_asInterface) class LimitedReader_static_extension {
    @:keep
    static public function read( _l:stdgo.Ref<LimitedReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<LimitedReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_l.n <= (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : eof };
        };
        if (((_p.length : stdgo.GoInt64) > _l.n : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), _l.n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = _l.r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _l.n = (_l.n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
class SectionReader_asInterface {
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function readAt(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_p, _off);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SectionReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.SectionReader_asInterface) class SectionReader_static_extension {
    @:keep
    static public function size( _s:stdgo.Ref<SectionReader>):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<SectionReader> = _s;
        return (_s._limit - _s._base : stdgo.GoInt64);
    }
    @:keep
    static public function readAt( _s:stdgo.Ref<SectionReader>, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_off < (0i64 : stdgo.GoInt64) : Bool) || (_off >= (_s._limit - _s._base : stdgo.GoInt64) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : eof };
        };
        _off = (_off + (_s._base) : stdgo.GoInt64);
        {
            var _max = (_s._limit - _off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = _s._r.readAt(_p, _off);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    _err = eof;
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return _s._r.readAt(_p, _off);
    }
    @:keep
    static public function seek( _s:stdgo.Ref<SectionReader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<SectionReader> = _s;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + (_s._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + (_s._off) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + (_s._limit) : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _errWhence };
            };
        };
        if ((_offset < _s._base : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _errOffset };
        };
        _s._off = _offset;
        return { _0 : (_offset - _s._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _s:stdgo.Ref<SectionReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<SectionReader> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_s._off >= _s._limit : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : eof };
        };
        {
            var _max = (_s._limit - _s._off : stdgo.GoInt64);
            if (((_p.length : stdgo.GoInt64) > _max : Bool)) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _max) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        {
            var __tmp__ = _s._r.readAt(_p, _s._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._off = (_s._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
class OffsetWriter_asInterface {
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function writeAt(_p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeAt(_p, _off);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<OffsetWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.OffsetWriter_asInterface) class OffsetWriter_static_extension {
    @:keep
    static public function seek( _o:stdgo.Ref<OffsetWriter>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<OffsetWriter> = _o;
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _offset = (_offset + (_o._base) : stdgo.GoInt64);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + (_o._off) : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _errWhence };
            };
        };
        if ((_offset < _o._base : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _errOffset };
        };
        _o._off = _offset;
        return { _0 : (_offset - _o._base : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeAt( _o:stdgo.Ref<OffsetWriter>, _p:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _errOffset };
        };
        _off = (_off + (_o._base) : stdgo.GoInt64);
        return _o._w.writeAt(_p, _off);
    }
    @:keep
    static public function write( _o:stdgo.Ref<OffsetWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<OffsetWriter> = _o;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _o._w.writeAt(_p, _o._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _o._off = (_o._off + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}
class T_teeReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_teeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_teeReader_asInterface) class T_teeReader_static_extension {
    @:keep
    static public function read( _t:stdgo.Ref<T_teeReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<T_teeReader> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _t._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _t._w.write((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_discard_asInterface {
    @:keep
    public dynamic function readFrom(_r:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_discard>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    static public function readFrom( _:T_discard, _r:Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _bufp = (stdgo.Go.typeAssert((_blackHolePool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoByte>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoByte>>);
        var _readSize = (0 : stdgo.GoInt);
        while (true) {
            {
                var __tmp__ = _r.read((_bufp : stdgo.Slice<stdgo.GoUInt8>));
                _readSize = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_err != null) {
                _blackHolePool.put(stdgo.Go.toInterface(_bufp));
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    static public function writeString( _:T_discard, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _:T_discard, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_nopCloser_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function read(_p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p_);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nopCloser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    static public function close( _:T_nopCloser):stdgo.Error {
        @:recv var _:T_nopCloser = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function read( __self__:T_nopCloser, _p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p_);
}
class T_nopCloserWriterTo_asInterface {
    @:keep
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:embedded
    public dynamic function read(_p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p_);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nopCloserWriterTo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface) class T_nopCloserWriterTo_static_extension {
    @:keep
    static public function writeTo( _c:T_nopCloserWriterTo, _w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:T_nopCloserWriterTo = _c?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.reader) : WriterTo)) : WriterTo).writeTo(_w);
    }
    @:keep
    static public function close( _:T_nopCloserWriterTo):stdgo.Error {
        @:recv var _:T_nopCloserWriterTo = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:embedded
    public static function read( __self__:T_nopCloserWriterTo, _p_:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_p_);
}
class T_eofReader_asInterface {
    @:keep
    public dynamic function read(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_eofReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_eofReader_asInterface) class T_eofReader_static_extension {
    @:keep
    static public function read( _:T_eofReader, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:T_eofReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : eof };
    }
}
class T_multiReader_asInterface {
    @:keep
    public dynamic function _writeToWithBuffer(_w:Writer, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._writeToWithBuffer(_w, _buf);
    @:keep
    public dynamic function writeTo(_w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_multiReader_asInterface) class T_multiReader_static_extension {
    @:keep
    static public function _writeToWithBuffer( _mr:stdgo.Ref<T_multiReader>, _w:Writer, _buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        for (_i => _r in _mr._readers) {
            var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo.Ref<T_multiReader>)) : stdgo.Ref<T_multiReader>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io.T_multiReader>), _1 : false };
                }, _subMr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _subMr._writeToWithBuffer(_w, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = _copyBuffer(_w, _r, _buf);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            _sum = (_sum + (_n) : stdgo.GoInt64);
            if (_err != null) {
                _mr._readers = (_mr._readers.__slice__(_i) : stdgo.Slice<stdgo._internal.io.Io.Reader>);
                return { _0 : _sum, _1 : _err };
            };
            _mr._readers[(_i : stdgo.GoInt)] = (null : stdgo._internal.io.Io.Reader);
        };
        _mr._readers = (null : stdgo.Slice<stdgo._internal.io.Io.Reader>);
        return { _0 : _sum, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeTo( _mr:stdgo.Ref<T_multiReader>, _w:Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        return _mr._writeToWithBuffer(_w, (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function read( _mr:stdgo.Ref<T_multiReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<T_multiReader> = _mr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (((_mr._readers.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((_mr._readers.length) == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_mr._readers[(0 : stdgo.GoInt)]) : stdgo.Ref<T_multiReader>)) : stdgo.Ref<T_multiReader>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io.T_multiReader>), _1 : false };
                    }, _r = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _mr._readers = _r._readers;
                        continue;
                    };
                };
            };
            {
                var __tmp__ = _mr._readers[(0 : stdgo.GoInt)].read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(eof))) {
                _mr._readers[(0 : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.io.Io.T_eofReader() : stdgo._internal.io.Io.T_eofReader));
                _mr._readers = (_mr._readers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io.Reader>);
            };
            if (((_n > (0 : stdgo.GoInt) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(eof)) : Bool)) {
                if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(eof)) && ((_mr._readers.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _err = (null : stdgo.Error);
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : eof };
    }
}
class T_multiWriter_asInterface {
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_multiWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_multiWriter_asInterface) class T_multiWriter_static_extension {
    @:keep
    static public function writeString( _t:stdgo.Ref<T_multiWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__6 => _w in _t._writers) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : StringWriter)) : StringWriter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.Io.StringWriter), _1 : false };
                }, _sw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _sw.writeString(_s?.__copy__());
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (_p == null) {
                        _p = (_s : stdgo.Slice<stdgo.GoByte>);
                    };
                    {
                        var __tmp__ = _w.write(_p);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_s.length))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _t:stdgo.Ref<T_multiWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (__6 => _w in _t._writers) {
            {
                var __tmp__ = _w.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_p.length))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_onceError_asInterface {
    @:keep
    public dynamic function load():stdgo.Error return __self__.value.load();
    @:keep
    public dynamic function store(_err:stdgo.Error):Void __self__.value.store(_err);
    @:embedded
    public dynamic function _unlockSlow(_new:stdgo.GoInt32):Void __self__.value._unlockSlow(_new);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_onceError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_onceError_asInterface) class T_onceError_static_extension {
    @:keep
    static public function load( _a:stdgo.Ref<T_onceError>):stdgo.Error {
        @:recv var _a:stdgo.Ref<T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            __deferstack__.unshift(() -> _a.unlock());
            {
                final __ret__:stdgo.Error = _a._err;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function store( _a:stdgo.Ref<T_onceError>, _err:stdgo.Error):Void {
        @:recv var _a:stdgo.Ref<T_onceError> = _a;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            __deferstack__.unshift(() -> _a.unlock());
            if (_a._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _a._err = _err;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:embedded
    public static function _unlockSlow( __self__:T_onceError, _new:stdgo.GoInt32) __self__._unlockSlow(_new);
    @:embedded
    public static function _lockSlow( __self__:T_onceError) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_onceError) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_onceError):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_onceError) __self__.lock();
}
class T_pipe_asInterface {
    @:keep
    public dynamic function _writeCloseError():stdgo.Error return __self__.value._writeCloseError();
    @:keep
    public dynamic function _readCloseError():stdgo.Error return __self__.value._readCloseError();
    @:keep
    public dynamic function _closeWrite(_err:stdgo.Error):stdgo.Error return __self__.value._closeWrite(_err);
    @:keep
    public dynamic function _write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._write(_b);
    @:keep
    public dynamic function _closeRead(_err:stdgo.Error):stdgo.Error return __self__.value._closeRead(_err);
    @:keep
    public dynamic function _read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_pipe>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.T_pipe_asInterface) class T_pipe_static_extension {
    @:keep
    static public function _writeCloseError( _p:stdgo.Ref<T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        var _werr = (_p._werr.load() : stdgo.Error);
        {
            var _rerr = (_p._rerr.load() : stdgo.Error);
            if (((_werr == null) && (_rerr != null) : Bool)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    static public function _readCloseError( _p:stdgo.Ref<T_pipe>):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        var _rerr = (_p._rerr.load() : stdgo.Error);
        {
            var _werr = (_p._werr.load() : stdgo.Error);
            if (((_rerr == null) && (_werr != null) : Bool)) {
                return _werr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    static public function _closeWrite( _p:stdgo.Ref<T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        if (_err == null) {
            _err = eof;
        };
        _p._werr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _write( _p:stdgo.Ref<T_pipe>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var __select__ = true;
                while (__select__) {
                    if (_p._done != null && _p._done.__isGet__()) {
                        __select__ = false;
                        {
                            _p._done.__get__();
                            {
                                return { _0 : (0 : stdgo.GoInt), _1 : _p._writeCloseError() };
                            };
                        };
                    } else {
                        __select__ = false;
                        {
                            _p._wrMu.lock();
                            __deferstack__.unshift(() -> _p._wrMu.unlock());
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            {
                var _once = (true : Bool);
                stdgo.Go.cfor((_once || ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool), _once = false, {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_p._wrCh != null && _p._wrCh.__isSend__()) {
                                __select__ = false;
                                {
                                    _p._wrCh.__send__(_b);
                                    {
                                        var _nw = (_p._rdCh.__get__() : stdgo.GoInt);
                                        _b = (_b.__slice__(_nw) : stdgo.Slice<stdgo.GoUInt8>);
                                        _n = (_n + (_nw) : stdgo.GoInt);
                                    };
                                };
                            } else if (_p._done != null && _p._done.__isGet__()) {
                                __select__ = false;
                                {
                                    _p._done.__get__();
                                    {
                                        {
                                            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _p._writeCloseError() };
                                            for (defer in __deferstack__) {
                                                defer();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                });
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _closeRead( _p:stdgo.Ref<T_pipe>, _err:stdgo.Error):stdgo.Error {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        if (_err == null) {
            _err = errClosedPipe;
        };
        _p._rerr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return (null : stdgo.Error);
    }
    @:keep
    static public function _read( _p:stdgo.Ref<T_pipe>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<T_pipe> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __select__ = true;
            while (__select__) {
                if (_p._done != null && _p._done.__isGet__()) {
                    __select__ = false;
                    {
                        _p._done.__get__();
                        {
                            return { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (_p._wrCh != null && _p._wrCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _bw = _p._wrCh.__get__();
                            {
                                var _nr = (stdgo.Go.copySlice(_b, _bw) : stdgo.GoInt);
                                _p._rdCh.__send__(_nr);
                                return { _0 : _nr, _1 : (null : stdgo.Error) };
                            };
                        };
                    } else if (_p._done != null && _p._done.__isGet__()) {
                        __select__ = false;
                        {
                            _p._done.__get__();
                            {
                                return { _0 : (0 : stdgo.GoInt), _1 : _p._readCloseError() };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : _n, _1 : _err };
        };
    }
}
class PipeReader_asInterface {
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):stdgo.Error return __self__.value.closeWithError(_err);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PipeReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.PipeReader_asInterface) class PipeReader_static_extension {
    @:keep
    static public function closeWithError( _r:stdgo.Ref<PipeReader>, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<PipeReader> = _r;
        return _r._p._closeRead(_err);
    }
    @:keep
    static public function close( _r:stdgo.Ref<PipeReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<PipeReader> = _r;
        return _r.closeWithError((null : stdgo.Error));
    }
    @:keep
    static public function read( _r:stdgo.Ref<PipeReader>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<PipeReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _r._p._read(_data);
    }
}
class PipeWriter_asInterface {
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):stdgo.Error return __self__.value.closeWithError(_err);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function write(_data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<PipeWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.io.Io.PipeWriter_asInterface) class PipeWriter_static_extension {
    @:keep
    static public function closeWithError( _w:stdgo.Ref<PipeWriter>, _err:stdgo.Error):stdgo.Error {
        @:recv var _w:stdgo.Ref<PipeWriter> = _w;
        return _w._p._closeWrite(_err);
    }
    @:keep
    static public function close( _w:stdgo.Ref<PipeWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<PipeWriter> = _w;
        return _w.closeWithError((null : stdgo.Error));
    }
    @:keep
    static public function write( _w:stdgo.Ref<PipeWriter>, _data:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<PipeWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _w._p._write(_data);
    }
}
