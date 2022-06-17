package stdgo.io;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;
var errShortWrite : stdgo.Error = stdgo.errors.Errors.new_(((("short write" : GoString))));
var _errInvalidWrite : stdgo.Error = stdgo.errors.Errors.new_(((("invalid write result" : GoString))));
var errShortBuffer : stdgo.Error = stdgo.errors.Errors.new_(((("short buffer" : GoString))));
var eof : stdgo.Error = stdgo.errors.Errors.new_(((("EOF" : GoString))));
var errUnexpectedEOF : stdgo.Error = stdgo.errors.Errors.new_(((("unexpected EOF" : GoString))));
var errNoProgress : stdgo.Error = stdgo.errors.Errors.new_(((("multiple Read calls return no data or error" : GoString))));
var _errWhence : stdgo.Error = stdgo.errors.Errors.new_(((("Seek: invalid whence" : GoString))));
var _errOffset : stdgo.Error = stdgo.errors.Errors.new_(((("Seek: invalid offset" : GoString))));
var discard : Writer = ((new T_discard() : T_discard));
var _blackHolePool : stdgo.sync.Sync.Pool = (({ new_ : function():AnyInterface {
    var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((8192 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
    return Go.toInterface(_b);
}, _noCopy : new stdgo.sync.Sync.T_noCopy(), _local : null, _localSize : 0, _victim : null, _victimSize : 0 } : stdgo.sync.Sync.Pool));
var errClosedPipe : stdgo.Error = stdgo.errors.Errors.new_(((("io: read/write on closed pipe" : GoString))));
var errInvalidWrite : stdgo.Error = _errInvalidWrite;
var _2 : ReaderFrom = ((new T_discard() : T_discard));
var _3 : StringWriter = ((((null : Ref<T_multiWriter>)) : T_multiWriter));
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
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _l = this;
        _l;
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
    public var r : Reader = ((null : Reader));
    public var n : GoInt64 = ((0 : GoInt64));
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
    @:keep
    public function size():GoInt64 {
        var _s = this;
        _s;
        return _s._limit - _s._base;
    }
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _s = this;
        _s;
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
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _s = this;
        _s;
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
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = this;
        _s;
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
    public var _r : ReaderAt = ((null : ReaderAt));
    public var _base : GoInt64 = ((0 : GoInt64));
    public var _off : GoInt64 = ((0 : GoInt64));
    public var _limit : GoInt64 = ((0 : GoInt64));
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
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _t = this;
        _t;
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
    @:keep
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _ = this;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var _bufp:Ref<Slice<GoUInt8>> = ((_blackHolePool.get().value : Slice<GoByte>));
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
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_discard();
    }
}
@:structInit @:using(stdgo.io.Io.T_nopCloser_static_extension) class T_nopCloser {
    @:keep
    public function close():Error {
        var _ = this;
        return ((null : stdgo.Error));
    }
    @:embedded
    public var reader : Reader = ((null : Reader));
    public function new(?reader:Reader) {
        if (reader != null) this.reader = reader;
    }
    public function read(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return reader.read(_p);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nopCloser(reader);
    }
}
@:structInit @:using(stdgo.io.Io.T_eofReader_static_extension) class T_eofReader {
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = this;
        return { _0 : ((0 : GoInt)), _1 : eof };
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_eofReader();
    }
}
@:structInit @:using(stdgo.io.Io.T_multiReader_static_extension) class T_multiReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _mr = this;
        _mr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) == ((1 : GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (((((_mr._readers != null ? _mr._readers[((0 : GoInt))] : ((null : Reader))).__underlying__().value : Dynamic)) : T_multiReader)), ok : true };
                    } catch(_) {
                        { value : ((null : Ref<T_multiReader>)), ok : false };
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
                if (_mr._readers != null) _mr._readers[((0 : GoInt))] = ((new T_eofReader() : T_eofReader));
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
    public var _readers : Slice<Reader> = ((null : Slice<Reader>));
    public function new(?_readers:Slice<Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__():AnyInterface return null;//Go.toInterface(this);
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
@:structInit @:using(stdgo.io.Io.T_multiWriter_static_extension) class T_multiWriter {
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _t = this;
        _t;
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
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _t = this;
        _t;
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
    public var _writers : Slice<Writer> = ((null : Slice<Writer>));
    public function new(?_writers:Slice<Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__():AnyInterface return null;//Go.toInterface(this);
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
@:structInit @:using(stdgo.io.Io.T_onceError_static_extension) class T_onceError {
    @:keep
    public function load():Error {
        var _a = this;
        _a;
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
    public function store(_err:Error):Void {
        var _a = this;
        _a;
        var __recover_exception__:AnyInterface = null;
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
    public var mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_err:stdgo.Error) {
        if (mutex != null) this.mutex = mutex;
        if (_err != null) this._err = _err;
    }
    public function lock() mutex.lock();
    public function tryLock():Bool return mutex.tryLock();
    public function unlock() mutex.unlock();
    public function _lockSlow() mutex._lockSlow();
    public function _unlockSlow(_new:GoInt32) mutex._unlockSlow(_new);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_onceError(mutex, _err);
    }
}
@:structInit @:using(stdgo.io.Io.T_pipe_static_extension) class T_pipe {
    @:keep
    public function _writeCloseError():Error {
        var _p = this;
        _p;
        var _werr:stdgo.Error = _p._werr.load();
        {
            var _rerr:stdgo.Error = _p._rerr.load();
            if ((_werr == null) && (_rerr != null)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    public function _readCloseError():Error {
        var _p = this;
        _p;
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
    public function _closeWrite(_err:Error):Error {
        var _p = this;
        _p;
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
    public function _write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = this;
        _p;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._writeCloseError() };
        }, {
            _p._wrMu.lock();
            __deferstack__.unshift(() -> _p._wrMu.unlock());
        }]);
        try {
            {
                var _once:Bool = true;
                Go.cfor(_once || ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))), _once = false, {
                    Go.select([_p._done.__get__() => {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _n, _1 : _p._writeCloseError() };
                        };
                    }, _p._wrCh.__send__(_b) => {
                        var _nw:GoInt = _p._rdCh.__get__();
                        _b = ((_b.__slice__(_nw) : Slice<GoUInt8>));
                        _n = _n + (_nw);
                    }]);
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
    public function _closeRead(_err:Error):Error {
        var _p = this;
        _p;
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
    public function _read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = this;
        _p;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, {}]);
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, var _bw = _p._wrCh.__get__() => {
            var _nr:GoInt = Go.copySlice(_b, _bw);
            _p._rdCh.__send__(_nr);
            return { _0 : _nr, _1 : ((null : stdgo.Error)) };
        }]);
        return {_0: 0,_1: null};
    }
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
    @:keep
    public function closeWithError(_err:Error):Error {
        var _r = this;
        _r;
        return _r._p._closeRead(_err);
    }
    @:keep
    public function close():Error {
        var _r = this;
        _r;
        return _r.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public function read(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _r._p._read(_data);
    }
    public var _p : Ref<T_pipe> = ((null : Ref<T_pipe>));
    public function new(?_p:Ref<T_pipe>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PipeReader(_p);
    }
}
@:structInit @:using(stdgo.io.Io.PipeWriter_static_extension) class PipeWriter {
    @:keep
    public function closeWithError(_err:Error):Error {
        var _w = this;
        _w;
        return _w._p._closeWrite(_err);
    }
    @:keep
    public function close():Error {
        var _w = this;
        _w;
        return _w.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._p._write(_data);
    }
    public var _p : Ref<T_pipe> = ((null : Ref<T_pipe>));
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
function readFull(_r:Reader, _buf:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return readAtLeast(_r, _buf, (_buf != null ? _buf.length : ((0 : GoInt))));
    }
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
function copy(_dst:Writer, _src:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        return _copyBuffer(_dst, _src, ((null : Slice<GoUInt8>)));
    }
function copyBuffer(_dst:Writer, _src:Reader, _buf:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
        var _written:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        if ((_buf != null) && ((_buf != null ? _buf.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            throw Go.toInterface(((("empty buffer in CopyBuffer" : GoString))));
        };
        return _copyBuffer(_dst, _src, _buf);
    }
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
                    { value : ((null : Ref<LimitedReader>)), ok : false };
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
function limitReader(_r:Reader, _n:GoInt64):Reader {
        return ((new LimitedReader(_r, _n) : LimitedReader));
    }
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
function teeReader(_r:Reader, _w:Writer):Reader {
        return ((new T_teeReader(_r, _w) : T_teeReader));
    }
function nopCloser(_r:Reader):ReadCloser {
        return ((new T_nopCloser(_r) : T_nopCloser));
    }
function readAll(_r:Reader):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((512 : GoInt)) : GoInt)).toBasic());
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
function multiReader(_readers:haxe.Rest<Reader>):Reader {
        var _readers = new Slice<Reader>(..._readers);
        var _r:Slice<Reader> = new Slice<Reader>(...[for (i in 0 ... (((_readers != null ? _readers.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Reader))]);
        Go.copySlice(_r, _readers);
        return ((new T_multiReader(_r) : T_multiReader));
    }
function multiWriter(_writers:haxe.Rest<Writer>):Writer {
        var _writers = new Slice<Writer>(..._writers);
        var _allWriters:Slice<Writer> = new Slice<Writer>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : Writer))]).__setCap__((((_writers != null ? _writers.length : ((0 : GoInt))) : GoInt)).toBasic());
        for (_0 => _w in _writers) {
            {
                var __tmp__ = try {
                    { value : ((((_w.__underlying__().value : Dynamic)) : T_multiWriter)), ok : true };
                } catch(_) {
                    { value : ((null : Ref<T_multiWriter>)), ok : false };
                }, _mw = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _allWriters = (_allWriters != null ? _allWriters.__append__(..._mw._writers.__toArray__()) : new Slice<Writer>(..._mw._writers.__toArray__()));
                } else {
                    _allWriters = (_allWriters != null ? _allWriters.__append__(_w) : new Slice<Writer>(_w));
                };
            };
        };
        return ((new T_multiWriter(_allWriters) : T_multiWriter));
    }
function pipe():{ var _0 : PipeReader; var _1 : PipeWriter; } {
        var _p:Ref<T_pipe> = (({ _wrCh : new Chan<Slice<GoUInt8>>(0, () -> ((null : Slice<GoUInt8>))), _rdCh : new Chan<GoInt>(0, () -> ((0 : GoInt))), _done : new Chan<T_discard>(0, () -> new T_discard()), _wrMu : new stdgo.sync.Sync.Mutex(), _once : new stdgo.sync.Sync.Once(), _rerr : new T_onceError(), _werr : new T_onceError() } : T_pipe));
        return { _0 : ((new PipeReader(_p) : PipeReader)), _1 : ((new PipeWriter(_p) : PipeWriter)) };
    }
class Reader_wrapper {
    public var __t__ : Reader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Writer_wrapper {
    public var __t__ : Writer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Closer_wrapper {
    public var __t__ : Closer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Seeker_wrapper {
    public var __t__ : Seeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadWriter_wrapper {
    public var __t__ : ReadWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadCloser_wrapper {
    public var __t__ : ReadCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class WriteCloser_wrapper {
    public var __t__ : WriteCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadWriteCloser_wrapper {
    public var __t__ : ReadWriteCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadSeeker_wrapper {
    public var __t__ : ReadSeeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadSeekCloser_wrapper {
    public var __t__ : ReadSeekCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class WriteSeeker_wrapper {
    public var __t__ : WriteSeeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReadWriteSeeker_wrapper {
    public var __t__ : ReadWriteSeeker;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReaderFrom_wrapper {
    public var __t__ : ReaderFrom;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class WriterTo_wrapper {
    public var __t__ : WriterTo;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ReaderAt_wrapper {
    public var __t__ : ReaderAt;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class WriterAt_wrapper {
    public var __t__ : WriterAt;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ByteReader_wrapper {
    public var __t__ : ByteReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ByteScanner_wrapper {
    public var __t__ : ByteScanner;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class ByteWriter_wrapper {
    public var __t__ : ByteWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class RuneReader_wrapper {
    public var __t__ : RuneReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class RuneScanner_wrapper {
    public var __t__ : RuneScanner;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class StringWriter_wrapper {
    public var __t__ : StringWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class LimitedReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _l = __t__;
        _l;
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
    public var __t__ : LimitedReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class LimitedReader_static_extension {
    @:keep
    public static function read(_l:Ref<LimitedReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _l;
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
class SectionReader_wrapper {
    @:keep
    public function size():GoInt64 {
        var _s = __t__;
        _s;
        return _s._limit - _s._base;
    }
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _s = __t__;
        _s;
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
    public function seek(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        var _s = __t__;
        _s;
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
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = __t__;
        _s;
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
    public var __t__ : SectionReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class SectionReader_static_extension {
    @:keep
    public static function size(_s:Ref<SectionReader>):GoInt64 {
        _s;
        return _s._limit - _s._base;
    }
    @:keep
    public static function readAt(_s:Ref<SectionReader>, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        _s;
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
    public static function seek(_s:Ref<SectionReader>, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        _s;
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
    public static function read(_s:Ref<SectionReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _s;
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
class T_teeReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _t = __t__;
        _t;
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
    public var __t__ : T_teeReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_teeReader_static_extension {
    @:keep
    public static function read(_t:Ref<T_teeReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _t;
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
class T_discard_wrapper {
    @:keep
    public function readFrom(_r:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _ = __t__;
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var _bufp:Ref<Slice<GoUInt8>> = ((_blackHolePool.get().value : Slice<GoByte>));
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
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_discard;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_discard_static_extension {
    @:keep
    public static function readFrom(_:T_discard, _r:Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        var _bufp:Ref<Slice<GoUInt8>> = ((_blackHolePool.get().value : Slice<GoByte>));
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
    public static function writeString(_:T_discard, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_s != null ? _s.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function write(_:T_discard, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
}
class T_nopCloser_wrapper {
    @:keep
    public function close():Error {
        var _ = __t__;
        return ((null : stdgo.Error));
    }
    public var __t__ : T_nopCloser;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_nopCloser_static_extension {
    @:keep
    public static function close(_:T_nopCloser):Error {
        return ((null : stdgo.Error));
    }
}
class T_eofReader_wrapper {
    @:keep
    public function read(_0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _ = __t__;
        return { _0 : ((0 : GoInt)), _1 : eof };
    }
    public var __t__ : T_eofReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_eofReader_static_extension {
    @:keep
    public static function read(_:T_eofReader, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : eof };
    }
}
class T_multiReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _mr = __t__;
        _mr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) == ((1 : GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (((((_mr._readers != null ? _mr._readers[((0 : GoInt))] : ((null : Reader))).__underlying__().value : Dynamic)) : T_multiReader)), ok : true };
                    } catch(_) {
                        { value : ((null : Ref<T_multiReader>)), ok : false };
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
                if (_mr._readers != null) _mr._readers[((0 : GoInt))] = ((new T_eofReader() : T_eofReader));
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
    public var __t__ : T_multiReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_multiReader_static_extension {
    @:keep
    public static function read(_mr:Ref<T_multiReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _mr;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_mr._readers != null ? _mr._readers.length : ((0 : GoInt))) == ((1 : GoInt))) {
                {
                    var __tmp__ = try {
                        { value : (((((_mr._readers != null ? _mr._readers[((0 : GoInt))] : ((null : Reader))).__underlying__().value : Dynamic)) : T_multiReader)), ok : true };
                    } catch(_) {
                        { value : ((null : Ref<T_multiReader>)), ok : false };
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
                if (_mr._readers != null) _mr._readers[((0 : GoInt))] = ((new T_eofReader() : T_eofReader));
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
class T_multiWriter_wrapper {
    @:keep
    public function writeString(_s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _t = __t__;
        _t;
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
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _t = __t__;
        _t;
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
    public var __t__ : T_multiWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_multiWriter_static_extension {
    @:keep
    public static function writeString(_t:Ref<T_multiWriter>, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        _t;
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
    public static function write(_t:Ref<T_multiWriter>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _t;
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
class T_onceError_wrapper {
    @:keep
    public function load():Error {
        var _a = __t__;
        _a;
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
    public function store(_err:Error):Void {
        var _a = __t__;
        _a;
        var __recover_exception__:AnyInterface = null;
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
    public var __t__ : T_onceError;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_onceError_static_extension {
    @:keep
    public static function load(_a:Ref<T_onceError>):Error {
        _a;
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
    public static function store(_a:Ref<T_onceError>, _err:Error):Void {
        _a;
        var __recover_exception__:AnyInterface = null;
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
}
class T_pipe_wrapper {
    @:keep
    public function _writeCloseError():Error {
        var _p = __t__;
        _p;
        var _werr:stdgo.Error = _p._werr.load();
        {
            var _rerr:stdgo.Error = _p._rerr.load();
            if ((_werr == null) && (_rerr != null)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    public function _readCloseError():Error {
        var _p = __t__;
        _p;
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
    public function _closeWrite(_err:Error):Error {
        var _p = __t__;
        _p;
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
    public function _write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = __t__;
        _p;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._writeCloseError() };
        }, {
            _p._wrMu.lock();
            __deferstack__.unshift(() -> _p._wrMu.unlock());
        }]);
        try {
            {
                var _once:Bool = true;
                Go.cfor(_once || ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))), _once = false, {
                    Go.select([_p._done.__get__() => {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _n, _1 : _p._writeCloseError() };
                        };
                    }, _p._wrCh.__send__(_b) => {
                        var _nw:GoInt = _p._rdCh.__get__();
                        _b = ((_b.__slice__(_nw) : Slice<GoUInt8>));
                        _n = _n + (_nw);
                    }]);
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
    public function _closeRead(_err:Error):Error {
        var _p = __t__;
        _p;
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
    public function _read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _p = __t__;
        _p;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, {}]);
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, var _bw = _p._wrCh.__get__() => {
            var _nr:GoInt = Go.copySlice(_b, _bw);
            _p._rdCh.__send__(_nr);
            return { _0 : _nr, _1 : ((null : stdgo.Error)) };
        }]);
        return {_0: 0,_1: null};
    }
    public var __t__ : T_pipe;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_pipe_static_extension {
    @:keep
    public static function _writeCloseError(_p:Ref<T_pipe>):Error {
        _p;
        var _werr:stdgo.Error = _p._werr.load();
        {
            var _rerr:stdgo.Error = _p._rerr.load();
            if ((_werr == null) && (_rerr != null)) {
                return _rerr;
            };
        };
        return errClosedPipe;
    }
    @:keep
    public static function _readCloseError(_p:Ref<T_pipe>):Error {
        _p;
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
    public static function _closeWrite(_p:Ref<T_pipe>, _err:Error):Error {
        _p;
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
    public static function _write(_p:Ref<T_pipe>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _p;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._writeCloseError() };
        }, {
            _p._wrMu.lock();
            __deferstack__.unshift(() -> _p._wrMu.unlock());
        }]);
        try {
            {
                var _once:Bool = true;
                Go.cfor(_once || ((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))), _once = false, {
                    Go.select([_p._done.__get__() => {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _n, _1 : _p._writeCloseError() };
                        };
                    }, _p._wrCh.__send__(_b) => {
                        var _nw:GoInt = _p._rdCh.__get__();
                        _b = ((_b.__slice__(_nw) : Slice<GoUInt8>));
                        _n = _n + (_nw);
                    }]);
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
    public static function _closeRead(_p:Ref<T_pipe>, _err:Error):Error {
        _p;
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
    public static function _read(_p:Ref<T_pipe>, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _p;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, {}]);
        Go.select([_p._done.__get__() => {
            return { _0 : ((0 : GoInt)), _1 : _p._readCloseError() };
        }, var _bw = _p._wrCh.__get__() => {
            var _nr:GoInt = Go.copySlice(_b, _bw);
            _p._rdCh.__send__(_nr);
            return { _0 : _nr, _1 : ((null : stdgo.Error)) };
        }]);
        return {_0: 0,_1: null};
    }
}
class PipeReader_wrapper {
    @:keep
    public function closeWithError(_err:Error):Error {
        var _r = __t__;
        _r;
        return _r._p._closeRead(_err);
    }
    @:keep
    public function close():Error {
        var _r = __t__;
        _r;
        return _r.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public function read(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = __t__;
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _r._p._read(_data);
    }
    public var __t__ : PipeReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class PipeReader_static_extension {
    @:keep
    public static function closeWithError(_r:Ref<PipeReader>, _err:Error):Error {
        _r;
        return _r._p._closeRead(_err);
    }
    @:keep
    public static function close(_r:Ref<PipeReader>):Error {
        _r;
        return _r.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public static function read(_r:Ref<PipeReader>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _r._p._read(_data);
    }
}
class PipeWriter_wrapper {
    @:keep
    public function closeWithError(_err:Error):Error {
        var _w = __t__;
        _w;
        return _w._p._closeWrite(_err);
    }
    @:keep
    public function close():Error {
        var _w = __t__;
        _w;
        return _w.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = __t__;
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._p._write(_data);
    }
    public var __t__ : PipeWriter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class PipeWriter_static_extension {
    @:keep
    public static function closeWithError(_w:Ref<PipeWriter>, _err:Error):Error {
        _w;
        return _w._p._closeWrite(_err);
    }
    @:keep
    public static function close(_w:Ref<PipeWriter>):Error {
        _w;
        return _w.closeWithError(((null : stdgo.Error)));
    }
    @:keep
    public static function write(_w:Ref<PipeWriter>, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _w;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _w._p._write(_data);
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
