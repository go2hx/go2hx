package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function readFrom( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        if (_b._err != null) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : _b._err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom)) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : false };
        }, _readerFrom = __tmp__._0, _readerFromOK = __tmp__._1;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            if (_b.available() == ((0 : stdgo.GoInt))) {
                {
                    var _err1 = (_b.flush() : stdgo.Error);
                    if (_err1 != null) {
                        return { _0 : _n, _1 : _err1 };
                    };
                };
            };
            if ((_readerFromOK && (_b.buffered() == (0 : stdgo.GoInt)) : Bool)) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _b._err = _err;
                _n = (_n + (_nn) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
            var _nr = (0 : stdgo.GoInt);
            while ((_nr < (100 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _r.read((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_m != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    break;
                };
                _nr++;
            };
            if (_nr == ((100 : stdgo.GoInt))) {
                return { _0 : _n, _1 : stdgo._internal.io.Io_errNoProgress.errNoProgress };
            };
            _b._n = (_b._n + (_m) : stdgo.GoInt);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_err != null) {
                break;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            if (_b.available() == ((0 : stdgo.GoInt))) {
                _err = _b.flush();
            } else {
                _err = (null : stdgo.Error);
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function writeString( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        var _sw:stdgo._internal.io.Io_StringWriter.StringWriter = (null : stdgo._internal.io.Io_StringWriter.StringWriter);
        var _tryStringWriter = (true : Bool);
        var _nn = (0 : stdgo.GoInt);
        while ((((_s.length) > _b.available() : Bool) && (_b._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (((_b.buffered() == ((0 : stdgo.GoInt)) && _sw == null : Bool) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._wr) : stdgo._internal.io.Io_StringWriter.StringWriter)) : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : false };
                    };
                    _sw = __tmp__._0;
                    _tryStringWriter = __tmp__._1;
                };
            };
            if (((_b.buffered() == (0 : stdgo.GoInt)) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _s);
                _b._n = (_b._n + (_n) : stdgo.GoInt);
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n = (stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _s) : stdgo.GoInt);
        _b._n = (_b._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        var _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _err = _b.writeByte((_r : stdgo.GoUInt8));
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
            return { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        if (_b._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
        };
        var _n = (_b.available() : stdgo.GoInt);
        if ((_n < (4 : stdgo.GoInt) : Bool)) {
            {
                _b.flush();
                if (_b._err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _b._err };
                };
            };
            _n = _b.available();
            if ((_n < (4 : stdgo.GoInt) : Bool)) {
                return _b.writeString((_r : stdgo.GoString)?.__copy__());
            };
        };
        _size = stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _r);
        _b._n = (_b._n + (_size) : stdgo.GoInt);
        return { _0 : _size, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if (((_b.available() <= (0 : stdgo.GoInt) : Bool) && (_b.flush() != null) : Bool)) {
            return _b._err;
        };
        _b._buf[(_b._n : stdgo.GoInt)] = _c;
        _b._n++;
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_p.length) > _b.available() : Bool) && (_b._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_b.buffered() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = _b._wr.write(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
            } else {
                _n = stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _p);
                _b._n = (_b._n + (_n) : stdgo.GoInt);
                _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_b._err != null) {
            return { _0 : _nn, _1 : _b._err };
        };
        var _n = (stdgo.Go.copySlice((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>), _p) : stdgo.GoInt);
        _b._n = (_b._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function buffered( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        return _b._n;
    }
    @:keep
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        return ((_b._buf.__slice__(_b._n) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function available( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        return ((_b._buf.length) - _b._n : stdgo.GoInt);
    }
    @:keep
    static public function flush( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        if (_b._err != null) {
            return _b._err;
        };
        if (_b._n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = _b._wr.write((_b._buf.__slice__((0 : stdgo.GoInt), _b._n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n < _b._n : Bool) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        if (_err != null) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_n < _b._n : Bool) : Bool)) {
                stdgo.Go.copySlice((_b._buf.__slice__((0 : stdgo.GoInt), (_b._n - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b._buf.__slice__(_n, _b._n) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _b._n = (_b._n - (_n) : stdgo.GoInt);
            _b._err = _err;
            return _err;
        };
        _b._n = (0 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_w))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b._err = (null : stdgo.Error);
        _b._n = (0 : stdgo.GoInt);
        _b._wr = _w;
    }
    @:keep
    static public function size( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = _b;
        return (_b._buf.length);
    }
}
