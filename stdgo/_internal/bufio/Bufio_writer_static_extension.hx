package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._wr) : stdgo._internal.io.Io_readerfrom.ReaderFrom)) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
        }, _readerFrom = __tmp__._0, _readerFromOK = __tmp__._1;
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            if (@:check2r _b.available() == ((0 : stdgo.GoInt))) {
                {
                    var _err1 = (@:check2r _b.flush() : stdgo.Error);
                    if (_err1 != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err1 };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            if ((_readerFromOK && (@:check2r _b.buffered() == (0 : stdgo.GoInt)) : Bool)) {
                var __tmp__ = _readerFrom.readFrom(_r), _nn:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                (@:checkr _b ?? throw "null pointer dereference")._err = _err;
                _n = (_n + (_nn) : stdgo.GoInt64);
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _nr = (0 : stdgo.GoInt);
            while ((_nr < (100 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _r.read(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_m != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                    break;
                };
                _nr++;
            };
            if (_nr == ((100 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errnoprogress.errNoProgress };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_m) : stdgo.GoInt);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_err != null) {
                break;
            };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            if (@:check2r _b.available() == ((0 : stdgo.GoInt))) {
                _err = @:check2r _b.flush();
            } else {
                _err = (null : stdgo.Error);
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _sw:stdgo._internal.io.Io_stringwriter.StringWriter = (null : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _tryStringWriter = (true : Bool);
        var _nn = (0 : stdgo.GoInt);
        while ((((_s.length) > @:check2r _b.available() : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (((@:check2r _b.buffered() == ((0 : stdgo.GoInt)) && _sw == null : Bool) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._wr) : stdgo._internal.io.Io_stringwriter.StringWriter)) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
                    };
                    _sw = @:tmpset0 __tmp__._0;
                    _tryStringWriter = @:tmpset0 __tmp__._1;
                };
            };
            if (((@:check2r _b.buffered() == (0 : stdgo.GoInt)) && _tryStringWriter : Bool)) {
                {
                    var __tmp__ = _sw.writeString(_s?.__copy__());
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
            } else {
                _n = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s);
                (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
                @:check2r _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return { _0 : _nn, _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
        };
        var _n = (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _err = @:check2r _b.writeByte((_r : stdgo.GoUInt8));
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                    _size = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _size = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _size = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _n = (@:check2r _b.available() : stdgo.GoInt);
        if ((_n < (4 : stdgo.GoInt) : Bool)) {
            {
                @:check2r _b.flush();
                if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                        _size = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = @:check2r _b.available();
            if ((_n < (4 : stdgo.GoInt) : Bool)) {
                return {
                    final __tmp__ = @:check2r _b.writeString((_r : stdgo.GoString)?.__copy__());
                    _size = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _size, _1 : _err };
                };
            };
        };
        _size = stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>), _r);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_size) : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _size, _1 : (null : stdgo.Error) };
            _size = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        if (((@:check2r _b.available() <= (0 : stdgo.GoInt) : Bool) && (@:check2r _b.flush() != null) : Bool)) {
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt)] = _c;
        (@:checkr _b ?? throw "null pointer dereference")._n++;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_p.length) > @:check2r _b.available() : Bool) && ((@:checkr _b ?? throw "null pointer dereference")._err == null) : Bool)) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            if (@:check2r _b.buffered() == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._wr.write(_p);
                    _n = @:tmpset0 __tmp__._0;
                    (@:checkr _b ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
                };
            } else {
                _n = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
                (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
                @:check2r _b.flush();
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nn, _1 : (@:checkr _b ?? throw "null pointer dereference")._err };
                _nn = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _n = (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n + (_n) : stdgo.GoInt);
        _nn = (_nn + (_n) : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _nn, _1 : (null : stdgo.Error) };
            _nn = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function buffered( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._n;
    }
    @:keep
    @:tdfield
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function available( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - (@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function flush( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _b ?? throw "null pointer dereference")._err;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = (@:checkr _b ?? throw "null pointer dereference")._wr.write(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n < (@:checkr _b ?? throw "null pointer dereference")._n : Bool) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        if (_err != null) {
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_n < (@:checkr _b ?? throw "null pointer dereference")._n : Bool) : Bool)) {
                ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), ((@:checkr _b ?? throw "null pointer dereference")._n - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_n, (@:checkr _b ?? throw "null pointer dereference")._n) : stdgo.Slice<stdgo.GoUInt8>));
            };
            (@:checkr _b ?? throw "null pointer dereference")._n = ((@:checkr _b ?? throw "null pointer dereference")._n - (_n) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._err = _err;
            return _err;
        };
        (@:checkr _b ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_w))) {
            return;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._buf == null) {
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _b ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._n = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._wr = _w;
    }
    @:keep
    @:tdfield
    static public function size( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = _b;
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
    }
}
