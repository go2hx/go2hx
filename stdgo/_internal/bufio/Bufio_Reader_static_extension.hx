package stdgo._internal.bufio;
@:keep @:allow(stdgo._internal.bufio.Bufio.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _writeBuf( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var __tmp__ = _w.write((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errNegativeWrite._errNegativeWrite);
        };
        _b._r = (_b._r + (_n) : stdgo.GoInt);
        return { _0 : (_n : stdgo.GoInt64), _1 : _err };
    }
    @:keep
    static public function writeTo( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        {
            var __tmp__ = _b._writeBuf(_w);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_b._rd) : stdgo._internal.io.Io_WriterTo.WriterTo)) : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _r.writeTo(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom)) : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ReaderFrom.ReaderFrom), _1 : false };
            }, _w = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _w.readFrom(_b._rd), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_m) : stdgo.GoInt64);
                return { _0 : _n, _1 : _err };
            };
        };
        if (((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool)) {
            _b._fill();
        };
        while ((_b._r < _b._w : Bool)) {
            var __tmp__ = _b._writeBuf(_w), _m:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_m) : stdgo.GoInt64);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _b._fill();
        };
        if (stdgo.Go.toInterface(_b._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _b._err = (null : stdgo.Error);
        };
        return { _0 : _n, _1 : _b._readErr() };
    }
    @:keep
    static public function readString( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _buf.grow(_n);
        for (__0 => _fb in _full) {
            _buf.write(_fb);
        };
        _buf.write(_frag);
        return { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    static public function readBytes( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var __tmp__ = _b._collectFragments(_delim), _full:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = __tmp__._0, _frag:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _n:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _n = (0 : stdgo.GoInt);
        for (_i => _ in _full) {
            _n = (_n + (stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _full[(_i : stdgo.GoInt)])) : stdgo.GoInt);
        };
        stdgo.Go.copySlice((_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _frag);
        return { _0 : _buf, _1 : _err };
    }
    @:keep
    static public function _collectFragments( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _fullBuffers = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), _finalFragment = (null : stdgo.Slice<stdgo.GoUInt8>), _totalLen = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _frag:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var _e:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _b.readSlice(_delim);
                _frag = __tmp__._0;
                _e = __tmp__._1;
            };
            if (_e == null) {
                break;
            };
            if (stdgo.Go.toInterface(_e) != (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
                _err = _e;
                break;
            };
            var _buf = stdgo._internal.bytes.Bytes_clone.clone(_frag);
            _fullBuffers = (_fullBuffers.__append__(_buf));
            _totalLen = (_totalLen + ((_buf.length)) : stdgo.GoInt);
        };
        _totalLen = (_totalLen + ((_frag.length)) : stdgo.GoInt);
        return { _0 : _fullBuffers, _1 : _frag, _2 : _totalLen, _3 : _err };
    }
    @:keep
    static public function readLine( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _isPrefix = false, _err = (null : stdgo.Error);
        {
            var __tmp__ = _b.readSlice((10 : stdgo.GoUInt8));
            _line = __tmp__._0;
            _err = __tmp__._1;
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull))) {
            if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                if (_b._r == ((0 : stdgo.GoInt))) {
                    throw stdgo.Go.toInterface(("bufio: tried to rewind past start of buffer" : stdgo.GoString));
                };
                _b._r--;
                _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            return { _0 : _line, _1 : true, _2 : (null : stdgo.Error) };
        };
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            if (_err != null) {
                _line = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            return { _0 : _line, _1 : _isPrefix, _2 : _err };
        };
        _err = (null : stdgo.Error);
        if (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
            var _drop = (1 : stdgo.GoInt);
            if ((((_line.length) > (1 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                _drop = (2 : stdgo.GoInt);
            };
            _line = (_line.__slice__(0, ((_line.length) - _drop : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _line, _1 : _isPrefix, _2 : _err };
    }
    @:keep
    static public function readSlice( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _s = (0 : stdgo.GoInt);
        while (true) {
            {
                var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_b._buf.__slice__((_b._r + _s : stdgo.GoInt), _b._w) : stdgo.Slice<stdgo.GoUInt8>), _delim) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _i = (_i + (_s) : stdgo.GoInt);
                    _line = (_b._buf.__slice__(_b._r, ((_b._r + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b._r = (_b._r + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
            };
            if (_b._err != null) {
                _line = (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>);
                _b._r = _b._w;
                _err = _b._readErr();
                break;
            };
            if ((_b.buffered() >= (_b._buf.length) : Bool)) {
                _b._r = _b._w;
                _line = _b._buf;
                _err = stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull;
                break;
            };
            _s = (_b._w - _b._r : stdgo.GoInt);
            _b._fill();
        };
        {
            var _i = ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _b._lastByte = (_line[(_i : stdgo.GoInt)] : stdgo.GoInt);
                _b._lastRuneSize = (-1 : stdgo.GoInt);
            };
        };
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function buffered( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        return (_b._w - _b._r : stdgo.GoInt);
    }
    @:keep
    static public function unreadRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        if (((_b._lastRuneSize < (0 : stdgo.GoInt) : Bool) || (_b._r < _b._lastRuneSize : Bool) : Bool)) {
            return stdgo._internal.bufio.Bufio_errInvalidUnreadRune.errInvalidUnreadRune;
        };
        _b._r = (_b._r - (_b._lastRuneSize) : stdgo.GoInt);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((((_b._r + (4 : stdgo.GoInt) : stdgo.GoInt) > _b._w : Bool) && !stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>)) : Bool) && _b._err == null : Bool) && ((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool) : Bool)) {
            _b._fill();
        };
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        if (_b._r == (_b._w)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : _b._readErr() };
        };
        {
            final __tmp__0 = (_b._buf[(_b._r : stdgo.GoInt)] : stdgo.GoInt32);
            final __tmp__1 = (1 : stdgo.GoInt);
            _r = __tmp__0;
            _size = __tmp__1;
        };
        if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
                _r = __tmp__._0;
                _size = __tmp__._1;
            };
        };
        _b._r = (_b._r + (_size) : stdgo.GoInt);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        _b._lastRuneSize = _size;
        return { _0 : _r, _1 : _size, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function unreadByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        if (((_b._lastByte < (0 : stdgo.GoInt) : Bool) || (_b._r == ((0 : stdgo.GoInt)) && (_b._w > (0 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
            return stdgo._internal.bufio.Bufio_errInvalidUnreadByte.errInvalidUnreadByte;
        };
        if ((_b._r > (0 : stdgo.GoInt) : Bool)) {
            _b._r--;
        } else {
            _b._w = (1 : stdgo.GoInt);
        };
        _b._buf[(_b._r : stdgo.GoInt)] = (_b._lastByte : stdgo.GoUInt8);
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        while (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _b._readErr() };
            };
            _b._fill();
        };
        var _c = (_b._buf[(_b._r : stdgo.GoInt)] : stdgo.GoUInt8);
        _b._r++;
        _b._lastByte = (_c : stdgo.GoInt);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = (_p.length);
        if (_n == ((0 : stdgo.GoInt))) {
            if ((_b.buffered() > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
        };
        if (_b._r == (_b._w)) {
            if (_b._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
            };
            if (((_p.length) >= (_b._buf.length) : Bool)) {
                {
                    var __tmp__ = _b._rd.read(_p);
                    _n = __tmp__._0;
                    _b._err = __tmp__._1;
                };
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errNegativeRead._errNegativeRead);
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _b._lastByte = (_p[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
                    _b._lastRuneSize = (-1 : stdgo.GoInt);
                };
                return { _0 : _n, _1 : _b._readErr() };
            };
            _b._r = (0 : stdgo.GoInt);
            _b._w = (0 : stdgo.GoInt);
            {
                var __tmp__ = _b._rd.read(_b._buf);
                _n = __tmp__._0;
                _b._err = __tmp__._1;
            };
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errNegativeRead._errNegativeRead);
            };
            if (_n == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : _b._readErr() };
            };
            _b._w = (_b._w + (_n) : stdgo.GoInt);
        };
        _n = stdgo.Go.copySlice(_p, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
        _b._r = (_b._r + (_n) : stdgo.GoInt);
        _b._lastByte = (_b._buf[(_b._r - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function discard( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _discarded = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.bufio.Bufio_errNegativeCount.errNegativeCount };
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return { _0 : _discarded, _1 : _err };
        };
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        var _remain = (_n : stdgo.GoInt);
        while (true) {
            var _skip = (_b.buffered() : stdgo.GoInt);
            if (_skip == ((0 : stdgo.GoInt))) {
                _b._fill();
                _skip = _b.buffered();
            };
            if ((_skip > _remain : Bool)) {
                _skip = _remain;
            };
            _b._r = (_b._r + (_skip) : stdgo.GoInt);
            _remain = (_remain - (_skip) : stdgo.GoInt);
            if (_remain == ((0 : stdgo.GoInt))) {
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_b._err != null) {
                return { _0 : (_n - _remain : stdgo.GoInt), _1 : _b._readErr() };
            };
        };
    }
    @:keep
    static public function peek( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.bufio.Bufio_errNegativeCount.errNegativeCount };
        };
        _b._lastByte = (-1 : stdgo.GoInt);
        _b._lastRuneSize = (-1 : stdgo.GoInt);
        while (((((_b._w - _b._r : stdgo.GoInt) < _n : Bool) && ((_b._w - _b._r : stdgo.GoInt) < (_b._buf.length) : Bool) : Bool) && (_b._err == null) : Bool)) {
            _b._fill();
        };
        if ((_n > (_b._buf.length) : Bool)) {
            return { _0 : (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var _avail = (_b._w - _b._r : stdgo.GoInt);
            if ((_avail < _n : Bool)) {
                _n = _avail;
                _err = _b._readErr();
                if (_err == null) {
                    _err = stdgo._internal.bufio.Bufio_errBufferFull.errBufferFull;
                };
            };
        };
        return { _0 : (_b._buf.__slice__(_b._r, (_b._r + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    static public function _readErr( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        var _err = (_b._err : stdgo.Error);
        _b._err = (null : stdgo.Error);
        return _err;
    }
    @:keep
    static public function _fill( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        if ((_b._r > (0 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_b._buf, (_b._buf.__slice__(_b._r, _b._w) : stdgo.Slice<stdgo.GoUInt8>));
            _b._w = (_b._w - (_b._r) : stdgo.GoInt);
            _b._r = (0 : stdgo.GoInt);
        };
        if ((_b._w >= (_b._buf.length) : Bool)) {
            throw stdgo.Go.toInterface(("bufio: tried to fill full buffer" : stdgo.GoString));
        };
        {
            var _i = (100 : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _b._rd.read((_b._buf.__slice__(_b._w) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.bufio.Bufio__errNegativeRead._errNegativeRead);
                };
_b._w = (_b._w + (_n) : stdgo.GoInt);
if (_err != null) {
                    _b._err = _err;
                    return;
                };
if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    return;
                };
                _i--;
            };
        };
        _b._err = stdgo._internal.io.Io_errNoProgress.errNoProgress;
    }
    @:keep
    static public function _reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        {
            var __tmp__ = ({ _buf : _buf, _rd : _r, _lastByte : (-1 : stdgo.GoInt), _lastRuneSize : (-1 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio_Reader.Reader);
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._buf = __tmp__._buf;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._rd = __tmp__._rd;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._r = __tmp__._r;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._w = __tmp__._w;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._err = __tmp__._err;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._lastByte = __tmp__._lastByte;
            (_b : stdgo._internal.bufio.Bufio_Reader.Reader)._lastRuneSize = __tmp__._lastRuneSize;
        };
    }
    @:keep
    static public function reset( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        if (stdgo.Go.toInterface(stdgo.Go.asInterface(_b)) == (stdgo.Go.toInterface(_r))) {
            return;
        };
        if (_b._buf == null) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b._reset(_b._buf, _r);
    }
    @:keep
    static public function size( _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = _b;
        return (_b._buf.length);
    }
}
