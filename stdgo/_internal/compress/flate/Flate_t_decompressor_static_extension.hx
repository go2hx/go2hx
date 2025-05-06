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
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L794"
        _f._makeReader(_r);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L795"
        (@:checkr _f ?? throw "null pointer dereference")._dict._init((32768 : stdgo.GoInt), _dict);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L796"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L751"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate_reader.Reader)) : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _f ?? throw "null pointer dereference")._rBuf = null;
                (@:checkr _f ?? throw "null pointer dereference")._r = _rr;
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L754"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L757"
        if (({
            final value = (@:checkr _f ?? throw "null pointer dereference")._rBuf;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L758"
            (@:checkr _f ?? throw "null pointer dereference")._rBuf.reset(_r);
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
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L718"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L719"
            while ((_nb < _n : Bool)) {
                var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L721"
                if (_err != null) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L724"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noeof._noEOF(_err) };
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L726"
                (@:checkr _f ?? throw "null pointer dereference")._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk = ((@:checkr _h ?? throw "null pointer dereference")._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L732"
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = (@:checkr _h ?? throw "null pointer dereference")._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (@:checkr _h ?? throw "null pointer dereference")._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L736"
            if ((_n <= _nb : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L737"
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _f ?? throw "null pointer dereference")._b = _b;
                    (@:checkr _f ?? throw "null pointer dereference")._nb = _nb;
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L741"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                (@:checkr _f ?? throw "null pointer dereference")._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = (_nb - _n : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L745"
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L698"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L699"
            return stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L701"
        (@:checkr _f ?? throw "null pointer dereference")._roffset++;
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b | (((_c : stdgo.GoUInt32) << (@:checkr _f ?? throw "null pointer dereference")._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L704"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L679"
        if ((@:checkr _f ?? throw "null pointer dereference")._final) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L680"
            if (((@:checkr _f ?? throw "null pointer dereference")._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
        };
        (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    @:tdfield
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _buf = (@:checkr _f ?? throw "null pointer dereference")._dict._writeSlice();
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L657"
        if (((_buf.length) > (@:checkr _f ?? throw "null pointer dereference")._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, (@:checkr _f ?? throw "null pointer dereference")._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L664"
        (@:checkr _f ?? throw "null pointer dereference")._dict._writeMark(_cnt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L665"
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L667"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L670"
        if ((((@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._copyData;
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L673"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L675"
        _f._finishBlock();
    }
    @:keep
    @:tdfield
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._nb = (0u32 : stdgo.GoUInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw "null pointer dereference")._r, ((@:checkr _f ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw "null pointer dereference")._roffset = ((@:checkr _f ?? throw "null pointer dereference")._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L632"
        if (_err != null) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L634"
            return;
        };
        var _n = (((@:checkr _f ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = (((@:checkr _f ?? throw "null pointer dereference")._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw "null pointer dereference")._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L638"
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L640"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L643"
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L645"
            _f._finishBlock();
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L646"
            return;
        };
        (@:checkr _f ?? throw "null pointer dereference")._copyLen = _n;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L650"
        _f._copyData();
    }
    @:keep
    @:tdfield
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _extra_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_35:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _err_34:stdgo.Error = (null : stdgo.Error);
        var _v_33:stdgo.GoInt = (0 : stdgo.GoInt);
        var _stateDict_32 = 1i64;
        var _stateInit_31 = 0i64;
        var _cnt_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nb_38:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _dist_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3695767i64;
                } else if (__value__ == (3695767i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L485"
                    {
                        final __value__ = (@:checkr _f ?? throw "null pointer dereference")._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 3695789i64;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 3695825i64;
                        } else {
                            _gotoNext = 3695864i64;
                        };
                    };
                } else if (__value__ == (3695789i64)) {
                    _gotoNext = 3695864i64;
                } else if (__value__ == (3695825i64)) {
                    _gotoNext = 3697970i64;
                } else if (__value__ == (3695864i64)) {
                    _gotoNext = 3695864i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L494"
                    {
                        _gotoNext = 3695953i64;
                    };
                } else if (__value__ == (3695953i64)) {
                    {
                        var __tmp__ = _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hl);
                        _v_33 = @:tmpset0 __tmp__._0;
                        _err_34 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L496"
                    if (_err_34 != null) {
                        _gotoNext = 3695999i64;
                    } else {
                        _gotoNext = 3696032i64;
                    };
                } else if (__value__ == (3695999i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L498"
                    return;
                    _gotoNext = 3696032i64;
                } else if (__value__ == (3696032i64)) {
                    _gotoNext = 3696086i64;
                } else if (__value__ == (3696086i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L502"
                    if ((_v_33 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696097i64;
                    } else if (_v_33 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 3696315i64;
                    } else if ((_v_33 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696401i64;
                    } else if ((_v_33 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696452i64;
                    } else if ((_v_33 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696508i64;
                    } else if ((_v_33 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696564i64;
                    } else if ((_v_33 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696620i64;
                    } else if ((_v_33 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696678i64;
                    } else if ((_v_33 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696737i64;
                    } else {
                        _gotoNext = 3696784i64;
                    };
                } else if (__value__ == (3696097i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L504"
                    (@:checkr _f ?? throw "null pointer dereference")._dict._writeByte((_v_33 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L505"
                    if ((@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3696171i64;
                    } else {
                        _gotoNext = 3696296i64;
                    };
                } else if (__value__ == (3696171i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L509"
                    return;
                    _gotoNext = 3696296i64;
                } else if (__value__ == (3696296i64)) {
                    _gotoNext = 3695864i64;
                } else if (__value__ == (3696315i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L513"
                    _f._finishBlock();
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L514"
                    return;
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696401i64)) {
                    _length_36 = (_v_33 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696452i64)) {
                    _length_36 = ((_v_33 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696508i64)) {
                    _length_36 = ((_v_33 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696564i64)) {
                    _length_36 = ((_v_33 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696620i64)) {
                    _length_36 = ((_v_33 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696678i64)) {
                    _length_36 = ((_v_33 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_35 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696737i64)) {
                    _length_36 = (258 : stdgo.GoInt);
                    _n_35 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696784i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L539"
                    return;
                    _gotoNext = 3696849i64;
                } else if (__value__ == (3696849i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L541"
                    if ((_n_35 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3696858i64;
                    } else {
                        _gotoNext = 3697030i64;
                    };
                } else if (__value__ == (3696858i64)) {
                    0i64;
                    _gotoNext = 3696863i64;
                } else if (__value__ == (3696863i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _n_35 : Bool)) {
                        _gotoNext = 3696876i64;
                    } else {
                        _gotoNext = 3696961i64;
                    };
                } else if (__value__ == (3696876i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L543"
                    {
                        _err_34 = _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3696916i64;
                        } else {
                            _gotoNext = 3696863i64;
                        };
                    };
                } else if (__value__ == (3696916i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L545"
                    return;
                    _gotoNext = 3696863i64;
                } else if (__value__ == (3696961i64)) {
                    _length_36 = (_length_36 + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _n_35 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_n_35) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_n_35) : stdgo.GoUInt);
                    _gotoNext = 3697030i64;
                } else if (__value__ == (3697030i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L554"
                    if (({
                        final value = (@:checkr _f ?? throw "null pointer dereference")._hd;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3697060i64;
                    } else {
                        _gotoNext = 3697248i64;
                    };
                } else if (__value__ == (3697060i64)) {
                    0i64;
                    _gotoNext = 3697065i64;
                } else if (__value__ == (3697065i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 3697078i64;
                    } else {
                        _gotoNext = 3697163i64;
                    };
                } else if (__value__ == (3697078i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L556"
                    {
                        _err_34 = _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3697118i64;
                        } else {
                            _gotoNext = 3697065i64;
                        };
                    };
                } else if (__value__ == (3697118i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L558"
                    return;
                    _gotoNext = 3697065i64;
                } else if (__value__ == (3697163i64)) {
                    _dist_37 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 3697337i64;
                } else if (__value__ == (3697248i64)) {
                    _gotoNext = 3697248i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L565"
                    {
                        {
                            var __tmp__ = _f._huffSym((@:checkr _f ?? throw "null pointer dereference")._hd);
                            _dist_37 = @:tmpset0 __tmp__._0;
                            _err_34 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_34 != null) {
                            _gotoNext = 3697296i64;
                        } else {
                            _gotoNext = 3697337i64;
                        };
                    };
                } else if (__value__ == (3697296i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L567"
                    return;
                    _gotoNext = 3697337i64;
                } else if (__value__ == (3697337i64)) {
                    _gotoNext = 3697337i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L571"
                    if ((_dist_37 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3697348i64;
                    } else if ((_dist_37 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3697375i64;
                    } else {
                        _gotoNext = 3697705i64;
                    };
                } else if (__value__ == (3697348i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L573"
                    _dist_37++;
                    _gotoNext = 3697823i64;
                } else if (__value__ == (3697375i64)) {
                    _nb_38 = (((_dist_37 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_39 = (((_dist_37 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_38 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3697508i64;
                } else if (__value__ == (3697508i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb_38 : Bool)) {
                        _gotoNext = 3697522i64;
                    } else {
                        _gotoNext = 3697607i64;
                    };
                } else if (__value__ == (3697522i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L579"
                    {
                        _err_34 = _f._moreBits();
                        if (_err_34 != null) {
                            _gotoNext = 3697562i64;
                        } else {
                            _gotoNext = 3697508i64;
                        };
                    };
                } else if (__value__ == (3697562i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = _err_34;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L581"
                    return;
                    _gotoNext = 3697508i64;
                } else if (__value__ == (3697607i64)) {
                    _extra_39 = (_extra_39 | ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb_38 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb_38) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb_38) : stdgo.GoUInt);
                    _dist_37 = ((((1 : stdgo.GoInt) << ((_nb_38 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_39 : stdgo.GoInt);
                    _gotoNext = 3697823i64;
                } else if (__value__ == (3697705i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L590"
                    return;
                    _gotoNext = 3697823i64;
                } else if (__value__ == (3697823i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L594"
                    if ((_dist_37 > (@:checkr _f ?? throw "null pointer dereference")._dict._histSize() : Bool)) {
                        _gotoNext = 3697851i64;
                    } else {
                        _gotoNext = 3697910i64;
                    };
                } else if (__value__ == (3697851i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._err = stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L596"
                    return;
                    _gotoNext = 3697910i64;
                } else if (__value__ == (3697910i64)) {
                    {
                        final __tmp__0 = _length_36;
                        final __tmp__1 = _dist_37;
                        (@:checkr _f ?? throw "null pointer dereference")._copyLen = @:binopAssign __tmp__0;
                        (@:checkr _f ?? throw "null pointer dereference")._copyDist = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3697970i64;
                } else if (__value__ == (3697970i64)) {
                    _gotoNext = 3697970i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L605"
                    {
                        _gotoNext = 3698045i64;
                    };
                } else if (__value__ == (3698045i64)) {
                    _cnt_40 = (@:checkr _f ?? throw "null pointer dereference")._dict._tryWriteCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L607"
                    if (_cnt_40 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3698113i64;
                    } else {
                        _gotoNext = 3698170i64;
                    };
                } else if (__value__ == (3698113i64)) {
                    _cnt_40 = (@:checkr _f ?? throw "null pointer dereference")._dict._writeCopy((@:checkr _f ?? throw "null pointer dereference")._copyDist, (@:checkr _f ?? throw "null pointer dereference")._copyLen);
                    _gotoNext = 3698170i64;
                } else if (__value__ == (3698170i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._copyLen = ((@:checkr _f ?? throw "null pointer dereference")._copyLen - (_cnt_40) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L612"
                    if ((((@:checkr _f ?? throw "null pointer dereference")._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3698235i64;
                    } else {
                        _gotoNext = 3698387i64;
                    };
                } else if (__value__ == (3698235i64)) {
                    (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
                    (@:checkr _f ?? throw "null pointer dereference")._step = stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw "null pointer dereference")._stepState = (1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L616"
                    return;
                    _gotoNext = 3698387i64;
                } else if (__value__ == (3698387i64)) {
                    _gotoNext = 3695864i64;
                } else if (__value__ == (3698407i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L369"
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L370"
            {
                var _err = (_f._moreBits() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L371"
                    return _err;
                };
            };
        };
        var _nlit = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L375"
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L376"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = ((((@:checkr _f ?? throw "null pointer dereference")._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L380"
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L381"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen = ((((@:checkr _f ?? throw "null pointer dereference")._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L390"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _nclen : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L391"
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L392"
                    {
                        var _err = (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L393"
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
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L400"
        {
            var _i = (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeorder._codeOrder.length) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._codebits[(stdgo._internal.compress.flate.Flate__codeorder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L403"
        if (!(@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L404"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L409"
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = _f._huffSym((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L411"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L412"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L414"
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _x;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L417"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L418"
                    continue;
                };
                var _rep:stdgo.GoInt = (0 : stdgo.GoInt);
                var _nb:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _b:stdgo.GoInt = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L424"
                {
                    final __value__ = _x;
                    if (__value__ == ((16 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (2u32 : stdgo.GoUInt);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L430"
                        if (_i == ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L431"
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
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L426"
                        return stdgo.Go.asInterface((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_internalerror.InternalError));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L443"
                while (((@:checkr _f ?? throw "null pointer dereference")._nb < _nb : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L444"
                    {
                        var _err = (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L445"
                            return _err;
                        };
                    };
                };
                _rep = (_rep + ((((@:checkr _f ?? throw "null pointer dereference")._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> (_nb) : stdgo.GoUInt32);
                (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - (_nb) : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L451"
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L452"
                    return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L454"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _rep : Bool)) {
                        (@:checkr _f ?? throw "null pointer dereference")._bits[(_i : stdgo.GoInt)] = _b;
//"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L456"
                        _i++;
                        _j++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L460"
        if ((!(@:checkr _f ?? throw "null pointer dereference")._h1._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !(@:checkr _f ?? throw "null pointer dereference")._h2._init(((@:checkr _f ?? throw "null pointer dereference")._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L461"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw "null pointer dereference")._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError));
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L468"
        if (((@:checkr _f ?? throw "null pointer dereference")._h1._min < (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)] : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._h1._min = (@:checkr _f ?? throw "null pointer dereference")._bits[(256 : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L472"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L356"
        if (stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L357"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L359"
        return (@:checkr _f ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L336"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L337"
            if ((((@:checkr _f ?? throw "null pointer dereference")._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_b.__copyTo__((@:checkr _f ?? throw "null pointer dereference")._toRead) : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference")._toRead = ((@:checkr _f ?? throw "null pointer dereference")._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L340"
                if (((@:checkr _f ?? throw "null pointer dereference")._toRead.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L341"
                    return { _0 : _n, _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
                };
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L343"
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L345"
            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L346"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw "null pointer dereference")._err };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L348"
            (@:checkr _f ?? throw "null pointer dereference")._step(_f);
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L349"
            if ((((@:checkr _f ?? throw "null pointer dereference")._err != null) && ((@:checkr _f ?? throw "null pointer dereference")._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._toRead = (@:checkr _f ?? throw "null pointer dereference")._dict._readFlush();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L303"
        while (((@:checkr _f ?? throw "null pointer dereference")._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L304"
            {
                (@:checkr _f ?? throw "null pointer dereference")._err = _f._moreBits();
                if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L305"
                    return;
                };
            };
        };
        (@:checkr _f ?? throw "null pointer dereference")._final = ((@:checkr _f ?? throw "null pointer dereference")._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ = ((@:checkr _f ?? throw "null pointer dereference")._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._b = ((@:checkr _f ?? throw "null pointer dereference")._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw "null pointer dereference")._nb = ((@:checkr _f ?? throw "null pointer dereference")._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L313"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L315"
                        _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedhuffmandecoder._fixedHuffmanDecoder) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = null;
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L320"
                        _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L323"
                        {
                            (@:checkr _f ?? throw "null pointer dereference")._err = _f._readHuffman();
                            if ((@:checkr _f ?? throw "null pointer dereference")._err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L324"
                                break;
                            };
                        };
                        (@:checkr _f ?? throw "null pointer dereference")._hl = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h1) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw "null pointer dereference")._hd = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._h2) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        //"file:///home/runner/.go/go1.21.3/src/compress/flate/inflate.go#L328"
                        _f._huffmanBlock();
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
