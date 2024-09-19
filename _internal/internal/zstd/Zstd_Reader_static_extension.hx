package _internal.internal.zstd;
@:keep @:allow(_internal.internal.zstd.Zstd.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _wrapError( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return _err;
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.internal.zstd.Zstd_T_zstdError.T_zstdError((_r._blockOffset + (_off : stdgo.GoInt64) : stdgo.GoInt64), _err) : _internal.internal.zstd.Zstd_T_zstdError.T_zstdError)) : stdgo.Ref<_internal.internal.zstd.Zstd_T_zstdError.T_zstdError>));
    }
    @:keep
    static public function _makeError( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        return _r._wrapError(_off, stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__()));
    }
    @:keep
    static public function _wrapNonEOFError( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return _r._wrapError(_off, _err);
    }
    @:keep
    static public function _makeEOFError( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        return _r._wrapError(_off, stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF);
    }
    @:keep
    static public function _saveWindow( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (_r._windowSize == ((0 : stdgo.GoInt))) {
            return;
        };
        if (((_buf.length) >= _r._windowSize : Bool)) {
            var _from = ((_buf.length) - _r._windowSize : stdgo.GoInt);
            _r._window = ((_r._window.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_buf.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return;
        };
        var _keep = (_r._windowSize - (_buf.length) : stdgo.GoInt);
        if ((_keep < (_r._window.length) : Bool)) {
            var _remove = ((_r._window.length) - _keep : stdgo.GoInt);
            stdgo.Go.copySlice((_r._window.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_r._window.__slice__(_remove) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _r._window = (_r._window.__append__(...(_buf : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function _setBufferSize( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _size:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if ((_r._buffer.capacity < _size : Bool)) {
            var _need = (_size - _r._buffer.capacity : stdgo.GoInt);
            _r._buffer = ((_r._buffer.__slice__(0, _r._buffer.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        _r._buffer = (_r._buffer.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _readBlock( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        var _header = (((_r._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | (((_r._scratch[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32) | (((_r._scratch[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _lastBlock = ((_header & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32)) : Bool);
        var _blockType = (((_header >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _blockSize = ((_header >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt);
        if (((_blockSize > (131072 : stdgo.GoInt) : Bool) || (((_r._windowSize > (0 : stdgo.GoInt) : Bool) && (_blockSize > _r._windowSize : Bool) : Bool)) : Bool)) {
            return _r._makeError(_relativeOffset, ("block size too large" : stdgo.GoString));
        };
        {
            final __value__ = _blockType;
            if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                _r._setBufferSize(_blockSize);
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, _r._buffer), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                _relativeOffset = (_relativeOffset + (_blockSize) : stdgo.GoInt);
                _r._blockOffset = (_r._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                _r._setBufferSize(_blockSize);
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                _relativeOffset++;
                var _v = (_r._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                for (_i => _ in _r._buffer) {
                    _r._buffer[(_i : stdgo.GoInt)] = _v;
                };
                _r._blockOffset = (_r._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                _r._blockOffset = (_r._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
                {
                    var _err = (_r._compressedBlock(_blockSize) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _r._blockOffset = (_r._blockOffset + ((_blockSize : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((3u32 : stdgo.GoUInt32))) {
                return _r._makeError(_relativeOffset, ("invalid block type" : stdgo.GoString));
            };
        };
        if (!_r._frameSizeUnknown) {
            if (((_r._buffer.length : stdgo.GoUInt64) > _r._remainingFrameSize : Bool)) {
                return _r._makeError(_relativeOffset, ("too many uncompressed bytes in frame" : stdgo.GoString));
            };
            _r._remainingFrameSize = (_r._remainingFrameSize - ((_r._buffer.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        if (_r._hasChecksum) {
            _r._checksum._update(_r._buffer);
        };
        if (!_lastBlock) {
            _r._saveWindow(_r._buffer);
        } else {
            if ((!_r._frameSizeUnknown && (_r._remainingFrameSize != (0i64 : stdgo.GoUInt64)) : Bool)) {
                return _r._makeError(_relativeOffset, ("not enough uncompressed bytes for frame" : stdgo.GoString));
            };
            if (_r._hasChecksum) {
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
                    };
                };
                var _inputChecksum = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                var _dataChecksum = (_r._checksum._digest() : stdgo.GoUInt32);
                if (_inputChecksum != (_dataChecksum)) {
                    return _r._wrapError((0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_errorf.errorf(("invalid checksum: got %#x want %#x" : stdgo.GoString), stdgo.Go.toInterface(_dataChecksum), stdgo.Go.toInterface(_inputChecksum)));
                };
                _r._blockOffset = (_r._blockOffset + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            _r._sawFrameHeader = false;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _skipFrame( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        var _size = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._r) : stdgo._internal.io.Io_Seeker.Seeker)) : stdgo._internal.io.Io_Seeker.Seeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_Seeker.Seeker), _1 : false };
            }, _seeker = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _seeker.seek((_size : stdgo.GoInt64), (1 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                _r._blockOffset = (_r._blockOffset + (((_relativeOffset : stdgo.GoInt64) + (_size : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
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
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _r._wrapNonEOFError(_relativeOffset, _err);
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
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            _relativeOffset = (_relativeOffset + ((_size : stdgo.GoInt)) : stdgo.GoInt);
        };
        _r._blockOffset = (_r._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readFrameHeader( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        stdgo._internal.internal.Macro.controlFlow({
            @:label("retry") var _relativeOffset = (0 : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && !_r._readOneFrame : Bool)) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    return _r._wrapError(_relativeOffset, _err);
                };
            };
            {
                var _magic = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_r._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                if (_magic != ((-47205080u32 : stdgo.GoUInt32))) {
                    if (((_magic >= (407710288u32 : stdgo.GoUInt32) : Bool) && (_magic <= (407710303u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _r._blockOffset = (_r._blockOffset + (((_relativeOffset : stdgo.GoInt64) + (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        {
                            var _err = (_r._skipFrame() : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                        @:goto "retry";
                    };
                    return _r._makeError(_relativeOffset, ("invalid magic number" : stdgo.GoString));
                };
            };
            _relativeOffset = (_relativeOffset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            var _descriptor = (_r._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _singleSegment = ((_descriptor & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
            var _fcsFieldSize = ((1 : stdgo.GoInt) << ((_descriptor >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoInt);
            if (((_fcsFieldSize == (1 : stdgo.GoInt)) && !_singleSegment : Bool)) {
                _fcsFieldSize = (0 : stdgo.GoInt);
            };
            var _windowDescriptorSize:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_singleSegment) {
                _windowDescriptorSize = (0 : stdgo.GoInt);
            } else {
                _windowDescriptorSize = (1 : stdgo.GoInt);
            };
            if ((_descriptor & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                return _r._makeError(_relativeOffset, ("reserved bit set in frame header descriptor" : stdgo.GoString));
            };
            _r._hasChecksum = (_descriptor & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
            if (_r._hasChecksum) {
                _r._checksum._reset();
            };
            if ((_descriptor & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                return _r._makeError(_relativeOffset, ("dictionaries are not supported" : stdgo.GoString));
            };
            _relativeOffset++;
            var _headerSize = (_windowDescriptorSize + _fcsFieldSize : stdgo.GoInt);
            {
                var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, (_r._scratch.__slice__(0, _headerSize) : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            if (_singleSegment) {
                _r._windowSize = (0 : stdgo.GoInt);
            } else {
                var _windowDescriptor = (_r._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                var _exponent = ((_windowDescriptor >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt64);
                var _mantissa = ((_windowDescriptor & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64);
                var _windowLog = (_exponent + (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _windowBase = ((1i64 : stdgo.GoUInt64) << _windowLog : stdgo.GoUInt64);
                var _windowAdd = (((_windowBase / (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * _mantissa : stdgo.GoUInt64);
                var _windowSize = (_windowBase + _windowAdd : stdgo.GoUInt64);
                if ((_internal.internal.zstd.Zstd__fuzzing._fuzzing && (((_windowLog > (31i64 : stdgo.GoUInt64) : Bool) || (_windowSize > (134217728i64 : stdgo.GoUInt64) : Bool) : Bool)) : Bool)) {
                    return _r._makeError(_relativeOffset, ("windowSize too large" : stdgo.GoString));
                };
                if ((_windowSize > (8388608i64 : stdgo.GoUInt64) : Bool)) {
                    _windowSize = (8388608i64 : stdgo.GoUInt64);
                };
                _r._windowSize = (_windowSize : stdgo.GoInt);
            };
            _r._frameSizeUnknown = false;
            _r._remainingFrameSize = (0i64 : stdgo.GoUInt64);
            var _fb = (_r._scratch.__slice__(_windowDescriptorSize) : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __value__ = _fcsFieldSize;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    _r._frameSizeUnknown = true;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    _r._remainingFrameSize = (_fb[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    _r._remainingFrameSize = ((256i64 : stdgo.GoUInt64) + (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16(_fb) : stdgo.GoUInt64) : stdgo.GoUInt64);
                } else if (__value__ == ((4 : stdgo.GoInt))) {
                    _r._remainingFrameSize = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32(_fb) : stdgo.GoUInt64);
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    _r._remainingFrameSize = stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64(_fb);
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            _relativeOffset = (_relativeOffset + (_headerSize) : stdgo.GoInt);
            _r._sawFrameHeader = true;
            _r._readOneFrame = true;
            _r._blockOffset = (_r._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            _r._repeatedOffset1 = (1u32 : stdgo.GoUInt32);
            _r._repeatedOffset2 = (4u32 : stdgo.GoUInt32);
            _r._repeatedOffset3 = (8u32 : stdgo.GoUInt32);
            _r._huffmanTableBits = (0 : stdgo.GoInt);
            _r._window = (_r._window.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _r._seqTables[(0 : stdgo.GoInt)] = (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            _r._seqTables[(1 : stdgo.GoInt)] = (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            _r._seqTables[(2 : stdgo.GoInt)] = (null : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            return (null : stdgo.Error);
        });
    }
    @:keep
    static public function _refill( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (!_r._sawFrameHeader) {
            {
                var _err = (_r._readFrameHeader() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return _r._readBlock();
    }
    @:keep
    static public function _refillIfNeeded( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        while ((_r._off >= (_r._buffer.length) : Bool)) {
            {
                var _err = (_r._refill() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _r._off = (0 : stdgo.GoInt);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        {
            var _err = (_r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        var _ret = (_r._buffer[(_r._off : stdgo.GoInt)] : stdgo.GoUInt8);
        _r._off++;
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function read( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        {
            var _err = (_r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        var _n = (stdgo.Go.copySlice(_p, (_r._buffer.__slice__(_r._off) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        _r._off = (_r._off + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function reset( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _input:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        _r._r = _input;
        _r._sawFrameHeader = false;
        _r._hasChecksum = false;
        _r._readOneFrame = false;
        _r._frameSizeUnknown = false;
        _r._remainingFrameSize = (0i64 : stdgo.GoUInt64);
        _r._blockOffset = (0i64 : stdgo.GoInt64);
        _r._off = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _readLiteralsFourStreams( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _totalStreamsSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (((_off + (5 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeEOFError(_off) };
        };
        if ((_totalStreamsSize < (6 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeError(_off, ("total streams size too small for jump table" : stdgo.GoString)) };
        };
        var _streamSize1 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16((_data.__slice__(_off) : _internal.internal.zstd.Zstd_T_block.T_block)) : stdgo.GoUInt16);
        var _streamSize2 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16((_data.__slice__((_off + (2 : stdgo.GoInt) : stdgo.GoInt)) : _internal.internal.zstd.Zstd_T_block.T_block)) : stdgo.GoUInt16);
        var _streamSize3 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint16((_data.__slice__((_off + (4 : stdgo.GoInt) : stdgo.GoInt)) : _internal.internal.zstd.Zstd_T_block.T_block)) : stdgo.GoUInt16);
        _off = (_off + ((6 : stdgo.GoInt)) : stdgo.GoInt);
        var _tot = (((_streamSize1 : stdgo.GoUInt64) + (_streamSize2 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_streamSize3 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_tot > ((_totalStreamsSize : stdgo.GoUInt64) - (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeEOFError(_off) };
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
        var __tmp__ = _r._makeReverseBitReader(_data, _off1, (_start1 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr1:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off2, (_start2 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr2:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off3, (_start3 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr3:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off4, (_start4 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr4:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
        var _huffTable = _r._huffmanTable;
        var _huffBits = (_r._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _regeneratedStreamSize : Bool), _i++, {
                var _use4 = (_i < _regeneratedStreamSize4 : Bool);
                var _fetchHuff = function(_rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
                    if (!_rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                        return { _0 : (0 : stdgo.GoUInt16), _1 : _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                    };
                    var _idx = (((_rbr._bits >> ((_rbr._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
                    return { _0 : _huffTable[(_idx : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                };
                var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr1) : stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>)), _t1:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr2) : stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>)), _t2:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr3) : stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>)), _t3:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                if (_use4) {
                    var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr4) : stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>)), _t4:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
            });
        };
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readLiteralsOneStream( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _compressedSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var __tmp__ = _r._makeReverseBitReader(_data, ((_off + _compressedSize : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_off - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _huffTable = _r._huffmanTable;
        var _huffBits = (_r._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _regeneratedSize : Bool), _i++, {
                if (!_rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                };
                var _t:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _idx = (((_rbr._bits >> ((_rbr._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
                _t = _huffTable[(_idx : stdgo.GoInt)];
                _outbuf = (_outbuf.__append__(((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)));
                _rbr._cnt = (_rbr._cnt - (((_t & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readHuffLiterals( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _streams = __2, _compressedSize = __1, _regeneratedSize = __0;
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((1 : stdgo.GoUInt8))) {
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
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
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (3 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = ((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if (((_off + (3 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (63 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((_data[(_off + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (10i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            };
        };
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        var _roff = (_off + _compressedSize : stdgo.GoInt);
        if (((_roff > (_data.length) : Bool) || (_roff < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
        };
        var _totalStreamsSize = (_compressedSize : stdgo.GoInt);
        if (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((2 : stdgo.GoUInt8))) {
            if (((_r._huffmanTable.length) < (2048 : stdgo.GoInt) : Bool)) {
                _r._huffmanTable = (new stdgo.Slice<stdgo.GoUInt16>((2048 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
            };
            var __tmp__ = _r._readHuff(_data, _off, _r._huffmanTable), _huffmanTableBits:stdgo.GoInt = __tmp__._0, _hoff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
            };
            _r._huffmanTableBits = _huffmanTableBits;
            if ((_totalStreamsSize < (_hoff - _off : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("Huffman table too big" : stdgo.GoString)) };
            };
            _totalStreamsSize = (_totalStreamsSize - ((_hoff - _off : stdgo.GoInt)) : stdgo.GoInt);
            _off = _hoff;
        } else {
            if (_r._huffmanTableBits == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("missing literals Huffman tree" : stdgo.GoString)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_streams == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = _r._readLiteralsOneStream(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _r._readLiteralsFourStreams(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
        };
        return { _0 : _roff, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readRawRLELiterals( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _raw = (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8)) : Bool);
        var _regeneratedSize:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((2 : stdgo.GoUInt8))) {
                _regeneratedSize = ((_hdr >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                if ((_off >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off++;
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = ((((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        if (_raw) {
            if (((_off + _regeneratedSize : stdgo.GoInt) > (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("raw literal size too large" : stdgo.GoString)) };
            };
            _outbuf = (_outbuf.__append__(...((_data.__slice__(_off, (_off + _regeneratedSize : stdgo.GoInt)) : _internal.internal.zstd.Zstd_T_block.T_block) : Array<stdgo.GoUInt8>)));
            _off = (_off + (_regeneratedSize) : stdgo.GoInt);
        } else {
            if ((_off >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("RLE literal missing" : stdgo.GoString)) };
            };
            var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
            _off++;
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _regeneratedSize : Bool), _i++, {
                    _outbuf = (_outbuf.__append__(_rle));
                });
            };
        };
        return { _0 : _off, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readLiterals( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        _off++;
        if ((((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) || ((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (1 : stdgo.GoUInt8)) : Bool)) {
            return _r._readRawRLELiterals(_data, _off, _hdr, _outbuf);
        } else {
            return _r._readHuffLiterals(_data, _off, _hdr, _outbuf);
        };
    }
    @:keep
    static public function _readHuff( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _table:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        _off++;
        var _weights:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_hdr < (128 : stdgo.GoUInt8) : Bool)) {
            if (((_r._fseScratch.length) < (64 : stdgo.GoInt) : Bool)) {
                _r._fseScratch = (new stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>((64 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((64 : stdgo.GoInt).toBasic() > 0 ? (64 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry)]) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
            };
            var __tmp__ = _r._readFSE(_data, _off, (255 : stdgo.GoInt), (6 : stdgo.GoInt), _r._fseScratch), _fseBits:stdgo.GoInt = __tmp__._0, _noff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
            var _fseTable = _r._fseScratch;
            if (((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) > (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
            };
            var __tmp__ = _r._makeReverseBitReader(_data, ((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), _noff), _rbr:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
            var __tmp__ = _rbr._val((_fseBits : stdgo.GoUInt8)), _state1:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
            var __tmp__ = _rbr._val((_fseBits : stdgo.GoUInt8)), _state2:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
            while (true) {
                var _pt = (stdgo.Go.setRef(_fseTable[(_state1 : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                if (!_rbr._fetch(_pt._bits)) {
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                    };
                    _weights[(_count : stdgo.GoInt)] = _pt._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state2 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
                var __tmp__ = _rbr._val(_pt._bits), _v:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                };
                _state1 = ((_pt._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                };
                _weights[(_count : stdgo.GoInt)] = _pt._sym;
                _count++;
                _pt = (stdgo.Go.setRef(_fseTable[(_state2 : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                if (!_rbr._fetch(_pt._bits)) {
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                    };
                    _weights[(_count : stdgo.GoInt)] = _pt._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state1 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    break;
                };
                {
                    var __tmp__ = _rbr._val(_pt._bits);
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                };
                _state2 = ((_pt._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                };
                _weights[(_count : stdgo.GoInt)] = _pt._sym;
                _count++;
            };
            _off = (_off + ((_hdr : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _count = ((_hdr : stdgo.GoInt) - (127 : stdgo.GoInt) : stdgo.GoInt);
            if (((_off + ((((_count + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    var _b = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
                    _off++;
                    _weights[(_i : stdgo.GoInt)] = (_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                    _weights[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                });
            };
        };
        var _weightMark:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(13, 13, ...[for (i in 0 ... 13) (0 : stdgo.GoUInt32)]);
        var _weightMask = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        for (__0 => _w in (_weights.__slice__(0, _count) : stdgo.Slice<stdgo.GoUInt8>)) {
            if ((_w > (12 : stdgo.GoUInt8) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
            };
            _weightMark[(_w : stdgo.GoInt)]++;
            if ((_w > (0 : stdgo.GoUInt8) : Bool)) {
                _weightMask = (_weightMask + (((1u32 : stdgo.GoUInt32) << ((_w - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        if (_weightMask == ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
        };
        _tableBits = ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingZeros32.leadingZeros32(_weightMask) : stdgo.GoInt);
        if ((_tableBits > (11 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
        };
        if (((_table.length) < ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman table too small" : stdgo.GoString)) };
        };
        var _left = ((((1u32 : stdgo.GoUInt32) << _tableBits : stdgo.GoUInt32)) - _weightMask : stdgo.GoUInt32);
        if (_left == ((0u32 : stdgo.GoUInt32))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
        };
        var _highBit = ((31 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingZeros32.leadingZeros32(_left) : stdgo.GoInt);
        if (((1u32 : stdgo.GoUInt32) << _highBit : stdgo.GoUInt32) != (_left)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
        };
        if ((_count >= (256 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
        };
        _weights[(_count : stdgo.GoInt)] = ((_highBit + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        _count++;
        _weightMark[(_highBit + (1 : stdgo.GoInt) : stdgo.GoInt)]++;
        if (((_weightMark[(1 : stdgo.GoInt)] < (2u32 : stdgo.GoUInt32) : Bool) || ((_weightMark[(1 : stdgo.GoInt)] & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
        };
        var _next = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _tableBits : Bool), _i++, {
                var _cur = (_next : stdgo.GoUInt32);
                _next = (_next + ((_weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] << _i : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _cur;
            });
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
                stdgo.Go.cfor((_j < _length : Bool), _j++, {
                    _table[((_start + _j : stdgo.GoUInt32) : stdgo.GoInt)] = _tval;
                });
            };
            _weightMark[(_w : stdgo.GoInt)] = (_weightMark[(_w : stdgo.GoInt)] + (_length) : stdgo.GoUInt32);
        };
        return { _0 : _tableBits, _1 : _off, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _makeMatchBaselineFSE( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, _baselineTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : _internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry);
            if ((_e._sym < (32 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = ((_e._sym : stdgo.GoUInt32) + (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                if ((_e._sym > (52 : stdgo.GoUInt8) : Bool)) {
                    return _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (_internal.internal.zstd.Zstd__matchLengthBase._matchLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _makeOffsetBaselineFSE( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, _baselineTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : _internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry);
            if ((_e._sym > (31 : stdgo.GoUInt8) : Bool)) {
                return _r._makeError(_off, ("FSE offset symbol overflow" : stdgo.GoString));
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
    static public function _makeLiteralBaselineFSE( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, _baselineTable:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : _internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry);
            if ((_e._sym < (16 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = (_e._sym : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                if ((_e._sym > (35 : stdgo.GoUInt8) : Bool)) {
                    return _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (16 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (_internal.internal.zstd.Zstd__literalLengthBase._literalLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _buildFSE( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _off:stdgo.GoInt, _norm:stdgo.Slice<stdgo.GoInt16>, _table:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>, _tableBits:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _tableSize = ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt);
        var _highThreshold = (_tableSize - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _next:stdgo.GoArray<stdgo.GoUInt16> = new stdgo.GoArray<stdgo.GoUInt16>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt16)]);
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
                stdgo.Go.cfor((_j < (_n : stdgo.GoInt) : Bool), _j++, {
                    _table[(_pos : stdgo.GoInt)]._sym = (_i : stdgo.GoUInt8);
                    _pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
                    while ((_pos > _highThreshold : Bool)) {
                        _pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
                    };
                });
            };
        };
        if (_pos != ((0 : stdgo.GoInt))) {
            return _r._makeError(_off, ("FSE count error" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _tableSize : Bool), _i++, {
                var _sym = (_table[(_i : stdgo.GoInt)]._sym : stdgo.GoUInt8);
                var _nextState = (_next[(_sym : stdgo.GoInt)] : stdgo.GoUInt16);
                _next[(_sym : stdgo.GoInt)]++;
                if (_nextState == ((0 : stdgo.GoUInt16))) {
                    return _r._makeError(_off, ("FSE state error" : stdgo.GoString));
                };
                var _highBit = ((15 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingZeros16.leadingZeros16(_nextState) : stdgo.GoInt);
                var _bits = (_tableBits - _highBit : stdgo.GoInt);
                _table[(_i : stdgo.GoInt)]._bits = (_bits : stdgo.GoUInt8);
                _table[(_i : stdgo.GoInt)]._base = (((_nextState << _bits : stdgo.GoUInt16)) - (_tableSize : stdgo.GoUInt16) : stdgo.GoUInt16);
            });
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readFSE( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _maxSym:stdgo.GoInt, _maxBits:stdgo.GoInt, _table:stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _br = (_r._makeBitReader(_data, _off)?.__copy__() : _internal.internal.zstd.Zstd_T_bitReader.T_bitReader);
        {
            var _err = (_br._moreBits() : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
        };
        var _accuracyLog = ((_br._val((4 : stdgo.GoUInt8)) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt);
        if ((_accuracyLog > _maxBits : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE accuracy log too large" : stdgo.GoString)) };
        };
        var _remaining = ((((1 : stdgo.GoInt) << _accuracyLog : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _threshold = ((1 : stdgo.GoInt) << _accuracyLog : stdgo.GoInt);
        var _bitsNeeded = (_accuracyLog + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _sym = (0 : stdgo.GoInt);
        var _prev0 = (false : Bool);
        var _norm:stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoInt16)]);
        while (((_remaining > (1 : stdgo.GoInt) : Bool) && (_sym <= _maxSym : Bool) : Bool)) {
            {
                var _err = (_br._moreBits() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                };
            };
            if (_prev0) {
                var _zsym = (_sym : stdgo.GoInt);
                while (((_br._bits & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((4095u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((18 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((12u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    {
                        var _err = (_br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        };
                    };
                };
                while (((_br._bits & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((3u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    {
                        var _err = (_br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        };
                    };
                };
                _zsym = (_zsym + ((_br._val((2 : stdgo.GoUInt8)) : stdgo.GoInt)) : stdgo.GoInt);
                if ((_zsym > _maxSym : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE symbol index overflow" : stdgo.GoString)) };
                };
                stdgo.Go.cfor((_sym < _zsym : Bool), _sym++, {
                    _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
                });
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
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE sym overflow" : stdgo.GoString)) };
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
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("too many symbols in FSE table" : stdgo.GoString)) };
        };
        stdgo.Go.cfor((_sym <= _maxSym : Bool), _sym++, {
            _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
        });
        _br._backup();
        {
            var _err = (_r._buildFSE(_off, (_norm.__slice__(0, (_maxSym + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt16>), _table, _accuracyLog) : stdgo.Error);
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
            };
        };
        return { _0 : _accuracyLog, _1 : (_br._off : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _copyFromWindow( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _rbr:stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>, _offset:stdgo.GoUInt32, _match:stdgo.GoUInt32):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (_offset == ((0u32 : stdgo.GoUInt32))) {
            return _rbr._makeError(("invalid zero offset" : stdgo.GoString));
        };
        var _lenBlock = (_r._buffer.length : stdgo.GoUInt32);
        if ((_lenBlock < _offset : Bool)) {
            var _lenWindow = (_r._window.length : stdgo.GoUInt32);
            var _windowOffset = (_offset - _lenBlock : stdgo.GoUInt32);
            if ((_windowOffset > _lenWindow : Bool)) {
                return _rbr._makeError(("offset past window" : stdgo.GoString));
            };
            var _from = (_lenWindow - _windowOffset : stdgo.GoUInt32);
            if (((_from + _match : stdgo.GoUInt32) <= _lenWindow : Bool)) {
                _r._buffer = (_r._buffer.__append__(...((_r._window.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                return (null : stdgo.Error);
            };
            _r._buffer = (_r._buffer.__append__(...((_r._window.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            var _copied = (_lenWindow - _from : stdgo.GoUInt32);
            _offset = (_offset - (_copied) : stdgo.GoUInt32);
            _match = (_match - (_copied) : stdgo.GoUInt32);
            if (((_offset == (0u32 : stdgo.GoUInt32)) && (_match > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                return _rbr._makeError(("invalid offset" : stdgo.GoString));
            };
        };
        var _from = (_lenBlock - _offset : stdgo.GoUInt32);
        if ((_offset >= _match : Bool)) {
            _r._buffer = (_r._buffer.__append__(...((_r._buffer.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return (null : stdgo.Error);
        };
        while ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
            var _copy:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            if ((_offset >= _match : Bool)) {
                _copy = _match;
            } else {
                _copy = _offset;
            };
            _r._buffer = (_r._buffer.__append__(...((_r._buffer.__slice__(_from, (_from + _copy : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _match = (_match - (_copy) : stdgo.GoUInt32);
            _from = (_from + (_copy) : stdgo.GoUInt32);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _execSeqs( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _litbuf:stdgo.Slice<stdgo.GoUInt8>, _seqCount:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var __tmp__ = _r._makeReverseBitReader(_data, ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt), _off), _rbr:_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _rbr._val(_r._seqTableBits[((0 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)]), _literalState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _rbr._val(_r._seqTableBits[((1 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)]), _offsetState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _rbr._val(_r._seqTableBits[((2 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)]), _matchState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _seq = (0 : stdgo.GoInt);
        while ((_seq < _seqCount : Bool)) {
            if ((((_r._buffer.length) + (_litbuf.length) : stdgo.GoInt) > (131072 : stdgo.GoInt) : Bool)) {
                return _rbr._makeError(("uncompressed size too big" : stdgo.GoString));
            };
            var _ptoffset = (stdgo.Go.setRef(_r._seqTables[((1 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)][(_offsetState : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            var _ptmatch = (stdgo.Go.setRef(_r._seqTables[((2 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)][(_matchState : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            var _ptliteral = (stdgo.Go.setRef(_r._seqTables[((0 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode) : stdgo.GoInt)][(_literalState : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
            var __tmp__ = _rbr._val(_ptoffset._basebits), _add:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            var _offset = (_ptoffset._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = _rbr._val(_ptmatch._basebits);
                _add = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var _match = (_ptmatch._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = _rbr._val(_ptliteral._basebits);
                _add = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            var _literal = (_ptliteral._baseline + _add : stdgo.GoUInt32);
            if ((_ptoffset._basebits > (1 : stdgo.GoUInt8) : Bool)) {
                _r._repeatedOffset3 = _r._repeatedOffset2;
                _r._repeatedOffset2 = _r._repeatedOffset1;
                _r._repeatedOffset1 = _offset;
            } else {
                if (_literal == ((0u32 : stdgo.GoUInt32))) {
                    _offset++;
                };
                {
                    final __value__ = _offset;
                    if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        _offset = _r._repeatedOffset1;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        _offset = _r._repeatedOffset2;
                        _r._repeatedOffset2 = _r._repeatedOffset1;
                        _r._repeatedOffset1 = _offset;
                    } else if (__value__ == ((3u32 : stdgo.GoUInt32))) {
                        _offset = _r._repeatedOffset3;
                        _r._repeatedOffset3 = _r._repeatedOffset2;
                        _r._repeatedOffset2 = _r._repeatedOffset1;
                        _r._repeatedOffset1 = _offset;
                    } else if (__value__ == ((4u32 : stdgo.GoUInt32))) {
                        _offset = (_r._repeatedOffset1 - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        _r._repeatedOffset3 = _r._repeatedOffset2;
                        _r._repeatedOffset2 = _r._repeatedOffset1;
                        _r._repeatedOffset1 = _offset;
                    };
                };
            };
            _seq++;
            if ((_seq < _seqCount : Bool)) {
                {
                    var __tmp__ = _rbr._val(_ptliteral._bits);
                    _add = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _literalState = ((_ptliteral._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = _rbr._val(_ptmatch._bits);
                    _add = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _matchState = ((_ptmatch._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = _rbr._val(_ptoffset._bits);
                    _add = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
                _offsetState = ((_ptoffset._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
            };
            if (false) {
                stdgo.Go.println(("literal" : stdgo.GoString), Std.string(((_literal : UInt) : Float)), ("offset" : stdgo.GoString), Std.string(((_offset : UInt) : Float)), ("match" : stdgo.GoString), Std.string(((_match : UInt) : Float)));
            };
            if ((_literal > (_litbuf.length : stdgo.GoUInt32) : Bool)) {
                return _rbr._makeError(("literal byte overflow" : stdgo.GoString));
            };
            if ((_literal > (0u32 : stdgo.GoUInt32) : Bool)) {
                _r._buffer = (_r._buffer.__append__(...((_litbuf.__slice__(0, _literal) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _litbuf = (_litbuf.__slice__(_literal) : stdgo.Slice<stdgo.GoUInt8>);
            };
            if ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
                {
                    var _err = (_r._copyFromWindow((stdgo.Go.setRef(_rbr) : stdgo.Ref<_internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader>), _offset, _match) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        if (((_litbuf.length) > (0 : stdgo.GoInt) : Bool)) {
            _r._buffer = (_r._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)));
        };
        if (_rbr._cnt != ((0u32 : stdgo.GoUInt32))) {
            return _r._makeError(_off, ("extraneous data after sequences" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _setSeqTable( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _kind:_internal.internal.zstd.Zstd_T_seqCode.T_seqCode, _mode:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _info = (stdgo.Go.setRef(_internal.internal.zstd.Zstd__seqCodeInfo._seqCodeInfo[(_kind : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.zstd.Zstd_T_seqCodeInfoData.T_seqCodeInfoData>);
        {
            final __value__ = _mode;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _r._seqTables[(_kind : stdgo.GoInt)] = _info._predefTable;
                _r._seqTableBits[(_kind : stdgo.GoInt)] = (_info._predefTableBits : stdgo.GoUInt8);
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                if ((_off >= (_data.length) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _r._makeEOFError(_off) };
                };
                var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
                _off++;
                var _entry = (new stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>(1, 1, ...[({ _sym : _rle, _bits : (0 : stdgo.GoUInt8), _base : (0 : stdgo.GoUInt16) } : _internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry)])) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                if (_r._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    _r._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry)]) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
                };
                _r._seqTableBuffers[(_kind : stdgo.GoInt)] = (_r._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
                {
                    var _err = (_info._toBaseline(_r, _off, _entry, _r._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                _r._seqTables[(_kind : stdgo.GoInt)] = _r._seqTableBuffers[(_kind : stdgo.GoInt)];
                _r._seqTableBits[(_kind : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                if ((_r._fseScratch.capacity < ((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt) : Bool)) {
                    _r._fseScratch = (new stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>(((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry)]) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                };
                _r._fseScratch = (_r._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt)) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                var __tmp__ = _r._readFSE(_data, _off, _info._maxSym, _info._maxBits, _r._fseScratch), _tableBits:stdgo.GoInt = __tmp__._0, _roff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                _r._fseScratch = (_r._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseEntry.T_fseEntry>);
                if (_r._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    _r._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << _info._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry)]) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
                };
                _r._seqTableBuffers[(_kind : stdgo.GoInt)] = (_r._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<_internal.internal.zstd.Zstd_T_fseBaselineEntry.T_fseBaselineEntry>);
                {
                    var _err = (_info._toBaseline(_r, _roff, _r._fseScratch, _r._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                _r._seqTables[(_kind : stdgo.GoInt)] = _r._seqTableBuffers[(_kind : stdgo.GoInt)];
                _r._seqTableBits[(_kind : stdgo.GoInt)] = (_tableBits : stdgo.GoUInt8);
                return { _0 : _roff, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                if ((_r._seqTables[(_kind : stdgo.GoInt)].length) == ((0 : stdgo.GoInt))) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _r._makeError(_off, ("missing repeat sequence FSE table" : stdgo.GoString)) };
                };
                return { _0 : _off, _1 : (null : stdgo.Error) };
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    static public function _initSeqs( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
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
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
            };
            _seqCount = ((((((_seqHdr : stdgo.GoInt) - (128 : stdgo.GoInt) : stdgo.GoInt)) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) + (_data[(_off : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            _off++;
        } else {
            if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
            };
            _seqCount = (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (32512 : stdgo.GoInt) : stdgo.GoInt);
            _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_off >= (_data.length) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
        };
        var _symMode = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_symMode & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("invalid symbol compression mode" : stdgo.GoString)) };
        };
        _off++;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (0 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode), (((_symMode >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (1 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode), (((_symMode >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (2 : _internal.internal.zstd.Zstd_T_seqCode.T_seqCode), (((_symMode >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        return { _0 : _seqCount, _1 : _off, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _compressedBlock( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _blockSize:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        if (((_r._compressedBuf.length) >= _blockSize : Bool)) {
            _r._compressedBuf = (_r._compressedBuf.__slice__(0, _blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            var _need = (_blockSize - (_r._compressedBuf.length) : stdgo.GoInt);
            _r._compressedBuf = (_r._compressedBuf.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_r._r, _r._compressedBuf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
            };
        };
        var _data = (_r._compressedBuf : _internal.internal.zstd.Zstd_T_block.T_block);
        var _off = (0 : stdgo.GoInt);
        _r._buffer = (_r._buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r._readLiterals(_data, _off, (_r._literals.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _litoff:stdgo.GoInt = __tmp__._0, _litbuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        _r._literals = _litbuf;
        _off = _litoff;
        var __tmp__ = _r._initSeqs(_data, _off), _seqCount:stdgo.GoInt = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if (_seqCount == ((0 : stdgo.GoInt))) {
            if ((_off < (_data.length) : Bool)) {
                return _r._makeError(_off, ("extraneous data after no sequences" : stdgo.GoString));
            };
            if ((_litbuf.length) == ((0 : stdgo.GoInt))) {
                return _r._makeError(_off, ("no sequences and no literals" : stdgo.GoString));
            };
            _r._buffer = (_r._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)));
            return (null : stdgo.Error);
        };
        return _r._execSeqs(_data, _off, _litbuf, _seqCount);
    }
    @:keep
    static public function _makeReverseBitReader( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt, _start:stdgo.GoInt):{ var _0 : _internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        var _streamStart = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        if (_streamStart == ((0 : stdgo.GoUInt8))) {
            return { _0 : (new _internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader() : _internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader), _1 : _r._makeError(_off, ("zero byte at reverse bit stream start" : stdgo.GoString)) };
        };
        var _rbr = ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32), _start : (_start : stdgo.GoUInt32), _bits : (_streamStart : stdgo.GoUInt32), _cnt : (((7 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingZeros8.leadingZeros8(_streamStart) : stdgo.GoInt) : stdgo.GoUInt32) } : _internal.internal.zstd.Zstd_T_reverseBitReader.T_reverseBitReader);
        return { _0 : _rbr?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _makeBitReader( _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader>, _data:_internal.internal.zstd.Zstd_T_block.T_block, _off:stdgo.GoInt):_internal.internal.zstd.Zstd_T_bitReader.T_bitReader {
        @:recv var _r:stdgo.Ref<_internal.internal.zstd.Zstd_Reader.Reader> = _r;
        return ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32) } : _internal.internal.zstd.Zstd_T_bitReader.T_bitReader);
    }
}
