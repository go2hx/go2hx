package stdgo._internal.bytes;
@:keep @:allow(stdgo._internal.bytes.Bytes.Buffer_asInterface) class Buffer_static_extension {
    @:keep
    static public function readString( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _line = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : _line = (_slice : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    static public function _readSlice( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _i = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>), _delim) : stdgo.GoInt);
        var _end = ((_b._off + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _end = (_b._buf.length);
            _err = stdgo._internal.io.Io_eof.eof;
        };
        _line = (_b._buf.__slice__(_b._off, _end) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = _end;
        _b._lastRead = (-1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readBytes( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line.__append__(...(_slice : Array<stdgo.GoUInt8>)));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function unreadByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if (_b._lastRead == ((0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp))) {
            return stdgo._internal.bytes.Bytes__errUnreadByte._errUnreadByte;
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        if ((_b._off > (0 : stdgo.GoInt) : Bool)) {
            _b._off--;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function unreadRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if ((_b._lastRead <= (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : stdgo.GoString));
        };
        if ((_b._off >= (_b._lastRead : stdgo.GoInt) : Bool)) {
            _b._off = (_b._off - ((_b._lastRead : stdgo.GoInt)) : stdgo.GoInt);
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_b._empty()) {
            _b.reset();
            return { _0 : _r = (0 : stdgo.GoInt32), _1 : _size = (0 : stdgo.GoInt), _2 : _err = stdgo._internal.io.Io_eof.eof };
        };
        var _c = (_b._buf[(_b._off : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
            _b._off++;
            _b._lastRead = (1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
            return { _0 : _r = (_c : stdgo.GoInt32), _1 : _size = (1 : stdgo.GoInt), _2 : _err = (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        _b._lastRead = (_n : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        return { _0 : _r, _1 : _size = _n, _2 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if (_b._empty()) {
            _b.reset();
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eof };
        };
        var _c = (_b._buf[(_b._off : stdgo.GoInt)] : stdgo.GoUInt8);
        _b._off++;
        _b._lastRead = (-1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function next( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        var _m = (_b.len() : stdgo.GoInt);
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        var _data = (_b._buf.__slice__(_b._off, (_b._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _b._lastRead = (-1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        };
        return _data;
    }
    @:keep
    static public function read( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        if (_b._empty()) {
            _b.reset();
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
            };
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
        };
        _n = stdgo.Go.copySlice(_p, (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>));
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _b._lastRead = (-1 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        };
        return { _0 : _n, _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _b.writeByte((_r : stdgo.GoUInt8));
            return { _0 : _n = (1 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((4 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((4 : stdgo.GoInt));
        };
        _b._buf = stdgo._internal.unicode.utf8.Utf8_appendRune.appendRune((_b._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), _r);
        return { _0 : _n = ((_b._buf.length) - _m : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((1 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((1 : stdgo.GoInt));
        };
        _b._buf[(_m : stdgo.GoInt)] = _c;
        return (null : stdgo.Error);
    }
    @:keep
    static public function writeTo( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        {
            var _nBytes = (_b.len() : stdgo.GoInt);
            if ((_nBytes > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _w.write((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if ((_m > _nBytes : Bool)) {
                    throw stdgo.Go.toInterface(("bytes.Buffer.WriteTo: invalid Write count" : stdgo.GoString));
                };
                _b._off = (_b._off + (_m) : stdgo.GoInt);
                _n = (_m : stdgo.GoInt64);
                if (_e != null) {
                    return { _0 : _n, _1 : _err = _e };
                };
                if (_m != (_nBytes)) {
                    return { _0 : _n, _1 : _err = stdgo._internal.io.Io_errShortWrite.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function readFrom( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        while (true) {
            var _i = (_b._grow((512 : stdgo.GoInt)) : stdgo.GoInt);
            _b._buf = (_b._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read((_b._buf.__slice__(_i, _b._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes__errNegativeRead._errNegativeRead);
            };
            _b._buf = (_b._buf.__slice__(0, (_i + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return { _0 : _n, _1 : _err = (null : stdgo.Error) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _err = _e };
            };
        };
    }
    @:keep
    static public function writeString( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((_s.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s.length));
        };
        return { _0 : _n = stdgo.Go.copySlice((_b._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>), _s), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function write( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((_p.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p.length));
        };
        return { _0 : _n = stdgo.Go.copySlice((_b._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>), _p), _1 : _err = (null : stdgo.Error) };
    }
    @:keep
    static public function grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer.Grow: negative count" : stdgo.GoString));
        };
        var _m = (_b._grow(_n) : stdgo.GoInt);
        _b._buf = (_b._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        var _m = (_b.len() : stdgo.GoInt);
        if (((_m == (0 : stdgo.GoInt)) && (_b._off != (0 : stdgo.GoInt)) : Bool)) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if (((_b._buf == null) && (_n <= (64 : stdgo.GoInt) : Bool) : Bool)) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            return (0 : stdgo.GoInt);
        };
        var _c = (_b._buf.capacity : stdgo.GoInt);
        if ((_n <= ((_c / (2 : stdgo.GoInt) : stdgo.GoInt) - _m : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_b._buf, (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>));
        } else if ((_c > (((2147483647 : stdgo.GoInt) - _c : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_errTooLarge.errTooLarge);
        } else {
            _b._buf = stdgo._internal.bytes.Bytes__growSlice._growSlice((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>), (_b._off + _n : stdgo.GoInt));
        };
        _b._off = (0 : stdgo.GoInt);
        _b._buf = (_b._buf.__slice__(0, (_m + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _m;
    }
    @:keep
    static public function _tryGrowByReslice( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        {
            var _l = (_b._buf.length : stdgo.GoInt);
            if ((_n <= (_b._buf.capacity - _l : stdgo.GoInt) : Bool)) {
                _b._buf = (_b._buf.__slice__(0, (_l + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    static public function reset( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        _b._buf = (_b._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (0 : stdgo.GoInt);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
    }
    @:keep
    static public function truncate( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if (_n == ((0 : stdgo.GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes_T_readOp.T_readOp);
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _b.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer: truncation out of range" : stdgo.GoString));
        };
        _b._buf = (_b._buf.__slice__(0, (_b._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function available( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return (_b._buf.capacity - (_b._buf.length) : stdgo.GoInt);
    }
    @:keep
    static public function cap( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return _b._buf.capacity;
    }
    @:keep
    static public function len( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return ((_b._buf.length) - _b._off : stdgo.GoInt);
    }
    @:keep
    static public function _empty( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return ((_b._buf.length) <= _b._off : Bool);
    }
    @:keep
    static public function string( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        if ((_b == null || (_b : Dynamic).__nil__)) {
            return ("<nil>" : stdgo.GoString);
        };
        return ((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return (_b._buf.__slice__((_b._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = _b;
        return (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
