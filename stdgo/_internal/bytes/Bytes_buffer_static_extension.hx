package stdgo._internal.bytes;
@:keep @:allow(stdgo._internal.bytes.Bytes.Buffer_asInterface) class Buffer_static_extension {
    @:keep
    @:tdfield
    static public function readString( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _line = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L460"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_slice : stdgo.GoString)?.__copy__(), _1 : _err };
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
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L442"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _end = ((@:checkr _b ?? throw "null pointer dereference")._buf.length);
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        _line = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off, _end) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = _end;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L449"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _line, _1 : _err };
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
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line.__append__(...(_slice : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L435"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _line, _1 : _err };
            _line = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function unreadByte( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L414"
        if ((@:checkr _b ?? throw "null pointer dereference")._lastRead == ((0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L415"
            return stdgo._internal.bytes.Bytes__errunreadbyte._errUnreadByte;
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L418"
        if (((@:checkr _b ?? throw "null pointer dereference")._off > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L419"
            (@:checkr _b ?? throw "null pointer dereference")._off--;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L421"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function unreadRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L397"
        if (((@:checkr _b ?? throw "null pointer dereference")._lastRead <= (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L398"
            return stdgo._internal.errors.Errors_new_.new_(("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L400"
        if (((@:checkr _b ?? throw "null pointer dereference")._off >= ((@:checkr _b ?? throw "null pointer dereference")._lastRead : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off - (((@:checkr _b ?? throw "null pointer dereference")._lastRead : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L404"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L374"
        if (_b._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L376"
            _b.reset();
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L377"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_eof.eOF };
                _r = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L380"
        if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L381"
            (@:checkr _b ?? throw "null pointer dereference")._off++;
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L383"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (_n : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L388"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _r, _1 : _n, _2 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L357"
        if (_b._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L359"
            _b.reset();
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L360"
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf[((@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L363"
        (@:checkr _b ?? throw "null pointer dereference")._off++;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L365"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function next( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var _m = (_b.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L343"
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        var _data = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off, ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L348"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L351"
        return _data;
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L320"
        if (_b._empty()) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L322"
            _b.reset();
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L323"
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L324"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L326"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = _p.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L330"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._lastRead = (-1 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L333"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L301"
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L302"
            _b.writeByte((_r : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L303"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((4 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L307"
        if (!_ok) {
            _m = _b._grow((4 : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), _r);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L311"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - _m : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
        var __tmp__ = _b._tryGrowByReslice((1 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L288"
        if (!_ok) {
            _m = _b._grow((1 : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf[(_m : stdgo.GoInt)] = _c;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L292"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeTo( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L260"
        {
            var _nBytes = (_b.len() : stdgo.GoInt);
            if ((_nBytes > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _w.write(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L262"
                if ((_m > _nBytes : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L263"
                    throw stdgo.Go.toInterface(("bytes.Buffer.WriteTo: invalid Write count" : stdgo.GoString));
                };
                (@:checkr _b ?? throw "null pointer dereference")._off = ((@:checkr _b ?? throw "null pointer dereference")._off + (_m) : stdgo.GoInt);
                _n = (_m : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L267"
                if (_e != null) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L268"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L272"
                if (_m != (_nBytes)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L273"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_errshortwrite.errShortWrite };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L277"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L278"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L208"
        while (true) {
            var _i = (_b._grow((512 : stdgo.GoInt)) : stdgo.GoInt);
            (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_i, (@:checkr _b ?? throw "null pointer dereference")._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L212"
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L213"
                throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes__errnegativeread._errNegativeRead);
            };
            (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_i + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L218"
            if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L219"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L221"
            if (_e != null) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L222"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _e };
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
        var __tmp__ = _b._tryGrowByReslice((_s.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L190"
        if (!_ok) {
            _m = _b._grow((_s.length));
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L193"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_s), _1 : (null : stdgo.Error) };
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
        var __tmp__ = _b._tryGrowByReslice((_p.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L178"
        if (!_ok) {
            _m = _b._grow((_p.length));
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L181"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L165"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L166"
            throw stdgo.Go.toInterface(("bytes.Buffer.Grow: negative count" : stdgo.GoString));
        };
        var _m = (_b._grow(_n) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _grow( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        var _m = (_b.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L129"
        if (((_m == (0 : stdgo.GoInt)) && ((@:checkr _b ?? throw "null pointer dereference")._off != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L130"
            _b.reset();
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L133"
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L134"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L136"
        if ((((@:checkr _b ?? throw "null pointer dereference")._buf == null) && (_n <= (64 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _b ?? throw "null pointer dereference")._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L138"
            return (0 : stdgo.GoInt);
        };
        var _c = ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L141"
        if ((_n <= ((_c / (2 : stdgo.GoInt) : stdgo.GoInt) - _m : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L146"
            (@:checkr _b ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        } else if ((_c > (((2147483647 : stdgo.GoInt) - _c : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L148"
            throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_errtoolarge.errTooLarge);
        } else {
            (@:checkr _b ?? throw "null pointer dereference")._buf = stdgo._internal.bytes.Bytes__growslice._growSlice(((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt));
        };
        (@:checkr _b ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_m + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L156"
        return _m;
    }
    @:keep
    @:tdfield
    static public function _tryGrowByReslice( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L116"
        {
            var _l = ((@:checkr _b ?? throw "null pointer dereference")._buf.length : stdgo.GoInt);
            if ((_n <= ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity - _l : stdgo.GoInt) : Bool)) {
                (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, (_l + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L118"
                return { _0 : _l, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L120"
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
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L92"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L93"
            _b.reset();
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L94"
            return;
        };
        (@:checkr _b ?? throw "null pointer dereference")._lastRead = (0 : stdgo._internal.bytes.Bytes_t_readop.T_readOp);
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L97"
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _b.len() : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L98"
            throw stdgo.Go.toInterface(("bytes.Buffer: truncation out of range" : stdgo.GoString));
        };
        (@:checkr _b ?? throw "null pointer dereference")._buf = ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(0, ((@:checkr _b ?? throw "null pointer dereference")._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function available( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L86"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.capacity - ((@:checkr _b ?? throw "null pointer dereference")._buf.length) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function cap( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L83"
        return (@:checkr _b ?? throw "null pointer dereference")._buf.capacity;
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L79"
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) - (@:checkr _b ?? throw "null pointer dereference")._off : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _empty( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L75"
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.length) <= (@:checkr _b ?? throw "null pointer dereference")._off : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L67"
        if (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L69"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L71"
        return (((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function availableBuffer( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L60"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__(((@:checkr _b ?? throw "null pointer dereference")._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = _b;
        //"file:///home/runner/.go/go1.21.3/src/bytes/buffer.go#L54"
        return ((@:checkr _b ?? throw "null pointer dereference")._buf.__slice__((@:checkr _b ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
