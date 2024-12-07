package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    static public function reset( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : _f._rBuf, _bits : _f._bits, _codebits : _f._codebits, _dict : _f._dict?.__copy__(), _step : stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._r = __tmp__._r;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._rBuf = __tmp__._rBuf;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._roffset = __tmp__._roffset;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._b = __tmp__._b;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._nb = __tmp__._nb;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._h1 = __tmp__._h1;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._h2 = __tmp__._h2;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._bits = __tmp__._bits;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._codebits = __tmp__._codebits;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._dict = __tmp__._dict;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._buf = __tmp__._buf;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._step = __tmp__._step;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._stepState = __tmp__._stepState;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._final = __tmp__._final;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._err = __tmp__._err;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._toRead = __tmp__._toRead;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._hl = __tmp__._hl;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._hd = __tmp__._hd;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._copyLen = __tmp__._copyLen;
            (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor)._copyDist = __tmp__._copyDist;
        };
        _f._makeReader(_r);
        _f._dict._init((32768 : stdgo.GoInt), _dict);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _f._rBuf = null;
                _f._r = _rr;
                return;
            };
        };
        if ((_f._rBuf != null && ((_f._rBuf : Dynamic).__nil__ == null || !(_f._rBuf : Dynamic).__nil__))) {
            _f._rBuf.reset(_r);
        } else {
            _f._rBuf = stdgo._internal.bufio.Bufio_newReader.newReader(_r);
        };
        _f._r = stdgo.Go.asInterface(_f._rBuf);
    }
    @:keep
    static public function _huffSym( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _n = (_h._min : stdgo.GoUInt);
        var __0 = (_f._nb : stdgo.GoUInt), __1 = (_f._b : stdgo.GoUInt32);
var _b = __1, _nb = __0;
        while (true) {
            while ((_nb < _n : Bool)) {
                var __tmp__ = _f._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f._b = _b;
                    _f._nb = _nb;
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err) };
                };
                _f._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk = (_h._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = _h._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & _h._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            if ((_n <= _nb : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    _f._b = _b;
                    _f._nb = _nb;
                    _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return { _0 : (0 : stdgo.GoInt), _1 : _f._err };
                };
                _f._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                _f._nb = (_nb - _n : stdgo.GoUInt);
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var __tmp__ = _f._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
        };
        _f._roffset++;
        _f._b = (_f._b | (((_c : stdgo.GoUInt32) << _f._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _f._nb = (_f._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if (_f._final) {
            if ((_f._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                _f._toRead = _f._dict._readFlush();
            };
            _f._err = stdgo._internal.io.Io_eof.eof;
        };
        _f._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _buf = _f._dict._writeSlice();
        if (((_buf.length) > _f._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, _f._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_f._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = (_f._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        _f._copyLen = (_f._copyLen - (_cnt) : stdgo.GoInt);
        _f._dict._writeMark(_cnt);
        if (_err != null) {
            _f._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        if (((_f._dict._availWrite() == (0 : stdgo.GoInt)) || (_f._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _f._toRead = _f._dict._readFlush();
            _f._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._copyData;
            return;
        };
        _f._finishBlock();
    }
    @:keep
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        _f._nb = (0u32 : stdgo.GoUInt);
        _f._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_f._r, (_f._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _f._roffset = (_f._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        if (_err != null) {
            _f._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        var _n = ((_f._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_f._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = ((_f._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | ((_f._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
            return;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            _f._toRead = _f._dict._readFlush();
            _f._finishBlock();
            return;
        };
        _f._copyLen = _n;
        _f._copyData();
    }
    @:keep
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _extra_3693798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nb_3693721:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _dist_3693353:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_3692392:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3692279:stdgo.Error = (null : stdgo.Error);
        var _v_3692276:stdgo.GoInt = (0 : stdgo.GoInt);
        var _stateInit_3692020;
        var _cnt_3694368:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3692355:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _stateDict_3692071;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _stateInit_3692020 = (1i64 : stdgo.GoUInt64);
                    _gotoNext = 3692086i32;
                } else if (__value__ == (3692086i32)) {
                    {
                        final __value__ = _f._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3692108i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3692144i32;
                        } else {
                            _gotoNext = 3692183i32;
                        };
                    };
                } else if (__value__ == (3692108i32)) {
                    _gotoNext = 3692183i32;
                } else if (__value__ == (3692144i32)) {
                    _gotoNext = 3694289i32;
                } else if (__value__ == (3692183i32)) {
                    _gotoNext = 3692183i32;
                    {
                        _gotoNext = 3692272i32;
                    };
                } else if (__value__ == (3692272i32)) {
                    {
                        var __tmp__ = _f._huffSym(_f._hl);
                        _v_3692276 = __tmp__._0;
                        _err_3692279 = __tmp__._1;
                    };
                    if (_err_3692279 != null) {
                        _gotoNext = 3692318i32;
                    } else {
                        _gotoNext = 3692351i32;
                    };
                } else if (__value__ == (3692318i32)) {
                    _f._err = _err_3692279;
                    return;
                    _gotoNext = 3692351i32;
                } else if (__value__ == (3692351i32)) {
                    _gotoNext = 3692405i32;
                } else if (__value__ == (3692405i32)) {
                    if ((_v_3692276 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692416i32;
                    } else if (_v_3692276 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 3692634i32;
                    } else if ((_v_3692276 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692720i32;
                    } else if ((_v_3692276 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692771i32;
                    } else if ((_v_3692276 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692827i32;
                    } else if ((_v_3692276 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692883i32;
                    } else if ((_v_3692276 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692939i32;
                    } else if ((_v_3692276 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3692997i32;
                    } else if ((_v_3692276 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3693056i32;
                    } else {
                        _gotoNext = 3693103i32;
                    };
                } else if (__value__ == (3692416i32)) {
                    _f._dict._writeByte((_v_3692276 : stdgo.GoUInt8));
                    if (_f._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3692490i32;
                    } else {
                        _gotoNext = 3692615i32;
                    };
                } else if (__value__ == (3692490i32)) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    _f._stepState = (0 : stdgo.GoInt);
                    return;
                    _gotoNext = 3692615i32;
                } else if (__value__ == (3692615i32)) {
                    _gotoNext = 3692183i32;
                } else if (__value__ == (3692634i32)) {
                    _f._finishBlock();
                    return;
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692720i32)) {
                    _length_3692392 = (_v_3692276 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692771i32)) {
                    _length_3692392 = ((_v_3692276 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692827i32)) {
                    _length_3692392 = ((_v_3692276 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692883i32)) {
                    _length_3692392 = ((_v_3692276 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692939i32)) {
                    _length_3692392 = ((_v_3692276 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3692997i32)) {
                    _length_3692392 = ((_v_3692276 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3692355 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3693056i32)) {
                    _length_3692392 = (258 : stdgo.GoInt);
                    _n_3692355 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3693103i32)) {
                    _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3693168i32;
                } else if (__value__ == (3693168i32)) {
                    if ((_n_3692355 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3693177i32;
                    } else {
                        _gotoNext = 3693349i32;
                    };
                } else if (__value__ == (3693177i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3693182i32;
                } else if (__value__ == (3693182i32)) {
                    if ((_f._nb < _n_3692355 : Bool)) {
                        _gotoNext = 3693195i32;
                    } else {
                        _gotoNext = 3693280i32;
                    };
                } else if (__value__ == (3693195i32)) {
                    {
                        _err_3692279 = _f._moreBits();
                        if (_err_3692279 != null) {
                            _gotoNext = 3693235i32;
                        } else {
                            _gotoNext = 3693280i32;
                        };
                    };
                } else if (__value__ == (3693235i32)) {
                    _f._err = _err_3692279;
                    return;
                    _gotoNext = 3693280i32;
                } else if (__value__ == (3693280i32)) {
                    _length_3692392 = (_length_3692392 + (((_f._b & (((1u32 : stdgo.GoUInt32) << _n_3692355 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    _f._b = (_f._b >> (_n_3692355) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - (_n_3692355) : stdgo.GoUInt);
                    _gotoNext = 3693349i32;
                } else if (__value__ == (3693349i32)) {
                    if ((_f._hd == null || (_f._hd : Dynamic).__nil__)) {
                        _gotoNext = 3693379i32;
                    } else {
                        _gotoNext = 3693567i32;
                    };
                } else if (__value__ == (3693379i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3693384i32;
                } else if (__value__ == (3693384i32)) {
                    if ((_f._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3693397i32;
                    } else {
                        _gotoNext = 3693482i32;
                    };
                } else if (__value__ == (3693397i32)) {
                    {
                        _err_3692279 = _f._moreBits();
                        if (_err_3692279 != null) {
                            _gotoNext = 3693437i32;
                        } else {
                            _gotoNext = 3693482i32;
                        };
                    };
                } else if (__value__ == (3693437i32)) {
                    _f._err = _err_3692279;
                    return;
                    _gotoNext = 3693482i32;
                } else if (__value__ == (3693482i32)) {
                    _dist_3693353 = (stdgo._internal.math.bits.Bits_reverse8.reverse8((((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 3693656i32;
                } else if (__value__ == (3693567i32)) {
                    _gotoNext = 3693567i32;
                    {
                        {
                            var __tmp__ = _f._huffSym(_f._hd);
                            _dist_3693353 = __tmp__._0;
                            _err_3692279 = __tmp__._1;
                        };
                        if (_err_3692279 != null) {
                            _gotoNext = 3693615i32;
                        } else {
                            _gotoNext = 3693656i32;
                        };
                    };
                } else if (__value__ == (3693615i32)) {
                    _f._err = _err_3692279;
                    return;
                    _gotoNext = 3693656i32;
                } else if (__value__ == (3693656i32)) {
                    _gotoNext = 3693656i32;
                    if ((_dist_3693353 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3693667i32;
                    } else if ((_dist_3693353 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3693694i32;
                    } else {
                        _gotoNext = 3694024i32;
                    };
                } else if (__value__ == (3693667i32)) {
                    _dist_3693353++;
                    _gotoNext = 3694142i32;
                } else if (__value__ == (3693694i32)) {
                    _nb_3693721 = (((_dist_3693353 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_3693798 = (((_dist_3693353 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_3693721 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3693827i32;
                } else if (__value__ == (3693827i32)) {
                    if ((_f._nb < _nb_3693721 : Bool)) {
                        _gotoNext = 3693841i32;
                    } else {
                        _gotoNext = 3693926i32;
                    };
                } else if (__value__ == (3693841i32)) {
                    {
                        _err_3692279 = _f._moreBits();
                        if (_err_3692279 != null) {
                            _gotoNext = 3693881i32;
                        } else {
                            _gotoNext = 3693926i32;
                        };
                    };
                } else if (__value__ == (3693881i32)) {
                    _f._err = _err_3692279;
                    return;
                    _gotoNext = 3693926i32;
                } else if (__value__ == (3693926i32)) {
                    _extra_3693798 = (_extra_3693798 | (((_f._b & (((1u32 : stdgo.GoUInt32) << _nb_3693721 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    _f._b = (_f._b >> (_nb_3693721) : stdgo.GoUInt32);
                    _f._nb = (_f._nb - (_nb_3693721) : stdgo.GoUInt);
                    _dist_3693353 = ((((1 : stdgo.GoInt) << ((_nb_3693721 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_3693798 : stdgo.GoInt);
                    _gotoNext = 3694142i32;
                } else if (__value__ == (3694024i32)) {
                    _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3694142i32;
                } else if (__value__ == (3694142i32)) {
                    if ((_dist_3693353 > _f._dict._histSize() : Bool)) {
                        _gotoNext = 3694170i32;
                    } else {
                        _gotoNext = 3694229i32;
                    };
                } else if (__value__ == (3694170i32)) {
                    _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3694229i32;
                } else if (__value__ == (3694229i32)) {
                    {
                        final __tmp__0 = _length_3692392;
                        final __tmp__1 = _dist_3693353;
                        _f._copyLen = __tmp__0;
                        _f._copyDist = __tmp__1;
                    };
                    _gotoNext = 3694289i32;
                } else if (__value__ == (3694289i32)) {
                    _gotoNext = 3694289i32;
                    {
                        _gotoNext = 3694364i32;
                    };
                } else if (__value__ == (3694364i32)) {
                    _cnt_3694368 = _f._dict._tryWriteCopy(_f._copyDist, _f._copyLen);
                    if (_cnt_3694368 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3694432i32;
                    } else {
                        _gotoNext = 3694489i32;
                    };
                } else if (__value__ == (3694432i32)) {
                    _cnt_3694368 = _f._dict._writeCopy(_f._copyDist, _f._copyLen);
                    _gotoNext = 3694489i32;
                } else if (__value__ == (3694489i32)) {
                    _f._copyLen = (_f._copyLen - (_cnt_3694368) : stdgo.GoInt);
                    if (((_f._dict._availWrite() == (0 : stdgo.GoInt)) || (_f._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3694554i32;
                    } else {
                        _gotoNext = 3694706i32;
                    };
                } else if (__value__ == (3694554i32)) {
                    _f._toRead = _f._dict._readFlush();
                    _f._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    _f._stepState = (1 : stdgo.GoInt);
                    return;
                    _gotoNext = 3694706i32;
                } else if (__value__ == (3694706i32)) {
                    _gotoNext = 3692183i32;
                } else if (__value__ == (3694726i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while ((_f._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = (_f._moreBits() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit = (((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = (((_f._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        _f._b = (_f._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen = (((_f._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        _f._b = (_f._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _f._nb = (_f._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nclen : Bool)) {
                while ((_f._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    {
                        var _err = (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
_f._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = ((_f._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
_f._b = (_f._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
_f._nb = (_f._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        {
            var _i = (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeOrder._codeOrder.length) : Bool)) {
                _f._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        if (!_f._h1._init((_f._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = _f._huffSym((stdgo.Go.setRef(_f._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    _f._bits[(_i : stdgo.GoInt)] = _x;
                    _i++;
                    continue;
                };
                var _rep:stdgo.GoInt = (0 : stdgo.GoInt);
                var _nb:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _b:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    final __value__ = _x;
                    if (__value__ == ((16 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (2u32 : stdgo.GoUInt);
                        if (_i == ((0 : stdgo.GoInt))) {
                            return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                        };
                        _b = _f._bits[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    } else if (__value__ == ((17 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (3u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else if (__value__ == ((18 : stdgo.GoInt))) {
                        _rep = (11 : stdgo.GoInt);
                        _nb = (7u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else {
                        return stdgo.Go.asInterface((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_InternalError.InternalError));
                    };
                };
                while ((_f._nb < _nb : Bool)) {
                    {
                        var _err = (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = (_rep + (((_f._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                _f._b = (_f._b >> (_nb) : stdgo.GoUInt32);
                _f._nb = (_f._nb - (_nb) : stdgo.GoUInt);
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _rep : Bool)) {
                        _f._bits[(_i : stdgo.GoInt)] = _b;
_i++;
                        _j++;
                    };
                };
            };
        };
        if ((!_f._h1._init((_f._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !_f._h2._init((_f._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            return stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        if ((_f._h1._min < _f._bits[(256 : stdgo.GoInt)] : Bool)) {
            _f._h1._min = _f._bits[(256 : stdgo.GoInt)];
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if (stdgo.Go.toInterface(_f._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            return (null : stdgo.Error);
        };
        return _f._err;
    }
    @:keep
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (true) {
            if (((_f._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (stdgo.Go.copySlice(_b, _f._toRead) : stdgo.GoInt);
                _f._toRead = (_f._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if ((_f._toRead.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : _n, _1 : _f._err };
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_f._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _f._err };
            };
            _f._step(_f);
            if (((_f._err != null) && (_f._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                _f._toRead = _f._dict._readFlush();
            };
        };
    }
    @:keep
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while ((_f._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            {
                _f._err = _f._moreBits();
                if (_f._err != null) {
                    return;
                };
            };
        };
        _f._final = (_f._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        _f._b = (_f._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ = (_f._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _f._b = (_f._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        _f._nb = (_f._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        _f._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedHuffmanDecoder._fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        _f._hd = null;
                        _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        {
                            _f._err = _f._readHuffman();
                            if (_f._err != null) {
                                break;
                            };
                        };
                        _f._hl = (stdgo.Go.setRef(_f._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        _f._hd = (stdgo.Go.setRef(_f._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        _f._huffmanBlock();
                        break;
                    } else {
                        _f._err = stdgo.Go.asInterface((_f._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    };
                };
                break;
            };
        };
    }
}
