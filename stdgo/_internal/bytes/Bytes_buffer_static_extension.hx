package stdgo._internal.bytes;
@:keep @:allow(stdgo._internal.bytes.Bytes.Buffer_asInterface) class Buffer_static_extension {
    @:keep
    @:tdfield
    static public function readString( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _line = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_slice : stdgo.GoString)?.__copy__(), _1 : _err };
            _line = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readSlice( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>), _delim) : stdgo.GoInt);
        var _end = (((@:checkr _b ?? throw "null pointer dereference")._off + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _end = ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        _line = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off, _end) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = _end;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _line, _1 : _err };
            _line = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readBytes( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _line = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line.__append__(...(_slice : Array<stdgo.GoUInt8>)));
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _line, _1 : _err };
            _line = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function unreadByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if ((@:checkr _b ?? throw "null pointer dereference")._lastRead == ((0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp))) {
            return stdgo._internal.bytes.Bytes__errunreadbyte._errUnreadByte;
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        if (((@:checkr _b ?? throw "null pointer dereference")._off > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._off--;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function unreadRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if (((@:checkr _b ?? throw "null pointer dereference")._lastRead <= (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : stdgo.GoString));
        };
        if (((@:checkr _b ?? throw "null pointer dereference")._off >= ((@:checkr _b ?? throw "null pointer dereference")._lastRead : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off - (((@:checkr _b ?? throw "null pointer dereference")._lastRead : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (@:check2r _b._empty()) {
            @:check2r _b.reset();
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_eof.eOF };
                _r = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._off++;
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (_n : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _r, _1 : _n, _2 : (null : stdgo.Error) };
            _r = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if (@:check2r _b._empty()) {
            @:check2r _b.reset();
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _b ?? throw "null pointer dereference")._off++;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function next( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var _m = (@:check2r _b.len() : stdgo.GoInt);
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        var _data = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off, ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        };
        return _data;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        if (@:check2r _b._empty()) {
            @:check2r _b.reset();
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = _p.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            @:check2r _b.writeByte((_r : stdgo.GoUInt8));
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var __tmp__ = @:check2r _b._tryGrowByReslice((4 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = @:check2r _b._grow((4 : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), _r);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - _m : stdgo.GoInt), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var __tmp__ = @:check2r _b._tryGrowByReslice((1 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = @:check2r _b._grow((1 : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[(_m : stdgo.GoInt)] = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeTo( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        {
            var _nBytes = (@:check2r _b.len() : stdgo.GoInt);
            if ((_nBytes > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _w.write(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if ((_m > _nBytes : Bool)) {
                    throw stdgo.Go.toInterface(("bytes.Buffer.WriteTo: invalid Write count" : stdgo.GoString));
                };
                (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_m) : stdgo.GoInt);
                _n = (_m : stdgo.GoInt64);
                if (_e != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                if (_m != (_nBytes)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errshortwrite.errShortWrite };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        @:check2r _b.reset();
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readFrom( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        while (true) {
            var _i = (@:check2r _b._grow((512 : stdgo.GoInt)) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_i, (@:checkr _b ?? throw "null pointer dereference")._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes__errnegativeread._errNegativeRead);
            };
            (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_i + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            if (_e != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var __tmp__ = @:check2r _b._tryGrowByReslice((_s.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = @:check2r _b._grow((_s.length));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var __tmp__ = @:check2r _b._tryGrowByReslice((_p.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = @:check2r _b._grow((_p.length));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer.Grow: negative count" : stdgo.GoString));
        };
        var _m = (@:check2r _b._grow(_n) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _m = (@:check2r _b.len() : stdgo.GoInt);
        if (((_m == (0 : stdgo.GoInt)) && ((@:checkr _b ?? throw "null pointer dereference")._off != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _b.reset();
        };
        {
            var __tmp__ = @:check2r _b._tryGrowByReslice(_n), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if ((((@:checkr _b ?? throw "null pointer dereference")._buf == null) && (_n <= (64 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            return (0 : stdgo.GoInt);
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity : stdgo.GoInt);
        if ((_n <= ((_c / (2 : stdgo.GoInt) : stdgo.GoInt) - _m : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        } else if ((_c > (((2147483647 : stdgo.GoInt) - _c : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._buf = stdgo._internal.bytes.Bytes__growslice._growSlice(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_m + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _m;
    }
    @:keep
    @:tdfield
    static public function _tryGrowByReslice( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        {
            var _l = ((@:checkr _b ?? throw "null pointer dereference")._buf.length : stdgo.GoInt);
            if ((_n <= ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity - _l : stdgo.GoInt) : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_l + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    @:tdfield
    static public function reset( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
    }
    @:keep
    @:tdfield
    static public function truncate( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if (_n == ((0 : stdgo.GoInt))) {
            @:check2r _b.reset();
            return;
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > @:check2r _b.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer: truncation out of range" : stdgo.GoString));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function available( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity - ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function cap( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._buf.capacity;
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - (@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _empty( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) <= (@:checkr _b ?? throw "null pointer dereference")._off : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        if ((_b == null || (_b : Dynamic).__nil__)) {
            return ("<nil>" : stdgo.GoString);
        };
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(((@:checkr _b ?? throw "null pointer dereference")._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
