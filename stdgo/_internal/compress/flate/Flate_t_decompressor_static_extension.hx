package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    @:tdfield
    static public function reset( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : (@:checkr _f ?? throw "null pointer dereference")._rBuf, _bits : (@:checkr _f ?? throw "null pointer dereference")._bits, _codebits : (@:checkr _f ?? throw "null pointer dereference")._codebits, _dict : (@:checkr _f ?? throw "null pointer dereference")._dict?.__copy__(), _step : stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
            var x = (_f : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
            x._r = __tmp__?._r;
            x._rBuf = __tmp__?._rBuf;
            x._roffset = __tmp__?._roffset;
            x._b = __tmp__?._b;
            x._nb = __tmp__?._nb;
            x._h1 = __tmp__?._h1;
            x._h2 = __tmp__?._h2;
            x._bits = __tmp__?._bits;
            x._codebits = __tmp__?._codebits;
            x._dict = __tmp__?._dict;
            x._buf = __tmp__?._buf;
            x._step = __tmp__?._step;
            x._stepState = __tmp__?._stepState;
            x._final = __tmp__?._final;
            x._err = __tmp__?._err;
            x._toRead = __tmp__?._toRead;
            x._hl = __tmp__?._hl;
            x._hd = __tmp__?._hd;
            x._copyLen = __tmp__?._copyLen;
            x._copyDist = __tmp__?._copyDist;
        };
        @:check2r _f._makeReader(_r);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._init((32768 : stdgo.GoInt), _dict);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_reader.Reader)) : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : false };
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
            (@:checkr _f ?? throw "null pointer dereference")._rBuf = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        };
        (@:checkr _f ?? throw "null pointer dereference")._r = stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference")._rBuf);
    }
    @:keep
    @:tdfield
    static public function _huffSym( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _n = ((@:checkr _h ?? throw "null pointer dereference")._min : stdgo.GoUInt);
        var __0 = ((@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt), __1 = ((@:checkr _f ?? throw "null pointer dereference")._b : stdgo.GoUInt32);
var _b = __1, _nb = __0;
        while (true) {
            while ((_nb < _n : Bool)) {
                var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noeof._noEOF(_err) };
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
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
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
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
        };
        (@:checkr _f ?? throw "null pointer dereference")._roffset++;
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b | (((_c : stdgo.GoUInt32) << (@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._final) {
            if ((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
        };
        (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    @:tdfield
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _buf = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeSlice();
        if (((_buf.length) > (@:checkr _f ?? throw "null pointer dereference")._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, (@:checkr _f ?? throw "null pointer dereference")._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt) : stdgo.GoInt);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeMark(_cnt);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            return;
        };
        if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._copyData;
            return;
        };
        @:check2r _f._finishBlock();
    }
    @:keep
    @:tdfield
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._nb = (0u32 : stdgo.GoUInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, ((@:checkr _f ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            return;
        };
        var _n = (((@:checkr _f ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = (((@:checkr _f ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
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
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _nb_38:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _stateDict_32;
        var _stateInit_31;
        var _cnt_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dist_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_35:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _err_34:stdgo.Error = (null : stdgo.Error);
        var _v_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _stateInit_31 = (1i64 : stdgo.GoUInt64);
                    _gotoNext = 3699197i32;
                } else if (__value__ == (3699197i32)) {
                    {
                        final __value__ = (@:checkr _f ?? throw "null pointer dereference")._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3699219i32;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3699255i32;
                        } else {
                            _gotoNext = 3699294i32;
                        };
                    };
                } else if (__value__ == (3699219i32)) {
                    _gotoNext = 3699294i32;
                } else if (__value__ == (3699255i32)) {
                    _gotoNext = 3701400i32;
                } else if (__value__ == (3699294i32)) {
                    _gotoNext = 3699294i32;
                    {
                        _gotoNext = 3699383i32;
                    };
                } else if (__value__ == (3699383i32)) {
                    {
                        var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hl);
                        _v_33 = @:tmpset0 __tmp__._0;
                        _err_34 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_34 != null) {
                        _gotoNext = 3699429i32;
                    } else {
                        _gotoNext = 3699462i32;
                    };
                } else if (__value__ == (3699429i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    return;
                    _gotoNext = 3699462i32;
                } else if (__value__ == (3699462i32)) {
                    _gotoNext = 3699516i32;
                } else if (__value__ == (3699516i32)) {
                    if ((_v_33 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3699527i32;
                    } else if (_v_33 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 3699745i32;
                    } else if ((_v_33 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3699831i32;
                    } else if ((_v_33 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3699882i32;
                    } else if ((_v_33 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3699938i32;
                    } else if ((_v_33 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3699994i32;
                    } else if ((_v_33 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700050i32;
                    } else if ((_v_33 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700108i32;
                    } else if ((_v_33 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700167i32;
                    } else {
                        _gotoNext = 3700214i32;
                    };
                } else if (__value__ == (3699527i32)) {
                    @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeByte((_v_33 : stdgo.GoUInt8));
                    if (@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3699601i32;
                    } else {
                        _gotoNext = 3699726i32;
                    };
                } else if (__value__ == (3699601i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (0 : stdgo.GoInt);
                    return;
                    _gotoNext = 3699726i32;
                } else if (__value__ == (3699726i32)) {
                    _gotoNext = 3699294i32;
                } else if (__value__ == (3699745i32)) {
                    @:check2r _f._finishBlock();
                    return;
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3699831i32)) {
                    _length_36 = (_v_33 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3699882i32)) {
                    _length_36 = ((_v_33 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3699938i32)) {
                    _length_36 = ((_v_33 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3699994i32)) {
                    _length_36 = ((_v_33 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3700050i32)) {
                    _length_36 = ((_v_33 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3700108i32)) {
                    _length_36 = ((_v_33 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3700167i32)) {
                    _length_36 = (258 : stdgo.GoInt);
                    _n_35 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3700214i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    return;
                    _gotoNext = 3700279i32;
                } else if (__value__ == (3700279i32)) {
                    if ((_n_35 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3700288i32;
                    } else {
                        _gotoNext = 3700460i32;
                    };
                } else if (__value__ == (3700288i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3700293i32;
                } else if (__value__ == (3700293i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _n_35 : Bool)) {
                        _gotoNext = 3700306i32;
                    } else {
                        _gotoNext = 3700391i32;
                    };
                } else if (__value__ == (3700306i32)) {
                    {
                        _err_34 = @:check2r _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3700346i32;
                        } else {
                            _gotoNext = 3700293i32;
                        };
                    };
                } else if (__value__ == (3700346i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    return;
                    _gotoNext = 3700293i32;
                } else if (__value__ == (3700391i32)) {
                    _length_36 = (_length_36 + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _n_35 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_n_35) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_n_35) : stdgo.GoUInt);
                    _gotoNext = 3700460i32;
                } else if (__value__ == (3700460i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._hd == null || ((@:checkr _f ?? throw "null pointer dereference")._hd : Dynamic).__nil__)) {
                        _gotoNext = 3700490i32;
                    } else {
                        _gotoNext = 3700678i32;
                    };
                } else if (__value__ == (3700490i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3700495i32;
                } else if (__value__ == (3700495i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3700508i32;
                    } else {
                        _gotoNext = 3700593i32;
                    };
                } else if (__value__ == (3700508i32)) {
                    {
                        _err_34 = @:check2r _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3700548i32;
                        } else {
                            _gotoNext = 3700495i32;
                        };
                    };
                } else if (__value__ == (3700548i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    return;
                    _gotoNext = 3700495i32;
                } else if (__value__ == (3700593i32)) {
                    _dist_37 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 3700767i32;
                } else if (__value__ == (3700678i32)) {
                    _gotoNext = 3700678i32;
                    {
                        {
                            var __tmp__ = @:check2r _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hd);
                            _dist_37 = @:tmpset0 __tmp__._0;
                            _err_34 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_34 != null) {
                            _gotoNext = 3700726i32;
                        } else {
                            _gotoNext = 3700767i32;
                        };
                    };
                } else if (__value__ == (3700726i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    return;
                    _gotoNext = 3700767i32;
                } else if (__value__ == (3700767i32)) {
                    _gotoNext = 3700767i32;
                    if ((_dist_37 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700778i32;
                    } else if ((_dist_37 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700805i32;
                    } else {
                        _gotoNext = 3701135i32;
                    };
                } else if (__value__ == (3700778i32)) {
                    _dist_37++;
                    _gotoNext = 3701253i32;
                } else if (__value__ == (3700805i32)) {
                    _nb_38 = (((_dist_37 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_39 = (((_dist_37 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_38 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3700938i32;
                } else if (__value__ == (3700938i32)) {
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb_38 : Bool)) {
                        _gotoNext = 3700952i32;
                    } else {
                        _gotoNext = 3701037i32;
                    };
                } else if (__value__ == (3700952i32)) {
                    {
                        _err_34 = @:check2r _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3700992i32;
                        } else {
                            _gotoNext = 3700938i32;
                        };
                    };
                } else if (__value__ == (3700992i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    return;
                    _gotoNext = 3700938i32;
                } else if (__value__ == (3701037i32)) {
                    _extra_39 = (_extra_39 | ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb_38 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb_38) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb_38) : stdgo.GoUInt);
                    _dist_37 = ((((1 : stdgo.GoInt) << ((_nb_38 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_39 : stdgo.GoInt);
                    _gotoNext = 3701253i32;
                } else if (__value__ == (3701135i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    return;
                    _gotoNext = 3701253i32;
                } else if (__value__ == (3701253i32)) {
                    if ((_dist_37 > @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._histSize() : Bool)) {
                        _gotoNext = 3701281i32;
                    } else {
                        _gotoNext = 3701340i32;
                    };
                } else if (__value__ == (3701281i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    return;
                    _gotoNext = 3701340i32;
                } else if (__value__ == (3701340i32)) {
                    {
                        final __tmp__0 = _length_36;
                        final __tmp__1 = _dist_37;
                        (@:checkr _f ?? throw "null pointer dereference")._copyLen = __tmp__0;
                        (@:checkr _f ?? throw "null pointer dereference")._copyDist = __tmp__1;
                    };
                    _gotoNext = 3701400i32;
                } else if (__value__ == (3701400i32)) {
                    _gotoNext = 3701400i32;
                    {
                        _gotoNext = 3701475i32;
                    };
                } else if (__value__ == (3701475i32)) {
                    _cnt_40 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._tryWriteCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    if (_cnt_40 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3701543i32;
                    } else {
                        _gotoNext = 3701600i32;
                    };
                } else if (__value__ == (3701543i32)) {
                    _cnt_40 = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._writeCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    _gotoNext = 3701600i32;
                } else if (__value__ == (3701600i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt_40) : stdgo.GoInt);
                    if (((@:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3701665i32;
                    } else {
                        _gotoNext = 3701817i32;
                    };
                } else if (__value__ == (3701665i32)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = @:check2 (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (1 : stdgo.GoInt);
                    return;
                    _gotoNext = 3701817i32;
                } else if (__value__ == (3701817i32)) {
                    _gotoNext = 3699294i32;
                } else if (__value__ == (3701837i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
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
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
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
(@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeorder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (((@:checkr _f ?? throw "null pointer dereference")._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
(@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
(@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        {
            var _i = (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeorder._codeOrder.length) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeorder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        if (!@:check2 (@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = @:check2r _f._huffSym((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
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
                        return stdgo.Go.asInterface((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_internalerror.InternalError));
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
                    return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
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
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._h1._min < (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)] : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._h1._min = (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)];
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            return (null : stdgo.Error);
        };
        return (@:checkr _f ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
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
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
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
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedhuffmandecoder._fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
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
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        @:check2r _f._huffmanBlock();
                        break;
                    } else {
                        (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    };
                };
                break;
            };
        };
    }
}
