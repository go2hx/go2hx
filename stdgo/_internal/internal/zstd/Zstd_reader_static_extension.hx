package stdgo._internal.internal.zstd;
@:keep @:allow(stdgo._internal.internal.zstd.Zstd.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _wrapError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L504"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L505"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L507"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError(((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (_off : stdgo.GoInt64) : stdgo.GoInt64), _err) : stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError)) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_zstderror.T_zstdError>));
    }
    @:keep
    @:tdfield
    static public function _makeError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L500"
        return _r._wrapError(_off, stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _wrapNonEOFError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _err:stdgo.Error):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L493"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L496"
        return _r._wrapError(_off, _err);
    }
    @:keep
    @:tdfield
    static public function _makeEOFError( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L489"
        return _r._wrapError(_off, stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF);
    }
    @:keep
    @:tdfield
    static public function _saveWindow( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _buf:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L455"
        if ((@:checkr _r ?? throw "null pointer dereference")._windowSize == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L456"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L459"
        if (((_buf.length) >= (@:checkr _r ?? throw "null pointer dereference")._windowSize : Bool)) {
            var _from = ((_buf.length) - (@:checkr _r ?? throw "null pointer dereference")._windowSize : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._window = (((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((_buf.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L462"
            return;
        };
        var _keep = ((@:checkr _r ?? throw "null pointer dereference")._windowSize - (_buf.length) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L466"
        if ((_keep < ((@:checkr _r ?? throw "null pointer dereference")._window.length) : Bool)) {
            var _remove = (((@:checkr _r ?? throw "null pointer dereference")._window.length) - _keep : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L468"
            ((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_remove) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _r ?? throw "null pointer dereference")._window = ((@:checkr _r ?? throw "null pointer dereference")._window.__append__(...(_buf : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _setBufferSize( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _size:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L445"
        if (((@:checkr _r ?? throw "null pointer dereference")._buffer.capacity < _size : Bool)) {
            var _need = (_size - (@:checkr _r ?? throw "null pointer dereference")._buffer.capacity : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._buffer = (((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._buffer.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _readBlock( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L356"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L357"
                return _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        var _header = ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32) | ((((@:checkr _r ?? throw "null pointer dereference")._scratch[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _lastBlock = ((_header & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32)) : Bool);
        var _blockType = (((_header >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _blockSize = ((_header >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L371"
        if (((_blockSize > (131072 : stdgo.GoInt) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference")._windowSize > (0 : stdgo.GoInt) : Bool) && (_blockSize > (@:checkr _r ?? throw "null pointer dereference")._windowSize : Bool) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L372"
            return _r._makeError(_relativeOffset, ("block size too large" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L376"
        {
            final __value__ = _blockType;
            if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L378"
                _r._setBufferSize(_blockSize);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L379"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, (@:checkr _r ?? throw "null pointer dereference")._buffer), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L380"
                        return _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                _relativeOffset = (_relativeOffset + (_blockSize) : stdgo.GoInt);
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L385"
                _r._setBufferSize(_blockSize);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L386"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L387"
                        return _r._wrapNonEOFError(_relativeOffset, _err);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L389"
                _relativeOffset++;
                var _v = ((@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L391"
                for (_i => _ in (@:checkr _r ?? throw "null pointer dereference")._buffer) {
                    (@:checkr _r ?? throw "null pointer dereference")._buffer[(_i : stdgo.GoInt)] = _v;
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L397"
                {
                    var _err = (_r._compressedBlock(_blockSize) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L398"
                        return _err;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_blockSize : stdgo.GoInt64)) : stdgo.GoInt64);
            } else if (__value__ == ((3u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L402"
                return _r._makeError(_relativeOffset, ("invalid block type" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L405"
        if (!(@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L406"
            if ((((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt64) > (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L407"
                return _r._makeError(_relativeOffset, ("too many uncompressed bytes in frame" : stdgo.GoString));
            };
            (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = ((@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize - (((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L412"
        if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L413"
            (@:checkr _r ?? throw "null pointer dereference")._checksum._update((@:checkr _r ?? throw "null pointer dereference")._buffer);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L416"
        if (!_lastBlock) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L417"
            _r._saveWindow((@:checkr _r ?? throw "null pointer dereference")._buffer);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L419"
            if ((!(@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown && ((@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize != (0i64 : stdgo.GoUInt64)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L420"
                return _r._makeError(_relativeOffset, ("not enough uncompressed bytes for frame" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L423"
            if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L424"
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L425"
                        return _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
                    };
                };
                var _inputChecksum = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                var _dataChecksum = ((@:checkr _r ?? throw "null pointer dereference")._checksum._digest() : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L430"
                if (_inputChecksum != (_dataChecksum)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L431"
                    return _r._wrapError((0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_errorf.errorf(("invalid checksum: got %#x want %#x" : stdgo.GoString), stdgo.Go.toInterface(_dataChecksum), stdgo.Go.toInterface(_inputChecksum)));
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((4i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            (@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L439"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _skipFrame( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _relativeOffset = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L308"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L309"
                return _r._wrapNonEOFError(_relativeOffset, _err);
            };
        };
        _relativeOffset = (_relativeOffset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        var _size = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L316"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_seeker.Seeker)) : stdgo._internal.io.Io_seeker.Seeker), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_seeker.Seeker), _1 : false };
            }, _seeker = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L317"
                {
                    var __tmp__ = _seeker.seek((_size : stdgo.GoInt64), (1 : stdgo.GoInt)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L318"
                        return _err;
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (((_relativeOffset : stdgo.GoInt64) + (_size : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L321"
                return (null : stdgo.Error);
            };
        };
        var _skip:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L326"
        while ((_size >= (1048576u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L327"
            if ((_skip.length) == ((0 : stdgo.GoInt))) {
                _skip = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L330"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L331"
                    return _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            _relativeOffset = (_relativeOffset + ((1048576 : stdgo.GoInt)) : stdgo.GoInt);
            _size = (_size - ((1048576u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L336"
        if ((_size > (0u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L337"
            if ((_skip.length) == ((0 : stdgo.GoInt))) {
                _skip = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L340"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, _skip), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L341"
                    return _r._wrapNonEOFError(_relativeOffset, _err);
                };
            };
            _relativeOffset = (_relativeOffset + ((_size : stdgo.GoInt)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + ((_relativeOffset : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L348"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFrameHeader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _windowDescriptorSize_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _exponent_12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _headerSize_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _descriptor_5:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_4:stdgo.Error = (null : stdgo.Error);
        var _err_10:stdgo.Error = (null : stdgo.Error);
        var _singleSegment_6:Bool = false;
        var _mantissa_13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _relativeOffset_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _windowBase_15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _windowLog_14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _err_3:stdgo.Error = (null : stdgo.Error);
        var _magic_2:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _fb_18:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _windowSize_17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _windowAdd_16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _windowDescriptor_11:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _fcsFieldSize_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3563289i64;
                } else if (__value__ == (3563289i64)) {
                    _relativeOffset_0 = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L173"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_1 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_1 != null) {
                            _gotoNext = 3563410i64;
                        } else {
                            _gotoNext = 3563592i64;
                        };
                    };
                } else if (__value__ == (3563410i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L175"
                    if (((stdgo.Go.toInterface(_err_1) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && !(@:checkr _r ?? throw "null pointer dereference")._readOneFrame : Bool)) {
                        _gotoNext = 3563510i64;
                    } else {
                        _gotoNext = 3563547i64;
                    };
                } else if (__value__ == (3563510i64)) {
                    _err_1 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 3563547i64;
                } else if (__value__ == (3563547i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L178"
                    return _r._wrapError(_relativeOffset_0, _err_1);
                    _gotoNext = 3563592i64;
                } else if (__value__ == (3563592i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L181"
                    {
                        _magic_2 = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        if (_magic_2 != ((-47205080u32 : stdgo.GoUInt32))) {
                            _gotoNext = 3563667i64;
                        } else {
                            _gotoNext = 3563944i64;
                        };
                    };
                } else if (__value__ == (3563667i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L182"
                    if (((_magic_2 >= (407710288u32 : stdgo.GoUInt32) : Bool) && (_magic_2 <= (407710303u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                        _gotoNext = 3563717i64;
                    } else {
                        _gotoNext = 3563880i64;
                    };
                } else if (__value__ == (3563717i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._blockOffset = ((@:checkr _r ?? throw "null pointer dereference")._blockOffset + (((_relativeOffset_0 : stdgo.GoInt64) + (4i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L185"
                    {
                        _err_3 = _r._skipFrame();
                        if (_err_3 != null) {
                            _gotoNext = 3563837i64;
                        } else {
                            _gotoNext = 3563862i64;
                        };
                    };
                } else if (__value__ == (3563837i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L186"
                    return _err_3;
                    _gotoNext = 3563862i64;
                } else if (__value__ == (3563862i64)) {
                    _gotoNext = 3563289i64;
                } else if (__value__ == (3563880i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L191"
                    return _r._makeError(_relativeOffset_0, ("invalid magic number" : stdgo.GoString));
                    _gotoNext = 3563944i64;
                } else if (__value__ == (3563944i64)) {
                    _relativeOffset_0 = (_relativeOffset_0 + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L197"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_4 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4 != null) {
                            _gotoNext = 3564072i64;
                        } else {
                            _gotoNext = 3564126i64;
                        };
                    };
                } else if (__value__ == (3564072i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L198"
                    return _r._wrapNonEOFError(_relativeOffset_0, _err_4);
                    _gotoNext = 3564126i64;
                } else if (__value__ == (3564126i64)) {
                    _descriptor_5 = (@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)];
                    _singleSegment_6 = (_descriptor_5 & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
                    _fcsFieldSize_7 = ((1 : stdgo.GoInt) << ((_descriptor_5 >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L205"
                    if (((_fcsFieldSize_7 == (1 : stdgo.GoInt)) && !_singleSegment_6 : Bool)) {
                        _gotoNext = 3564276i64;
                    } else {
                        _gotoNext = 3564302i64;
                    };
                } else if (__value__ == (3564276i64)) {
                    _fcsFieldSize_7 = (0 : stdgo.GoInt);
                    _gotoNext = 3564302i64;
                } else if (__value__ == (3564302i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L210"
                    if (_singleSegment_6) {
                        _gotoNext = 3564349i64;
                    } else {
                        _gotoNext = 3564386i64;
                    };
                } else if (__value__ == (3564349i64)) {
                    _windowDescriptorSize_8 = (0 : stdgo.GoInt);
                    _gotoNext = 3564420i64;
                } else if (__value__ == (3564386i64)) {
                    _gotoNext = 3564386i64;
                    _windowDescriptorSize_8 = (1 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3564420i64;
                } else if (__value__ == (3564420i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L216"
                    if ((_descriptor_5 & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3564446i64;
                    } else {
                        _gotoNext = 3564537i64;
                    };
                } else if (__value__ == (3564446i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L217"
                    return _r._makeError(_relativeOffset_0, ("reserved bit set in frame header descriptor" : stdgo.GoString));
                    _gotoNext = 3564537i64;
                } else if (__value__ == (3564537i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._hasChecksum = (_descriptor_5 & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L221"
                    if ((@:checkr _r ?? throw "null pointer dereference")._hasChecksum) {
                        _gotoNext = 3564594i64;
                    } else {
                        _gotoNext = 3564622i64;
                    };
                } else if (__value__ == (3564594i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L222"
                    (@:checkr _r ?? throw "null pointer dereference")._checksum._reset();
                    _gotoNext = 3564622i64;
                } else if (__value__ == (3564622i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L225"
                    if ((_descriptor_5 & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3564643i64;
                    } else {
                        _gotoNext = 3564721i64;
                    };
                } else if (__value__ == (3564643i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L226"
                    return _r._makeError(_relativeOffset_0, ("dictionaries are not supported" : stdgo.GoString));
                    _gotoNext = 3564721i64;
                } else if (__value__ == (3564721i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L229"
                    _relativeOffset_0++;
                    _headerSize_9 = (_windowDescriptorSize_8 + _fcsFieldSize_7 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L233"
                    {
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(0, _headerSize_9) : stdgo.Slice<stdgo.GoUInt8>));
                            _err_10 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_10 != null) {
                            _gotoNext = 3564858i64;
                        } else {
                            _gotoNext = 3564998i64;
                        };
                    };
                } else if (__value__ == (3564858i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L234"
                    return _r._wrapNonEOFError(_relativeOffset_0, _err_10);
                    _gotoNext = 3564998i64;
                } else if (__value__ == (3564998i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L240"
                    if (_singleSegment_6) {
                        _gotoNext = 3565015i64;
                    } else {
                        _gotoNext = 3565108i64;
                    };
                } else if (__value__ == (3565015i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._windowSize = (0 : stdgo.GoInt);
                    _gotoNext = 3565784i64;
                } else if (__value__ == (3565108i64)) {
                    _gotoNext = 3565108i64;
                    _windowDescriptor_11 = (@:checkr _r ?? throw "null pointer dereference")._scratch[(0 : stdgo.GoInt)];
                    _exponent_12 = ((_windowDescriptor_11 >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt64);
                    _mantissa_13 = ((_windowDescriptor_11 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64);
                    _windowLog_14 = (_exponent_12 + (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _windowBase_15 = ((1i64 : stdgo.GoUInt64) << _windowLog_14 : stdgo.GoUInt64);
                    _windowAdd_16 = (((_windowBase_15 / (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * _mantissa_13 : stdgo.GoUInt64);
                    _windowSize_17 = (_windowBase_15 + _windowAdd_16 : stdgo.GoUInt64);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L254"
                    if ((stdgo._internal.internal.zstd.Zstd__fuzzing._fuzzing && (((_windowLog_14 > (31i64 : stdgo.GoUInt64) : Bool) || (_windowSize_17 > (134217728i64 : stdgo.GoUInt64) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3565527i64;
                    } else {
                        _gotoNext = 3565656i64;
                    };
                } else if (__value__ == (3565527i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L255"
                    return _r._makeError(_relativeOffset_0, ("windowSize too large" : stdgo.GoString));
                    _gotoNext = 3565656i64;
                } else if (__value__ == (3565656i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L259"
                    if ((_windowSize_17 > (8388608i64 : stdgo.GoUInt64) : Bool)) {
                        _gotoNext = 3565678i64;
                    } else {
                        _gotoNext = 3565711i64;
                    };
                } else if (__value__ == (3565678i64)) {
                    _windowSize_17 = (8388608i64 : stdgo.GoUInt64);
                    _gotoNext = 3565711i64;
                } else if (__value__ == (3565711i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._windowSize = (_windowSize_17 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3565784i64;
                } else if (__value__ == (3565784i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown = false;
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (0i64 : stdgo.GoUInt64);
                    _fb_18 = ((@:checkr _r ?? throw "null pointer dereference")._scratch.__slice__(_windowDescriptorSize_8) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3565878i64;
                } else if (__value__ == (3565878i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L270"
                    {
                        final __value__ = _fcsFieldSize_7;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3565901i64;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3565938i64;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _gotoNext = 3565986i64;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _gotoNext = 3566065i64;
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 3566138i64;
                        } else {
                            _gotoNext = 3566203i64;
                        };
                    };
                } else if (__value__ == (3565901i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._frameSizeUnknown = true;
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3565938i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (_fb_18[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3565986i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = ((256i64 : stdgo.GoUInt64) + (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16(_fb_18) : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3566065i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32(_fb_18) : stdgo.GoUInt64);
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3566138i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._remainingFrameSize = stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64(_fb_18);
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3566203i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L282"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    _gotoNext = 3566240i64;
                } else if (__value__ == (3566240i64)) {
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
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L301"
                    return (null : stdgo.Error);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _refill( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L159"
        if (!(@:checkr _r ?? throw "null pointer dereference")._sawFrameHeader) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L160"
            {
                var _err = (_r._readFrameHeader() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L161"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L164"
        return _r._readBlock();
    }
    @:keep
    @:tdfield
    static public function _refillIfNeeded( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L148"
        while (((@:checkr _r ?? throw "null pointer dereference")._off >= ((@:checkr _r ?? throw "null pointer dereference")._buffer.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L149"
            {
                var _err = (_r._refill() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L150"
                    return _err;
                };
            };
            (@:checkr _r ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L154"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readByte( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L138"
        {
            var _err = (_r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L139"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        var _ret = ((@:checkr _r ?? throw "null pointer dereference")._buffer[((@:checkr _r ?? throw "null pointer dereference")._off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L142"
        (@:checkr _r ?? throw "null pointer dereference")._off++;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L143"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L128"
        {
            var _err = (_r._refillIfNeeded() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L129"
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        var _n = (_p.__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__((@:checkr _r ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/zstd.go#L133"
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
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L211"
        if (((_off + (5 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L212"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeEOFError(_off) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L214"
        if ((_totalStreamsSize < (6 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L215"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeError(_off, ("total streams size too small for jump table" : stdgo.GoString)) };
        };
        var _streamSize1 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__(_off) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        var _streamSize2 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__((_off + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        var _streamSize3 = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint16((_data.__slice__((_off + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block)) : stdgo.GoUInt16);
        _off = (_off + ((6 : stdgo.GoInt)) : stdgo.GoInt);
        var _tot = (((_streamSize1 : stdgo.GoUInt64) + (_streamSize2 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_streamSize3 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L224"
        if ((_tot > ((_totalStreamsSize : stdgo.GoUInt64) - (6i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L225"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _r._makeEOFError(_off) };
        };
        var _streamSize4 = (((_totalStreamsSize : stdgo.GoUInt32) - (6u32 : stdgo.GoUInt32) : stdgo.GoUInt32) - (_tot : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L229"
        _off--;
        var _off1 = (_off + (_streamSize1 : stdgo.GoInt) : stdgo.GoInt);
        var _start1 = (_off + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off2 = (_off1 + (_streamSize2 : stdgo.GoInt) : stdgo.GoInt);
        var _start2 = (_off1 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off3 = (_off2 + (_streamSize3 : stdgo.GoInt) : stdgo.GoInt);
        var _start3 = (_off2 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _off4 = (_off3 + (_streamSize4 : stdgo.GoInt) : stdgo.GoInt);
        var _start4 = (_off3 + (1 : stdgo.GoInt) : stdgo.GoInt);
        var __tmp__ = _r._makeReverseBitReader(_data, _off1, (_start1 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr1:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L246"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L247"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off2, (_start2 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr2:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L251"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L252"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off3, (_start3 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr3:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L256"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L257"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _r._makeReverseBitReader(_data, _off4, (_start4 - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr4:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L261"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L262"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _regeneratedStreamSize = (((_regeneratedSize + (3 : stdgo.GoInt) : stdgo.GoInt)) / (4 : stdgo.GoInt) : stdgo.GoInt);
        var _out1 = (_outbuf.length : stdgo.GoInt);
        var _out2 = (_out1 + _regeneratedStreamSize : stdgo.GoInt);
        var _out3 = (_out2 + _regeneratedStreamSize : stdgo.GoInt);
        var _out4 = (_out3 + _regeneratedStreamSize : stdgo.GoInt);
        var _regeneratedStreamSize4 = (_regeneratedSize - (_regeneratedStreamSize * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        _outbuf = (_outbuf.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_regeneratedSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        var _huffTable = (@:checkr _r ?? throw "null pointer dereference")._huffmanTable;
        var _huffBits = ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L280"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _regeneratedStreamSize : Bool)) {
                var _use4 = (_i < _regeneratedStreamSize4 : Bool);
var _fetchHuff = function(_rbr:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L284"
                    if (!_rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L285"
                        return { _0 : (0 : stdgo.GoUInt16), _1 : _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                    };
                    var _idx = ((((@:checkr _rbr ?? throw "null pointer dereference")._bits >> (((@:checkr _rbr ?? throw "null pointer dereference")._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L288"
                    return { _0 : _huffTable[(_idx : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr1) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t1:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L292"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L293"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr2) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t2:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L297"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L298"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr3) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t3:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L302"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L303"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L306"
                if (_use4) {
                    var __tmp__ = _fetchHuff((stdgo.Go.setRef(_rbr4) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>)), _t4:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L308"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L309"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                    };
                    _outbuf[(_out4 : stdgo.GoInt)] = ((_t4 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L312"
                    _out4++;
                    _rbr4._cnt = (_rbr4._cnt - (((_t4 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                };
_outbuf[(_out1 : stdgo.GoInt)] = ((_t1 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L317"
                _out1++;
_rbr1._cnt = (_rbr1._cnt - (((_t1 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_outbuf[(_out2 : stdgo.GoInt)] = ((_t2 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L321"
                _out2++;
_rbr2._cnt = (_rbr2._cnt - (((_t2 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_outbuf[(_out3 : stdgo.GoInt)] = ((_t3 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L325"
                _out3++;
_rbr3._cnt = (_rbr3._cnt - (((_t3 & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L329"
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLiteralsOneStream( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _compressedSize:stdgo.GoInt, _regeneratedSize:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var __tmp__ = _r._makeReverseBitReader(_data, ((_off + _compressedSize : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (_off - (2 : stdgo.GoInt) : stdgo.GoInt)), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L183"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L184"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _huffTable = (@:checkr _r ?? throw "null pointer dereference")._huffmanTable;
        var _huffBits = ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits : stdgo.GoUInt32);
        var _huffMask = ((((1u32 : stdgo.GoUInt32) << _huffBits : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L191"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _regeneratedSize : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L192"
                if (!_rbr._fetch((_huffBits : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L193"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _rbr._makeError(("literals Huffman stream out of bits" : stdgo.GoString)) };
                };
var _t:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
var _idx = (((_rbr._bits >> ((_rbr._cnt - _huffBits : stdgo.GoUInt32)) : stdgo.GoUInt32)) & _huffMask : stdgo.GoUInt32);
_t = _huffTable[(_idx : stdgo.GoInt)];
_outbuf = (_outbuf.__append__(((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
_rbr._cnt = (_rbr._cnt - (((_t & (255 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L203"
        return { _0 : _outbuf, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readHuffLiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _regeneratedSize:stdgo.GoInt = (0 : stdgo.GoInt), _compressedSize:stdgo.GoInt = (0 : stdgo.GoInt), _streams:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L90"
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((1 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L92"
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L93"
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = ((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) & (63 : stdgo.GoInt) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = ((((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L98"
                if (((((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8))) {
                    _streams = (1 : stdgo.GoInt);
                } else {
                    _streams = (4 : stdgo.GoInt);
                };
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L104"
                if (((_off + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L105"
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (3 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = ((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L112"
                if (((_off + (3 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L113"
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((((_hdr : stdgo.GoInt) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) & (63 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _compressedSize = (((((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) >> (6i64 : stdgo.GoUInt64) : stdgo.GoInt)) | (((_data[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) | (((_data[(_off + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (10i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                _streams = (4 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L124"
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L125"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        var _roff = (_off + _compressedSize : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L129"
        if (((_roff > (_data.length) : Bool) || (_roff < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L130"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
        };
        var _totalStreamsSize = (_compressedSize : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L134"
        if (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((2 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L138"
            if ((((@:checkr _r ?? throw "null pointer dereference")._huffmanTable.length) < (2048 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._huffmanTable = (new stdgo.Slice<stdgo.GoUInt16>((2048 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
            };
            var __tmp__ = _r._readHuff(_data, _off, (@:checkr _r ?? throw "null pointer dereference")._huffmanTable), _huffmanTableBits:stdgo.GoInt = __tmp__._0, _hoff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L143"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L144"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits = _huffmanTableBits;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L148"
            if ((_totalStreamsSize < (_hoff - _off : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L149"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("Huffman table too big" : stdgo.GoString)) };
            };
            _totalStreamsSize = (_totalStreamsSize - ((_hoff - _off : stdgo.GoInt)) : stdgo.GoInt);
            _off = _hoff;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L156"
            if ((@:checkr _r ?? throw "null pointer dereference")._huffmanTableBits == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L157"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("missing literals Huffman tree" : stdgo.GoString)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L165"
        if (_streams == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = _r._readLiteralsOneStream(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _r._readLiteralsFourStreams(_data, _off, _totalStreamsSize, _regeneratedSize, _outbuf);
                _outbuf = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L171"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L172"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L175"
        return { _0 : _roff, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readRawRLELiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _hdr:stdgo.GoUInt8, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _raw = (((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8)) == ((0 : stdgo.GoUInt8)) : Bool);
        var _regeneratedSize:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L36"
        {
            final __value__ = (((_hdr >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((2 : stdgo.GoUInt8))) {
                _regeneratedSize = ((_hdr >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L40"
                if ((_off >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L41"
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = (((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L44"
                _off++;
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L46"
                if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L47"
                    return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
                };
                _regeneratedSize = ((((_hdr >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt) + (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt);
                _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L56"
        if ((_regeneratedSize > (131072 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L57"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("literal size too large" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L60"
        if (_raw) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L62"
            if (((_off + _regeneratedSize : stdgo.GoInt) > (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L63"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("raw literal size too large" : stdgo.GoString)) };
            };
            _outbuf = (_outbuf.__append__(...((_data.__slice__(_off, (_off + _regeneratedSize : stdgo.GoInt)) : stdgo._internal.internal.zstd.Zstd_t_block.T_block) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _off = (_off + (_regeneratedSize) : stdgo.GoInt);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L69"
            if ((_off >= (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L70"
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeError(_off, ("RLE literal missing" : stdgo.GoString)) };
            };
            var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L73"
            _off++;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L74"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _regeneratedSize : Bool)) {
                    _outbuf = (_outbuf.__append__(_rle) : stdgo.Slice<stdgo.GoUInt8>);
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L79"
        return { _0 : _off, _1 : _outbuf, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLiterals( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _outbuf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L15"
        if ((_off >= (_data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L16"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _r._makeEOFError(_off) };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L21"
        _off++;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L23"
        if ((((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) || ((_hdr & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) == (1 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L24"
            return _r._readRawRLELiterals(_data, _off, _hdr, _outbuf);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/literals.go#L26"
            return _r._readHuffLiterals(_data, _off, _hdr, _outbuf);
        };
    }
    @:keep
    @:tdfield
    static public function _readHuff( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _table:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L24"
        if ((_off >= (_data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L25"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _hdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L29"
        _off++;
        var _weights:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256).__setNumber32__();
        var _count:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L33"
        if ((_hdr < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L35"
            if ((((@:checkr _r ?? throw "null pointer dereference")._fseScratch.length) < (64 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>((64 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((64 : stdgo.GoInt).toBasic() > 0 ? (64 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
            };
            var __tmp__ = _r._readFSE(_data, _off, (255 : stdgo.GoInt), (6 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._fseScratch), _fseBits:stdgo.GoInt = __tmp__._0, _noff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L39"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L40"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _fseTable = (@:checkr _r ?? throw "null pointer dereference")._fseScratch;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L44"
            if (((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) > (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L45"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = _r._makeReverseBitReader(_data, ((_off + (_hdr : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), _noff), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L49"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L50"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = _rbr._val((_fseBits : stdgo.GoUInt8)), _state1:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L54"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L55"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var __tmp__ = _rbr._val((_fseBits : stdgo.GoUInt8)), _state2:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L59"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L60"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L66"
            while (true) {
                var _pt = (stdgo.Go.setRef(_fseTable[(_state1 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L68"
                if (!_rbr._fetch((@:checkr _pt ?? throw "null pointer dereference")._bits)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L69"
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L70"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                            _tableBits = __tmp__._0;
                            _roff = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state2 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L75"
                    break;
                };
                var __tmp__ = _rbr._val((@:checkr _pt ?? throw "null pointer dereference")._bits), _v:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L79"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L80"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _state1 = (((@:checkr _pt ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L84"
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L89"
                _count++;
                _pt = (stdgo.Go.setRef(_fseTable[(_state2 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L93"
                if (!_rbr._fetch((@:checkr _pt ?? throw "null pointer dereference")._bits)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L94"
                    if ((_count >= (254 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L95"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                            _tableBits = __tmp__._0;
                            _roff = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                    _weights[(_count + (1 : stdgo.GoInt) : stdgo.GoInt)] = _fseTable[(_state1 : stdgo.GoInt)]._sym;
                    _count = (_count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L100"
                    break;
                };
                {
                    var __tmp__ = _rbr._val((@:checkr _pt ?? throw "null pointer dereference")._bits);
                    _v = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L104"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L105"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _state2 = (((@:checkr _pt ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _v : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L109"
                if ((_count >= (255 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L110"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _rbr._makeError(("Huffman count overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _weights[(_count : stdgo.GoInt)] = (@:checkr _pt ?? throw "null pointer dereference")._sym;
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L114"
                _count++;
            };
            _off = (_off + ((_hdr : stdgo.GoInt)) : stdgo.GoInt);
        } else {
            _count = ((_hdr : stdgo.GoInt) - (127 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L122"
            if (((_off + ((((_count + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) >= (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L123"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L125"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _count : Bool)) {
                    var _b = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L127"
                    _off++;
_weights[(_i : stdgo.GoInt)] = (_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
_weights[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
        };
        var _weightMark:stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(13, 13).__setNumber32__();
        var _weightMask = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L137"
        for (__0 => _w in (_weights.__slice__(0, _count) : stdgo.Slice<stdgo.GoUInt8>)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L138"
            if ((_w > (12 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L139"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L141"
            _weightMark[(_w : stdgo.GoInt)]++;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L142"
            if ((_w > (0 : stdgo.GoUInt8) : Bool)) {
                _weightMask = (_weightMask + (((1u32 : stdgo.GoUInt32) << ((_w - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L146"
        if (_weightMask == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L147"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _tableBits = ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros32.leadingZeros32(_weightMask) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L151"
        if ((_tableBits > (11 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L152"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L155"
        if (((_table.length) < ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L156"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman table too small" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _left = ((((1u32 : stdgo.GoUInt32) << _tableBits : stdgo.GoUInt32)) - _weightMask : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L162"
        if (_left == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L163"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _highBit = ((31 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros32.leadingZeros32(_left) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L166"
        if (((1u32 : stdgo.GoUInt32) << _highBit : stdgo.GoUInt32) != (_left)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L167"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L169"
        if ((_count >= (256 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L170"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("Huffman weight overflow" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _weights[(_count : stdgo.GoInt)] = ((_highBit + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L173"
        _count++;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L174"
        _weightMark[(_highBit + (1 : stdgo.GoInt) : stdgo.GoInt)]++;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L176"
        if (((_weightMark[(1 : stdgo.GoInt)] < (2u32 : stdgo.GoUInt32) : Bool) || ((_weightMark[(1 : stdgo.GoInt)] & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (0u32 : stdgo.GoUInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L177"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("bad Huffman weights" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _next = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L184"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _tableBits : Bool)) {
                var _cur = (_next : stdgo.GoUInt32);
_next = (_next + ((_weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] << _i : stdgo.GoUInt32)) : stdgo.GoUInt32);
_weightMark[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _cur;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L190"
        for (_i => _w in (_weights.__slice__(0, _count) : stdgo.Slice<stdgo.GoUInt8>)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L191"
            if (_w == ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L192"
                continue;
            };
            var _length = ((1u32 : stdgo.GoUInt32) << ((_w - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32);
            var _tval = (((_i : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((((_tableBits : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) - (_w : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            var _start = (_weightMark[(_w : stdgo.GoInt)] : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L197"
            {
                var _j = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_j < _length : Bool)) {
                    _table[((_start + _j : stdgo.GoUInt32) : stdgo.GoInt)] = _tval;
                    _j++;
                };
            };
            _weightMark[(_w : stdgo.GoInt)] = (_weightMark[(_w : stdgo.GoInt)] + (_length) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/huff.go#L203"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _tableBits, _1 : _off, _2 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L344"
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L349"
            if ((_e._sym < (32 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = ((_e._sym : stdgo.GoUInt32) + (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L353"
                if ((_e._sym > (52 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L354"
                    return _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (stdgo._internal.internal.zstd.Zstd__matchlengthbase._matchLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L363"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeOffsetBaselineFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L275"
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L280"
            if ((_e._sym > (31 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L281"
                return _r._makeError(_off, ("FSE offset symbol overflow" : stdgo.GoString));
            };
            _be._baseline = ((1u32 : stdgo.GoUInt32) << _e._sym : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L303"
            if ((_e._sym >= (2 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = (_be._baseline - ((3u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            _be._basebits = _e._sym;
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L309"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeLiteralBaselineFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _fseTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _baselineTable:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L251"
        for (_i => _e in _fseTable) {
            var _be = ({ _bits : _e._bits, _base : _e._base } : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L256"
            if ((_e._sym < (16 : stdgo.GoUInt8) : Bool)) {
                _be._baseline = (_e._sym : stdgo.GoUInt32);
                _be._basebits = (0 : stdgo.GoUInt8);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L260"
                if ((_e._sym > (35 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L261"
                    return _r._makeError(_off, ("FSE baseline symbol overflow" : stdgo.GoString));
                };
                var _idx = (_e._sym - (16 : stdgo.GoUInt8) : stdgo.GoUInt8);
                var _basebits = (stdgo._internal.internal.zstd.Zstd__literallengthbase._literalLengthBase[(_idx : stdgo.GoInt)] : stdgo.GoUInt32);
                _be._baseline = (_basebits & (16777215u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                _be._basebits = ((_basebits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            };
            _baselineTable[(_i : stdgo.GoInt)] = _be?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L270"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _buildFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _off:stdgo.GoInt, _norm:stdgo.Slice<stdgo.GoInt16>, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>, _tableBits:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableSize = ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt);
        var _highThreshold = (_tableSize - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _next:stdgo.GoArray<stdgo.GoUInt16> = new stdgo.GoArray<stdgo.GoUInt16>(256, 256).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L162"
        for (_i => _n in _norm) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L163"
            if ((_n >= (0 : stdgo.GoInt16) : Bool)) {
                _next[((_i : stdgo.GoUInt8) : stdgo.GoInt)] = (_n : stdgo.GoUInt16);
            } else {
                _table[(_highThreshold : stdgo.GoInt)]._sym = (_i : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L167"
                _highThreshold--;
                _next[((_i : stdgo.GoUInt8) : stdgo.GoInt)] = (1 : stdgo.GoUInt16);
            };
        };
        var _pos = (0 : stdgo.GoInt);
        var _step = ((((_tableSize >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) + ((_tableSize >> (3i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt);
        var _mask = (_tableSize - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L175"
        for (_i => _n in _norm) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L176"
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (_n : stdgo.GoInt) : Bool)) {
                    _table[(_pos : stdgo.GoInt)]._sym = (_i : stdgo.GoUInt8);
_pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L179"
                    while ((_pos > _highThreshold : Bool)) {
                        _pos = (((_pos + _step : stdgo.GoInt)) & _mask : stdgo.GoInt);
                    };
                    _j++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L184"
        if (_pos != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L185"
            return _r._makeError(_off, ("FSE count error" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L188"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _tableSize : Bool)) {
                var _sym = (_table[(_i : stdgo.GoInt)]._sym : stdgo.GoUInt8);
var _nextState = (_next[(_sym : stdgo.GoInt)] : stdgo.GoUInt16);
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L191"
                _next[(_sym : stdgo.GoInt)]++;
//"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L193"
                if (_nextState == ((0 : stdgo.GoUInt16))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L194"
                    return _r._makeError(_off, ("FSE state error" : stdgo.GoString));
                };
var _highBit = ((15 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros16.leadingZeros16(_nextState) : stdgo.GoInt);
var _bits = (_tableBits - _highBit : stdgo.GoInt);
_table[(_i : stdgo.GoInt)]._bits = (_bits : stdgo.GoUInt8);
_table[(_i : stdgo.GoInt)]._base = (((_nextState << _bits : stdgo.GoUInt16)) - (_tableSize : stdgo.GoUInt16) : stdgo.GoUInt16);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L204"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readFSE( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _maxSym:stdgo.GoInt, _maxBits:stdgo.GoInt, _table:stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _tableBits = (0 : stdgo.GoInt), _roff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _br = (_r._makeBitReader(_data, _off)?.__copy__() : stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L26"
        {
            var _err = (_br._moreBits() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L27"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        var _accuracyLog = ((_br._val((4 : stdgo.GoUInt8)) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L31"
        if ((_accuracyLog > _maxBits : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L32"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE accuracy log too large" : stdgo.GoString)) };
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
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L55"
        while (((_remaining > (1 : stdgo.GoInt) : Bool) && (_sym <= _maxSym : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L56"
            {
                var _err = (_br._moreBits() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L57"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L60"
            if (_prev0) {
                var _zsym = (_sym : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L65"
                while (((_br._bits & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((4095u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((18 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((12i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((12u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L69"
                    {
                        var _err = (_br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L70"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                                _tableBits = __tmp__._0;
                                _roff = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L73"
                while (((_br._bits & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) == ((3u32 : stdgo.GoUInt32))) {
                    _zsym = (_zsym + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _br._bits = (_br._bits >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _br._cnt = (_br._cnt - ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L77"
                    {
                        var _err = (_br._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L78"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                                _tableBits = __tmp__._0;
                                _roff = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                _zsym = (_zsym + ((_br._val((2 : stdgo.GoUInt8)) : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L87"
                if ((_zsym > _maxSym : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L88"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE symbol index overflow" : stdgo.GoString)) };
                        _tableBits = __tmp__._0;
                        _roff = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L91"
                while ((_sym < _zsym : Bool)) {
                    _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
                    _sym++;
                };
                _prev0 = false;
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L96"
                continue;
            };
            var _max = (((((2 : stdgo.GoInt) * _threshold : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) - _remaining : stdgo.GoInt);
            var _count:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L101"
            if ((((_br._bits & ((_threshold - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) < _max : Bool)) {
                _count = ((_br._bits & ((_threshold - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                _br._bits = (_br._bits >> ((_bitsNeeded - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt32);
                _br._cnt = (_br._cnt - (((_bitsNeeded - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            } else {
                _count = ((_br._bits & ((((2 : stdgo.GoInt) * _threshold : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L109"
                if ((_count >= _threshold : Bool)) {
                    _count = (_count - (_max) : stdgo.GoInt);
                };
                _br._bits = (_br._bits >> (_bitsNeeded) : stdgo.GoUInt32);
                _br._cnt = (_br._cnt - ((_bitsNeeded : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L116"
            _count--;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L117"
            if ((_count >= (0 : stdgo.GoInt) : Bool)) {
                _remaining = (_remaining - (_count) : stdgo.GoInt);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L120"
                _remaining--;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L122"
            if ((_sym >= (256 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L123"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("FSE sym overflow" : stdgo.GoString)) };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (_count : stdgo.GoInt16);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L126"
            _sym++;
            _prev0 = _count == ((0 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L130"
            while ((_remaining < _threshold : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L131"
                _bitsNeeded--;
                _threshold = (_threshold >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L136"
        if (_remaining != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L137"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _br._makeError(("too many symbols in FSE table" : stdgo.GoString)) };
                _tableBits = __tmp__._0;
                _roff = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L140"
        while ((_sym <= _maxSym : Bool)) {
            _norm[((_sym : stdgo.GoUInt8) : stdgo.GoInt)] = (0 : stdgo.GoInt16);
            _sym++;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L144"
        _br._backup();
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L146"
        {
            var _err = (_r._buildFSE(_off, (_norm.__slice__(0, (_maxSym + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt16>), _table, _accuracyLog) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L147"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                    _tableBits = __tmp__._0;
                    _roff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/fse.go#L150"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _accuracyLog, _1 : (_br._off : stdgo.GoInt), _2 : (null : stdgo.Error) };
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
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L390"
        if (_offset == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L391"
            return _rbr._makeError(("invalid zero offset" : stdgo.GoString));
        };
        var _lenBlock = ((@:checkr _r ?? throw "null pointer dereference")._buffer.length : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L395"
        if ((_lenBlock < _offset : Bool)) {
            var _lenWindow = ((@:checkr _r ?? throw "null pointer dereference")._window.length : stdgo.GoUInt32);
            var _windowOffset = (_offset - _lenBlock : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L398"
            if ((_windowOffset > _lenWindow : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L399"
                return _rbr._makeError(("offset past window" : stdgo.GoString));
            };
            var _from = (_lenWindow - _windowOffset : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L402"
            if (((_from + _match : stdgo.GoUInt32) <= _lenWindow : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L404"
                return (null : stdgo.Error);
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._window.__slice__(_from) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            var _copied = (_lenWindow - _from : stdgo.GoUInt32);
            _offset = (_offset - (_copied) : stdgo.GoUInt32);
            _match = (_match - (_copied) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L411"
            if (((_offset == (0u32 : stdgo.GoUInt32)) && (_match > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L412"
                return _rbr._makeError(("invalid offset" : stdgo.GoString));
            };
        };
        var _from = (_lenBlock - _offset : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L417"
        if ((_offset >= _match : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(_from, (_from + _match : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L419"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L424"
        while ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
            var _copy:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L426"
            if ((_offset >= _match : Bool)) {
                _copy = _match;
            } else {
                _copy = _offset;
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(_from, (_from + _copy : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _match = (_match - (_copy) : stdgo.GoUInt32);
            _from = (_from + (_copy) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L435"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _execSeqs( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _litbuf:stdgo.Slice<stdgo.GoUInt8>, _seqCount:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var __tmp__ = _r._makeReverseBitReader(_data, ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt), _off), _rbr:stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L254"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L255"
            return _err;
        };
        var __tmp__ = _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _literalState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L259"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L260"
            return _err;
        };
        var __tmp__ = _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _offsetState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L264"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L265"
            return _err;
        };
        var __tmp__ = _rbr._val((@:checkr _r ?? throw "null pointer dereference")._seqTableBits[((2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)]), _matchState:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L269"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L270"
            return _err;
        };
        var _seq = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L276"
        while ((_seq < _seqCount : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L277"
            if (((((@:checkr _r ?? throw "null pointer dereference")._buffer.length) + (_litbuf.length) : stdgo.GoInt) > (131072 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L278"
                return _rbr._makeError(("uncompressed size too big" : stdgo.GoString));
            };
            var _ptoffset = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_offsetState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var _ptmatch = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_matchState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var _ptliteral = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._seqTables[((0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode) : stdgo.GoInt)][(_literalState : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
            var __tmp__ = _rbr._val((@:checkr _ptoffset ?? throw "null pointer dereference")._basebits), _add:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L286"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L287"
                return _err;
            };
            var _offset = ((@:checkr _ptoffset ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = _rbr._val((@:checkr _ptmatch ?? throw "null pointer dereference")._basebits);
                _add = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L292"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L293"
                return _err;
            };
            var _match = ((@:checkr _ptmatch ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            {
                var __tmp__ = _rbr._val((@:checkr _ptliteral ?? throw "null pointer dereference")._basebits);
                _add = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L298"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L299"
                return _err;
            };
            var _literal = ((@:checkr _ptliteral ?? throw "null pointer dereference")._baseline + _add : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L305"
            if (((@:checkr _ptoffset ?? throw "null pointer dereference")._basebits > (1 : stdgo.GoUInt8) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset3 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2;
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset2 = (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1;
                (@:checkr _r ?? throw "null pointer dereference")._repeatedOffset1 = _offset;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L310"
                if (_literal == ((0u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L311"
                    _offset++;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L313"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L333"
            _seq++;
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L334"
            if ((_seq < _seqCount : Bool)) {
                {
                    var __tmp__ = _rbr._val((@:checkr _ptliteral ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L337"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L338"
                    return _err;
                };
                _literalState = (((@:checkr _ptliteral ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = _rbr._val((@:checkr _ptmatch ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L343"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L344"
                    return _err;
                };
                _matchState = (((@:checkr _ptmatch ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
                {
                    var __tmp__ = _rbr._val((@:checkr _ptoffset ?? throw "null pointer dereference")._bits);
                    _add = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L349"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L350"
                    return _err;
                };
                _offsetState = (((@:checkr _ptoffset ?? throw "null pointer dereference")._base : stdgo.GoUInt32) + _add : stdgo.GoUInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L357"
            if (false) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L358"
                stdgo.Go.println(("literal" : stdgo.GoString), Std.string(((_literal : UInt) : Float)), ("offset" : stdgo.GoString), Std.string(((_offset : UInt) : Float)), ("match" : stdgo.GoString), Std.string(((_match : UInt) : Float)));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L362"
            if ((_literal > (_litbuf.length : stdgo.GoUInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L363"
                return _rbr._makeError(("literal byte overflow" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L365"
            if ((_literal > (0u32 : stdgo.GoUInt32) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...((_litbuf.__slice__(0, _literal) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _litbuf = (_litbuf.__slice__(_literal) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L370"
            if ((_match > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L371"
                {
                    var _err = (_r._copyFromWindow((stdgo.Go.setRef(_rbr) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader>), _offset, _match) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L372"
                        return _err;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L377"
        if (((_litbuf.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L381"
        if (_rbr._cnt != ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L382"
            return _r._makeError(_off, ("extraneous data after sequences" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L385"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _setSeqTable( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _kind:stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode, _mode:stdgo.GoUInt8):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _info = (stdgo.Go.setRef(stdgo._internal.internal.zstd.Zstd__seqcodeinfo._seqCodeInfo[(_kind : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.zstd.Zstd_t_seqcodeinfodata.T_seqCodeInfoData>);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L177"
        {
            final __value__ = _mode;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _info ?? throw "null pointer dereference")._predefTable;
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = ((@:checkr _info ?? throw "null pointer dereference")._predefTableBits : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L182"
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L186"
                if ((_off >= (_data.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L187"
                    return { _0 : (0 : stdgo.GoInt), _1 : _r._makeEOFError(_off) };
                };
                var _rle = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L190"
                _off++;
                var _entry = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>(1, 1, ...[({ _sym : _rle, _bits : (0 : stdgo.GoUInt8), _base : (0 : stdgo.GoUInt16) } : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)])) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L201"
                if ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L205"
                {
                    var _err = ((@:checkr _info ?? throw "null pointer dereference")._toBaseline(_r, _off, _entry, (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L206"
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)];
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L211"
                return { _0 : _off, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((2 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L215"
                if (((@:checkr _r ?? throw "null pointer dereference")._fseScratch.capacity < ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._fseScratch = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = ((@:checkr _r ?? throw "null pointer dereference")._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                var __tmp__ = _r._readFSE(_data, _off, (@:checkr _info ?? throw "null pointer dereference")._maxSym, (@:checkr _info ?? throw "null pointer dereference")._maxBits, (@:checkr _r ?? throw "null pointer dereference")._fseScratch), _tableBits:stdgo.GoInt = __tmp__._0, _roff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L221"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L222"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                (@:checkr _r ?? throw "null pointer dereference")._fseScratch = ((@:checkr _r ?? throw "null pointer dereference")._fseScratch.__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fseentry.T_fseEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L226"
                if ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].capacity == ((0 : stdgo.GoInt))) {
                    (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>(((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() > 0 ? ((1 : stdgo.GoInt) << (@:checkr _info ?? throw "null pointer dereference")._maxBits : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry)]) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)].__slice__(0, ((1 : stdgo.GoInt) << _tableBits : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.internal.zstd.Zstd_t_fsebaselineentry.T_fseBaselineEntry>);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L231"
                {
                    var _err = ((@:checkr _info ?? throw "null pointer dereference")._toBaseline(_r, _roff, (@:checkr _r ?? throw "null pointer dereference")._fseScratch, (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)]) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L232"
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                (@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._seqTableBuffers[(_kind : stdgo.GoInt)];
                (@:checkr _r ?? throw "null pointer dereference")._seqTableBits[(_kind : stdgo.GoInt)] = (_tableBits : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L237"
                return { _0 : _roff, _1 : (null : stdgo.Error) };
            } else if (__value__ == ((3 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L241"
                if (((@:checkr _r ?? throw "null pointer dereference")._seqTables[(_kind : stdgo.GoInt)].length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L242"
                    return { _0 : (0 : stdgo.GoInt), _1 : _r._makeError(_off, ("missing repeat sequence FSE table" : stdgo.GoString)) };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L244"
                return { _0 : _off, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L246"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _initSeqs( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L113"
        if ((_off >= (_data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L114"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
        };
        var _seqHdr = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L118"
        _off++;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L119"
        if (_seqHdr == ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L120"
            return { _0 : (0 : stdgo.GoInt), _1 : _off, _2 : (null : stdgo.Error) };
        };
        var _seqCount:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L124"
        if ((_seqHdr < (128 : stdgo.GoUInt8) : Bool)) {
            _seqCount = (_seqHdr : stdgo.GoInt);
        } else if ((_seqHdr < (255 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L127"
            if ((_off >= (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L128"
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
            };
            _seqCount = ((((((_seqHdr : stdgo.GoInt) - (128 : stdgo.GoInt) : stdgo.GoInt)) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) + (_data[(_off : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L131"
            _off++;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L133"
            if (((_off + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L134"
                return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
            };
            _seqCount = (((_data[(_off : stdgo.GoInt)] : stdgo.GoInt) + (((_data[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) + (32512 : stdgo.GoInt) : stdgo.GoInt);
            _off = (_off + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L142"
        if ((_off >= (_data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L143"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeEOFError(_off) };
        };
        var _symMode = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L146"
        if ((_symMode & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L147"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _r._makeError(_off, ("invalid symbol compression mode" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L149"
        _off++;
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (0 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L155"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L156"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (1 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L160"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L161"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        {
            var __tmp__ = _r._setSeqTable(_data, _off, (2 : stdgo._internal.internal.zstd.Zstd_t_seqcode.T_seqCode), (((_symMode >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (3 : stdgo.GoUInt8) : stdgo.GoUInt8));
            _off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L165"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L166"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L169"
        return { _0 : _seqCount, _1 : _off, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _compressedBlock( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _blockSize:stdgo.GoInt):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L18"
        if ((((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.length) >= _blockSize : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._compressedBuf = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.__slice__(0, _blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            var _need = (_blockSize - ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.length) : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._compressedBuf = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_need : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L27"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _r ?? throw "null pointer dereference")._r, (@:checkr _r ?? throw "null pointer dereference")._compressedBuf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L28"
                return _r._wrapNonEOFError((0 : stdgo.GoInt), _err);
            };
        };
        var _data = ((@:checkr _r ?? throw "null pointer dereference")._compressedBuf : stdgo._internal.internal.zstd.Zstd_t_block.T_block);
        var _off = (0 : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _r._readLiterals(_data, _off, ((@:checkr _r ?? throw "null pointer dereference")._literals.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _litoff:stdgo.GoInt = __tmp__._0, _litbuf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L36"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L37"
            return _err;
        };
        (@:checkr _r ?? throw "null pointer dereference")._literals = _litbuf;
        _off = _litoff;
        var __tmp__ = _r._initSeqs(_data, _off), _seqCount:stdgo.GoInt = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L44"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L45"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L48"
        if (_seqCount == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L50"
            if ((_off < (_data.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L51"
                return _r._makeError(_off, ("extraneous data after no sequences" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L53"
            if ((_litbuf.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L54"
                return _r._makeError(_off, ("no sequences and no literals" : stdgo.GoString));
            };
            (@:checkr _r ?? throw "null pointer dereference")._buffer = ((@:checkr _r ?? throw "null pointer dereference")._buffer.__append__(...(_litbuf : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L57"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/block.go#L60"
        return _r._execSeqs(_data, _off, _litbuf, _seqCount);
    }
    @:keep
    @:tdfield
    static public function _makeReverseBitReader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt, _start:stdgo.GoInt):{ var _0 : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        var _streamStart = (_data[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L85"
        if (_streamStart == ((0 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L86"
            return { _0 : (new stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader() : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader), _1 : _r._makeError(_off, ("zero byte at reverse bit stream start" : stdgo.GoString)) };
        };
        var _rbr = ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32), _start : (_start : stdgo.GoUInt32), _bits : (_streamStart : stdgo.GoUInt32), _cnt : (((7 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_leadingzeros8.leadingZeros8(_streamStart) : stdgo.GoInt) : stdgo.GoUInt32) } : stdgo._internal.internal.zstd.Zstd_t_reversebitreader.T_reverseBitReader);
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L96"
        return { _0 : _rbr?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _makeBitReader( _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader>, _data:stdgo._internal.internal.zstd.Zstd_t_block.T_block, _off:stdgo.GoInt):stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.zstd.Zstd_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/zstd/bits.go#L27"
        return ({ _r : _r, _data : _data, _off : (_off : stdgo.GoUInt32) } : stdgo._internal.internal.zstd.Zstd_t_bitreader.T_bitReader);
    }
}
