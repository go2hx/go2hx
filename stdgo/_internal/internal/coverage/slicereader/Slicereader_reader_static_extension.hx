package stdgo._internal.internal.coverage.slicereader;
@:keep @:allow(stdgo._internal.internal.coverage.slicereader.Slicereader.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function readString( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>, _len:stdgo.GoInt64):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _b = ((@:checkr _r ?? throw "null pointer dereference")._b.__slice__((@:checkr _r ?? throw "null pointer dereference")._off, ((@:checkr _r ?? throw "null pointer dereference")._off + _len : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + (_len) : stdgo.GoInt64);
        if ((@:checkr _r ?? throw "null pointer dereference")._readonly) {
            return stdgo._internal.internal.coverage.slicereader.Slicereader__tostring._toString(_b)?.__copy__();
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function readULEB128( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _value = (0 : stdgo.GoUInt64);
        var _shift:stdgo.GoUInt = (0 : stdgo.GoUInt);
        while (true) {
            var _b = ((@:checkr _r ?? throw "null pointer dereference")._b[((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
            (@:checkr _r ?? throw "null pointer dereference")._off++;
            _value = (_value | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _shift : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                break;
            };
            _shift = (_shift + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return _value;
    }
    @:keep
    @:tdfield
    static public function readUint64( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _end = (((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
        var _rv = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64(((@:checkr _r ?? throw "null pointer dereference")._b.__slice__(((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt), _end, _end) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + ((8i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        return _rv;
    }
    @:keep
    @:tdfield
    static public function readUint32( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _end = (((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        var _rv = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._b.__slice__(((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt), _end, _end) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        return _rv;
    }
    @:keep
    @:tdfield
    static public function readUint8( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _rv = ((@:checkr _r ?? throw "null pointer dereference")._b[((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + ((1i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        return _rv;
    }
    @:keep
    @:tdfield
    static public function offset( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._off;
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _ret = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr _r ?? throw "null pointer dereference")._b.length : stdgo.GoInt64) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(((@:checkr _r ?? throw "null pointer dereference")._b.length))) };
                        _ret = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._off = _offset;
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _offset, _1 : (null : stdgo.Error) };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _newoff = ((@:checkr _r ?? throw "null pointer dereference")._off + _offset : stdgo.GoInt64);
                if (((_newoff < (0i64 : stdgo.GoInt64) : Bool) || (_newoff > ((@:checkr _r ?? throw "null pointer dereference")._b.length : stdgo.GoInt64) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_newoff), stdgo.Go.toInterface(((@:checkr _r ?? throw "null pointer dereference")._b.length))) };
                        _ret = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._off = _newoff;
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (@:checkr _r ?? throw "null pointer dereference")._off, _1 : (null : stdgo.Error) };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                var _newoff = (((@:checkr _r ?? throw "null pointer dereference")._b.length : stdgo.GoInt64) + _offset : stdgo.GoInt64);
                if (((_newoff < (0i64 : stdgo.GoInt64) : Bool) || (_newoff > ((@:checkr _r ?? throw "null pointer dereference")._b.length : stdgo.GoInt64) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid seek: new offset %d (out of range [0 %d]" : stdgo.GoString), stdgo.Go.toInterface(_newoff), stdgo.Go.toInterface(((@:checkr _r ?? throw "null pointer dereference")._b.length))) };
                        _ret = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._off = _newoff;
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (@:checkr _r ?? throw "null pointer dereference")._off, _1 : (null : stdgo.Error) };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported seek mode %d" : stdgo.GoString), stdgo.Go.toInterface(_whence)) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = _r;
        var _amt = (_b.length : stdgo.GoInt);
        var _toread = ((@:checkr _r ?? throw "null pointer dereference")._b.__slice__((@:checkr _r ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_toread.length) < _amt : Bool)) {
            _amt = (_toread.length);
        };
        _b.__copyTo__(_toread);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + ((_amt : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _amt, _1 : (null : stdgo.Error) };
    }
}
