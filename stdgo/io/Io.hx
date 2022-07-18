package stdgo.io;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errShortWrite : stdgo.Error = stdgo.errors.Errors.new_(((((("short write" : GoString))) : GoString)));
var _errInvalidWrite : stdgo.Error = stdgo.errors.Errors.new_(((((("invalid write result" : GoString))) : GoString)));
var errShortBuffer : stdgo.Error = stdgo.errors.Errors.new_(((((("short buffer" : GoString))) : GoString)));
var eof : stdgo.Error = stdgo.errors.Errors.new_(((((("EOF" : GoString))) : GoString)));
var errUnexpectedEOF : stdgo.Error = stdgo.errors.Errors.new_(((((("unexpected EOF" : GoString))) : GoString)));
var errNoProgress : stdgo.Error = stdgo.errors.Errors.new_(((((("multiple Read calls return no data or error" : GoString))) : GoString)));
var _errWhence : stdgo.Error = stdgo.errors.Errors.new_(((((("Seek: invalid whence" : GoString))) : GoString)));
var _errOffset : stdgo.Error = stdgo.errors.Errors.new_(((((("Seek: invalid offset" : GoString))) : GoString)));
var discard : Writer = {
        final __self__ = new T_discard_wrapper(((new T_discard() : T_discard)));
        __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).readFrom(_r) #else null #end;
        __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).write(_p) #else null #end;
        __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).writeString(_s) #else null #end;
        __self__;
    };
var _blackHolePool : stdgo.sync.Sync.Pool = (({ new_ : function():AnyInterface {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((8192 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return Go.toInterface(_b);
    }, _noCopy : new stdgo.sync.Sync.T_noCopy(), _local : null, _localSize : 0, _victim : null, _victimSize : 0 } : stdgo.sync.Sync.Pool));
var errClosedPipe : stdgo.Error = stdgo.errors.Errors.new_(((((("io: read/write on closed pipe" : GoString))) : GoString)));
var _2 : ReaderFrom = {
        final __self__ = new T_discard_wrapper(((new T_discard() : T_discard)));
        __self__.readFrom = #if !macro function(_r:Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).readFrom(_r) #else null #end;
        __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).write(_p) #else null #end;
        __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_discard() : T_discard)).writeString(_s) #else null #end;
        __self__;
    };
var _3 : StringWriter = {
        final __self__ = new T_multiWriter_wrapper(((null : T_multiWriter)));
        __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((null : T_multiWriter)).write(_p) #else null #end;
        __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((null : T_multiWriter)).writeString(_s) #else null #end;
        __self__;
    };
typedef Reader = StructType & {
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; };
};
typedef Writer = StructType & {
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; };
};
typedef Closer = StructType & {
    public function close():Error;
};
typedef Seeker = StructType & {
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; };
};
typedef ReadWriter = StructType & {
    > Reader,
    > Writer,
};
typedef ReadCloser = StructType & {
    > Reader,
    > Closer,
};
typedef WriteCloser = StructType & {
    > Writer,
    > Closer,
};
typedef ReadWriteCloser = StructType & {
    > Reader,
    > Writer,
    > Closer,
};
typedef ReadSeeker = StructType & {
    > Reader,
    > Seeker,
};
typedef ReadSeekCloser = StructType & {
    > Reader,
    > Seeker,
    > Closer,
};
typedef WriteSeeker = StructType & {
    > Writer,
    > Seeker,
};
typedef ReadWriteSeeker = StructType & {
    > Reader,
    > Writer,
    > Seeker,
};
typedef ReaderFrom = StructType & {
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; };
};
typedef WriterTo = StructType & {
    public function writeTo(_w:Writer):{ var _0 : GoInt64; var _1 : Error; };
};
typedef ReaderAt = StructType & {
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; };
};
typedef WriterAt = StructType & {
    public function writeAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; };
};
typedef ByteReader = StructType & {
    public function readByte():{ var _0 : GoByte; var _1 : Error; };
};
typedef ByteScanner = StructType & {
    > ByteReader,
    public function unreadByte():Error;
};
typedef ByteWriter = StructType & {
    public function writeByte(_c:GoByte):Error;
};
typedef RuneReader = StructType & {
    public function readRune():{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; };
};
typedef RuneScanner = StructType & {
    > RuneReader,
    public function unreadRune():Error;
};
typedef StringWriter = StructType & {
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; };
};
@:structInit @:using(stdgo.io.Io.LimitedReader_static_extension) class LimitedReader {
    public var r : Reader = ((null : Reader));
    public var n : GoInt64 = 0;
    public function new(?r:Reader, ?n:GoInt64) {
        if (r != null) this.r = r;
        if (n != null) this.n = n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new LimitedReader(r, n);
    }
}
@:structInit @:using(stdgo.io.Io.SectionReader_static_extension) class SectionReader {
    public var _r : ReaderAt = ((null : ReaderAt));
    public var _base : GoInt64 = 0;
    public var _off : GoInt64 = 0;
    public var _limit : GoInt64 = 0;
    public function new(?_r:ReaderAt, ?_base:GoInt64, ?_off:GoInt64, ?_limit:GoInt64) {
        if (_r != null) this._r = _r;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SectionReader(_r, _base, _off, _limit);
    }
}
@:structInit @:using(stdgo.io.Io.T_teeReader_static_extension) class T_teeReader {
    public var _r : Reader = ((null : Reader));
    public var _w : Writer = ((null : Writer));
    public function new(?_r:Reader, ?_w:Writer) {
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_teeReader(_r, _w);
    }
}
@:structInit @:using(stdgo.io.Io.T_discard_static_extension) class T_discard {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
@:structInit @:using(stdgo.io.Io.T_nopCloser_static_extension) class T_nopCloser {
    @:embedded
    public var reader : Reader = ((null : Reader));
    public function new(?reader:Reader) {
        if (reader != null) this.reader = reader;
    }
    @:embedded
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nopCloser(reader);
    }
}
@:structInit @:using(stdgo.io.Io.T_eofReader_static_extension) class T_eofReader {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader();
    }
}
@:structInit @:using(stdgo.io.Io.T_multiReader_static_extension) class T_multiReader {
    public var _readers : Slice<Reader> = ((null : Slice<Reader>));
    public function new(?_readers:Slice<Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
@:structInit @:using(stdgo.io.Io.T_multiWriter_static_extension) class T_multiWriter {
    public var _writers : Slice<Writer> = ((null : Slice<Writer>));
    public function new(?_writers:Slice<Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
@:structInit @:using(stdgo.io.Io.T_onceError_static_extension) class T_onceError {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
    }
    @:embedded
    public function lock() mutex.lock();
    @:embedded
    public function tryLock():Bool return mutex.tryLock();
    @:embedded
    public function unlock() mutex.unlock();
    @:embedded
    public function _lockSlow() mutex._lockSlow();
    @:embedded
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_new);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onceError(mutex, _err);
    }
}
@:structInit @:using(stdgo.io.Io.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _wrCh : Chan<Slice<GoUInt8>> = ((null : Chan<Slice<GoUInt8>>));
    public var _rdCh : Chan<GoInt> = ((null : Chan<GoInt>));
    public var _once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _done : Chan<T_discard> = ((null : Chan<T_discard>));
    public var _rerr : T_onceError = new T_onceError();
    public var _werr : T_onceError = new T_onceError();
    public function new(?_wrMu:stdgo.sync.Sync.Mutex, ?_wrCh:Chan<Slice<GoUInt8>>, ?_rdCh:Chan<GoInt>, ?_once:stdgo.sync.Sync.Once, ?_done:Chan<T_discard>, ?_rerr:T_onceError, ?_werr:T_onceError) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_wrCh != null) this._wrCh = _wrCh;
        if (_rdCh != null) this._rdCh = _rdCh;
        if (_once != null) this._once = _once;
        if (_done != null) this._done = _done;
        if (_rerr != null) this._rerr = _rerr;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pipe(_wrMu, _wrCh, _rdCh, _once, _done, _rerr, _werr);
    }
}
@:structInit @:using(stdgo.io.Io.PipeReader_static_extension) class PipeReader {
    public var _p : Ref<T_pipe> = null;
    public function new(?_p:Ref<T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PipeReader(_p);
    }
}
@:structInit @:using(stdgo.io.Io.PipeWriter_static_extension) class PipeWriter {
    public var _p : Ref<T_pipe> = null;
    public function new(?_p:Ref<T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PipeWriter(_p);
    }
}
@:structInit @:local class T__struct_0 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
}
/**
    // WriteString writes the contents of the string s to w, which accepts a slice of bytes.
    // If w implements StringWriter, its WriteString method is invoked directly.
    // Otherwise, w.Write is called exactly once.
**/
function writeString(_w:Writer, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = try {
                { value : ((((_w.__underlying__().value : Dynamic)) : StringWriter)), ok : true };
            } catch(_) {
                { value : ((null : StringWriter)), ok : false };
            }, _sw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _sw.writeString(_s);
            };
        };
        return _w.write(((_s : Slice<GoByte>)));
    }
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
function readAtLeast(_r:Reader, _buf:Slice<GoByte>, _min:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_buf != null ? _buf.length : ((0 : GoInt))) < _min) {
            return { _0 : ((0 : GoInt)), _1 : errShortBuffer };
        };
        while ((_n < _min) && (_err == null)) {
            var _nn:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _r.read(((_buf.__slice__(_n) : Slice<GoUInt8>)));
                _nn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_nn);
        };
        if (_n >= _min) {
            _err = ((null : stdgo.Error));
        } else if ((_n > ((0 : GoInt))) && (_err == eof)) {
            _err = errUnexpectedEOF;
        };
        return { _0 : _n, _1 : _err };
    }
/**
    // ReadFull reads exactly len(buf) bytes from r into buf.
    // It returns the number of bytes copied and an error if fewer bytes were read.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadFull returns ErrUnexpectedEOF.
    // On return, n == len(buf) if and only if err == nil.
    // If r returns an error having read at least len(buf) bytes, the error is dropped.
**/
function readFull(_r:Reader, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return readAtLeast(_r, _buf, (_buf != null ? _buf.length : ((0 : GoInt))));
    }
/**
    // CopyN copies n bytes (or until an error) from src to dst.
    // It returns the number of bytes copied and the earliest
    // error encountered while copying.
    // On return, written == n if and only if err == nil.
    //
    // If dst implements the ReaderFrom interface,
    // the copy is implemented using it.
**/
function copyN(_dst:Writer, _src:Reader, _n:GoInt64):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = copy(_dst, limitReader(_src, _n));
            _written = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_written == _n) {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        if ((_written < _n) && (_err == null)) {
            _err = eof;
        };
        return { _0 : _written, _1 : _err };
    }
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
function copy(_dst:Writer, _src:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        return _copyBuffer(_dst, _src, ((null : Slice<GoUInt8>)));
    }
/**
    // CopyBuffer is identical to Copy except that it stages through the
    // provided buffer (if one is required) rather than allocating a
    // temporary one. If buf is nil, one is allocated; otherwise if it has
    // zero length, CopyBuffer panics.
    //
    // If either src implements WriterTo or dst implements ReaderFrom,
    // buf will not be used to perform the copy.
**/
function copyBuffer(_dst:Writer, _src:Reader, _buf:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        if ((_buf != null) && ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            throw Go.toInterface(((((("empty buffer in CopyBuffer" : GoString))) : GoString)));
        };
        return _copyBuffer(_dst, _src, _buf);
    }
/**
    // copyBuffer is the actual implementation of Copy and CopyBuffer.
    // if buf is nil, one is allocated.
**/
function _copyBuffer(_dst:Writer, _src:Reader, _buf:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = try {
                { value : ((((_src.__underlying__().value : Dynamic)) : WriterTo)), ok : true };
            } catch(_) {
                { value : ((null : WriterTo)), ok : false };
            }, _wt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _wt.writeTo(_dst);
            };
        };
        {
            var __tmp__ = try {
                { value : ((((_dst.__underlying__().value : Dynamic)) : ReaderFrom)), ok : true };
            } catch(_) {
                { value : ((null : ReaderFrom)), ok : false };
            }, _rt = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _rt.readFrom(_src);
            };
        };
        if (_buf == null) {
            var _size:GoInt = ((32768 : GoInt));
            {
                var __tmp__ = try {
                    { value : ((((_src.__underlying__().value : Dynamic)) : LimitedReader)), ok : true };
                } catch(_) {
                    { value : null, ok : false };
                }, _l = __tmp__.value, _ok = __tmp__.ok;
                if (_ok && (((_size : GoInt64)) > _l.n)) {
                    if (_l.n < ((1 : GoInt64))) {
                        _size = ((1 : GoInt));
                    } else {
                        _size = ((_l.n : GoInt));
                    };
                };
            };
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        };
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            if (_nr > ((0 : GoInt))) {
                var __tmp__ = _dst.write(((_buf.__slice__(((0 : GoInt)), _nr) : Slice<GoUInt8>))), _nw:GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                if ((_nw < ((0 : GoInt))) || (_nr < _nw)) {
                    _nw = ((0 : GoInt));
                    if (_ew == null) {
                        _ew = _errInvalidWrite;
                    };
                };
                _written = _written + (((_nw : GoInt64)));
                if (_ew != null) {
                    _err = _ew;
                    break;
                };
                if (_nr != _nw) {
                    _err = errShortWrite;
                    break;
                };
            };
            if (_er != null) {
                if (_er != eof) {
                    _err = _er;
                };
                break;
            };
        };
        return { _0 : _written, _1 : _err };
    }
/**
    // LimitReader returns a Reader that reads from r
    // but stops with EOF after n bytes.
    // The underlying implementation is a *LimitedReader.
**/
function limitReader(_r:Reader, _n:GoInt64):Reader {
        return {
            final __self__ = new LimitedReader_wrapper(((new LimitedReader(_r, _n) : LimitedReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new LimitedReader(_r, _n) : LimitedReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // NewSectionReader returns a SectionReader that reads from r
    // starting at offset off and stops with EOF after n bytes.
**/
function newSectionReader(_r:ReaderAt, _off:GoInt64, _n:GoInt64):SectionReader {
        var _remaining:GoInt64 = ((0 : GoInt64));
        {};
        if (_off <= ((("9223372036854775807" : GoInt64)) - _n)) {
            _remaining = _n + _off;
        } else {
            _remaining = (("9223372036854775807" : GoInt64));
        };
        return ((new SectionReader(_r, _off, _off, _remaining) : SectionReader));
    }
/**
    // TeeReader returns a Reader that writes to w what it reads from r.
    // All reads from r performed through it are matched with
    // corresponding writes to w. There is no internal buffering -
    // the write must complete before the read completes.
    // Any error encountered while writing is reported as a read error.
**/
function teeReader(_r:Reader, _w:Writer):Reader {
        return {
            final __self__ = new T_teeReader_wrapper(((new T_teeReader(_r, _w) : T_teeReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_teeReader(_r, _w) : T_teeReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // NopCloser returns a ReadCloser with a no-op Close method wrapping
    // the provided Reader r.
**/
function nopCloser(_r:Reader):ReadCloser {
        return {
            final __self__ = new T_nopCloser_wrapper(((new T_nopCloser(_r) : T_nopCloser)));
            __self__.close = #if !macro function():stdgo.Error return ((new T_nopCloser(_r) : T_nopCloser)).close() #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_nopCloser(_r) : T_nopCloser)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // ReadAll reads from r until an error or EOF and returns the data it read.
    // A successful call returns err == nil, not err == EOF. Because ReadAll is
    // defined to read from src until EOF, it does not treat an EOF from Read
    // as an error to be reported.
**/
function readAll(_r:Reader):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((512 : GoInt)) : GoInt)).toBasic());
        while (true) {
            if ((_b != null ? _b.length : ((0 : GoInt))) == (_b != null ? _b.cap() : ((0 : GoInt)))) {
                _b = (((_b != null ? _b.__append__(((0 : GoUInt8))) : new Slice<GoUInt8>(((0 : GoUInt8)))).__slice__(0, (_b != null ? _b.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            };
            var __tmp__ = _r.read(((_b.__slice__((_b != null ? _b.length : ((0 : GoInt))), (_b != null ? _b.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _b = ((_b.__slice__(0, (_b != null ? _b.length : ((0 : GoInt))) + _n) : Slice<GoUInt8>));
            if (_err != null) {
                if (_err == eof) {
                    _err = ((null : stdgo.Error));
                };
                return { _0 : _b, _1 : _err };
            };
        };
    }
/**
    // MultiReader returns a Reader that's the logical concatenation of
    // the provided input readers. They're read sequentially. Once all
    // inputs have returned EOF, Read will return EOF.  If any of the readers
    // return a non-nil, non-EOF error, Read will return that error.
**/
function multiReader(_readers:haxe.Rest<Reader>):Reader {
        var _readers = new Slice<Reader>(..._readers);
        var _r = new Slice<Reader>(...[for (i in 0 ... (((_readers != null ? _readers.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Reader))]);
        Go.copySlice(_r, _readers);
        return {
            final __self__ = new T_multiReader_wrapper(((new T_multiReader(_r) : T_multiReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_multiReader(_r) : T_multiReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // MultiWriter creates a writer that duplicates its writes to all the
    // provided writers, similar to the Unix tee(1) command.
    //
    // Each write is written to each listed writer, one at a time.
    // If a listed writer returns an error, that overall write operation
    // stops and returns the error; it does not continue down the list.
**/
function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        var _writers = new Slice<Writer>(..._writers);
        var _allWriters = new Slice<Writer>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Writer))]).__setCap__((((_writers != null ? _writers.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_0 => _w in _writers) {
            {
                var __tmp__ = try {
                    { value : ((((_w.__underlying__().value : Dynamic)) : T_multiWriter)), ok : true };
                } catch(_) {
                    { value : null, ok : false };
                }, _mw = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _allWriters = (_allWriters != null ? _allWriters.__append__(..._mw._writers.__toArray__()) : new Slice<Writer>(..._mw._writers.__toArray__()));
                } else {
                    _allWriters = (_allWriters != null ? _allWriters.__append__(_w) : new Slice<Writer>(_w));
                };
            };
        };
        return {
            final __self__ = new T_multiWriter_wrapper(((new T_multiWriter(_allWriters) : T_multiWriter)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_multiWriter(_allWriters) : T_multiWriter)).write(_p) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_multiWriter(_allWriters) : T_multiWriter)).writeString(_s) #else null #end;
            __self__;
        };
    }
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
function pipe():{ var _0 : PipeReader; var _1 : PipeWriter; } {
        var _p = (({ _wrCh : new Chan<Slice<GoUInt8>>(0, () -> ((null : Slice<GoUInt8>))), _rdCh : new Chan<GoInt>(0, () -> ((0 : GoInt))), _done : new Chan<T_discard>(0, () -> new T_discard()), _wrMu : new stdgo.sync.Sync.Mutex(), _once : new stdgo.sync.Sync.Once(), _rerr : new T_onceError(), _werr : new T_onceError() } : T_pipe));
        return { _0 : ((new PipeReader(_p) : PipeReader)), _1 : ((new PipeWriter(_p) : PipeWriter)) };
    }
@:keep class LimitedReader_static_extension {
    @:keep
    static public function read( _l:LimitedReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_l.n <= ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : eof };
        };
        if ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)) > _l.n) {
            _p = ((_p.__slice__(((0 : GoInt)), _l.n) : Slice<GoUInt8>));
        };
        {
            var __tmp__ = _l.r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _l.n = _l.n - (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
}
class LimitedReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : LimitedReader;
}
@:keep class SectionReader_static_extension {
    /**
        // Size returns the size of the section in bytes.
    **/
    @:keep
    static public function size( _s:SectionReader):GoInt64 {
        return _s._limit - _s._base;
    }
    @:keep
    static public function readAt( _s:SectionReader, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if ((_off < ((0 : GoInt64))) || (_off >= (_s._limit - _s._base))) {
            return { _0 : ((0 : GoInt)), _1 : eof };
        };
        _off = _off + (_s._base);
        {
            var _max:GoInt64 = _s._limit - _off;
            if ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)) > _max) {
                _p = ((_p.__slice__(((0 : GoInt)), _max) : Slice<GoUInt8>));
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
    static public function seek( _s:SectionReader, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        if (_whence == ((0 : GoInt))) {
            _offset = _offset + (_s._base);
        } else if (_whence == ((1 : GoInt))) {
            _offset = _offset + (_s._off);
        } else if (_whence == ((2 : GoInt))) {
            _offset = _offset + (_s._limit);
        };
        if (_offset < _s._base) {
            return { _0 : ((0 : GoInt64)), _1 : _errOffset };
        };
        _s._off = _offset;
        return { _0 : _offset - _s._base, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    static public function read( _s:SectionReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_s._off >= _s._limit) {
            return { _0 : ((0 : GoInt)), _1 : eof };
        };
        {
            var _max:GoInt64 = _s._limit - _s._off;
            if ((((_p != null ? _p.length : ((0 : GoInt))) : GoInt64)) > _max) {
                _p = ((_p.__slice__(((0 : GoInt)), _max) : Slice<GoUInt8>));
            };
        };
        {
            var __tmp__ = _s._r.readAt(_p, _s._off);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._off = _s._off + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
}
class SectionReader_wrapper {
    /**
        // Size returns the size of the section in bytes.
    **/
    @:keep
    public var size : () -> GoInt64 = null;
    @:keep
    public var readAt : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var seek : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : SectionReader;
}
@:keep class T_teeReader_static_extension {
    @:keep
    static public function read( _t:T_teeReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _t._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n > ((0 : GoInt))) {
            {
                var __tmp__ = _t._w.write(((_p.__slice__(0, _n) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_teeReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_teeReader;
}
@:keep class T_discard_static_extension {
    @:keep
    static public function readFrom( _:T_discard, _r:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var _bufp = ((_blackHolePool.get().value : Slice<GoByte>));
        var _readSize:GoInt = ((0 : GoInt));
        while (true) {
            {
                var __tmp__ = _r.read(_bufp);
                _readSize = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (((_readSize : GoInt64)));
            if (_err != null) {
                _blackHolePool.put(Go.toInterface(_bufp));
                if (_err == eof) {
                    return { _0 : _n, _1 : ((null : stdgo.Error)) };
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    static public function writeString( _:T_discard, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    static public function write( _:T_discard, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_discard_wrapper {
    @:keep
    public var readFrom : Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    @:keep
    public var writeString : GoString -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_discard;
}
@:keep class T_nopCloser_static_extension {
    @:keep
    static public function close( _:T_nopCloser):Error {
        return ((null : stdgo.Error));
    }
    @:embedded
    public static function read( __self__:T_nopCloser, _p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return __self__.read(_p);
}
class T_nopCloser_wrapper {
    @:keep
    public var close : () -> Error = null;
    @:embedded
    public var read : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_nopCloser;
}
@:keep class T_eofReader_static_extension {
    @:keep
    static public function read( _:T_eofReader, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : eof };
    }
}
class T_eofReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_eofReader;
}
@:keep class T_multiReader_static_extension {
    @:keep
    static public function read( _mr:T_multiReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) == ((1 : GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (((((_mr._readers != null ? _mr._readers[((0 : GoInt))] : ((null : Reader))).__underlying__().value : Dynamic)) : T_multiReader)), ok : true };
                    } catch(_) {
                        { value : null, ok : false };
                    }, _r = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _mr._readers = _r._readers;
                        continue;
                    };
                };
            };
            {
                var __tmp__ = (_mr._readers != null ? _mr._readers[((0 : GoInt))] : ((null : Reader))).read(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == eof) {
                if (_mr._readers != null) _mr._readers[((0 : GoInt))] = {
                    final __self__ = new T_eofReader_wrapper(((new T_eofReader() : T_eofReader)));
                    __self__.read = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_eofReader() : T_eofReader)).read(__0) #else null #end;
                    __self__;
                };
                _mr._readers = ((_mr._readers.__slice__(((1 : GoInt))) : Slice<Reader>));
            };
            if ((_n > ((0 : GoInt))) || (_err != eof)) {
                if ((_err == eof) && ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) > ((0 : GoInt)))) {
                    _err = ((null : stdgo.Error));
                };
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : ((0 : GoInt)), _1 : eof };
    }
}
class T_multiReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_multiReader;
}
@:keep class T_multiWriter_static_extension {
    @:keep
    static public function writeString( _t:T_multiWriter, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _p:Slice<GoByte> = ((null : Slice<GoUInt8>));
        for (_0 => _w in _t._writers) {
            {
                var __tmp__ = try {
                    { value : ((((_w.__underlying__().value : Dynamic)) : StringWriter)), ok : true };
                } catch(_) {
                    { value : ((null : StringWriter)), ok : false };
                }, _sw = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = _sw.writeString(_s);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (_p == null) {
                        _p = ((_s : Slice<GoByte>));
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
            if (_n != (_s != null ? _s.length : ((0 : GoInt)))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    static public function write( _t:T_multiWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        for (_0 => _w in _t._writers) {
            {
                var __tmp__ = _w.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != (_p != null ? _p.length : ((0 : GoInt)))) {
                _err = errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_multiWriter_wrapper {
    @:keep
    public var writeString : GoString -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_multiWriter;
}
@:keep class T_onceError_static_extension {
    @:keep
    static public function load( _a:T_onceError):Error {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _a.lock();
        try {
            __deferstack__.unshift(() -> _a.unlock());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _a._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    static public function store( _a:T_onceError, _err:Error):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _a.lock();
            __deferstack__.unshift(() -> _a.unlock());
            if (_a._err != null) {
                var __recover_exception__:AnyInterface = null;
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                    for (defer in __deferstack__) {
                        defer();
                    };
                } catch(__exception__) {
                    if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                    __recover_exception__ = __exception__.native;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (__recover_exception__ != null) throw __recover_exception__;
                        return;
                    };
                };
            };
            _a._err = _err;
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:embedded
    public static function _unlockSlow( __self__:T_onceError, _new:GoInt32) __self__._unlockSlow(_new);
    @:embedded
    public static function _lockSlow( __self__:T_onceError) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_onceError) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_onceError):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_onceError) __self__.lock();
}
class T_onceError_wrapper {
    @:keep
    public var load : () -> Error = null;
    @:keep
    public var store : Error -> Void = null;
    @:embedded
    public var _unlockSlow : GoInt32 -> Void = null;
    @:embedded
    public var _lockSlow : () -> Void = null;
    @:embedded
    public var unlock : () -> Void = null;
    @:embedded
    public var tryLock : () -> Bool = null;
    @:embedded
    public var lock : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_onceError;
}
@:keep class T_pipe_static_extension {
    /**
        // writeCloseError is considered internal to the pipe type.
    **/
    @:keep
    static public function _writeCloseError( _p:T_pipe):Error {
        var _werr:stdgo.Error = _p._werr.load();
        {
            var _rerr:stdgo.Error = _p._rerr.load();
            if ((_werr == null) && (_rerr != null)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    /**
        // readCloseError is considered internal to the pipe type.
    **/
    @:keep
    static public function _readCloseError( _p:T_pipe):Error {
        var _rerr:stdgo.Error = _p._rerr.load();
        {
            var _werr:stdgo.Error = _p._werr.load();
            if ((_rerr == null) && (_werr != null)) {
                return _werr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    static public function _closeWrite( _p:T_pipe, _err:Error):Error {
        if (_err == null) {
            _err = eof;
        };
        _p._werr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return ((null : stdgo.Error));
    }
    @:keep
    static public function _write( _p:T_pipe, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._writeCloseError() };
        }, {
            var __recover_exception__:AnyInterface = null;
            var __deferstack__:Array<Void -> Void> = [];
            _p._wrMu.lock();
            __deferstack__.unshift(() -> _p._wrMu.unlock());
            try {
                for (defer in __deferstack__) {
                    defer();
                };
            } catch(__exception__) {
                if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                __recover_exception__ = __exception__.native;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (__recover_exception__ != null) throw __recover_exception__;
                    return { _0 : _n, _1 : _err };
                };
            };
        }]);
        try {
            {
                var _once:Bool = true;
                Go.cfor(_once || ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))), _once = false, {
                    var __recover_exception__:AnyInterface = null;
                    var __deferstack__:Array<Void -> Void> = [];
                    Go.select([_p._done.__get__() => {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _n, _1 : _p._writeCloseError() };
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        try {} catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    }, _p._wrCh.__send__(_b) => {
                        var __recover_exception__:AnyInterface = null;
                        var __deferstack__:Array<Void -> Void> = [];
                        var _nw:GoInt = _p._rdCh.__get__();
                        _b = ((_b.__slice__(_nw) : Slice<GoUInt8>));
                        try {
                            _n = _n + (_nw);
                            for (defer in __deferstack__) {
                                defer();
                            };
                        } catch(__exception__) {
                            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                            __recover_exception__ = __exception__.native;
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (__recover_exception__ != null) throw __recover_exception__;
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    }]);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    try {} catch(__exception__) {
                        if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
                        __recover_exception__ = __exception__.native;
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (__recover_exception__ != null) throw __recover_exception__;
                            return { _0 : _n, _1 : _err };
                        };
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    static public function _closeRead( _p:T_pipe, _err:Error):Error {
        if (_err == null) {
            _err = errClosedPipe;
        };
        _p._rerr.store(_err);
        _p._once.do_(function():Void {
            if (_p._done != null) _p._done.__close__();
        });
        return ((null : stdgo.Error));
    }
    @:keep
    static public function _read( _p:T_pipe, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, {}]);
        {
            Go.select([_p._done.__get__() => {
                return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
            }, var _bw = _p._wrCh.__get__() => {
                var _nr:GoInt = Go.copySlice(_b, _bw);
                _p._rdCh.__send__(_nr);
                return { _0 : _nr, _1 : ((null : stdgo.Error)) };
            }]);
            return { _0 : _n, _1 : _err };
        };
    }
}
class T_pipe_wrapper {
    /**
        // writeCloseError is considered internal to the pipe type.
    **/
    @:keep
    public var _writeCloseError : () -> Error = null;
    /**
        // readCloseError is considered internal to the pipe type.
    **/
    @:keep
    public var _readCloseError : () -> Error = null;
    @:keep
    public var _closeWrite : Error -> Error = null;
    @:keep
    public var _write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var _closeRead : Error -> Error = null;
    @:keep
    public var _read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_pipe;
}
@:keep class PipeReader_static_extension {
    /**
        // CloseWithError closes the reader; subsequent writes
        // to the write half of the pipe will return the error err.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    static public function closeWithError( _r:PipeReader, _err:Error):Error {
        return _r._p._closeRead(_err);
    }
    /**
        // Close closes the reader; subsequent writes to the
        // write half of the pipe will return the error ErrClosedPipe.
    **/
    @:keep
    static public function close( _r:PipeReader):Error {
        return _r.closeWithError(((null : stdgo.Error)));
    }
    /**
        // Read implements the standard Read interface:
        // it reads data from the pipe, blocking until a writer
        // arrives or the write end is closed.
        // If the write end is closed with an error, that error is
        // returned as err; otherwise err is EOF.
    **/
    @:keep
    static public function read( _r:PipeReader, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _r._p._read(_data);
    }
}
class PipeReader_wrapper {
    /**
        // CloseWithError closes the reader; subsequent writes
        // to the write half of the pipe will return the error err.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    public var closeWithError : Error -> Error = null;
    /**
        // Close closes the reader; subsequent writes to the
        // write half of the pipe will return the error ErrClosedPipe.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Read implements the standard Read interface:
        // it reads data from the pipe, blocking until a writer
        // arrives or the write end is closed.
        // If the write end is closed with an error, that error is
        // returned as err; otherwise err is EOF.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PipeReader;
}
@:keep class PipeWriter_static_extension {
    /**
        // CloseWithError closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and the error err,
        // or EOF if err is nil.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    static public function closeWithError( _w:PipeWriter, _err:Error):Error {
        return _w._p._closeWrite(_err);
    }
    /**
        // Close closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and EOF.
    **/
    @:keep
    static public function close( _w:PipeWriter):Error {
        return _w.closeWithError(((null : stdgo.Error)));
    }
    /**
        // Write implements the standard Write interface:
        // it writes data to the pipe, blocking until one or more readers
        // have consumed all the data or the read end is closed.
        // If the read end is closed with an error, that err is
        // returned as err; otherwise err is ErrClosedPipe.
    **/
    @:keep
    static public function write( _w:PipeWriter, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._p._write(_data);
    }
}
class PipeWriter_wrapper {
    /**
        // CloseWithError closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and the error err,
        // or EOF if err is nil.
        //
        // CloseWithError never overwrites the previous error if it exists
        // and always returns nil.
    **/
    @:keep
    public var closeWithError : Error -> Error = null;
    /**
        // Close closes the writer; subsequent reads from the
        // read half of the pipe will return no bytes and EOF.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Write implements the standard Write interface:
        // it writes data to the pipe, blocking until one or more readers
        // have consumed all the data or the read end is closed.
        // If the read end is closed with an error, that err is
        // returned as err; otherwise err is ErrClosedPipe.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : PipeWriter;
}
