package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _reconstructBlock( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _bx:stdgo.GoInt, _by:stdgo.GoInt, _compIndex:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        var _qt = (stdgo.Go.setRef(_d._quant[(_d._comp[(_compIndex : stdgo.GoInt)]._tq : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
        {
            var _zig = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_zig < (64 : stdgo.GoInt) : Bool), _zig++, {
                _b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)] = (_b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)] * (_qt[(_zig : stdgo.GoInt)]) : stdgo.GoInt32);
            });
        };
        stdgo._internal.image.jpeg.Jpeg__idct._idct(_b);
        var __0 = (null : stdgo.Slice<stdgo.GoUInt8>), __1 = (0 : stdgo.GoInt);
var _stride = __1, _dst = __0;
        if (_d._nComp == ((1 : stdgo.GoInt))) {
            {
                final __tmp__0 = (_d._img1.pix.__slice__(((8 : stdgo.GoInt) * (((_by * _d._img1.stride : stdgo.GoInt) + _bx : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = _d._img1.stride;
                _dst = __tmp__0;
                _stride = __tmp__1;
            };
        } else {
            {
                final __value__ = _compIndex;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = (_d._img3.y.__slice__(((8 : stdgo.GoInt) * (((_by * _d._img3.ystride : stdgo.GoInt) + _bx : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = _d._img3.ystride;
                        _dst = __tmp__0;
                        _stride = __tmp__1;
                    };
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = (_d._img3.cb.__slice__(((8 : stdgo.GoInt) * (((_by * _d._img3.cstride : stdgo.GoInt) + _bx : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = _d._img3.cstride;
                        _dst = __tmp__0;
                        _stride = __tmp__1;
                    };
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = (_d._img3.cr.__slice__(((8 : stdgo.GoInt) * (((_by * _d._img3.cstride : stdgo.GoInt) + _bx : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = _d._img3.cstride;
                        _dst = __tmp__0;
                        _stride = __tmp__1;
                    };
                } else if (__value__ == ((3 : stdgo.GoInt))) {
                    {
                        final __tmp__0 = (_d._blackPix.__slice__(((8 : stdgo.GoInt) * (((_by * _d._blackStride : stdgo.GoInt) + _bx : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = _d._blackStride;
                        _dst = __tmp__0;
                        _stride = __tmp__1;
                    };
                } else {
                    return stdgo.Go.asInterface((("too many components" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError));
                };
            };
        };
        {
            var _y = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_y < (8 : stdgo.GoInt) : Bool), _y++, {
                var _y8 = (_y * (8 : stdgo.GoInt) : stdgo.GoInt);
                var _yStride = (_y * _stride : stdgo.GoInt);
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < (8 : stdgo.GoInt) : Bool), _x++, {
                        var _c = (_b[(_y8 + _x : stdgo.GoInt)] : stdgo.GoInt32);
                        if ((_c < (-128 : stdgo.GoInt32) : Bool)) {
                            _c = (0 : stdgo.GoInt32);
                        } else if ((_c > (127 : stdgo.GoInt32) : Bool)) {
                            _c = (255 : stdgo.GoInt32);
                        } else {
                            _c = (_c + ((128 : stdgo.GoInt32)) : stdgo.GoInt32);
                        };
                        _dst[(_yStride + _x : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
                    });
                };
            });
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _reconstructProgressiveImage( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        var _h0 = (_d._comp[(0 : stdgo.GoInt)]._h : stdgo.GoInt);
        var _mxx = ((((_d._width + ((8 : stdgo.GoInt) * _h0 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (((8 : stdgo.GoInt) * _h0 : stdgo.GoInt)) : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _d._nComp : Bool), _i++, {
                if (_d._progCoeffs[(_i : stdgo.GoInt)] == null) {
                    continue;
                };
                var _v = (((8 : stdgo.GoInt) * _d._comp[(0 : stdgo.GoInt)]._v : stdgo.GoInt) / _d._comp[(_i : stdgo.GoInt)]._v : stdgo.GoInt);
                var _h = (((8 : stdgo.GoInt) * _d._comp[(0 : stdgo.GoInt)]._h : stdgo.GoInt) / _d._comp[(_i : stdgo.GoInt)]._h : stdgo.GoInt);
                var _stride = (_mxx * _d._comp[(_i : stdgo.GoInt)]._h : stdgo.GoInt);
                {
                    var _by = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(((_by * _v : stdgo.GoInt) < _d._height : Bool), _by++, {
                        {
                            var _bx = (0 : stdgo.GoInt);
                            stdgo.Go.cfor(((_bx * _h : stdgo.GoInt) < _d._width : Bool), _bx++, {
                                {
                                    var _err = (_d._reconstructBlock((stdgo.Go.setRef(_d._progCoeffs[(_i : stdgo.GoInt)][((_by * _stride : stdgo.GoInt) + _bx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), _bx, _by, _i) : stdgo.Error);
                                    if (_err != null) {
                                        return _err;
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _refineNonZeroes( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _zig:stdgo.GoInt32, _zigEnd:stdgo.GoInt32, _nz:stdgo.GoInt32, _delta:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        stdgo.Go.cfor((_zig <= _zigEnd : Bool), _zig++, {
            var _u = (stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt);
            if (_b[(_u : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
                if (_nz == ((0 : stdgo.GoInt32))) {
                    break;
                };
                _nz--;
                continue;
            };
            var __tmp__ = _d._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt32), _1 : _err };
            };
            if (!_bit) {
                continue;
            };
            if ((_b[(_u : stdgo.GoInt)] >= (0 : stdgo.GoInt32) : Bool)) {
                _b[(_u : stdgo.GoInt)] = (_b[(_u : stdgo.GoInt)] + (_delta) : stdgo.GoInt32);
            } else {
                _b[(_u : stdgo.GoInt)] = (_b[(_u : stdgo.GoInt)] - (_delta) : stdgo.GoInt32);
            };
        });
        return { _0 : _zig, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _refine( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _b:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>, _h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>, _zigStart:stdgo.GoInt32, _zigEnd:stdgo.GoInt32, _delta:stdgo.GoInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        stdgo._internal.internal.Macro.controlFlow({
            if (_zigStart == ((0 : stdgo.GoInt32))) {
                if (_zigEnd != ((0 : stdgo.GoInt32))) {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
                var __tmp__ = _d._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_bit) {
                    _b[(0 : stdgo.GoInt)] = (_b[(0 : stdgo.GoInt)] | (_delta) : stdgo.GoInt32);
                };
                return (null : stdgo.Error);
            };
            var _zig = (_zigStart : stdgo.GoInt32);
            if (_d._eobRun == ((0 : stdgo.GoUInt16))) {
                @:label("loop") stdgo.Go.cfor((_zig <= _zigEnd : Bool), _zig++, {
                    var _z = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
                    var __tmp__ = _d._decodeHuffman(_h), _value:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                    var _val0 = (_value >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                    var _val1 = (_value & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _val1;
                                if (__value__ == ((0 : stdgo.GoUInt8))) {
                                    if (_val0 != ((15 : stdgo.GoUInt8))) {
                                        _d._eobRun = ((1 : stdgo.GoUInt16) << _val0 : stdgo.GoUInt16);
                                        if (_val0 != ((0 : stdgo.GoUInt8))) {
                                            var __tmp__ = _d._decodeBits((_val0 : stdgo.GoInt32)), _bits:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                return _err;
                                            };
                                            _d._eobRun = (_d._eobRun | ((_bits : stdgo.GoUInt16)) : stdgo.GoUInt16);
                                        };
                                        @:jump("loop") break;
                                    };
                                    break;
                                } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                                    _z = _delta;
                                    var __tmp__ = _d._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        return _err;
                                    };
                                    if (!_bit) {
                                        _z = -_z;
                                    };
                                    break;
                                } else {
                                    return stdgo.Go.asInterface((("unexpected Huffman code" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                                };
                            };
                            break;
                        };
                    };
                    {
                        var __tmp__ = _d._refineNonZeroes(_b, _zig, _zigEnd, (_val0 : stdgo.GoInt32), _delta);
                        _zig = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                    if ((_zig > _zigEnd : Bool)) {
                        return stdgo.Go.asInterface((("too many coefficients" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                    };
                    if (_z != ((0 : stdgo.GoInt32))) {
                        _b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)] = _z;
                    };
                });
            };
            if ((_d._eobRun > (0 : stdgo.GoUInt16) : Bool)) {
                _d._eobRun--;
                {
                    var __tmp__ = _d._refineNonZeroes(_b, _zig, _zigEnd, (-1 : stdgo.GoInt32), _delta), __0:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            return (null : stdgo.Error);
        });
    }
    @:keep
    static public function _processSOS( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._nComp == ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("missing SOF marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        if ((((_n < (6 : stdgo.GoInt) : Bool) || (((4 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _d._nComp : stdgo.GoInt) : stdgo.GoInt) < _n : Bool) : Bool) || ((_n % (2 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            return stdgo.Go.asInterface((("SOS has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _nComp = (_d._tmp[(0 : stdgo.GoInt)] : stdgo.GoInt);
        if (_n != (((4 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _nComp : stdgo.GoInt) : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("SOS length inconsistent with number of components" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        var _scan:stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T__struct_2.T__struct_2> = new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T__struct_2.T__struct_2>(4, 4, ...[for (i in 0 ... 4) ({ _compIndex : (0 : stdgo.GoUInt8), _td : (0 : stdgo.GoUInt8), _ta : (0 : stdgo.GoUInt8) } : stdgo._internal.image.jpeg.Jpeg_T__struct_2.T__struct_2)]);
        var _totalHV = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _nComp : Bool), _i++, {
                var _cs = (_d._tmp[((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                var _compIndex = (-1 : stdgo.GoInt);
                for (_j => _comp in (_d._comp.__slice__(0, _d._nComp) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_component.T_component>)) {
                    if (_cs == (_comp._c)) {
                        _compIndex = _j;
                    };
                };
                if ((_compIndex < (0 : stdgo.GoInt) : Bool)) {
                    return stdgo.Go.asInterface((("unknown component selector" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                };
                _scan[(_i : stdgo.GoInt)]._compIndex = (_compIndex : stdgo.GoUInt8);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _i : Bool), _j++, {
                        if (_scan[(_i : stdgo.GoInt)]._compIndex == (_scan[(_j : stdgo.GoInt)]._compIndex)) {
                            return stdgo.Go.asInterface((("repeated component selector" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                        };
                    });
                };
                _totalHV = (_totalHV + ((_d._comp[(_compIndex : stdgo.GoInt)]._h * _d._comp[(_compIndex : stdgo.GoInt)]._v : stdgo.GoInt)) : stdgo.GoInt);
                _scan[(_i : stdgo.GoInt)]._td = (_d._tmp[((2 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                {
                    var _t = (_scan[(_i : stdgo.GoInt)]._td : stdgo.GoUInt8);
                    if (((_t > (3 : stdgo.GoUInt8) : Bool) || ((_d._baseline && (_t > (1 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        return stdgo.Go.asInterface((("bad Td value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                    };
                };
                _scan[(_i : stdgo.GoInt)]._ta = (_d._tmp[((2 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                {
                    var _t = (_scan[(_i : stdgo.GoInt)]._ta : stdgo.GoUInt8);
                    if (((_t > (3 : stdgo.GoUInt8) : Bool) || ((_d._baseline && (_t > (1 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        return stdgo.Go.asInterface((("bad Ta value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                    };
                };
            });
        };
        if (((_d._nComp > (1 : stdgo.GoInt) : Bool) && (_totalHV > (10 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface((("total sampling factors too large" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((63 : stdgo.GoInt32) : stdgo.GoInt32), __2 = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32), __3 = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
var _al = __3, _ah = __2, _zigEnd = __1, _zigStart = __0;
        if (_d._progressive) {
            _zigStart = (_d._tmp[((1 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _nComp : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            _zigEnd = (_d._tmp[((2 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _nComp : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            _ah = ((_d._tmp[((3 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _nComp : stdgo.GoInt) : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt32);
            _al = ((_d._tmp[((3 : stdgo.GoInt) + ((2 : stdgo.GoInt) * _nComp : stdgo.GoInt) : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32);
            if ((((((_zigStart == (0 : stdgo.GoInt32)) && (_zigEnd != (0 : stdgo.GoInt32)) : Bool)) || (_zigStart > _zigEnd : Bool) : Bool) || ((64 : stdgo.GoInt32) <= _zigEnd : Bool) : Bool)) {
                return stdgo.Go.asInterface((("bad spectral selection bounds" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            if (((_zigStart != (0 : stdgo.GoInt32)) && (_nComp != (1 : stdgo.GoInt)) : Bool)) {
                return stdgo.Go.asInterface((("progressive AC coefficients for more than one component" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            if (((_ah != (0u32 : stdgo.GoUInt32)) && (_ah != (_al + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : Bool)) {
                return stdgo.Go.asInterface((("bad successive approximation values" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
        };
        var __0 = (_d._comp[(0 : stdgo.GoInt)]._h : stdgo.GoInt), __1 = (_d._comp[(0 : stdgo.GoInt)]._v : stdgo.GoInt);
var _v0 = __1, _h0 = __0;
        var _mxx = ((((_d._width + ((8 : stdgo.GoInt) * _h0 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (((8 : stdgo.GoInt) * _h0 : stdgo.GoInt)) : stdgo.GoInt);
        var _myy = ((((_d._height + ((8 : stdgo.GoInt) * _v0 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (((8 : stdgo.GoInt) * _v0 : stdgo.GoInt)) : stdgo.GoInt);
        if (((_d._img1 == null) || (_d._img1 : Dynamic).__nil__ && (_d._img3 == null) || (_d._img3 : Dynamic).__nil__ : Bool)) {
            _d._makeImg(_mxx, _myy);
        };
        if (_d._progressive) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _nComp : Bool), _i++, {
                    var _compIndex = (_scan[(_i : stdgo.GoInt)]._compIndex : stdgo.GoUInt8);
                    if (_d._progCoeffs[(_compIndex : stdgo.GoInt)] == null) {
                        _d._progCoeffs[(_compIndex : stdgo.GoInt)] = (new stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>((((_mxx * _myy : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._h : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._v : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((_mxx * _myy : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._h : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._v : stdgo.GoInt).toBasic() > 0 ? (((_mxx * _myy : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._h : stdgo.GoInt) * _d._comp[(_compIndex : stdgo.GoInt)]._v : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.image.jpeg.Jpeg_T_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)])]) : stdgo.Slice<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>);
                    };
                });
            };
        };
        _d._bits = (new stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits() : stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits);
        var __0 = (0 : stdgo.GoInt), __1 = ((208 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _expectedRST = __1, _mcu = __0;
        var __0:stdgo._internal.image.jpeg.Jpeg_T_block.T_block = new stdgo._internal.image.jpeg.Jpeg_T_block.T_block(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoInt32)]), __1:stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt32)]), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt);
var _blockCount = __4, _by = __3, _bx = __2, _dc = __1, _b = __0;
        {
            var _my = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_my < _myy : Bool), _my++, {
                {
                    var _mx = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_mx < _mxx : Bool), _mx++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _nComp : Bool), _i++, {
                                var _compIndex = (_scan[(_i : stdgo.GoInt)]._compIndex : stdgo.GoUInt8);
                                var _hi = (_d._comp[(_compIndex : stdgo.GoInt)]._h : stdgo.GoInt);
                                var _vi = (_d._comp[(_compIndex : stdgo.GoInt)]._v : stdgo.GoInt);
                                {
                                    var _j = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_j < (_hi * _vi : stdgo.GoInt) : Bool), _j++, {
                                        if (_nComp != ((1 : stdgo.GoInt))) {
                                            _bx = ((_hi * _mx : stdgo.GoInt) + (_j % _hi : stdgo.GoInt) : stdgo.GoInt);
                                            _by = ((_vi * _my : stdgo.GoInt) + (_j / _hi : stdgo.GoInt) : stdgo.GoInt);
                                        } else {
                                            var _q = (_mxx * _hi : stdgo.GoInt);
                                            _bx = (_blockCount % _q : stdgo.GoInt);
                                            _by = (_blockCount / _q : stdgo.GoInt);
                                            _blockCount++;
                                            if ((((_bx * (8 : stdgo.GoInt) : stdgo.GoInt) >= _d._width : Bool) || ((_by * (8 : stdgo.GoInt) : stdgo.GoInt) >= _d._height : Bool) : Bool)) {
                                                continue;
                                            };
                                        };
                                        if (_d._progressive) {
                                            _b = _d._progCoeffs[(_compIndex : stdgo.GoInt)][(((_by * _mxx : stdgo.GoInt) * _hi : stdgo.GoInt) + _bx : stdgo.GoInt)];
                                        } else {
                                            _b = (new stdgo.GoArray<stdgo.GoInt32>(64, 64, ...[]).__setNumber32__() : stdgo._internal.image.jpeg.Jpeg_T_block.T_block)?.__copy__();
                                        };
                                        if (_ah != ((0u32 : stdgo.GoUInt32))) {
                                            {
                                                var _err = (_d._refine((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), (stdgo.Go.setRef(_d._huff[(1 : stdgo.GoInt)][(_scan[(_i : stdgo.GoInt)]._ta : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>), _zigStart, _zigEnd, ((1 : stdgo.GoInt32) << _al : stdgo.GoInt32)) : stdgo.Error);
                                                if (_err != null) {
                                                    return _err;
                                                };
                                            };
                                        } else {
                                            var _zig = (_zigStart : stdgo.GoInt32);
                                            if (_zig == ((0 : stdgo.GoInt32))) {
                                                _zig++;
                                                var __tmp__ = _d._decodeHuffman((stdgo.Go.setRef(_d._huff[(0 : stdgo.GoInt)][(_scan[(_i : stdgo.GoInt)]._td : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>)), _value:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                if (_err != null) {
                                                    return _err;
                                                };
                                                if ((_value > (16 : stdgo.GoUInt8) : Bool)) {
                                                    return stdgo.Go.asInterface((("excessive DC component" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError));
                                                };
                                                var __tmp__ = _d._receiveExtend(_value), _dcDelta:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                if (_err != null) {
                                                    return _err;
                                                };
                                                _dc[(_compIndex : stdgo.GoInt)] = (_dc[(_compIndex : stdgo.GoInt)] + (_dcDelta) : stdgo.GoInt32);
                                                _b[(0 : stdgo.GoInt)] = (_dc[(_compIndex : stdgo.GoInt)] << _al : stdgo.GoInt32);
                                            };
                                            if (((_zig <= _zigEnd : Bool) && (_d._eobRun > (0 : stdgo.GoUInt16) : Bool) : Bool)) {
                                                _d._eobRun--;
                                            } else {
                                                var _huff = (stdgo.Go.setRef(_d._huff[(1 : stdgo.GoInt)][(_scan[(_i : stdgo.GoInt)]._ta : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>);
                                                stdgo.Go.cfor((_zig <= _zigEnd : Bool), _zig++, {
                                                    var __tmp__ = _d._decodeHuffman(_huff), _value:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                    if (_err != null) {
                                                        return _err;
                                                    };
                                                    var _val0 = (_value >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                                                    var _val1 = (_value & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                                                    if (_val1 != ((0 : stdgo.GoUInt8))) {
                                                        _zig = (_zig + ((_val0 : stdgo.GoInt32)) : stdgo.GoInt32);
                                                        if ((_zig > _zigEnd : Bool)) {
                                                            break;
                                                        };
                                                        var __tmp__ = _d._receiveExtend(_val1), _ac:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                        if (_err != null) {
                                                            return _err;
                                                        };
                                                        _b[(stdgo._internal.image.jpeg.Jpeg__unzig._unzig[(_zig : stdgo.GoInt)] : stdgo.GoInt)] = (_ac << _al : stdgo.GoInt32);
                                                    } else {
                                                        if (_val0 != ((15 : stdgo.GoUInt8))) {
                                                            _d._eobRun = ((1 : stdgo.GoUInt16) << _val0 : stdgo.GoUInt16);
                                                            if (_val0 != ((0 : stdgo.GoUInt8))) {
                                                                var __tmp__ = _d._decodeBits((_val0 : stdgo.GoInt32)), _bits:stdgo.GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                                if (_err != null) {
                                                                    return _err;
                                                                };
                                                                _d._eobRun = (_d._eobRun | ((_bits : stdgo.GoUInt16)) : stdgo.GoUInt16);
                                                            };
                                                            _d._eobRun--;
                                                            break;
                                                        };
                                                        _zig = (_zig + ((15 : stdgo.GoInt32)) : stdgo.GoInt32);
                                                    };
                                                });
                                            };
                                        };
                                        if (_d._progressive) {
                                            _d._progCoeffs[(_compIndex : stdgo.GoInt)][(((_by * _mxx : stdgo.GoInt) * _hi : stdgo.GoInt) + _bx : stdgo.GoInt)] = _b?.__copy__();
                                            continue;
                                        };
                                        {
                                            var _err = (_d._reconstructBlock((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_block.T_block>), _bx, _by, (_compIndex : stdgo.GoInt)) : stdgo.Error);
                                            if (_err != null) {
                                                return _err;
                                            };
                                        };
                                    });
                                };
                            });
                        };
                        _mcu++;
                        if ((((_d._ri > (0 : stdgo.GoInt) : Bool) && (_mcu % _d._ri : stdgo.GoInt) == ((0 : stdgo.GoInt)) : Bool) && (_mcu < (_mxx * _myy : stdgo.GoInt) : Bool) : Bool)) {
                            {
                                var _err = (_d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            if (((_d._tmp[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) && (_d._tmp[(1 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                                {
                                    var _err = (_d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                    if (_err != null) {
                                        return _err;
                                    };
                                };
                            };
                            if (((_d._tmp[(0 : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_d._tmp[(1 : stdgo.GoInt)] != _expectedRST) : Bool)) {
                                return stdgo.Go.asInterface((("bad RST marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                            };
                            _expectedRST++;
                            if (_expectedRST == ((216 : stdgo.GoUInt8))) {
                                _expectedRST = (208 : stdgo.GoUInt8);
                            };
                            _d._bits = (new stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits() : stdgo._internal.image.jpeg.Jpeg_T_bits.T_bits);
                            _dc = (new stdgo.GoArray<stdgo.GoInt32>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__();
                            _d._eobRun = (0 : stdgo.GoUInt16);
                        };
                    });
                };
            });
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _makeImg( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _mxx:stdgo.GoInt, _myy:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._nComp == ((1 : stdgo.GoInt))) {
            var _m = stdgo._internal.image.Image_newGray.newGray(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), ((8 : stdgo.GoInt) * _mxx : stdgo.GoInt), ((8 : stdgo.GoInt) * _myy : stdgo.GoInt))?.__copy__());
            _d._img1 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _d._width, _d._height)?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>)) : stdgo.Ref<stdgo._internal.image.Image_Gray.Gray>);
            return;
        };
        var _h0 = (_d._comp[(0 : stdgo.GoInt)]._h : stdgo.GoInt);
        var _v0 = (_d._comp[(0 : stdgo.GoInt)]._v : stdgo.GoInt);
        var _hRatio = (_h0 / _d._comp[(1 : stdgo.GoInt)]._h : stdgo.GoInt);
        var _vRatio = (_v0 / _d._comp[(1 : stdgo.GoInt)]._v : stdgo.GoInt);
        var _subsampleRatio:stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio = ((0 : stdgo.GoInt) : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
        {
            final __value__ = ((_hRatio << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _vRatio : stdgo.GoInt);
            if (__value__ == ((17 : stdgo.GoInt))) {
                _subsampleRatio = (0 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else if (__value__ == ((18 : stdgo.GoInt))) {
                _subsampleRatio = (3 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else if (__value__ == ((33 : stdgo.GoInt))) {
                _subsampleRatio = (1 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else if (__value__ == ((34 : stdgo.GoInt))) {
                _subsampleRatio = (2 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else if (__value__ == ((65 : stdgo.GoInt))) {
                _subsampleRatio = (4 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else if (__value__ == ((66 : stdgo.GoInt))) {
                _subsampleRatio = (5 : stdgo._internal.image.Image_YCbCrSubsampleRatio.YCbCrSubsampleRatio);
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        var _m = stdgo._internal.image.Image_newYCbCr.newYCbCr(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), (((8 : stdgo.GoInt) * _h0 : stdgo.GoInt) * _mxx : stdgo.GoInt), (((8 : stdgo.GoInt) * _v0 : stdgo.GoInt) * _myy : stdgo.GoInt))?.__copy__(), _subsampleRatio);
        _d._img3 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m.subImage(stdgo._internal.image.Image_rect.rect((0 : stdgo.GoInt), (0 : stdgo.GoInt), _d._width, _d._height)?.__copy__())) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>)) : stdgo.Ref<stdgo._internal.image.Image_YCbCr.YCbCr>);
        if (_d._nComp == ((4 : stdgo.GoInt))) {
            var __0 = (_d._comp[(3 : stdgo.GoInt)]._h : stdgo.GoInt), __1 = (_d._comp[(3 : stdgo.GoInt)]._v : stdgo.GoInt);
var _v3 = __1, _h3 = __0;
            _d._blackPix = (new stdgo.Slice<stdgo.GoUInt8>(((((((8 : stdgo.GoInt) * _h3 : stdgo.GoInt) * _mxx : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt) * _v3 : stdgo.GoInt) * _myy : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _d._blackStride = (((8 : stdgo.GoInt) * _h3 : stdgo.GoInt) * _mxx : stdgo.GoInt);
        };
    }
    @:keep
    static public function _convertToRGB( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        var _cScale = (_d._comp[(0 : stdgo.GoInt)]._h / _d._comp[(1 : stdgo.GoInt)]._h : stdgo.GoInt);
        var _bounds = (_d._img3.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _img = stdgo._internal.image.Image_newRGBA.newRGBA(_bounds?.__copy__());
        {
            var _y = (_bounds.min.y : stdgo.GoInt);
            stdgo.Go.cfor((_y < _bounds.max.y : Bool), _y++, {
                var _po = (_img.pixOffset(_bounds.min.x, _y) : stdgo.GoInt);
                var _yo = (_d._img3.yoffset(_bounds.min.x, _y) : stdgo.GoInt);
                var _co = (_d._img3.coffset(_bounds.min.x, _y) : stdgo.GoInt);
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_bounds.max.x - _bounds.min.x : stdgo.GoInt);
var _iMax = __1, _i = __0;
                    stdgo.Go.cfor((_i < _iMax : Bool), _i++, {
                        _img.pix[((_po + ((4 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt) + (0 : stdgo.GoInt) : stdgo.GoInt)] = _d._img3.y[(_yo + _i : stdgo.GoInt)];
                        _img.pix[((_po + ((4 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _d._img3.cb[(_co + (_i / _cScale : stdgo.GoInt) : stdgo.GoInt)];
                        _img.pix[((_po + ((4 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt)] = _d._img3.cr[(_co + (_i / _cScale : stdgo.GoInt) : stdgo.GoInt)];
                        _img.pix[((_po + ((4 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                    });
                };
            });
        };
        return { _0 : stdgo.Go.asInterface(_img), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _isRGB( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._jfif) {
            return false;
        };
        if ((_d._adobeTransformValid && (_d._adobeTransform == (0 : stdgo.GoUInt8)) : Bool)) {
            return true;
        };
        return ((_d._comp[(0 : stdgo.GoInt)]._c == ((82 : stdgo.GoUInt8)) && _d._comp[(1 : stdgo.GoInt)]._c == ((71 : stdgo.GoUInt8)) : Bool) && (_d._comp[(2 : stdgo.GoInt)]._c == (66 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    static public function _applyBlack( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (!_d._adobeTransformValid) {
            return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : stdgo.Go.asInterface((("unknown color model: 4-component JPEG doesn\'t have Adobe APP14 metadata" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError)) };
        };
        if (_d._adobeTransform != ((0 : stdgo.GoUInt8))) {
            var _bounds = (_d._img3.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
            var _img = stdgo._internal.image.Image_newRGBA.newRGBA(_bounds?.__copy__());
            _internal.image.internal.imageutil.Imageutil_drawYCbCr.drawYCbCr(_img, _bounds?.__copy__(), _d._img3, _bounds.min?.__copy__());
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_bounds.min.y : stdgo.GoInt);
var _y = __1, _iBase = __0;
                stdgo.Go.cfor((_y < _bounds.max.y : Bool), {
                    final __tmp__0 = (_iBase + _img.stride : stdgo.GoInt);
                    final __tmp__1 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _iBase = __tmp__0;
                    _y = __tmp__1;
                }, {
                    {
                        var __0 = (_iBase + (3 : stdgo.GoInt) : stdgo.GoInt), __1 = (_bounds.min.x : stdgo.GoInt);
var _x = __1, _i = __0;
                        stdgo.Go.cfor((_x < _bounds.max.x : Bool), {
                            final __tmp__0 = (_i + (4 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_x + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _i = __tmp__0;
                            _x = __tmp__1;
                        }, {
                            _img.pix[(_i : stdgo.GoInt)] = ((255 : stdgo.GoUInt8) - _d._blackPix[((((_y - _bounds.min.y : stdgo.GoInt)) * _d._blackStride : stdgo.GoInt) + ((_x - _bounds.min.x : stdgo.GoInt)) : stdgo.GoInt)] : stdgo.GoUInt8);
                        });
                    };
                });
            };
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ pix : _img.pix, stride : _img.stride, rect : _img.rect?.__copy__() } : stdgo._internal.image.Image_CMYK.CMYK)) : stdgo.Ref<stdgo._internal.image.Image_CMYK.CMYK>)), _1 : (null : stdgo.Error) };
        };
        var _bounds = (_d._img3.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        var _img = stdgo._internal.image.Image_newCMYK.newCMYK(_bounds?.__copy__());
        var _translations = (new stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1>(4, 4, ...[({ _src : _d._img3.y, _stride : _d._img3.ystride } : stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1), ({ _src : _d._img3.cb, _stride : _d._img3.cstride } : stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1), ({ _src : _d._img3.cr, _stride : _d._img3.cstride } : stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1), ({ _src : _d._blackPix, _stride : _d._blackStride } : stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _src : (null : stdgo.Slice<stdgo.GoUInt8>), _stride : (0 : stdgo.GoInt) } : stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1)])) : stdgo.GoArray<stdgo._internal.image.jpeg.Jpeg_T__struct_1.T__struct_1>);
        for (_t => _translation in _translations) {
            var _subsample = ((_d._comp[(_t : stdgo.GoInt)]._h != _d._comp[(0 : stdgo.GoInt)]._h) || (_d._comp[(_t : stdgo.GoInt)]._v != _d._comp[(0 : stdgo.GoInt)]._v) : Bool);
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_bounds.min.y : stdgo.GoInt);
var _y = __1, _iBase = __0;
                stdgo.Go.cfor((_y < _bounds.max.y : Bool), {
                    final __tmp__0 = (_iBase + _img.stride : stdgo.GoInt);
                    final __tmp__1 = (_y + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _iBase = __tmp__0;
                    _y = __tmp__1;
                }, {
                    var _sy = (_y - _bounds.min.y : stdgo.GoInt);
                    if (_subsample) {
                        _sy = (_sy / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                    {
                        var __0 = (_iBase + _t : stdgo.GoInt), __1 = (_bounds.min.x : stdgo.GoInt);
var _x = __1, _i = __0;
                        stdgo.Go.cfor((_x < _bounds.max.x : Bool), {
                            final __tmp__0 = (_i + (4 : stdgo.GoInt) : stdgo.GoInt);
                            final __tmp__1 = (_x + (1 : stdgo.GoInt) : stdgo.GoInt);
                            _i = __tmp__0;
                            _x = __tmp__1;
                        }, {
                            var _sx = (_x - _bounds.min.x : stdgo.GoInt);
                            if (_subsample) {
                                _sx = (_sx / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            };
                            _img.pix[(_i : stdgo.GoInt)] = ((255 : stdgo.GoUInt8) - _translation._src[((_sy * _translation._stride : stdgo.GoInt) + _sx : stdgo.GoInt)] : stdgo.GoUInt8);
                        });
                    };
                });
            };
        };
        return { _0 : stdgo.Go.asInterface(_img), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _decode( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _r:stdgo._internal.io.Io_Reader.Reader, _configOnly:Bool):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        _d._r = _r;
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        if (((_d._tmp[(0 : stdgo.GoInt)] != (255 : stdgo.GoUInt8)) || (_d._tmp[(1 : stdgo.GoInt)] != (216 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : stdgo.Go.asInterface((("missing SOI marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
        };
        while (true) {
            var _err = (_d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
            while (_d._tmp[(0 : stdgo.GoInt)] != ((255 : stdgo.GoUInt8))) {
                _d._tmp[(0 : stdgo.GoInt)] = _d._tmp[(1 : stdgo.GoInt)];
                {
                    var __tmp__ = _d._readByte();
                    _d._tmp[(1 : stdgo.GoInt)] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
            var _marker = (_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (_marker == ((0 : stdgo.GoUInt8))) {
                continue;
            };
            while (_marker == ((255 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = _d._readByte();
                    _marker = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
            if (_marker == ((217 : stdgo.GoUInt8))) {
                break;
            };
            if ((((208 : stdgo.GoUInt8) <= _marker : Bool) && (_marker <= (215 : stdgo.GoUInt8) : Bool) : Bool)) {
                continue;
            };
            {
                _err = _d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
            var _n = ((((_d._tmp[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : stdgo.Go.asInterface((("short segment length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
            };
            {
                final __value__ = _marker;
                if (__value__ == ((192 : stdgo.GoUInt8)) || __value__ == ((193 : stdgo.GoUInt8)) || __value__ == ((194 : stdgo.GoUInt8))) {
                    _d._baseline = _marker == ((192 : stdgo.GoUInt8));
                    _d._progressive = _marker == ((194 : stdgo.GoUInt8));
                    _err = _d._processSOF(_n);
                    if ((_configOnly && _d._jfif : Bool)) {
                        return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                    };
                } else if (__value__ == ((196 : stdgo.GoUInt8))) {
                    if (_configOnly) {
                        _err = _d._ignore(_n);
                    } else {
                        _err = _d._processDHT(_n);
                    };
                } else if (__value__ == ((219 : stdgo.GoUInt8))) {
                    if (_configOnly) {
                        _err = _d._ignore(_n);
                    } else {
                        _err = _d._processDQT(_n);
                    };
                } else if (__value__ == ((218 : stdgo.GoUInt8))) {
                    if (_configOnly) {
                        return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : (null : stdgo.Error) };
                    };
                    _err = _d._processSOS(_n);
                } else if (__value__ == ((221 : stdgo.GoUInt8))) {
                    if (_configOnly) {
                        _err = _d._ignore(_n);
                    } else {
                        _err = _d._processDRI(_n);
                    };
                } else if (__value__ == ((224 : stdgo.GoUInt8))) {
                    _err = _d._processApp0Marker(_n);
                } else if (__value__ == ((238 : stdgo.GoUInt8))) {
                    _err = _d._processApp14Marker(_n);
                } else {
                    if (((((224 : stdgo.GoUInt8) <= _marker : Bool) && (_marker <= (239 : stdgo.GoUInt8) : Bool) : Bool) || (_marker == (254 : stdgo.GoUInt8)) : Bool)) {
                        _err = _d._ignore(_n);
                    } else if ((_marker < (192 : stdgo.GoUInt8) : Bool)) {
                        _err = stdgo.Go.asInterface((("unknown marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                    } else {
                        _err = stdgo.Go.asInterface((("unknown marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError));
                    };
                };
            };
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
            };
        };
        if (_d._progressive) {
            {
                var _err = (_d._reconstructProgressiveImage() : stdgo.Error);
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : _err };
                };
            };
        };
        if (_d._img1 != null && ((_d._img1 : Dynamic).__nil__ == null || !(_d._img1 : Dynamic).__nil__)) {
            return { _0 : stdgo.Go.asInterface(_d._img1), _1 : (null : stdgo.Error) };
        };
        if (_d._img3 != null && ((_d._img3 : Dynamic).__nil__ == null || !(_d._img3 : Dynamic).__nil__)) {
            if (_d._blackPix != null) {
                return _d._applyBlack();
            } else if (_d._isRGB()) {
                return _d._convertToRGB();
            };
            return { _0 : stdgo.Go.asInterface(_d._img3), _1 : (null : stdgo.Error) };
        };
        return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : stdgo.Go.asInterface((("missing SOS marker" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
    }
    @:keep
    static public function _processApp14Marker( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if ((_n < (12 : stdgo.GoInt) : Bool)) {
            return _d._ignore(_n);
        };
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _n = (_n - ((12 : stdgo.GoInt)) : stdgo.GoInt);
        if (((((_d._tmp[(0 : stdgo.GoInt)] == ((65 : stdgo.GoUInt8)) && _d._tmp[(1 : stdgo.GoInt)] == ((100 : stdgo.GoUInt8)) : Bool) && _d._tmp[(2 : stdgo.GoInt)] == ((111 : stdgo.GoUInt8)) : Bool) && _d._tmp[(3 : stdgo.GoInt)] == ((98 : stdgo.GoUInt8)) : Bool) && (_d._tmp[(4 : stdgo.GoInt)] == (101 : stdgo.GoUInt8)) : Bool)) {
            _d._adobeTransformValid = true;
            _d._adobeTransform = _d._tmp[(11 : stdgo.GoInt)];
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            return _d._ignore(_n);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processApp0Marker( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if ((_n < (5 : stdgo.GoInt) : Bool)) {
            return _d._ignore(_n);
        };
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _n = (_n - ((5 : stdgo.GoInt)) : stdgo.GoInt);
        _d._jfif = ((((_d._tmp[(0 : stdgo.GoInt)] == ((74 : stdgo.GoUInt8)) && _d._tmp[(1 : stdgo.GoInt)] == ((70 : stdgo.GoUInt8)) : Bool) && _d._tmp[(2 : stdgo.GoInt)] == ((73 : stdgo.GoUInt8)) : Bool) && _d._tmp[(3 : stdgo.GoInt)] == ((70 : stdgo.GoUInt8)) : Bool) && (_d._tmp[(4 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            return _d._ignore(_n);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processDRI( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_n != ((2 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("DRI has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _d._ri = (((_d._tmp[(0 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _processDQT( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        stdgo._internal.internal.Macro.controlFlow({
            @:label("loop") while ((_n > (0 : stdgo.GoInt) : Bool)) {
                _n--;
                var __tmp__ = _d._readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                var _tq = (_x & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
                if ((_tq > (3 : stdgo.GoUInt8) : Bool)) {
                    return stdgo.Go.asInterface((("bad Tq value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                };
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = (_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                            if (__value__ == ((0 : stdgo.GoUInt8))) {
                                if ((_n < (64 : stdgo.GoInt) : Bool)) {
                                    @:jump("loop") break;
                                };
                                _n = (_n - ((64 : stdgo.GoInt)) : stdgo.GoInt);
                                {
                                    var _err = (_d._readFull((_d._tmp.__slice__(0, (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                    if (_err != null) {
                                        return _err;
                                    };
                                };
                                for (_i => _ in _d._quant[(_tq : stdgo.GoInt)]) {
                                    _d._quant[(_tq : stdgo.GoInt)][(_i : stdgo.GoInt)] = (_d._tmp[(_i : stdgo.GoInt)] : stdgo.GoInt32);
                                };
                                break;
                            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                                if ((_n < (128 : stdgo.GoInt) : Bool)) {
                                    @:jump("loop") break;
                                };
                                _n = (_n - ((128 : stdgo.GoInt)) : stdgo.GoInt);
                                {
                                    var _err = (_d._readFull((_d._tmp.__slice__(0, (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                    if (_err != null) {
                                        return _err;
                                    };
                                };
                                for (_i => _ in _d._quant[(_tq : stdgo.GoInt)]) {
                                    _d._quant[(_tq : stdgo.GoInt)][(_i : stdgo.GoInt)] = (((_d._tmp[((2 : stdgo.GoInt) * _i : stdgo.GoInt)] : stdgo.GoInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (_d._tmp[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32);
                                };
                                break;
                            } else {
                                return stdgo.Go.asInterface((("bad Pq value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                            };
                        };
                        break;
                    };
                };
            };
            if (_n != ((0 : stdgo.GoInt))) {
                return stdgo.Go.asInterface((("DQT has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            return (null : stdgo.Error);
        });
    }
    @:keep
    static public function _processSOF( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._nComp != ((0 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((("multiple SOF markers" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        {
            final __value__ = _n;
            if (__value__ == ((9 : stdgo.GoInt))) {
                _d._nComp = (1 : stdgo.GoInt);
            } else if (__value__ == ((15 : stdgo.GoInt))) {
                _d._nComp = (3 : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo.GoInt))) {
                _d._nComp = (4 : stdgo.GoInt);
            } else {
                return stdgo.Go.asInterface((("number of components" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError));
            };
        };
        {
            var _err = (_d._readFull((_d._tmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (_d._tmp[(0 : stdgo.GoInt)] != ((8 : stdgo.GoUInt8))) {
            return stdgo.Go.asInterface((("precision" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError));
        };
        _d._height = (((_d._tmp[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_d._tmp[(2 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        _d._width = (((_d._tmp[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_d._tmp[(4 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if ((_d._tmp[(5 : stdgo.GoInt)] : stdgo.GoInt) != (_d._nComp)) {
            return stdgo.Go.asInterface((("SOF has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _d._nComp : Bool), _i++, {
                _d._comp[(_i : stdgo.GoInt)]._c = _d._tmp[((6 : stdgo.GoInt) + ((3 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)];
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _i : Bool), _j++, {
                        if (_d._comp[(_i : stdgo.GoInt)]._c == (_d._comp[(_j : stdgo.GoInt)]._c)) {
                            return stdgo.Go.asInterface((("repeated component identifier" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                        };
                    });
                };
                _d._comp[(_i : stdgo.GoInt)]._tq = _d._tmp[((8 : stdgo.GoInt) + ((3 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)];
                if ((_d._comp[(_i : stdgo.GoInt)]._tq > (3 : stdgo.GoUInt8) : Bool)) {
                    return stdgo.Go.asInterface((("bad Tq value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                };
                var _hv = (_d._tmp[((7 : stdgo.GoInt) + ((3 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                var __0 = ((_hv >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt), __1 = ((_hv & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
var _v = __1, _h = __0;
                if (((((_h < (1 : stdgo.GoInt) : Bool) || ((4 : stdgo.GoInt) < _h : Bool) : Bool) || (_v < (1 : stdgo.GoInt) : Bool) : Bool) || ((4 : stdgo.GoInt) < _v : Bool) : Bool)) {
                    return stdgo.Go.asInterface((("luma/chroma subsampling ratio" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
                };
                if (((_h == (3 : stdgo.GoInt)) || (_v == (3 : stdgo.GoInt)) : Bool)) {
                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                };
                {
                    final __value__ = _d._nComp;
                    if (__value__ == ((1 : stdgo.GoInt))) {
                        {
                            final __tmp__0 = (1 : stdgo.GoInt);
                            final __tmp__1 = (1 : stdgo.GoInt);
                            _h = __tmp__0;
                            _v = __tmp__1;
                        };
                    } else if (__value__ == ((3 : stdgo.GoInt))) {
                        {
                            final __value__ = _i;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                if (_v == ((4 : stdgo.GoInt))) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                if ((((_d._comp[(0 : stdgo.GoInt)]._h % _h : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_d._comp[(0 : stdgo.GoInt)]._v % _v : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                if (((_d._comp[(1 : stdgo.GoInt)]._h != _h) || (_d._comp[(1 : stdgo.GoInt)]._v != _v) : Bool)) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            };
                        };
                    } else if (__value__ == ((4 : stdgo.GoInt))) {
                        {
                            final __value__ = _i;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                if (((_hv != (17 : stdgo.GoUInt8)) && (_hv != (34 : stdgo.GoUInt8)) : Bool)) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                                if (_hv != ((17 : stdgo.GoUInt8))) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            } else if (__value__ == ((3 : stdgo.GoInt))) {
                                if (((_d._comp[(0 : stdgo.GoInt)]._h != _h) || (_d._comp[(0 : stdgo.GoInt)]._v != _v) : Bool)) {
                                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errUnsupportedSubsamplingRatio._errUnsupportedSubsamplingRatio);
                                };
                            };
                        };
                    };
                };
                _d._comp[(_i : stdgo.GoInt)]._h = _h;
                _d._comp[(_i : stdgo.GoInt)]._v = _v;
            });
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _ignore( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._bytes._nUnreadable != ((0 : stdgo.GoInt))) {
            if ((_d._bits._n >= (8 : stdgo.GoInt32) : Bool)) {
                _d._unreadByteStuffedByte();
            };
            _d._bytes._nUnreadable = (0 : stdgo.GoInt);
        };
        while (true) {
            var _m = (_d._bytes._j - _d._bytes._i : stdgo.GoInt);
            if ((_m > _n : Bool)) {
                _m = _n;
            };
            _d._bytes._i = (_d._bytes._i + (_m) : stdgo.GoInt);
            _n = (_n - (_m) : stdgo.GoInt);
            if (_n == ((0 : stdgo.GoInt))) {
                break;
            };
            {
                var _err = (_d._fill() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readFull( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._bytes._nUnreadable != ((0 : stdgo.GoInt))) {
            if ((_d._bits._n >= (8 : stdgo.GoInt32) : Bool)) {
                _d._unreadByteStuffedByte();
            };
            _d._bytes._nUnreadable = (0 : stdgo.GoInt);
        };
        while (true) {
            var _n = (stdgo.Go.copySlice(_p, (_d._bytes._buf.__slice__(_d._bytes._i, _d._bytes._j) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _d._bytes._i = (_d._bytes._i + (_n) : stdgo.GoInt);
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            {
                var _err = (_d._fill() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _readByteStuffedByte( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        var _x = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if (((_d._bytes._i + (2 : stdgo.GoInt) : stdgo.GoInt) <= _d._bytes._j : Bool)) {
            _x = _d._bytes._buf[(_d._bytes._i : stdgo.GoInt)];
            _d._bytes._i++;
            _d._bytes._nUnreadable = (1 : stdgo.GoInt);
            if (_x != ((255 : stdgo.GoUInt8))) {
                return { _0 : _x, _1 : _err };
            };
            if (_d._bytes._buf[(_d._bytes._i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errMissingFF00._errMissingFF00) };
            };
            _d._bytes._i++;
            _d._bytes._nUnreadable = (2 : stdgo.GoInt);
            return { _0 : (255 : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
        };
        _d._bytes._nUnreadable = (0 : stdgo.GoInt);
        {
            var __tmp__ = _d._readByte();
            _x = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
        };
        _d._bytes._nUnreadable = (1 : stdgo.GoInt);
        if (_x != ((255 : stdgo.GoUInt8))) {
            return { _0 : _x, _1 : (null : stdgo.Error) };
        };
        {
            var __tmp__ = _d._readByte();
            _x = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
        };
        _d._bytes._nUnreadable = (2 : stdgo.GoInt);
        if (_x != ((0 : stdgo.GoUInt8))) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errMissingFF00._errMissingFF00) };
        };
        return { _0 : (255 : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readByte( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        var _x = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        while (_d._bytes._i == (_d._bytes._j)) {
            {
                _err = _d._fill();
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                };
            };
        };
        _x = _d._bytes._buf[(_d._bytes._i : stdgo.GoInt)];
        _d._bytes._i++;
        _d._bytes._nUnreadable = (0 : stdgo.GoInt);
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _unreadByteStuffedByte( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        _d._bytes._i = (_d._bytes._i - (_d._bytes._nUnreadable) : stdgo.GoInt);
        _d._bytes._nUnreadable = (0 : stdgo.GoInt);
        if ((_d._bits._n >= (8 : stdgo.GoInt32) : Bool)) {
            _d._bits._a = (_d._bits._a >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _d._bits._n = (_d._bits._n - ((8 : stdgo.GoInt32)) : stdgo.GoInt32);
            _d._bits._m = (_d._bits._m >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        };
    }
    @:keep
    static public function _fill( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._bytes._i != (_d._bytes._j)) {
            throw stdgo.Go.toInterface(("jpeg: fill called when unread bytes exist" : stdgo.GoString));
        };
        if ((_d._bytes._j > (2 : stdgo.GoInt) : Bool)) {
            _d._bytes._buf[(0 : stdgo.GoInt)] = _d._bytes._buf[(_d._bytes._j - (2 : stdgo.GoInt) : stdgo.GoInt)];
            _d._bytes._buf[(1 : stdgo.GoInt)] = _d._bytes._buf[(_d._bytes._j - (1 : stdgo.GoInt) : stdgo.GoInt)];
            {
                final __tmp__0 = (2 : stdgo.GoInt);
                final __tmp__1 = (2 : stdgo.GoInt);
                _d._bytes._i = __tmp__0;
                _d._bytes._j = __tmp__1;
            };
        };
        var __tmp__ = _d._r.read((_d._bytes._buf.__slice__(_d._bytes._j) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d._bytes._j = (_d._bytes._j + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            return (null : stdgo.Error);
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return _err;
    }
    @:keep
    static public function _decodeBits( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if ((_d._bits._n < _n : Bool)) {
            {
                var _err = (_d._ensureNBits(_n) : stdgo.Error);
                if (_err != null) {
                    return { _0 : (0u32 : stdgo.GoUInt32), _1 : _err };
                };
            };
        };
        var _ret = (_d._bits._a >> ((_d._bits._n - _n : stdgo.GoInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _ret = (_ret & (((((1u32 : stdgo.GoUInt32) << (_n : stdgo.GoUInt32) : stdgo.GoUInt32)) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _d._bits._n = (_d._bits._n - (_n) : stdgo.GoInt32);
        _d._bits._m = (_d._bits._m >> ((_n : stdgo.GoUInt32)) : stdgo.GoUInt32);
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _decodeBit( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if (_d._bits._n == ((0 : stdgo.GoInt32))) {
            {
                var _err = (_d._ensureNBits((1 : stdgo.GoInt32)) : stdgo.Error);
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
            };
        };
        var _ret = ((_d._bits._a & _d._bits._m : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32)) : Bool);
        _d._bits._n--;
        _d._bits._m = (_d._bits._m >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _decodeHuffman( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _h:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        stdgo._internal.internal.Macro.controlFlow({
            if (_h._nCodes == ((0 : stdgo.GoInt32))) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo.Go.asInterface((("uninitialized Huffman table" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
            };
            if ((_d._bits._n < (8 : stdgo.GoInt32) : Bool)) {
                {
                    var _err = (_d._ensureNBits((8 : stdgo.GoInt32)) : stdgo.Error);
                    if (_err != null) {
                        if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errMissingFF00._errMissingFF00))) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errShortHuffmanData._errShortHuffmanData))) : Bool)) {
                            return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                        };
                        if (_d._bytes._nUnreadable != ((0 : stdgo.GoInt))) {
                            _d._unreadByteStuffedByte();
                        };
                        @:goto "slowPath";
                    };
                };
            };
            {
                var _v = (_h._lut[((((_d._bits._a >> ((_d._bits._n - (8 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32) : stdgo.GoUInt32)) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt16);
                if (_v != ((0 : stdgo.GoUInt16))) {
                    var _n = (((_v & (255 : stdgo.GoUInt16) : stdgo.GoUInt16)) - (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _d._bits._n = (_d._bits._n - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
                    _d._bits._m = (_d._bits._m >> (_n) : stdgo.GoUInt32);
                    return { _0 : ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
                };
            };
            @:label("slowPath") {
                var __0 = (0 : stdgo.GoInt), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _code = __1, _i = __0;
                stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                    if (_d._bits._n == ((0 : stdgo.GoInt32))) {
                        {
                            var _err = (_d._ensureNBits((1 : stdgo.GoInt32)) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
                            };
                        };
                    };
                    if ((_d._bits._a & _d._bits._m : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                        _code = (_code | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                    _d._bits._n--;
                    _d._bits._m = (_d._bits._m >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    if ((_code <= _h._maxCodes[(_i : stdgo.GoInt)] : Bool)) {
                        return { _0 : _h._vals[(((_h._valsIndices[(_i : stdgo.GoInt)] + _code : stdgo.GoInt32) - _h._minCodes[(_i : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                    };
                    _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
                });
            };
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo.Go.asInterface((("bad Huffman code" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError)) };
        });
    }
    @:keep
    static public function _processDHT( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            if ((_n < (17 : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((("DHT has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            {
                var _err = (_d._readFull((_d._tmp.__slice__(0, (17 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            var _tc = (_d._tmp[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
            if ((_tc > (1 : stdgo.GoUInt8) : Bool)) {
                return stdgo.Go.asInterface((("bad Tc value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            var _th = (_d._tmp[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
            if (((_th > (3 : stdgo.GoUInt8) : Bool) || ((_d._baseline && (_th > (1 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                return stdgo.Go.asInterface((("bad Th value" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            var _h = (stdgo.Go.setRef(_d._huff[(_tc : stdgo.GoInt)][(_th : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman>);
            _h._nCodes = (0 : stdgo.GoInt32);
            var _nCodes:stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoInt32)]);
            for (_i => _ in _nCodes) {
                _nCodes[(_i : stdgo.GoInt)] = (_d._tmp[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
                _h._nCodes = (_h._nCodes + (_nCodes[(_i : stdgo.GoInt)]) : stdgo.GoInt32);
            };
            if (_h._nCodes == ((0 : stdgo.GoInt32))) {
                return stdgo.Go.asInterface((("Huffman table has zero length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            if ((_h._nCodes > (256 : stdgo.GoInt32) : Bool)) {
                return stdgo.Go.asInterface((("Huffman table has excessive length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            _n = (_n - (((_h._nCodes : stdgo.GoInt) + (17 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n < (0 : stdgo.GoInt) : Bool)) {
                return stdgo.Go.asInterface((("DHT has wrong length" : stdgo.GoString) : stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError));
            };
            {
                var _err = (_d._readFull((_h._vals.__slice__(0, _h._nCodes) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            for (_i => _ in _h._lut) {
                _h._lut[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt16);
            };
            var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _code = __1, _x = __0;
            {
                var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                stdgo.Go.cfor((_i < (8u32 : stdgo.GoUInt32) : Bool), _i++, {
                    _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    {
                        var _j = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
                        stdgo.Go.cfor((_j < _nCodes[(_i : stdgo.GoInt)] : Bool), _j++, {
                            var _base = ((_code << (((7u32 : stdgo.GoUInt32) - _i : stdgo.GoUInt32)) : stdgo.GoUInt32) : stdgo.GoUInt8);
                            var _lutValue = (((_h._vals[(_x : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (((2u32 : stdgo.GoUInt32) + _i : stdgo.GoUInt32) : stdgo.GoUInt16) : stdgo.GoUInt16);
                            {
                                var _k = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
                                stdgo.Go.cfor((_k < ((1 : stdgo.GoUInt8) << (((7u32 : stdgo.GoUInt32) - _i : stdgo.GoUInt32)) : stdgo.GoUInt8) : Bool), _k++, {
                                    _h._lut[((_base | _k : stdgo.GoUInt8) : stdgo.GoInt)] = _lutValue;
                                });
                            };
                            _code++;
                            _x++;
                        });
                    };
                });
            };
            var __0:stdgo.GoInt32 = (0 : stdgo.GoInt32), __1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _index = __1, _c = __0;
            for (_i => _n in _nCodes) {
                if (_n == ((0 : stdgo.GoInt32))) {
                    _h._minCodes[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
                    _h._maxCodes[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
                    _h._valsIndices[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt32);
                } else {
                    _h._minCodes[(_i : stdgo.GoInt)] = _c;
                    _h._maxCodes[(_i : stdgo.GoInt)] = ((_c + _n : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _h._valsIndices[(_i : stdgo.GoInt)] = _index;
                    _c = (_c + (_n) : stdgo.GoInt32);
                    _index = (_index + (_n) : stdgo.GoInt32);
                };
                _c = (_c << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _receiveExtend( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _t:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        if ((_d._bits._n < (_t : stdgo.GoInt32) : Bool)) {
            {
                var _err = (_d._ensureNBits((_t : stdgo.GoInt32)) : stdgo.Error);
                if (_err != null) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : _err };
                };
            };
        };
        _d._bits._n = (_d._bits._n - ((_t : stdgo.GoInt32)) : stdgo.GoInt32);
        _d._bits._m = (_d._bits._m >> (_t) : stdgo.GoUInt32);
        var _s = ((1 : stdgo.GoInt32) << _t : stdgo.GoInt32);
        var _x = (((_d._bits._a >> (_d._bits._n : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoInt32) & ((_s - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_x < (_s >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt32) : Bool)) {
            _x = (_x + (((((-1 : stdgo.GoInt32) << _t : stdgo.GoInt32)) + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        return { _0 : _x, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _ensureNBits( _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder>, _n:stdgo.GoInt32):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_T_decoder.T_decoder> = _d;
        while (true) {
            var __tmp__ = _d._readByteStuffedByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                    return stdgo.Go.asInterface(stdgo._internal.image.jpeg.Jpeg__errShortHuffmanData._errShortHuffmanData);
                };
                return _err;
            };
            _d._bits._a = ((_d._bits._a << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | (_c : stdgo.GoUInt32) : stdgo.GoUInt32);
            _d._bits._n = (_d._bits._n + ((8 : stdgo.GoInt32)) : stdgo.GoInt32);
            if (_d._bits._m == ((0u32 : stdgo.GoUInt32))) {
                _d._bits._m = (128u32 : stdgo.GoUInt32);
            } else {
                _d._bits._m = (_d._bits._m << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            };
            if ((_d._bits._n >= _n : Bool)) {
                break;
            };
        };
        return (null : stdgo.Error);
    }
}