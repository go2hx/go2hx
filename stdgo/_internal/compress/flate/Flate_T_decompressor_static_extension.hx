package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    @:tdfield
    static public function reset( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : (@:checkr _f ?? throw "null pointer dereference")._rBuf, _bits : (@:checkr _f ?? throw "null pointer dereference")._bits, _codebits : (@:checkr _f ?? throw "null pointer dereference")._codebits, _dict : (@:checkr _f ?? throw "null pointer dereference")._dict?.__copy__(), _step : stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
            var x = (_f : stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor);
            x._r = __tmp__._r;
            x._rBuf = __tmp__._rBuf;
            x._roffset = __tmp__._roffset;
            x._b = __tmp__._b;
            x._nb = __tmp__._nb;
            x._h1 = __tmp__._h1;
            x._h2 = __tmp__._h2;
            x._bits = __tmp__._bits;
            x._codebits = __tmp__._codebits;
            x._dict = __tmp__._dict;
            x._buf = __tmp__._buf;
            x._step = __tmp__._step;
            x._stepState = __tmp__._stepState;
            x._final = __tmp__._final;
            x._err = __tmp__._err;
            x._toRead = __tmp__._toRead;
            x._hl = __tmp__._hl;
            x._hd = __tmp__._hd;
            x._copyLen = __tmp__._copyLen;
            x._copyDist = __tmp__._copyDist;
        };
        @:check2r _f._makeReader(_r);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._init((32768 : stdgo.GoInt), _dict);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_Reader.Reader)) : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_Reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _f ?? throw "null pointer dereference")._rBuf = null;
                (@:checkr _f ?? throw "null pointer dereference")._r = _rr;
                return;
            };
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._rBuf != null && (((@:checkr _f ?? throw "null pointer dereference")._rBuf : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference")._rBuf : Dynamic).__nil__))) {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._rBuf.reset(_r);
        } else {
            (@:checkr _f ?? throw "null pointer dereference")._rBuf = stdgo._internal.bufio.Bufio_newReader.newReader(_r);
        };
        (@:checkr _f ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference")._rBuf);
    }
    @:keep
    @:tdfield
    static public function _huffSym( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _n = ((@:checkr _h ?? throw "null pointer dereference")._min : stdgo.GoUInt);
        var __0 = ((@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt), __1 = ((@:checkr _f ?? throw "null pointer dereference")._b : stdgo.GoUInt32);
var _b = __1, _nb = __0;
        while (true) {
            while ((_nb < _n : Bool)) {
                var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err) };
                };
                (@:checkr _f ?? throw "null pointer dereference")._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk = ((@:checkr _h ?? throw "null pointer dereference")._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = (@:checkr _h ?? throw "null pointer dereference")._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (@:checkr _h ?? throw "null pointer dereference")._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            if ((_n <= _nb : Bool)) {
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                (@:checkr _f ?? throw "null pointer dereference")._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = (_nb - _n : stdgo.GoUInt);
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
        };
        (@:checkr _f ?? throw "null pointer dereference")._roffset++;
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b | (((_c : stdgo.GoUInt32) << (@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._final) {
            if ((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eOF.eOF;
        };
        (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    @:tdfield
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _buf = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeSlice();
        if (((_buf.length) > (@:checkr _f ?? throw "null pointer dereference")._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, (@:checkr _f ?? throw "null pointer dereference")._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt) : stdgo.GoInt);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeMark(_cnt);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._copyData;
            return;
        };
        @:check2r _f._finishBlock();
    }
    @:keep
    @:tdfield
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._nb = (0u32 : stdgo.GoUInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, ((@:checkr _f ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noEOF._noEOF(_err);
            return;
        };
        var _n = (((@:checkr _f ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = (((@:checkr _f ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
            return;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            @:check2r _f._finishBlock();
            return;
        };
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = _n;
        @:check2r _f._copyData();
    }
    @:keep
    @:tdfield
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        var _cnt_3722774:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_3722204:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3720761:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _err_3720685:stdgo.Error = (null : stdgo.Error);
        var _dist_3721759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_3720798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_3720682:stdgo.GoInt = (0 : stdgo.GoInt);
        var _stateDict_3720477;
        var _stateInit_3720426;
        var _nb_3722127:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _stateInit_3720426 = (1i64 : stdgo.GoUInt64);
                    _gotoNext = 3720492i32;
                } else if (__value__ == (3720492i32)) {
                    {
                        final __value__ = (@:checkr _f ?? throw "null pointer dereference")._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3720514i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3720550i32;
                        } else {
                            _gotoNext = 3720589i32;
                        };
                    };
                } else if (__value__ == (3720514i32)) {
                    _gotoNext = 3720589i32;
                } else if (__value__ == (3720550i32)) {
                    _gotoNext = 3722695i32;
                } else if (__value__ == (3720589i32)) {
                    _gotoNext = 3720589i32;
                    {
                        _gotoNext = 3720678i32;
                    };
                } else if (__value__ == (3720678i32)) {
                    {
                        var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hl);
                        _v_3720682 = __tmp__._0;
                        _err_3720685 = __tmp__._1;
                    };
                    if (_err_3720685 != null) {
                        _gotoNext = 3720724i32;
                    } else {
                        _gotoNext = 3720757i32;
                    };
                } else if (__value__ == (3720724i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3720685;
                    return;
                    _gotoNext = 3720757i32;
                } else if (__value__ == (3720757i32)) {
                    _gotoNext = 3720811i32;
                } else if (__value__ == (3720811i32)) {
                    if ((_v_3720682 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3720822i32;
                    } else if (_v_3720682 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 3721040i32;
                    } else if ((_v_3720682 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721126i32;
                    } else if ((_v_3720682 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721177i32;
                    } else if ((_v_3720682 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721233i32;
                    } else if ((_v_3720682 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721289i32;
                    } else if ((_v_3720682 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721345i32;
                    } else if ((_v_3720682 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721403i32;
                    } else if ((_v_3720682 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3721462i32;
                    } else {
                        _gotoNext = 3721509i32;
                    };
                } else if (__value__ == (3720822i32)) {
                    @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeByte((_v_3720682 : stdgo.GoUInt8));
                    if (@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3720896i32;
                    } else {
                        _gotoNext = 3721021i32;
                    };
                } else if (__value__ == (3720896i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (0 : stdgo.GoInt);
                    return;
                    _gotoNext = 3721021i32;
                } else if (__value__ == (3721021i32)) {
                    _gotoNext = 3720589i32;
                } else if (__value__ == (3721040i32)) {
                    @:check2r _f._finishBlock();
                    return;
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721126i32)) {
                    _length_3720798 = (_v_3720682 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721177i32)) {
                    _length_3720798 = ((_v_3720682 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721233i32)) {
                    _length_3720798 = ((_v_3720682 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721289i32)) {
                    _length_3720798 = ((_v_3720682 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721345i32)) {
                    _length_3720798 = ((_v_3720682 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721403i32)) {
                    _length_3720798 = ((_v_3720682 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_3720761 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721462i32)) {
                    _length_3720798 = (258 : stdgo.GoInt);
                    _n_3720761 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721509i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3721574i32;
                } else if (__value__ == (3721574i32)) {
                    if ((_n_3720761 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3721583i32;
                    } else {
                        _gotoNext = 3721755i32;
                    };
                } else if (__value__ == (3721583i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3721588i32;
                } else if (__value__ == (3721588i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _n_3720761 : Bool)) {
                        _gotoNext = 3721601i32;
                    } else {
                        _gotoNext = 3721686i32;
                    };
                } else if (__value__ == (3721601i32)) {
                    {
                        _err_3720685 = @:check2r _f._moreBits();
                        if (_err_3720685 != null) {
                            _gotoNext = 3721641i32;
                        } else {
                            _gotoNext = 3721588i32;
                        };
                    };
                } else if (__value__ == (3721641i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3720685;
                    return;
                    _gotoNext = 3721588i32;
                } else if (__value__ == (3721686i32)) {
                    _length_3720798 = (_length_3720798 + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _n_3720761 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_n_3720761) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_n_3720761) : stdgo.GoUInt);
                    _gotoNext = 3721755i32;
                } else if (__value__ == (3721755i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._hd == null || ((@:checkr _f ?? throw "null pointer dereference")._hd : Dynamic).__nil__)) {
                        _gotoNext = 3721785i32;
                    } else {
                        _gotoNext = 3721973i32;
                    };
                } else if (__value__ == (3721785i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3721790i32;
                } else if (__value__ == (3721790i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3721803i32;
                    } else {
                        _gotoNext = 3721888i32;
                    };
                } else if (__value__ == (3721803i32)) {
                    {
                        _err_3720685 = @:check2r _f._moreBits();
                        if (_err_3720685 != null) {
                            _gotoNext = 3721843i32;
                        } else {
                            _gotoNext = 3721790i32;
                        };
                    };
                } else if (__value__ == (3721843i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3720685;
                    return;
                    _gotoNext = 3721790i32;
                } else if (__value__ == (3721888i32)) {
                    _dist_3721759 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 3722062i32;
                } else if (__value__ == (3721973i32)) {
                    _gotoNext = 3721973i32;
                    {
                        {
                            var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hd);
                            _dist_3721759 = __tmp__._0;
                            _err_3720685 = __tmp__._1;
                        };
                        if (_err_3720685 != null) {
                            _gotoNext = 3722021i32;
                        } else {
                            _gotoNext = 3722062i32;
                        };
                    };
                } else if (__value__ == (3722021i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3720685;
                    return;
                    _gotoNext = 3722062i32;
                } else if (__value__ == (3722062i32)) {
                    _gotoNext = 3722062i32;
                    if ((_dist_3721759 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3722073i32;
                    } else if ((_dist_3721759 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3722100i32;
                    } else {
                        _gotoNext = 3722430i32;
                    };
                } else if (__value__ == (3722073i32)) {
                    _dist_3721759++;
                    _gotoNext = 3722548i32;
                } else if (__value__ == (3722100i32)) {
                    _nb_3722127 = (((_dist_3721759 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_3722204 = (((_dist_3721759 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_3722127 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3722233i32;
                } else if (__value__ == (3722233i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb_3722127 : Bool)) {
                        _gotoNext = 3722247i32;
                    } else {
                        _gotoNext = 3722332i32;
                    };
                } else if (__value__ == (3722247i32)) {
                    {
                        _err_3720685 = @:check2r _f._moreBits();
                        if (_err_3720685 != null) {
                            _gotoNext = 3722287i32;
                        } else {
                            _gotoNext = 3722233i32;
                        };
                    };
                } else if (__value__ == (3722287i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_3720685;
                    return;
                    _gotoNext = 3722233i32;
                } else if (__value__ == (3722332i32)) {
                    _extra_3722204 = (_extra_3722204 | ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb_3722127 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb_3722127) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb_3722127) : stdgo.GoUInt);
                    _dist_3721759 = ((((1 : stdgo.GoInt) << ((_nb_3722127 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_3722204 : stdgo.GoInt);
                    _gotoNext = 3722548i32;
                } else if (__value__ == (3722430i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3722548i32;
                } else if (__value__ == (3722548i32)) {
                    if ((_dist_3721759 > @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._histSize() : Bool)) {
                        _gotoNext = 3722576i32;
                    } else {
                        _gotoNext = 3722635i32;
                    };
                } else if (__value__ == (3722576i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    return;
                    _gotoNext = 3722635i32;
                } else if (__value__ == (3722635i32)) {
                    {
                        final __tmp__0 = _length_3720798;
                        final __tmp__1 = _dist_3721759;
                        (@:checkr _f ?? throw "null pointer dereference")._copyLen = __tmp__0;
                        (@:checkr _f ?? throw "null pointer dereference")._copyDist = __tmp__1;
                    };
                    _gotoNext = 3722695i32;
                } else if (__value__ == (3722695i32)) {
                    _gotoNext = 3722695i32;
                    {
                        _gotoNext = 3722770i32;
                    };
                } else if (__value__ == (3722770i32)) {
                    _cnt_3722774 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._tryWriteCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    if (_cnt_3722774 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3722838i32;
                    } else {
                        _gotoNext = 3722895i32;
                    };
                } else if (__value__ == (3722838i32)) {
                    _cnt_3722774 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    _gotoNext = 3722895i32;
                } else if (__value__ == (3722895i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt_3722774) : stdgo.GoInt);
                    if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3722960i32;
                    } else {
                        _gotoNext = 3723112i32;
                    };
                } else if (__value__ == (3722960i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_T_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (1 : stdgo.GoInt);
                    return;
                    _gotoNext = 3723112i32;
                } else if (__value__ == (3723112i32)) {
                    _gotoNext = 3720589i32;
                } else if (__value__ == (3723132i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = (@:check2r _f._moreBits() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _nlit = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen = ((((@:checkr _f ?? throw "null pointer dereference")._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nclen : Bool)) {
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    {
                        var _err = (@:check2r _f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
(@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (((@:checkr _f ?? throw "null pointer dereference")._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
(@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
(@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        {
            var _i = (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeOrder._codeOrder.length) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeOrder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        if (!@:check2 (@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = @:check2r _f._huffSym((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _x;
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
                            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                        };
                        _b = (@:checkr _f ?? throw "null pointer dereference")._bits[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
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
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb : Bool)) {
                    {
                        var _err = (@:check2r _f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
                _rep = (_rep + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb) : stdgo.GoUInt);
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _rep : Bool)) {
                        (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _b;
_i++;
                        _j++;
                    };
                };
            };
        };
        if ((!@:check2 (@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !@:check2 (@:checkr _f ?? throw "null pointer dereference")._h2._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._h1._min < (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)] : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._h1._min = (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)];
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            return (null : stdgo.Error);
        };
        return (@:checkr _f ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (true) {
            if ((((@:checkr _f ?? throw "null pointer dereference")._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_b.__copyTo__((@:checkr _f ?? throw "null pointer dereference")._toRead) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._toRead = ((@:checkr _f ?? throw "null pointer dereference")._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((@:checkr _f ?? throw "null pointer dereference")._toRead.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : _n, _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
            };
            (@:checkr _f ?? throw "null pointer dereference")._step(_f);
            if ((((@:checkr _f ?? throw "null pointer dereference")._err != null) && ((@:checkr _f ?? throw "null pointer dereference")._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_decompressor.T_decompressor> = _f;
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            {
                (@:checkr _f ?? throw "null pointer dereference")._err = @:check2r _f._moreBits();
                if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                    return;
                };
            };
        };
        (@:checkr _f ?? throw "null pointer dereference")._final = ((@:checkr _f ?? throw "null pointer dereference")._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ = ((@:checkr _f ?? throw "null pointer dereference")._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        @:check2r _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedHuffmanDecoder._fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = null;
                        @:check2r _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        {
                            (@:checkr _f ?? throw "null pointer dereference")._err = @:check2r _f._readHuffman();
                            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                                break;
                            };
                        };
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate_T_huffmanDecoder.T_huffmanDecoder>);
                        @:check2r _f._huffmanBlock();
                        break;
                    } else {
                        (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError));
                    };
                };
                break;
            };
        };
    }
}
