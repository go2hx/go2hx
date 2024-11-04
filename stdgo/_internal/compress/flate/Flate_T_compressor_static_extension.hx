package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_compressor_asInterface) class T_compressor_static_extension {
    @:keep
    static public function _close( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.compress.flate.Flate__errWriterClosed._errWriterClosed))) {
            return (null : stdgo.Error);
        };
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err != null) {
            return _d._err;
        };
        {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), true);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._flush();
        if (_d._w._err != null) {
            return _d._w._err;
        };
        _d._err = stdgo._internal.compress.flate.Flate__errWriterClosed._errWriterClosed;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _reset( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        _d._w._reset(_w);
        _d._sync = false;
        _d._err = (null : stdgo.Error);
        {
            final __value__ = _d._compressionLevel._level;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                _d._bestSpeed._reset();
            } else {
                _d._chainHead = (-1 : stdgo.GoInt);
                for (_i => _ in _d._hashHead) {
                    _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                for (_i => _ in _d._hashPrev) {
                    _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                _d._hashOffset = (1 : stdgo.GoInt);
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _d._index = __tmp__0;
                    _d._windowEnd = __tmp__1;
                };
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = false;
                    _d._blockStart = __tmp__0;
                    _d._byteAvailable = __tmp__1;
                };
                _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                _d._length = (3 : stdgo.GoInt);
                _d._offset = (0 : stdgo.GoInt);
                _d._maxInsertIndex = (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    static public function _init( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _err = (null : stdgo.Error);
        _d._w = stdgo._internal.compress.flate.Flate__newHuffmanBitWriter._newHuffmanBitWriter(_w);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_level == (0 : stdgo.GoInt)))) {
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_level == (-2 : stdgo.GoInt)))) {
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_level == (1 : stdgo.GoInt)))) {
                    _d._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillStore;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._encSpeed;
                    _d._bestSpeed = stdgo._internal.compress.flate.Flate__newDeflateFast._newDeflateFast();
                    _d._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_level == (-1 : stdgo.GoInt)))) {
                    _level = (6 : stdgo.GoInt);
                    @:fallthrough {
                        __switchIndex__ = 4;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : stdgo.GoInt) <= _level : Bool) && (_level <= (9 : stdgo.GoInt) : Bool) : Bool))) {
                    _d._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    _d._initDeflate();
                    _d._fill = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._fillDeflate;
                    _d._step = stdgo._internal.compress.flate.Flate_T_compressor_static_extension.T_compressor_static_extension._deflate;
                    break;
                    break;
                } else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), stdgo.Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _syncFlush( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (_d._err != null) {
            return _d._err;
        };
        _d._sync = true;
        _d._step(_d);
        if (_d._err == null) {
            _d._w._writeStoredHeader((0 : stdgo.GoInt), false);
            _d._w._flush();
            _d._err = _d._w._err;
        };
        _d._sync = false;
        return _d._err;
    }
    @:keep
    static public function _write( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
        };
        _n = (_b.length);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._step(_d);
            _b = (_b.__slice__(_d._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_d._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _d._err };
            };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _storeHuff( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((((_d._windowEnd < (_d._window.length) : Bool) && !_d._sync : Bool) || (_d._windowEnd == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _store( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if (((_d._windowEnd > (0 : stdgo.GoInt) : Bool) && (((_d._windowEnd == (65535 : stdgo.GoInt)) || _d._sync : Bool)) : Bool)) {
            _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
            _d._windowEnd = (0 : stdgo.GoInt);
        };
    }
    @:keep
    static public function _fillStore( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _n = (stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
    @:keep
    static public function _deflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _i_3669829:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3668939:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _index_3668836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newIndex_3668684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newOffset_3667695:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevOffset_3667330:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3667083:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _lookahead_3666401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_3669102:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _ok_3667706:Bool = false;
        var _newLength_3667684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minIndex_3667402:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevLength_3667305:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_3667144:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((((_d._windowEnd - _d._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !_d._sync : Bool)) {
                        _gotoNext = 3666252i32;
                    } else {
                        _gotoNext = 3666268i32;
                    };
                } else if (__value__ == (3666252i32)) {
                    return;
                    _gotoNext = 3666268i32;
                } else if (__value__ == (3666268i32)) {
                    _d._maxInsertIndex = (_d._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3666323i32;
                } else if (__value__ == (3666323i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3666330i32;
                } else if (__value__ == (3666330i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3666334i32;
                    } else {
                        _gotoNext = 3670233i32;
                    };
                } else if (__value__ == (3666334i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3666363i32;
                    } else {
                        _gotoNext = 3666401i32;
                    };
                } else if (__value__ == (3666363i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3666401i32;
                } else if (__value__ == (3666401i32)) {
                    _lookahead_3666401 = (_d._windowEnd - _d._index : stdgo.GoInt);
                    if ((_lookahead_3666401 < (262 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3666483i32;
                    } else {
                        _gotoNext = 3667026i32;
                    };
                } else if (__value__ == (3666483i32)) {
                    if (!_d._sync) {
                        _gotoNext = 3666499i32;
                    } else {
                        _gotoNext = 3666524i32;
                    };
                } else if (__value__ == (3666499i32)) {
                    loopBreak = true;
                    _gotoNext = 3666330i32;
                } else if (__value__ == (3666524i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3666549i32;
                    } else {
                        _gotoNext = 3666590i32;
                    };
                } else if (__value__ == (3666549i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3666590i32;
                } else if (__value__ == (3666590i32)) {
                    if (_lookahead_3666401 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3666608i32;
                    } else {
                        _gotoNext = 3667026i32;
                    };
                } else if (__value__ == (3666608i32)) {
                    if (_d._byteAvailable) {
                        _gotoNext = 3666675i32;
                    } else {
                        _gotoNext = 3666858i32;
                    };
                } else if (__value__ == (3666675i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_d._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))));
                    _d._byteAvailable = false;
                    _gotoNext = 3666858i32;
                } else if (__value__ == (3666858i32)) {
                    if (((_d._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3666879i32;
                    } else {
                        _gotoNext = 3667004i32;
                    };
                } else if (__value__ == (3666879i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3666943i32;
                        } else {
                            _gotoNext = 3666970i32;
                        };
                    };
                } else if (__value__ == (3666943i32)) {
                    return;
                    _gotoNext = 3666970i32;
                } else if (__value__ == (3666970i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3667004i32;
                } else if (__value__ == (3667004i32)) {
                    loopBreak = true;
                    _gotoNext = 3666330i32;
                } else if (__value__ == (3667026i32)) {
                    if ((_d._index < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3667056i32;
                    } else {
                        _gotoNext = 3667305i32;
                    };
                } else if (__value__ == (3667056i32)) {
                    _hash_3667083 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_d._index, (_d._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3667144 = stdgo.Go.pointer(_d._hashHead[((_hash_3667083 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._chainHead = (_hh_3667144.value : stdgo.GoInt);
                    _d._hashPrev[(_d._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = (_d._chainHead : stdgo.GoUInt32);
                    _hh_3667144.value = ((_d._index + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3667305i32;
                } else if (__value__ == (3667305i32)) {
                    _prevLength_3667305 = _d._length;
                    _prevOffset_3667330 = _d._offset;
                    _d._length = (3 : stdgo.GoInt);
                    _d._offset = (0 : stdgo.GoInt);
                    _minIndex_3667402 = (_d._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_minIndex_3667402 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3667453i32;
                    } else {
                        _gotoNext = 3667478i32;
                    };
                } else if (__value__ == (3667453i32)) {
                    _minIndex_3667402 = (0 : stdgo.GoInt);
                    _gotoNext = 3667478i32;
                } else if (__value__ == (3667478i32)) {
                    if ((((_d._chainHead - _d._hashOffset : stdgo.GoInt) >= _minIndex_3667402 : Bool) && (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead_3666401 > (3 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead_3666401 > _prevLength_3667305 : Bool) : Bool) && (_prevLength_3667305 < _d._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3667676i32;
                    } else {
                        _gotoNext = 3667855i32;
                    };
                } else if (__value__ == (3667676i32)) {
                    {
                        {
                            var __tmp__ = _d._findMatch(_d._index, (_d._chainHead - _d._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead_3666401);
                            _newLength_3667684 = __tmp__._0;
                            _newOffset_3667695 = __tmp__._1;
                            _ok_3667706 = __tmp__._2;
                        };
                        if (_ok_3667706) {
                            _gotoNext = 3667792i32;
                        } else {
                            _gotoNext = 3667855i32;
                        };
                    };
                } else if (__value__ == (3667792i32)) {
                    _d._length = _newLength_3667684;
                    _d._offset = _newOffset_3667695;
                    _gotoNext = 3667855i32;
                } else if (__value__ == (3667855i32)) {
                    if (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_d._length >= (4 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength_3667305 >= (4 : stdgo.GoInt) : Bool) : Bool) && (_d._length <= _prevLength_3667305 : Bool) : Bool) : Bool)) {
                        _gotoNext = 3668014i32;
                    } else {
                        _gotoNext = 3669765i32;
                    };
                } else if (__value__ == (3668014i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3668169i32;
                    } else {
                        _gotoNext = 3668293i32;
                    };
                } else if (__value__ == (3668169i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_d._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_d._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3668641i32;
                } else if (__value__ == (3668293i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_prevLength_3667305 - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset_3667330 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3668641i32;
                } else if (__value__ == (3668641i32)) {
                    if ((_d._length <= _d._compressionLevel._fastSkipHashing : Bool)) {
                        _gotoNext = 3668674i32;
                    } else {
                        _gotoNext = 3669418i32;
                    };
                } else if (__value__ == (3668674i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3668735i32;
                    } else {
                        _gotoNext = 3668783i32;
                    };
                } else if (__value__ == (3668735i32)) {
                    _newIndex_3668684 = (_d._index + _d._length : stdgo.GoInt);
                    _gotoNext = 3668836i32;
                } else if (__value__ == (3668783i32)) {
                    _newIndex_3668684 = ((_d._index + _prevLength_3667305 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3668836i32;
                } else if (__value__ == (3668836i32)) {
                    _index_3668836 = _d._index;
                    _index_3668836++;
                    _gotoNext = 3668857i32;
                } else if (__value__ == (3668857i32)) {
                    if ((_index_3668836 < _newIndex_3668684 : Bool)) {
                        _gotoNext = 3668896i32;
                    } else {
                        _gotoNext = 3669281i32;
                    };
                } else if (__value__ == (3668888i32)) {
                    _index_3668836++;
                    _gotoNext = 3668857i32;
                } else if (__value__ == (3668896i32)) {
                    if ((_index_3668836 < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3668931i32;
                    } else {
                        _gotoNext = 3668888i32;
                    };
                } else if (__value__ == (3668931i32)) {
                    _hash_3668939 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_index_3668836, (_index_3668836 + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3669102 = stdgo.Go.pointer(_d._hashHead[((_hash_3668939 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_index_3668836 & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh_3669102.value;
                    _hh_3669102.value = ((_index_3668836 + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3668888i32;
                } else if (__value__ == (3669281i32)) {
                    _d._index = _index_3668836;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3669336i32;
                    } else {
                        _gotoNext = 3669552i32;
                    };
                } else if (__value__ == (3669336i32)) {
                    _d._byteAvailable = false;
                    _d._length = (3 : stdgo.GoInt);
                    _gotoNext = 3669552i32;
                } else if (__value__ == (3669418i32)) {
                    _d._index = (_d._index + (_d._length) : stdgo.GoInt);
                    _gotoNext = 3669552i32;
                } else if (__value__ == (3669552i32)) {
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3669592i32;
                    } else {
                        _gotoNext = 3670233i32;
                    };
                } else if (__value__ == (3669592i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3669703i32;
                        } else {
                            _gotoNext = 3669727i32;
                        };
                    };
                } else if (__value__ == (3669703i32)) {
                    return;
                    _gotoNext = 3669727i32;
                } else if (__value__ == (3669727i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3670233i32;
                } else if (__value__ == (3669765i32)) {
                    if (((_d._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || _d._byteAvailable : Bool)) {
                        _gotoNext = 3669823i32;
                    } else {
                        _gotoNext = 3670145i32;
                    };
                } else if (__value__ == (3669823i32)) {
                    _i_3669829 = (_d._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3669884i32;
                    } else {
                        _gotoNext = 3669913i32;
                    };
                } else if (__value__ == (3669884i32)) {
                    _i_3669829 = _d._index;
                    _gotoNext = 3669913i32;
                } else if (__value__ == (3669913i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_i_3669829 : stdgo.GoInt)] : stdgo.GoUInt32))));
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3670020i32;
                    } else {
                        _gotoNext = 3670145i32;
                    };
                } else if (__value__ == (3670020i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, (_i_3669829 + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_d._err != null) {
                            _gotoNext = 3670080i32;
                        } else {
                            _gotoNext = 3670107i32;
                        };
                    };
                } else if (__value__ == (3670080i32)) {
                    return;
                    _gotoNext = 3670107i32;
                } else if (__value__ == (3670107i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3670145i32;
                } else if (__value__ == (3670145i32)) {
                    _d._index++;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3670192i32;
                    } else {
                        _gotoNext = 3670233i32;
                    };
                } else if (__value__ == (3670192i32)) {
                    _d._byteAvailable = true;
                    _gotoNext = 3670233i32;
                } else if (__value__ == (3670233i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    static public function _initDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        _d._window = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _d._hashOffset = (1 : stdgo.GoInt);
        _d._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>((0 : stdgo.GoInt).toBasic(), (16385 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
        _d._length = (3 : stdgo.GoInt);
        _d._offset = (0 : stdgo.GoInt);
        _d._byteAvailable = false;
        _d._index = (0 : stdgo.GoInt);
        _d._chainHead = (-1 : stdgo.GoInt);
        _d._bulkHasher = stdgo._internal.compress.flate.Flate__bulkHash4._bulkHash4;
    }
    @:keep
    static public function _encSpeed( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._windowEnd < (65535 : stdgo.GoInt) : Bool)) {
            if (!_d._sync) {
                return;
            };
            if ((_d._windowEnd < (128 : stdgo.GoInt) : Bool)) {
                if (_d._windowEnd == ((0 : stdgo.GoInt))) {
                    return;
                } else if ((_d._windowEnd <= (16 : stdgo.GoInt) : Bool)) {
                    _d._err = _d._writeStoredBlock((_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    _d._err = _d._w._err;
                };
                _d._windowEnd = (0 : stdgo.GoInt);
                _d._bestSpeed._reset();
                return;
            };
        };
        _d._tokens = _d._bestSpeed._encode((_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>), (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        if (((_d._tokens.length) > (_d._windowEnd - ((_d._windowEnd >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
            _d._w._writeBlockHuff(false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            _d._w._writeBlockDynamic(_d._tokens, false, (_d._window.__slice__(0, _d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _d._err = _d._w._err;
        _d._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    static public function _writeStoredBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        {
            _d._w._writeStoredHeader((_buf.length), false);
            if (_d._w._err != null) {
                return _d._w._err;
            };
        };
        _d._w._writeBytes(_buf);
        return _d._w._err;
    }
    @:keep
    static public function _findMatch( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _length = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _ok = false;
        var _minMatchLook = (258 : stdgo.GoInt);
        if ((_lookahead < _minMatchLook : Bool)) {
            _minMatchLook = _lookahead;
        };
        var _win = (_d._window.__slice__((0 : stdgo.GoInt), (_pos + _minMatchLook : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nice = ((_win.length) - _pos : stdgo.GoInt);
        if ((_d._compressionLevel._nice < _nice : Bool)) {
            _nice = _d._compressionLevel._nice;
        };
        var _tries = (_d._compressionLevel._chain : stdgo.GoInt);
        _length = _prevLength;
        if ((_length >= _d._compressionLevel._good : Bool)) {
            _tries = (_tries >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        var _wEnd = (_win[(_pos + _length : stdgo.GoInt)] : stdgo.GoUInt8);
        var _wPos = (_win.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>);
        var _minIndex = (_pos - (32768 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _i = (_prevHead : stdgo.GoInt);
            while ((_tries > (0 : stdgo.GoInt) : Bool)) {
                if (_wEnd == (_win[((_i + _length : stdgo.GoInt) : stdgo.GoInt)])) {
                    var _n = (stdgo._internal.compress.flate.Flate__matchLen._matchLen((_win.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _wPos, _minMatchLook) : stdgo.GoInt);
                    if (((_n > _length : Bool) && (((_n > (4 : stdgo.GoInt) : Bool) || ((_pos - _i : stdgo.GoInt) <= (4096 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _length = _n;
                        _offset = (_pos - _i : stdgo.GoInt);
                        _ok = true;
                        if ((_n >= _nice : Bool)) {
                            break;
                        };
                        _wEnd = _win[(_pos + _n : stdgo.GoInt)];
                    };
                };
if (_i == (_minIndex)) {
                    break;
                };
_i = ((_d._hashPrev[(_i & (32767 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) - _d._hashOffset : stdgo.GoInt);
if (((_i < _minIndex : Bool) || (_i < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                _tries--;
            };
        };
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    static public function _fillWindow( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._compressionLevel._level < (2 : stdgo.GoInt) : Bool)) {
            return;
        };
        if (((_d._index != (0 : stdgo.GoInt)) || (_d._windowEnd != (0 : stdgo.GoInt)) : Bool)) {
            throw stdgo.Go.toInterface(("internal error: fillWindow called with stale data" : stdgo.GoString));
        };
        if (((_b.length) > (32768 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(((_b.length) - (32768 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = (stdgo.Go.copySlice(_d._window, _b) : stdgo.GoInt);
        var _loops = ((((_n + (256 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt)) / (256 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _loops : Bool)) {
                var _index = (_j * (256 : stdgo.GoInt) : stdgo.GoInt);
var _end = (((_index + (256 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_end > _n : Bool)) {
                    _end = _n;
                };
var _toCheck = (_d._window.__slice__(_index, _end) : stdgo.Slice<stdgo.GoUInt8>);
var _dstSize = (((_toCheck.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
if ((_dstSize <= (0 : stdgo.GoInt) : Bool)) {
                    {
                        _j++;
                        continue;
                    };
                };
var _dst = (_d._hashMatch.__slice__(0, _dstSize) : stdgo.Slice<stdgo.GoUInt32>);
_d._bulkHasher(_toCheck, _dst);
for (_i => _val in _dst) {
                    var _di = (_i + _index : stdgo.GoInt);
                    var _hh = stdgo.Go.pointer(_d._hashHead[((_val & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_di & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                    _hh.value = ((_di + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
                _j++;
            };
        };
        _d._windowEnd = _n;
        _d._index = _n;
    }
    @:keep
    static public function _writeBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _index:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            var _window:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if ((_d._blockStart <= _index : Bool)) {
                _window = (_d._window.__slice__(_d._blockStart, _index) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _d._blockStart = _index;
            _d._w._writeBlock(_tokens, false, _window);
            return _d._w._err;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _fillDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        if ((_d._index >= (65274 : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_d._window, (_d._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _d._index = (_d._index - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            _d._windowEnd = (_d._windowEnd - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._blockStart >= (32768 : stdgo.GoInt) : Bool)) {
                _d._blockStart = (_d._blockStart - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _d._blockStart = (2147483647 : stdgo.GoInt);
            };
            _d._hashOffset = (_d._hashOffset + ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_d._hashOffset > (16777216 : stdgo.GoInt) : Bool)) {
                var _delta = (_d._hashOffset - (1 : stdgo.GoInt) : stdgo.GoInt);
                _d._hashOffset = (_d._hashOffset - (_delta) : stdgo.GoInt);
                _d._chainHead = (_d._chainHead - (_delta) : stdgo.GoInt);
                for (_i => _v in (_d._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
                for (_i => _v in (_d._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        _d._hashHead[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        _d._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
            };
        };
        var _n = (stdgo.Go.copySlice((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>), _b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
}
