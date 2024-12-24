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
                    return _err = stdgo._internal.fmt.Fmt_errorf.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), stdgo.Go.toInterface(_level));
                    break;
                };
                break;
            };
        };
        return _err = (null : stdgo.Error);
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
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _d._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = (_b.length);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            _d._step(_d);
            _b = (_b.__slice__(_d._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            if (_d._err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _d._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
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
        var _n = ((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
    @:keep
    static public function _deflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_compressor.T_compressor> = _d;
        var _index_3696166:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevLength_3694635:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_3694474:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _hash_3696269:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _ok_3695036:Bool = false;
        var _newOffset_3695025:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _i_3697159:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_3696432:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _minIndex_3694732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevOffset_3694660:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hash_3694413:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _lookahead_3693731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newIndex_3696014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newLength_3695014:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((((_d._windowEnd - _d._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !_d._sync : Bool)) {
                        _gotoNext = 3693582i32;
                    } else {
                        _gotoNext = 3693598i32;
                    };
                } else if (__value__ == (3693582i32)) {
                    return;
                    _gotoNext = 3693598i32;
                } else if (__value__ == (3693598i32)) {
                    _d._maxInsertIndex = (_d._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3693653i32;
                } else if (__value__ == (3693653i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3693660i32;
                } else if (__value__ == (3693660i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3693664i32;
                    } else {
                        _gotoNext = 3697563i32;
                    };
                } else if (__value__ == (3693664i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3693693i32;
                    } else {
                        _gotoNext = 3693731i32;
                    };
                } else if (__value__ == (3693693i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3693731i32;
                } else if (__value__ == (3693731i32)) {
                    _lookahead_3693731 = (_d._windowEnd - _d._index : stdgo.GoInt);
                    if ((_lookahead_3693731 < (262 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3693813i32;
                    } else {
                        _gotoNext = 3694356i32;
                    };
                } else if (__value__ == (3693813i32)) {
                    if (!_d._sync) {
                        _gotoNext = 3693829i32;
                    } else {
                        _gotoNext = 3693854i32;
                    };
                } else if (__value__ == (3693829i32)) {
                    loopBreak = true;
                    _gotoNext = 3693660i32;
                } else if (__value__ == (3693854i32)) {
                    if ((_d._index > _d._windowEnd : Bool)) {
                        _gotoNext = 3693879i32;
                    } else {
                        _gotoNext = 3693920i32;
                    };
                } else if (__value__ == (3693879i32)) {
                    throw stdgo.Go.toInterface(("index > windowEnd" : stdgo.GoString));
                    _gotoNext = 3693920i32;
                } else if (__value__ == (3693920i32)) {
                    if (_lookahead_3693731 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3693938i32;
                    } else {
                        _gotoNext = 3694356i32;
                    };
                } else if (__value__ == (3693938i32)) {
                    if (_d._byteAvailable) {
                        _gotoNext = 3694005i32;
                    } else {
                        _gotoNext = 3694188i32;
                    };
                } else if (__value__ == (3694005i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_d._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))));
                    _d._byteAvailable = false;
                    _gotoNext = 3694188i32;
                } else if (__value__ == (3694188i32)) {
                    if (((_d._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694209i32;
                    } else {
                        _gotoNext = 3694334i32;
                    };
                } else if (__value__ == (3694209i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3694273i32;
                        } else {
                            _gotoNext = 3694300i32;
                        };
                    };
                } else if (__value__ == (3694273i32)) {
                    return;
                    _gotoNext = 3694300i32;
                } else if (__value__ == (3694300i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3694334i32;
                } else if (__value__ == (3694334i32)) {
                    loopBreak = true;
                    _gotoNext = 3693660i32;
                } else if (__value__ == (3694356i32)) {
                    if ((_d._index < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3694386i32;
                    } else {
                        _gotoNext = 3694635i32;
                    };
                } else if (__value__ == (3694386i32)) {
                    _hash_3694413 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_d._index, (_d._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3694474 = stdgo.Go.pointer(_d._hashHead[((_hash_3694413 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._chainHead = (_hh_3694474.value : stdgo.GoInt);
                    _d._hashPrev[(_d._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = (_d._chainHead : stdgo.GoUInt32);
                    _hh_3694474.value = ((_d._index + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3694635i32;
                } else if (__value__ == (3694635i32)) {
                    _prevLength_3694635 = _d._length;
                    _prevOffset_3694660 = _d._offset;
                    _d._length = (3 : stdgo.GoInt);
                    _d._offset = (0 : stdgo.GoInt);
                    _minIndex_3694732 = (_d._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_minIndex_3694732 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694783i32;
                    } else {
                        _gotoNext = 3694808i32;
                    };
                } else if (__value__ == (3694783i32)) {
                    _minIndex_3694732 = (0 : stdgo.GoInt);
                    _gotoNext = 3694808i32;
                } else if (__value__ == (3694808i32)) {
                    if ((((_d._chainHead - _d._hashOffset : stdgo.GoInt) >= _minIndex_3694732 : Bool) && (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead_3693731 > (3 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead_3693731 > _prevLength_3694635 : Bool) : Bool) && (_prevLength_3694635 < _d._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3695006i32;
                    } else {
                        _gotoNext = 3695185i32;
                    };
                } else if (__value__ == (3695006i32)) {
                    {
                        {
                            var __tmp__ = _d._findMatch(_d._index, (_d._chainHead - _d._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead_3693731);
                            _newLength_3695014 = __tmp__._0;
                            _newOffset_3695025 = __tmp__._1;
                            _ok_3695036 = __tmp__._2;
                        };
                        if (_ok_3695036) {
                            _gotoNext = 3695122i32;
                        } else {
                            _gotoNext = 3695185i32;
                        };
                    };
                } else if (__value__ == (3695122i32)) {
                    _d._length = _newLength_3695014;
                    _d._offset = _newOffset_3695025;
                    _gotoNext = 3695185i32;
                } else if (__value__ == (3695185i32)) {
                    if (((_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_d._length >= (4 : stdgo.GoInt) : Bool) : Bool) || ((_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength_3694635 >= (4 : stdgo.GoInt) : Bool) : Bool) && (_d._length <= _prevLength_3694635 : Bool) : Bool) : Bool)) {
                        _gotoNext = 3695344i32;
                    } else {
                        _gotoNext = 3697095i32;
                    };
                } else if (__value__ == (3695344i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3695499i32;
                    } else {
                        _gotoNext = 3695623i32;
                    };
                } else if (__value__ == (3695499i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_d._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_d._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    _gotoNext = 3695971i32;
                } else if (__value__ == (3695623i32)) {
                    _gotoNext = 3695623i32;
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken(((_prevLength_3694635 - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset_3694660 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))));
                    var __blank__ = 0i32;
                    _gotoNext = 3695971i32;
                } else if (__value__ == (3695971i32)) {
                    if ((_d._length <= _d._compressionLevel._fastSkipHashing : Bool)) {
                        _gotoNext = 3696004i32;
                    } else {
                        _gotoNext = 3696748i32;
                    };
                } else if (__value__ == (3696004i32)) {
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3696065i32;
                    } else {
                        _gotoNext = 3696113i32;
                    };
                } else if (__value__ == (3696065i32)) {
                    _newIndex_3696014 = (_d._index + _d._length : stdgo.GoInt);
                    _gotoNext = 3696166i32;
                } else if (__value__ == (3696113i32)) {
                    _gotoNext = 3696113i32;
                    _newIndex_3696014 = ((_d._index + _prevLength_3694635 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3696166i32;
                } else if (__value__ == (3696166i32)) {
                    _index_3696166 = _d._index;
                    _index_3696166++;
                    _gotoNext = 3696187i32;
                } else if (__value__ == (3696187i32)) {
                    if ((_index_3696166 < _newIndex_3696014 : Bool)) {
                        _gotoNext = 3696226i32;
                    } else {
                        _gotoNext = 3696611i32;
                    };
                } else if (__value__ == (3696218i32)) {
                    _index_3696166++;
                    _gotoNext = 3696187i32;
                } else if (__value__ == (3696226i32)) {
                    if ((_index_3696166 < _d._maxInsertIndex : Bool)) {
                        _gotoNext = 3696261i32;
                    } else {
                        _gotoNext = 3696218i32;
                    };
                } else if (__value__ == (3696261i32)) {
                    _hash_3696269 = stdgo._internal.compress.flate.Flate__hash4._hash4((_d._window.__slice__(_index_3696166, (_index_3696166 + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_3696432 = stdgo.Go.pointer(_d._hashHead[((_hash_3696269 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    _d._hashPrev[(_index_3696166 & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh_3696432.value;
                    _hh_3696432.value = ((_index_3696166 + _d._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 3696218i32;
                } else if (__value__ == (3696611i32)) {
                    _d._index = _index_3696166;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3696666i32;
                    } else {
                        _gotoNext = 3696882i32;
                    };
                } else if (__value__ == (3696666i32)) {
                    _d._byteAvailable = false;
                    _d._length = (3 : stdgo.GoInt);
                    _gotoNext = 3696882i32;
                } else if (__value__ == (3696748i32)) {
                    _gotoNext = 3696748i32;
                    _d._index = (_d._index + (_d._length) : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3696882i32;
                } else if (__value__ == (3696882i32)) {
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3696922i32;
                    } else {
                        _gotoNext = 3693660i32;
                    };
                } else if (__value__ == (3696922i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, _d._index);
                        if (_d._err != null) {
                            _gotoNext = 3697033i32;
                        } else {
                            _gotoNext = 3697057i32;
                        };
                    };
                } else if (__value__ == (3697033i32)) {
                    return;
                    _gotoNext = 3697057i32;
                } else if (__value__ == (3697057i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3693660i32;
                } else if (__value__ == (3697095i32)) {
                    _gotoNext = 3697095i32;
                    if (((_d._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || _d._byteAvailable : Bool)) {
                        _gotoNext = 3697153i32;
                    } else {
                        _gotoNext = 3697475i32;
                    };
                } else if (__value__ == (3697153i32)) {
                    _i_3697159 = (_d._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                    if (_d._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3697214i32;
                    } else {
                        _gotoNext = 3697243i32;
                    };
                } else if (__value__ == (3697214i32)) {
                    _i_3697159 = _d._index;
                    _gotoNext = 3697243i32;
                } else if (__value__ == (3697243i32)) {
                    _d._tokens = (_d._tokens.__append__(stdgo._internal.compress.flate.Flate__literalToken._literalToken((_d._window[(_i_3697159 : stdgo.GoInt)] : stdgo.GoUInt32))));
                    if ((_d._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 3697350i32;
                    } else {
                        _gotoNext = 3697475i32;
                    };
                } else if (__value__ == (3697350i32)) {
                    {
                        _d._err = _d._writeBlock(_d._tokens, (_i_3697159 + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_d._err != null) {
                            _gotoNext = 3697410i32;
                        } else {
                            _gotoNext = 3697437i32;
                        };
                    };
                } else if (__value__ == (3697410i32)) {
                    return;
                    _gotoNext = 3697437i32;
                } else if (__value__ == (3697437i32)) {
                    _d._tokens = (_d._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>);
                    _gotoNext = 3697475i32;
                } else if (__value__ == (3697475i32)) {
                    _d._index++;
                    if (_d._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 3697522i32;
                    } else {
                        _gotoNext = 3693660i32;
                    };
                } else if (__value__ == (3697522i32)) {
                    _d._byteAvailable = true;
                    _gotoNext = 3693660i32;
                } else if (__value__ == (3697563i32)) {
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
        var _n = (_d._window.__copyTo__(_b) : stdgo.GoInt);
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
            _d._window.__copyTo__((_d._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
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
        var _n = ((_d._window.__slice__(_d._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        _d._windowEnd = (_d._windowEnd + (_n) : stdgo.GoInt);
        return _n;
    }
}
