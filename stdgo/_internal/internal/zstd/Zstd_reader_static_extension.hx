package stdgo._internal.internal.zstd;
@:keep @:allow(stdgo._internal.internal.zstd.Zstd.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _wrapError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return _err;
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError(((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (_off : stdgo.GoInt64) : stdgo.GoInt64), _err) : stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError)) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>));
    }
    @:keep
    @:tdfield
    static public function _makeError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        return @:check2r _r._wrapError(_off, stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _wrapNonEOFError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        return @:check2r _r._wrapError(_off, _err);
    }
    @:keep
    @:tdfield
    static public function _makeEOFError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        return @:check2r _r._wrapError(_off, stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF);
    }
    @:keep
    @:tdfield
    static public function _saveWindow( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._windowSize == ((0 : stdgo.GoInt))) {
            return;
        };
        if (((_buf.length) >= (@:checkr _r ?? throw "null pointer dereference")._windowSize : Bool)) {
            var _from = ((_buf.length) - (@:checkr _r ?? throw "null pointer dereference")._windowSize : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._window = (((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_buf.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return;
        };
        var _keep = ((@:checkr _r ?? throw "null pointer dereference")._windowSize - (_buf.length) : stdgo.GoInt);
        if ((_keep < ((@:checkr _r ?? throw "null pointer dereference")._window.length) : Bool)) {
            var _remove = (((@:checkr _r ?? throw "null pointer dereference")._window.length) - _keep : stdgo.GoInt);
            ((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_remove) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _r ?? throw "null pointer dereference")._window = ((@:checkr _r ?? throw "null pointer dereference")._window.__append__(...(_buf : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function _setBufferSize( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _size:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._buffer.capacity < _size : Bool)) {
            var _need = (_size - (@:checkr _r ?? throw "null pointer dereference")._buffer.capacity : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._buffer = (((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._buffer.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _readBlock( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        var _header = ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32) | ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _lastBlock = ((_header & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32)) : Bool);
        var _blockType = (((_header >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _blockSize = ((_header >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt);
        if (((_blockSize > (131072 : stdgo.GoInt) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference")._windowSize > (0 : stdgo.GoInt) : Bool) && (_blockSize > (@:checkr _r ?? throw "null pointer dereference")._windowSize : Bool) : Bool)) : Bool)) {
            return @:check2r _r._makeError(_relativeOffset, ("block size too large" : stdgo.GoString));
        };
        {
            final __value__ = _blockType;
            if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                @:check2r _r._setBufferSize(_blockSize);
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, (@:checkr _r ?? throw "null pointer dereference")._buffer), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                _relativeOffset = (_relativeOffset + (_blockSize) : stdgo.GoInt);
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                @:check2r _r._setBufferSize(_blockSize);
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                _relativeOffset++;
                var _v = ((@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._buffer) {
                    (@:checkr _r ?? throw "null pointer dereference")._buffer[(_i : stdgo.GoInt)] = _v;
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
                {
                    var _err = (@:check2r _r._compressedBlock(_blockSize) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_blockSize : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((3u32 : stdgo.GoUInt32))) {
                return @:check2r _r._makeError(_relativeOffset, ("invalid block type" : stdgo.GoString));
            };
        };
        if (!(@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt64) > (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize : Bool)) {
                return @:check2r _r._makeError(_relativeOffset, ("too many uncompressed bytes in frame" : stdgo.GoString));
            };
            (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = ((@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize - (((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
            @:check2 (@:checkr _r ?? throw "null pointer dereference")._checksum._update((@:checkr _r ?? throw "null pointer dereference")._buffer);
        };
        if (!_lastBlock) {
            @:check2r _r._saveWindow((@:checkr _r ?? throw "null pointer dereference")._buffer);
        } else {
            if ((!(@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown && ((@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize != (0i64 : stdgo.GoUInt64)) : Bool)) {
                return @:check2r _r._makeError(_relativeOffset, ("not enough uncompressed bytes for frame" : stdgo.GoString));
            };
            if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return @:check2r _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
                    };
                };
                var _inputChecksum = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                var _dataChecksum = (@:check2 (@:checkr _r ?? throw "null pointer dereference")._checksum._digest() : stdgo.GoUInt32);
                if (_inputChecksum != (_dataChecksum)) {
                    return @:check2r _r._wrapError((0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_errorf.errorf(("invalid checksum: got %#x want %#x" : stdgo.GoString), stdgo.Go.toInterface(_dataChecksum), stdgo.Go.toInterface(_inputChecksum)));
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            (@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader = false;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _skipFrame( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        var _size = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_seeker.Seeker)) : stdgo._internal.io.Io_seeker.Seeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_seeker.Seeker), _1 : false };
            }, _seeker = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _seeker.seek((_size : stdgo.GoInt64), (1 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (((_relativeOffset : stdgo.GoInt64) + (_size : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                return (null : stdgo.Error);
            };
        };
        var _skip:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {};
        while ((_size >= (1048576u32 : stdgo.GoUInt32) : Bool)) {
            if ((_skip.length) == ((0 : stdgo.GoInt))) {
                _skip = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            _relativeOffset = (_relativeOffset + ((1048576 : stdgo.GoInt)) : stdgo.GoInt);
            _size = (_size - ((1048576u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        if ((_size > (0u32 : stdgo.GoUInt32) : Bool)) {
            if ((_skip.length) == ((0 : stdgo.GoInt))) {
                _skip = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return @:check2r _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            _relativeOffset = (_relativeOffset + ((_size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFrameHeader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _mantissa_13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _windowDescriptor_11:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _windowDescriptorSize_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fcsFieldSize_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _windowSize_17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _windowBase_15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _exponent_12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _headerSize_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _descriptor_5:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _windowAdd_16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3:stdgo.Error = (null : stdgo.Error);
        var _magic_2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _relativeOffset_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fb_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _windowLog_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_10:stdgo.Error = (null : stdgo.Error);
        var _singleSegment_6:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3519881i32;
                } else if (__value__ == (3519881i32)) {
                    _relativeOffset_0 = (0 : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_1 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_1 != null) {
                            _gotoNext = 3520002i32;
                        } else {
                            _gotoNext = 3520184i32;
                        };
                    };
                } else if (__value__ == (3520002i32)) {
                    if (((stdgo.Go.toInterface(_err_1) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && !(@:checkr _r ?? throw "null pointer dereference")._readOneFrame : Bool)) {
                        _gotoNext = 3520102i32;
                    } else {
                        _gotoNext = 3520139i32;
                    };
                } else if (__value__ == (3520102i32)) {
                    _err_1 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 3520139i32;
                } else if (__value__ == (3520139i32)) {
                    return @:check2r _r._wrapError(_relativeOffset_0, _err_1);
                    _gotoNext = 3520184i32;
                } else if (__value__ == (3520184i32)) {
                    {
                        _magic_2 = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        if (_magic_2 != ((-47205080u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3520259i32;
                        } else {
                            _gotoNext = 3520536i32;
                        };
                    };
                } else if (__value__ == (3520259i32)) {
                    if (((_magic_2 >= (407710288u32 : stdgo.GoUInt32) : Bool) && (_magic_2 <= (407710303u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3520309i32;
                    } else {
                        _gotoNext = 3520472i32;
                    };
                } else if (__value__ == (3520309i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (((_relativeOffset_0 : stdgo.GoInt64) + (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                    {
                        _err_3 = @:check2r _r._skipFrame();
                        if (_err_3 != null) {
                            _gotoNext = 3520429i32;
                        } else {
                            _gotoNext = 3520454i32;
                        };
                    };
                } else if (__value__ == (3520429i32)) {
                    return _err_3;
                    _gotoNext = 3520454i32;
                } else if (__value__ == (3520454i32)) {
                    _gotoNext = 3519881i32;
                } else if (__value__ == (3520472i32)) {
                    return @:check2r _r._makeError(_relativeOffset_0, ("invalid magic number" : stdgo.GoString));
                    _gotoNext = 3520536i32;
                } else if (__value__ == (3520536i32)) {
                    _relativeOffset_0 = (_relativeOffset_0 + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3520664i32;
                        } else {
                            _gotoNext = 3520718i32;
                        };
                    };
                } else if (__value__ == (3520664i32)) {
                    return @:check2r _r._wrapNonEOFError(_relativeOffset_0, _err_4);
                    _gotoNext = 3520718i32;
                } else if (__value__ == (3520718i32)) {
                    _descriptor_5 = (@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)];
                    _singleSegment_6 = (_descriptor_5 & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
                    _fcsFieldSize_7 = ((1 : stdgo.GoInt) << ((_descriptor_5 >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoInt);
                    if (((_fcsFieldSize_7 == (1 : stdgo.GoInt)) && !_singleSegment_6 : Bool)) {
                        _gotoNext = 3520868i32;
                    } else {
                        _gotoNext = 3520894i32;
                    };
                } else if (__value__ == (3520868i32)) {
                    _fcsFieldSize_7 = (0 : stdgo.GoInt);
                    _gotoNext = 3520894i32;
                } else if (__value__ == (3520894i32)) {
                    if (_singleSegment_6) {
                        _gotoNext = 3520941i32;
                    } else {
                        _gotoNext = 3520978i32;
                    };
                } else if (__value__ == (3520941i32)) {
                    _windowDescriptorSize_8 = (0 : stdgo.GoInt);
                    _gotoNext = 3521012i32;
                } else if (__value__ == (3520978i32)) {
                    _gotoNext = 3520978i32;
                    _windowDescriptorSize_8 = (1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3521012i32;
                } else if (__value__ == (3521012i32)) {
                    if ((_descriptor_5 & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3521038i32;
                    } else {
                        _gotoNext = 3521129i32;
                    };
                } else if (__value__ == (3521038i32)) {
                    return @:check2r _r._makeError(_relativeOffset_0, ("reserved bit set in frame header descriptor" : stdgo.GoString));
                    _gotoNext = 3521129i32;
                } else if (__value__ == (3521129i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._hasChecksum = (_descriptor_5 & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
                    if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
                        _gotoNext = 3521186i32;
                    } else {
                        _gotoNext = 3521214i32;
                    };
                } else if (__value__ == (3521186i32)) {
                    @:check2 (@:checkr _r ?? throw "null pointer dereference")._checksum._reset();
                    _gotoNext = 3521214i32;
                } else if (__value__ == (3521214i32)) {
                    if ((_descriptor_5 & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3521235i32;
                    } else {
                        _gotoNext = 3521313i32;
                    };
                } else if (__value__ == (3521235i32)) {
                    return @:check2r _r._makeError(_relativeOffset_0, ("dictionaries are not supported" : stdgo.GoString));
                    _gotoNext = 3521313i32;
                } else if (__value__ == (3521313i32)) {
                    _relativeOffset_0++;
                    _headerSize_9 = (_windowDescriptorSize_8 + _fcsFieldSize_7 : stdgo.GoInt);
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, _headerSize_9) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_10 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_10 != null) {
                            _gotoNext = 3521450i32;
                        } else {
                            _gotoNext = 3521590i32;
                        };
                    };
                } else if (__value__ == (3521450i32)) {
                    return @:check2r _r._wrapNonEOFError(_relativeOffset_0, _err_10);
                    _gotoNext = 3521590i32;
                } else if (__value__ == (3521590i32)) {
                    if (_singleSegment_6) {
                        _gotoNext = 3521607i32;
                    } else {
                        _gotoNext = 3521700i32;
                    };
                } else if (__value__ == (3521607i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._windowSize = (0 : stdgo.GoInt);
                    _gotoNext = 3522376i32;
                } else if (__value__ == (3521700i32)) {
                    _gotoNext = 3521700i32;
                    _windowDescriptor_11 = (@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)];
                    _exponent_12 = ((_windowDescriptor_11 >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt64);
                    _mantissa_13 = ((_windowDescriptor_11 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64);
                    _windowLog_14 = (_exponent_12 + (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _windowBase_15 = ((1i64 : stdgo.GoUInt64) << _windowLog_14 : stdgo.GoUInt64);
                    _windowAdd_16 = (((_windowBase_15 / (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * _mantissa_13 : stdgo.GoUInt64);
                    _windowSize_17 = (_windowBase_15 + _windowAdd_16 : stdgo.GoUInt64);
                    if ((stdgo._internal.internal.zstd.Zstd__fuzzing._fuzzing && (((_windowLog_14 > (31i64 : stdgo.GoUInt64) : Bool) || (_windowSize_17 > (134217728i64 : stdgo.GoUInt64) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3522119i32;
                    } else {
                        _gotoNext = 3522248i32;
                    };
                } else if (__value__ == (3522119i32)) {
                    return @:check2r _r._makeError(_relativeOffset_0, ("windowSize too large" : stdgo.GoString));
                    _gotoNext = 3522248i32;
                } else if (__value__ == (3522248i32)) {
                    if ((_windowSize_17 > (8388608i64 : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3522270i32;
                    } else {
                        _gotoNext = 3522303i32;
                    };
                } else if (__value__ == (3522270i32)) {
                    _windowSize_17 = (8388608i64 : stdgo.GoUInt64);
                    _gotoNext = 3522303i32;
                } else if (__value__ == (3522303i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._windowSize = (_windowSize_17 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3522376i32;
                } else if (__value__ == (3522376i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown = false;
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (0i64 : stdgo.GoUInt64);
                    _fb_18 = ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(_windowDescriptorSize_8) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3522470i32;
                } else if (__value__ == (3522470i32)) {
                    {
                        final __value__ = _fcsFieldSize_7;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3522493i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3522530i32;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3522578i32;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3522657i32;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3522730i32;
                        } else {
                            _gotoNext = 3522795i32;
                        };
                    };
                } else if (__value__ == (3522493i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown = true;
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522530i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (_fb_18[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522578i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = ((256i64 : stdgo.GoUInt64) + (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16(_fb_18) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522657i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(_fb_18) : stdgo.GoUInt64);
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522730i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64(_fb_18);
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522795i32)) {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    _gotoNext = 3522832i32;
                } else if (__value__ == (3522832i32)) {
                    _relativeOffset_0 = (_relativeOffset_0 + (_headerSize_9) : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader = true;
                    (@:checkr _r ?? throw "null pointer dereference")._readOneFrame = true;
                    (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset_0 : stdgo.GoInt64)) : stdgo.GoInt64);
                    (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = (1u32 : stdgo.GoUInt32);
                    (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (4u32 : stdgo.GoUInt32);
                    (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3 = (8u32 : stdgo.GoUInt32);
                    (@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits = (0 : stdgo.GoInt);
                    (@:checkr _r ?? throw "null pointer dereference")._window = ((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._seqTables[(0 : stdgo.GoInt)] = (null : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                    (@:checkr _r ?? throw "null pointer dereference")._seqTables[(1 : stdgo.GoInt)] = (null : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                    (@:checkr _r ?? throw "null pointer dereference")._seqTables[(2 : stdgo.GoInt)] = (null : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _refill( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (!(@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader) {
            {
                var _err = (@:check2r _r._readFrameHeader() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return @:check2r _r._readBlock();
    }
    @:keep
    @:tdfield
    static public function _refillIfNeeded( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        while (((@:checkr _r ?? throw "null pointer dereference")._off >= ((@:checkr _r ?? throw "null pointer dereference")._buffer.length) : Bool)) {
            {
                var _err = (@:check2r _r._refill() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _r ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readByte( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        {
            var _err = (@:check2r _r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        var _ret = ((@:checkr _r ?? throw "null pointer dereference")._buffer[((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        (@:checkr _r ?? throw "null pointer dereference")._off++;
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        {
            var _err = (@:check2r _r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        var _n = (_p.__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__((@:checkr _r ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _input:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._r = _input;
        (@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader = false;
        (@:checkr _r ?? throw "null pointer dereference")._hasChecksum = false;
        (@:checkr _r ?? throw "null pointer dereference")._readOneFrame = false;
        (@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown = false;
        (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (0i64 : stdgo.GoUInt64);
        (@:checkr _r ?? throw "null pointer dereference")._blockOffset = (0i64 : stdgo.GoInt64);
        (@:checkr _r ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _readLiteralsFourStreams( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _totalStreamsSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (((_off + (5 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : @:check2r _r._makeEOFError(_off) };
        };
        if ((_totalStreamsSize < (6 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : @:check2r _r._makeError(_off, ("total streams size too small for jump table" : stdgo.GoString)) };
        };
        var _streamSize1 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__(_off) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        var _streamSize2 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__((_off + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        var _streamSize3 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__((_off + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        _off = (_off + ((6 : stdgo.GoInt)) : stdgo.GoInt);
        var _tot = (((_streamSize1 : stdgo.GoUInt64) + (_streamSize2 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_streamSize3 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_tot > ((_totalStreamsSize : stdgo.GoUInt64) - (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : @:check2r _r._makeEOFError(_off) };
        };
        var _streamSize4 = (((_totalStreamsSize : stdgo.GoUInt32) - (6u32 : stdgo.GoUInt32) : stdgo.GoUInt32) - (_tot : stdgo.GoUInt32) : stdgo.GoUInt32);
        _off--;
        var _off1 = (_off + (_streamSize1 : stdgo.GoInt) : stdgo.GoInt);
        var _start1 = (_off + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off2 = (_off1 + (_streamSize2 : stdgo.GoInt) : stdgo.GoInt);
        var _start2 = (_off1 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off3 = (_off2 + (_streamSize3 : stdgo.GoInt) : stdgo.GoInt);
        var _start3 = (_off2 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off4 = (_off3 + (_streamSize4 : stdgo.GoInt) : stdgo.GoInt);
        var _start4 = (_off3 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, _off1, (_start1 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr1:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, _off2, (_start2 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr2:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, _off3, (_start3 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr3:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, _off4, (_start4 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr4:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _regeneratedStreamSize = (((_regeneratedSize + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt);
        var _out1 = (_outbuf.length : stdgo.GoInt);
        var _out2 = (_out1 + _regeneratedStreamSize : stdgo.GoInt);
        var _out3 = (_out2 + _regeneratedStreamSize : stdgo.GoInt);
        var _out4 = (_out3 + _regeneratedStreamSize : stdgo.GoInt);
        var _regeneratedStreamSize4 = (_regeneratedSize - (_regeneratedStreamSize * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        _outbuf = (_outbuf.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_regeneratedSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        var _huffTable = (@:checkr _r ?? throw "null pointer dereference")._huffmanTable;
        var _huffBits = ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _regeneratedStreamSize : Bool)) {
                var _use4 = (_i < _regeneratedStreamSize4 : Bool);
var _fetchHuff = function(_rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
                    if (!@:check2r _rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                        return { _0 : (0 : stdgo.GoUInt16), _1 : @:check2r _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                    };
                    var _idx = ((((@:checkr _rbr ?? throw "null pointer dereference")._bits >> (((@:checkr _rbr ?? throw "null pointer dereference")._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
                    return { _0 : _huffTable[(_idx : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr1) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t1:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr2) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t2:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr3) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t3:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
if (_use4) {
                    var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr4) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t4:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                    _outbuf[(_out4 : stdgo.GoInt)] = ((_t4 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
                    _out4++;
                    _rbr4._cnt = (_rbr4._cnt - (((_t4 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                };
_outbuf[(_out1 : stdgo.GoInt)] = ((_t1 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_out1++;
_rbr1._cnt = (_rbr1._cnt - (((_t1 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_outbuf[(_out2 : stdgo.GoInt)] = ((_t2 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_out2++;
_rbr2._cnt = (_rbr2._cnt - (((_t2 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_outbuf[(_out3 : stdgo.GoInt)] = ((_t3 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
_out3++;
_rbr3._cnt = (_rbr3._cnt - (((_t3 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLiteralsOneStream( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _compressedSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, ((_off + _compressedSize : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_off - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _huffTable = (@:checkr _r ?? throw "null pointer dereference")._huffmanTable;
        var _huffBits = ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _regeneratedSize : Bool)) {
                if (!@:check2 _rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : @:check2 _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                };
var _t:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var _idx = (((_rbr._bits >> ((_rbr._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
_t = _huffTable[(_idx : stdgo.GoInt)];
_outbuf = (_outbuf.__append__(((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)));
_rbr._cnt = (_rbr._cnt - (((_t & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readHuffLiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _streams = __2, _compressedSize = __1, _regeneratedSize = __0;
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((1 : stdgo.GoUInt8))) {
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
                };
                _regeneratedSize = ((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) & (63 : stdgo.GoInt) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = ((((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                if (((((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8))) {
                    _streams = (1 : stdgo.GoInt);
                } else {
                    _streams = (4 : stdgo.GoInt);
                };
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                if (((_off + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (3 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = ((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if (((_off + (3 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (63 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((_data[(_off + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (10i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            };
        };
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        var _roff = (_off + _compressedSize : stdgo.GoInt);
        if (((_roff > (_data.length) : Bool) || (_roff < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
        };
        var _totalStreamsSize = (_compressedSize : stdgo.GoInt);
        if (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((2 : stdgo.GoUInt8))) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._huffmanTable.length) < (2048 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._huffmanTable = (new stdgo.Slice<stdgo.GoUInt16>((2048 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
            };
            var __tmp__ = @:check2r _r._readHuff(_data, _off, (@:checkr _r ?? throw "null pointer dereference")._huffmanTable), _huffmanTableBits:stdgo.GoInt = __tmp__._0, _hoff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits = _huffmanTableBits;
            if ((_totalStreamsSize < (_hoff - _off : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("Huffman table too big" : stdgo.GoString)) };
            };
            _totalStreamsSize = (_totalStreamsSize - ((_hoff - _off : stdgo.GoInt)) : stdgo.GoInt);
            _off = _hoff;
        } else {
            if ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("missing literals Huffman tree" : stdgo.GoString)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_streams == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = @:check2r _r._readLiteralsOneStream(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = @:check2r _r._readLiteralsFourStreams(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
        };
        return { _0 : _roff, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readRawRLELiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _raw = (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8)) : Bool);
        var _regeneratedSize:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((2 : stdgo.GoUInt8))) {
                _regeneratedSize = ((_hdr >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                if ((_off >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off++;
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
                };
                _regeneratedSize = ((((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        if (_raw) {
            if (((_off + _regeneratedSize : stdgo.GoInt) > (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("raw literal size too large" : stdgo.GoString)) };
            };
            _outbuf = (_outbuf.__append__(...((_data.__slice__(_off, (_off + _regeneratedSize : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block) : Array<stdgo.GoUInt8>)));
            _off = (_off + (_regeneratedSize) : stdgo.GoInt);
        } else {
            if ((_off >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeError(_off, ("RLE literal missing" : stdgo.GoString)) };
            };
            var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
            _off++;
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _regeneratedSize : Bool)) {
                    _outbuf = (_outbuf.__append__(_rle));
                    _i++;
                };
            };
        };
        return { _0 : _off, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : @:check2r _r._makeEOFError(_off) };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        _off++;
        if ((((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) || ((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (1 : stdgo.GoUInt8)) : Bool)) {
            return @:check2r _r._readRawRLELiterals(_data, _off, _hdr, _outbuf);
        } else {
            return @:check2r _r._readHuffLiterals(_data, _off, _hdr, _outbuf);
        };
    }
    @:keep
    @:tdfield
    static public function _readHuff( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _table:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_off >= (_data.length) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        _off++;
        var _weights:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256).__setNumber32__();
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_hdr < (128 : stdgo.GoUInt8) : Bool)) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._fseScratch.length) < (64 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>((64 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((64 : stdgo.GoInt).toBasic() > 0 ? (64 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
            };
            var __tmp__ = @:check2r _r._readFSE(_data, _off, (255 : stdgo.GoInt), (6 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._fseScratch), _fseBits:stdgo.GoInt = __tmp__._0, _noff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _fseTable = (@:checkr _r ?? throw "null pointer dereference")._fseScratch;
            if (((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) > (_data.length) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = @:check2r _r._makeReverseBitReader(_data, ((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), _noff), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = @:check2 _rbr._val((_fseBits : stdgo.GoUInt8)), _state1:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = @:check2 _rbr._val((_fseBits : stdgo.GoUInt8)), _state2:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            while (true) {
                var _pt = (stdgo.Go.setRef(_fseTable[(_state1 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                if (!@:check2 _rbr._fetch((@:checkr _pt ?? throw "null pointer dereference")._bits)) {
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                            _tableBits = __tmp__._0;
                            _roff = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state2 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
                var __tmp__ = @:check2 _rbr._val((@:checkr _pt ?? throw "null pointer dereference")._bits), _v:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _state1 = (((@:checkr _pt ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                _count++;
                _pt = (stdgo.Go.setRef(_fseTable[(_state2 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                if (!@:check2 _rbr._fetch((@:checkr _pt ?? throw "null pointer dereference")._bits)) {
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                            _tableBits = __tmp__._0;
                            _roff = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state1 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
                {
                    var __tmp__ = @:check2 _rbr._val((@:checkr _pt ?? throw "null pointer dereference")._bits);
                    _v = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _state2 = (((@:checkr _pt ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                _count++;
            };
            _off = (_off + ((_hdr : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _count = ((_hdr : stdgo.GoInt) - (127 : stdgo.GoInt) : stdgo.GoInt);
            if (((_off + ((((_count + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) >= (_data.length) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _count : Bool)) {
                    var _b = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
_off++;
_weights[(_i : stdgo.GoInt)] = (_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
_weights[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
        var _weightMark:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(13, 13).__setNumber32__();
        var _weightMask = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        for (__0 => _w in (_weights.__slice__(0, _count) : stdgo.Slice<stdgo.GoUInt8>)) {
            if ((_w > (12 : stdgo.GoUInt8) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _weightMark[(_w : stdgo.GoInt)]++;
            if ((_w > (0 : stdgo.GoUInt8) : Bool)) {
                _weightMask = (_weightMask + (((1u32 : stdgo.GoUInt32) << ((_w - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        if (_weightMask == ((0u32 : stdgo.GoUInt32))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _tableBits = ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros32.leadingZeros32(_weightMask) : stdgo.GoInt);
        if ((_tableBits > (11 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((_table.length) < ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("Huffman table too small" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _left = ((((1u32 : stdgo.GoUInt32) << _tableBits : stdgo.GoUInt32)) - _weightMask : stdgo.GoUInt32);
        if (_left == ((0u32 : stdgo.GoUInt32))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _highBit = ((31 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros32.leadingZeros32(_left) : stdgo.GoInt);
        if (((1u32 : stdgo.GoUInt32) << _highBit : stdgo.GoUInt32) != (_left)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((_count >= (256 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _weights[(_count : stdgo.GoInt)] = ((_highBit + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        _count++;
        _weightMark[(_highBit + (1 : stdgo.GoInt) : stdgo.GoInt)]++;
        if (((_weightMark[(1 : stdgo.GoInt)] < (2u32 : stdgo.GoUInt32) : Bool) || ((_weightMark[(1 : stdgo.GoInt)] & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _next = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _tableBits : Bool)) {
                var _cur = (_next : stdgo.GoUInt32);
_next = (_next + ((_weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] << _i : stdgo.GoUInt32)) : stdgo.GoUInt32);
_weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _cur;
                _i++;
            };
        };
        for (_i => _w in (_weights.__slice__(0, _count) : stdgo.Slice<stdgo.GoUInt8>)) {
            if (_w == ((0 : stdgo.GoUInt8))) {
                continue;
            };
            var _length = ((1u32 : stdgo.GoUInt32) << ((_w - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32);
            var _tval = (((_i : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((((_tableBits : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) - (_w : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            var _start = (_weightMark[(_w : stdgo.GoInt)] : stdgo.GoUInt32);
            {
                var _j = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_j < _length : Bool)) {
                    _table[((_start + _j : stdgo.GoUInt32) : stdgo.GoInt)] = _tval;
                    _j++;
                };
            };
            _weightMark[(_w : stdgo.GoInt)] = (_weightMark[(_w : stdgo.GoInt)] + (_length) : stdgo.GoUInt32);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _tableBits, _1 : _off, _2 : (null : stdgo.Error) };
            _tableBits = __tmp__._0;
            _roff = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _makeMatchBaselineFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            if ((_e._sym < (32 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = ((_e._sym : stdgo.GoUInt32) + (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                if ((_e._sym > (52 : stdgo.GoUInt8) : Bool)) {
                    return @:check2r _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (stdgo._internal.internal.zstd.Zstd__matchlengthbase._matchLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeOffsetBaselineFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            if ((_e._sym > (31 : stdgo.GoUInt8) : Bool)) {
                return @:check2r _r._makeError(_off, ("FSE offset symbol overflow" : stdgo.GoString));
            };
            _be._baseline = ((1u32 : stdgo.GoUInt32) << _e._sym : stdgo.GoUInt32);
            if ((_e._sym >= (2 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = (_be._baseline - ((3u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            _be._basebits = _e._sym;
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeLiteralBaselineFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            if ((_e._sym < (16 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = (_e._sym : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                if ((_e._sym > (35 : stdgo.GoUInt8) : Bool)) {
                    return @:check2r _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (16 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (stdgo._internal.internal.zstd.Zstd__literallengthbase._literalLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _buildFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _norm:stdgo.Slice<stdgo.GoInt16>, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _tableBits:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableSize = ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt);
        var _highThreshold = (_tableSize - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _next:stdgo.GoArray<stdgo.GoUInt16> = new stdgo.GoArray<stdgo.GoUInt16>(256, 256).__setNumber32__();
        for (_i => _n in _norm) {
            if ((_n >= (0 : stdgo.GoInt16) : Bool)) {
                _next[((_i : stdgo.GoUInt8) : stdgo.GoInt)] = (_n : stdgo.GoUInt16);
            } else {
                _table[(_highThreshold : stdgo.GoInt)]._sym = (_i : stdgo.GoUInt8);
                _highThreshold--;
                _next[((_i : stdgo.GoUInt8) : stdgo.GoInt)] = (1 : stdgo.GoUInt16);
            };
        };
        var _pos = (0 : stdgo.GoInt);
        var _step = ((((_tableSize >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) + ((_tableSize >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt);
        var _mask = (_tableSize - (1 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _n in _norm) {
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (_n : stdgo.GoInt) : Bool)) {
                    _table[(_pos : stdgo.GoInt)]._sym = (_i : stdgo.GoUInt8);
_pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
while ((_pos > _highThreshold : Bool)) {
                        _pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
                    };
                    _j++;
                };
            };
        };
        if (_pos != ((0 : stdgo.GoInt))) {
            return @:check2r _r._makeError(_off, ("FSE count error" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _tableSize : Bool)) {
                var _sym = (_table[(_i : stdgo.GoInt)]._sym : stdgo.GoUInt8);
var _nextState = (_next[(_sym : stdgo.GoInt)] : stdgo.GoUInt16);
_next[(_sym : stdgo.GoInt)]++;
if (_nextState == ((0 : stdgo.GoUInt16))) {
                    return @:check2r _r._makeError(_off, ("FSE state error" : stdgo.GoString));
                };
var _highBit = ((15 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros16.leadingZeros16(_nextState) : stdgo.GoInt);
var _bits = (_tableBits - _highBit : stdgo.GoInt);
_table[(_i : stdgo.GoInt)]._bits = (_bits : stdgo.GoUInt8);
_table[(_i : stdgo.GoInt)]._base = (((_nextState << _bits : stdgo.GoUInt16)) - (_tableSize : stdgo.GoUInt16) : stdgo.GoUInt16);
                _i++;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _maxSym:stdgo.GoInt, _maxBits:stdgo.GoInt, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _br = (@:check2r _r._makeBitReader(_data, _off)?.__copy__() : stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader);
        {
            var _err = (@:check2 _br._moreBits() : stdgo.Error);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _accuracyLog = ((@:check2 _br._val((4 : stdgo.GoUInt8)) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt);
        if ((_accuracyLog > _maxBits : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _br._makeError(("FSE accuracy log too large" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _remaining = ((((1 : stdgo.GoInt) << _accuracyLog : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _threshold = ((1 : stdgo.GoInt) << _accuracyLog : stdgo.GoInt);
        var _bitsNeeded = (_accuracyLog + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _sym = (0 : stdgo.GoInt);
        var _prev0 = (false : Bool);
        var _norm:stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(256, 256).__setNumber32__();
        while (((_remaining > (1 : stdgo.GoInt) : Bool) && (_sym <= _maxSym : Bool) : Bool)) {
            {
                var _err = (@:check2 _br._moreBits() : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            if (_prev0) {
                var _zsym = (_sym : stdgo.GoInt);
                while (((_br._bits & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((4095u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((18 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((12u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    {
                        var _err = (@:check2 _br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                                _tableBits = __tmp__._0;
                                _roff = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                while (((_br._bits & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((3u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    {
                        var _err = (@:check2 _br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                                _tableBits = __tmp__._0;
                                _roff = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                _zsym = (_zsym + ((@:check2 _br._val((2 : stdgo.GoUInt8)) : stdgo.GoInt)) : stdgo.GoInt);
                if ((_zsym > _maxSym : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _br._makeError(("FSE symbol index overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                while ((_sym < _zsym : Bool)) {
                    _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
                    _sym++;
                };
                _prev0 = false;
                continue;
            };
            var _max = (((((2 : stdgo.GoInt) * _threshold : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) - _remaining : stdgo.GoInt);
            var _count:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((((_br._bits & ((_threshold - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) < _max : Bool)) {
                _count = ((_br._bits & ((_threshold - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                _br._bits = (_br._bits >> ((_bitsNeeded - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt32);
                _br._cnt = (_br._cnt - (((_bitsNeeded - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            } else {
                _count = ((_br._bits & ((((2 : stdgo.GoInt) * _threshold : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                if ((_count >= _threshold : Bool)) {
                    _count = (_count - (_max) : stdgo.GoInt);
                };
                _br._bits = (_br._bits >> (_bitsNeeded) : stdgo.GoUInt32);
                _br._cnt = (_br._cnt - ((_bitsNeeded : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            _count--;
            if ((_count >= (0 : stdgo.GoInt) : Bool)) {
                _remaining = (_remaining - (_count) : stdgo.GoInt);
            } else {
                _remaining--;
            };
            if ((_sym >= (256 : stdgo.GoInt) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _br._makeError(("FSE sym overflow" : stdgo.GoString)) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (_count : stdgo.GoInt16);
            _sym++;
            _prev0 = _count == ((0 : stdgo.GoInt));
            while ((_remaining < _threshold : Bool)) {
                _bitsNeeded--;
                _threshold = (_threshold >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        if (_remaining != ((1 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2 _br._makeError(("too many symbols in FSE table" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        while ((_sym <= _maxSym : Bool)) {
            _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
            _sym++;
        };
        @:check2 _br._backup();
        {
            var _err = (@:check2r _r._buildFSE(_off, (_norm.__slice__(0, (_maxSym + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt16>), _table, _accuracyLog) : stdgo.Error);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _accuracyLog, _1 : (_br._off : stdgo.GoInt), _2 : (null : stdgo.Error) };
            _tableBits = __tmp__._0;
            _roff = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _copyFromWindow( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>, _offset:stdgo.GoUInt32, _match:stdgo.GoUInt32):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if (_offset == ((0u32 : stdgo.GoUInt32))) {
            return @:check2r _rbr._makeError(("invalid zero offset" : stdgo.GoString));
        };
        var _lenBlock = ((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt32);
        if ((_lenBlock < _offset : Bool)) {
            var _lenWindow = ((@:checkr _r ?? throw "null pointer dereference")._window.length : stdgo.GoUInt32);
            var _windowOffset = (_offset - _lenBlock : stdgo.GoUInt32);
            if ((_windowOffset > _lenWindow : Bool)) {
                return @:check2r _rbr._makeError(("offset past window" : stdgo.GoString));
            };
            var _from = (_lenWindow - _windowOffset : stdgo.GoUInt32);
            if (((_from + _match : stdgo.GoUInt32) <= _lenWindow : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                return (null : stdgo.Error);
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            var _copied = (_lenWindow - _from : stdgo.GoUInt32);
            _offset = (_offset - (_copied) : stdgo.GoUInt32);
            _match = (_match - (_copied) : stdgo.GoUInt32);
            if (((_offset == (0u32 : stdgo.GoUInt32)) && (_match > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                return @:check2r _rbr._makeError(("invalid offset" : stdgo.GoString));
            };
        };
        var _from = (_lenBlock - _offset : stdgo.GoUInt32);
        if ((_offset >= _match : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return (null : stdgo.Error);
        };
        while ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
            var _copy:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if ((_offset >= _match : Bool)) {
                _copy = _match;
            } else {
                _copy = _offset;
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(_from, (_from + _copy : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _match = (_match - (_copy) : stdgo.GoUInt32);
            _from = (_from + (_copy) : stdgo.GoUInt32);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _execSeqs( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _litbuf:stdgo.Slice<stdgo.GoUInt8>, _seqCount:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var __tmp__ = @:check2r _r._makeReverseBitReader(_data, ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt), _off), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2 _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _literalState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2 _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _offsetState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = @:check2 _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _matchState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _seq = (0 : stdgo.GoInt);
        while ((_seq < _seqCount : Bool)) {
            if (((((@:checkr _r ?? throw "null pointer dereference")._buffer.length) + (_litbuf.length) : stdgo.GoInt) > (131072 : stdgo.GoInt) : Bool)) {
                return @:check2 _rbr._makeError(("uncompressed size too big" : stdgo.GoString));
            };
            var _ptoffset = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_offsetState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var _ptmatch = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_matchState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var _ptliteral = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_literalState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var __tmp__ = @:check2 _rbr._val((@:checkr _ptoffset ?? throw "null pointer dereference")._basebits), _add:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _offset = ((@:checkr _ptoffset ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = @:check2 _rbr._val((@:checkr _ptmatch ?? throw "null pointer dereference")._basebits);
                _add = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var _match = ((@:checkr _ptmatch ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = @:check2 _rbr._val((@:checkr _ptliteral ?? throw "null pointer dereference")._basebits);
                _add = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var _literal = ((@:checkr _ptliteral ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            if (((@:checkr _ptoffset ?? throw "null pointer dereference")._basebits > (1 : stdgo.GoUInt8) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2;
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = _offset;
            } else {
                if (_literal == ((0u32 : stdgo.GoUInt32))) {
                    _offset++;
                };
                {
                    final __value__ = _offset;
                    if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        _offset = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        _offset = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = _offset;
                    } else if (__value__ == ((3u32 : stdgo.GoUInt32))) {
                        _offset = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = _offset;
                    } else if (__value__ == ((4u32 : stdgo.GoUInt32))) {
                        _offset = ((@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                        (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = _offset;
                    };
                };
            };
            _seq++;
            if ((_seq < _seqCount : Bool)) {
                {
                    var __tmp__ = @:check2 _rbr._val((@:checkr _ptliteral ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _literalState = (((@:checkr _ptliteral ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = @:check2 _rbr._val((@:checkr _ptmatch ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _matchState = (((@:checkr _ptmatch ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = @:check2 _rbr._val((@:checkr _ptoffset ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _offsetState = (((@:checkr _ptoffset ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
            };
            if (false) {
                stdgo.Go.println(("literal" : stdgo.GoString), Std.string(((_literal : UInt) : Float)), ("offset" : stdgo.GoString), Std.string(((_offset : UInt) : Float)), ("match" : stdgo.GoString), Std.string(((_match : UInt) : Float)));
            };
            if ((_literal > (_litbuf.length : stdgo.GoUInt32) : Bool)) {
                return @:check2 _rbr._makeError(("literal byte overflow" : stdgo.GoString));
            };
            if ((_literal > (0u32 : stdgo.GoUInt32) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...((_litbuf.__slice__(0, _literal) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _litbuf = (_litbuf.__slice__(_literal) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
                {
                    var _err = (@:check2r _r._copyFromWindow((stdgo.Go.setRef(_rbr) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>), _offset, _match) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        if (((_litbuf.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)));
        };
        if (_rbr._cnt != ((0u32 : stdgo.GoUInt32))) {
            return @:check2r _r._makeError(_off, ("extraneous data after sequences" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _setSeqTable( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _kind:stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode, _mode:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _info = (stdgo.Go.setRef(stdgo._internal.internal.zstd.Zstd__seqcodeinfo._seqCodeInfo[(_kind : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData>);
        {
            final __value__ = _mode;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _info ?? throw "null pointer dereference")._predefTable;
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = ((@:checkr _info ?? throw "null pointer dereference")._predefTableBits : stdgo.GoUInt8);
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                if ((_off >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : @:check2r _r._makeEOFError(_off) };
                };
                var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
                _off++;
                var _entry = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>(1, 1, ...[({ _sym : _rle, _bits : (0 : stdgo.GoUInt8), _base : (0 : stdgo.GoUInt16) } : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)])) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                if ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                {
                    var _err = ((@:checkr _info ?? throw "null pointer dereference")._toBaseline(_r, _off, _entry, (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)];
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                if (((@:checkr _r ?? throw "null pointer dereference")._fseScratch.capacity < ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fseScratch = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = ((@:checkr _r ?? throw "null pointer dereference")._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                var __tmp__ = @:check2r _r._readFSE(_data, _off, (@:checkr _info ?? throw "null pointer dereference")._maxSym, (@:checkr _info ?? throw "null pointer dereference")._maxBits, (@:checkr _r ?? throw "null pointer dereference")._fseScratch), _tableBits:stdgo.GoInt = __tmp__._0, _roff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = ((@:checkr _r ?? throw "null pointer dereference")._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                if ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                {
                    var _err = ((@:checkr _info ?? throw "null pointer dereference")._toBaseline(_r, _roff, (@:checkr _r ?? throw "null pointer dereference")._fseScratch, (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)];
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = (_tableBits : stdgo.GoUInt8);
                return { _0 : _roff, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if (((@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)].length) == ((0 : stdgo.GoInt))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : @:check2r _r._makeError(_off, ("missing repeat sequence FSE table" : stdgo.GoString)) };
                };
                return { _0 : _off, _1 : (null : stdgo.Error) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _initSeqs( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
        };
        var _seqHdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        _off++;
        if (_seqHdr == ((0 : stdgo.GoUInt8))) {
            return { _0 : (0 : stdgo.GoInt), _1 : _off, _2 : (null : stdgo.Error) };
        };
        var _seqCount:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_seqHdr < (128 : stdgo.GoUInt8) : Bool)) {
            _seqCount = (_seqHdr : stdgo.GoInt);
        } else if ((_seqHdr < (255 : stdgo.GoUInt8) : Bool)) {
            if ((_off >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
            };
            _seqCount = ((((((_seqHdr : stdgo.GoInt) - (128 : stdgo.GoInt) : stdgo.GoInt)) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) + (_data[(_off : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            _off++;
        } else {
            if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
            };
            _seqCount = (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (32512 : stdgo.GoInt) : stdgo.GoInt);
            _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeEOFError(_off) };
        };
        var _symMode = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_symMode & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : @:check2r _r._makeError(_off, ("invalid symbol compression mode" : stdgo.GoString)) };
        };
        _off++;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = @:check2r _r._setSeqTable(_data, _off, (0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = @:check2r _r._setSeqTable(_data, _off, (1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = @:check2r _r._setSeqTable(_data, _off, (2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        return { _0 : _seqCount, _1 : _off, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _compressedBlock( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _blockSize:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        if ((((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.length) >= _blockSize : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._compressedBuf = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.__slice__(0, _blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            var _need = (_blockSize - ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.length) : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._compressedBuf = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, (@:checkr _r ?? throw "null pointer dereference")._compressedBuf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return @:check2r _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
            };
        };
        var _data = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf : stdgo._internal.internal.zstd.Zstd_t_block.T_block);
        var _off = (0 : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = @:check2r _r._readLiterals(_data, _off, ((@:checkr _r ?? throw "null pointer dereference")._literals.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _litoff:stdgo.GoInt = __tmp__._0, _litbuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        (@:checkr _r ?? throw "null pointer dereference")._literals = _litbuf;
        _off = _litoff;
        var __tmp__ = @:check2r _r._initSeqs(_data, _off), _seqCount:stdgo.GoInt = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if (_seqCount == ((0 : stdgo.GoInt))) {
            if ((_off < (_data.length) : Bool)) {
                return @:check2r _r._makeError(_off, ("extraneous data after no sequences" : stdgo.GoString));
            };
            if ((_litbuf.length) == ((0 : stdgo.GoInt))) {
                return @:check2r _r._makeError(_off, ("no sequences and no literals" : stdgo.GoString));
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)));
            return (null : stdgo.Error);
        };
        return @:check2r _r._execSeqs(_data, _off, _litbuf, _seqCount);
    }
    @:keep
    @:tdfield
    static public function _makeReverseBitReader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _start:stdgo.GoInt):{ var _0 : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _streamStart = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        if (_streamStart == ((0 : stdgo.GoUInt8))) {
            return { _0 : (new stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader() : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader), _1 : @:check2r _r._makeError(_off, ("zero byte at reverse bit stream start" : stdgo.GoString)) };
        };
        var _rbr = ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32), _start : (_start : stdgo.GoUInt32), _bits : (_streamStart : stdgo.GoUInt32), _cnt : (((7 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros8.leadingZeros8(_streamStart) : stdgo.GoInt) : stdgo.GoUInt32) } : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader);
        return { _0 : _rbr?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _makeBitReader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        return ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32) } : stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader);
    }
}
