package stdgo.image.jpeg;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Reader = StructType & {
    > stdgo.io.Io.ByteReader,
    > stdgo.io.Io.Reader,
};
typedef T_writer = StructType & {
    > stdgo.io.Io.Writer,
    > stdgo.io.Io.ByteWriter,
    public function flush():Error;
};
@:structInit class T_huffman {
    public var _nCodes : GoInt32 = ((0 : GoInt32));
    public var _lut : GoArray<GoUInt16> = new GoArray<GoUInt16>(...[for (i in 0 ... 256) ((0 : GoUInt16))]);
    public var _vals : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
    public var _minCodes : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]);
    public var _maxCodes : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]);
    public var _valsIndices : GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]);
    public function new(?_nCodes:GoInt32, ?_lut:GoArray<GoUInt16>, ?_vals:GoArray<GoUInt8>, ?_minCodes:GoArray<GoInt32>, ?_maxCodes:GoArray<GoInt32>, ?_valsIndices:GoArray<GoInt32>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_nCodes) + " " + Go.string(_lut) + " " + Go.string(_vals) + " " + Go.string(_minCodes) + " " + Go.string(_maxCodes) + " " + Go.string(_valsIndices) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffman(_nCodes, _lut, _vals, _minCodes, _maxCodes, _valsIndices);
    }
    public function __set__(__tmp__) {
        this._nCodes = __tmp__._nCodes;
        this._lut = __tmp__._lut;
        this._vals = __tmp__._vals;
        this._minCodes = __tmp__._minCodes;
        this._maxCodes = __tmp__._maxCodes;
        this._valsIndices = __tmp__._valsIndices;
        return this;
    }
}
@:named class T_block {
    public var __t__ : GoArray<GoInt32>;
    public function new(?t:GoArray<GoInt32>) {
        __t__ = t == null ? new GoArray<GoInt32>(...[for (i in 0 ... 64) ((0 : GoInt32))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_block(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class FormatError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("invalid JPEG format: " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new FormatError(__t__);
}
@:named class UnsupportedError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("unsupported JPEG feature: " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnsupportedError(__t__);
}
@:structInit class T_component {
    public var _h : GoInt = ((0 : GoInt));
    public var _v : GoInt = ((0 : GoInt));
    public var _c : GoUInt8 = ((0 : GoUInt8));
    public var _tq : GoUInt8 = ((0 : GoUInt8));
    public function new(?_h:GoInt, ?_v:GoInt, ?_c:GoUInt8, ?_tq:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_v) + " " + Go.string(_c) + " " + Go.string(_tq) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_component(_h, _v, _c, _tq);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._v = __tmp__._v;
        this._c = __tmp__._c;
        this._tq = __tmp__._tq;
        return this;
    }
}
@:structInit class T_bits {
    public var _a : GoUInt32 = ((0 : GoUInt32));
    public var _m : GoUInt32 = ((0 : GoUInt32));
    public var _n : GoInt32 = ((0 : GoInt32));
    public function new(?_a:GoUInt32, ?_m:GoUInt32, ?_n:GoInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_a) + " " + Go.string(_m) + " " + Go.string(_n) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bits(_a, _m, _n);
    }
    public function __set__(__tmp__) {
        this._a = __tmp__._a;
        this._m = __tmp__._m;
        this._n = __tmp__._n;
        return this;
    }
}
@:structInit class T_decoder {
    public function _reconstructBlock(_b:Pointer<T_block>, _bx:GoInt, _by:GoInt, _compIndex:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _qt:Pointer<T_block> = Go.pointer(_d.value._quant[_d.value._comp[_compIndex]._tq]);
        {
            var _zig:GoInt = ((0 : GoInt));
            Go.cfor(_zig < _blockSize, _zig++, {
                _b.value.__t__[_unzig[_zig]] = _b.value.__t__[_unzig[_zig]] * (_qt.value.__t__[_zig]);
            });
        };
        _idct(_b);
        var _dst:Slice<GoUInt8> = ((new Slice<GoUInt8>().nil() : Slice<GoByte>)), _stride:GoInt = ((0 : GoInt));
        if (_d.value._nComp == ((1 : GoInt))) {
            {
                final __tmp__0 = _d.value._img1.value.pix.__slice__(((8 : GoInt)) * (_by * _d.value._img1.value.stride + _bx));
                final __tmp__1 = _d.value._img1.value.stride;
                _dst = __tmp__0;
                _stride = __tmp__1;
            };
        } else {
            if (_compIndex == ((0 : GoInt))) {
                {
                    final __tmp__0 = _d.value._img3.value.y.__slice__(((8 : GoInt)) * (_by * _d.value._img3.value.ystride + _bx));
                    final __tmp__1 = _d.value._img3.value.ystride;
                    _dst = __tmp__0;
                    _stride = __tmp__1;
                };
            } else if (_compIndex == ((1 : GoInt))) {
                {
                    final __tmp__0 = _d.value._img3.value.cb.__slice__(((8 : GoInt)) * (_by * _d.value._img3.value.cstride + _bx));
                    final __tmp__1 = _d.value._img3.value.cstride;
                    _dst = __tmp__0;
                    _stride = __tmp__1;
                };
            } else if (_compIndex == ((2 : GoInt))) {
                {
                    final __tmp__0 = _d.value._img3.value.cr.__slice__(((8 : GoInt)) * (_by * _d.value._img3.value.cstride + _bx));
                    final __tmp__1 = _d.value._img3.value.cstride;
                    _dst = __tmp__0;
                    _stride = __tmp__1;
                };
            } else if (_compIndex == ((3 : GoInt))) {
                {
                    final __tmp__0 = _d.value._blackPix.__slice__(((8 : GoInt)) * (_by * _d.value._blackStride + _bx));
                    final __tmp__1 = _d.value._blackStride;
                    _dst = __tmp__0;
                    _stride = __tmp__1;
                };
            } else {
                return new UnsupportedError("too many components");
            };
        };
        {
            var _y:GoInt = ((0 : GoInt));
            Go.cfor(_y < ((8 : GoInt)), _y++, {
                var _y8:GoInt = _y * ((8 : GoInt));
                var _yStride:GoInt = _y * _stride;
                {
                    var _x:GoInt = ((0 : GoInt));
                    Go.cfor(_x < ((8 : GoInt)), _x++, {
                        var _c:GoInt32 = _b.value.__t__[_y8 + _x];
                        if (_c < -((128 : GoUnTypedInt))) {
                            _c = ((0 : GoInt32));
                        } else if (_c > ((127 : GoInt32))) {
                            _c = ((255 : GoInt32));
                        } else {
                            _c = _c + (((128 : GoInt32)));
                        };
                        _dst[_yStride + _x] = ((_c : GoUInt8));
                    });
                };
            });
        };
        return ((null : stdgo.Error));
    }
    public function _reconstructProgressiveImage():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _h0:GoInt = _d.value._comp[((0 : GoInt))]._h;
        var _mxx:GoInt = (_d.value._width + ((8 : GoInt)) * _h0 - ((1 : GoInt))) / (((8 : GoInt)) * _h0);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _d.value._nComp, _i++, {
                if (_d.value._progCoeffs[_i] == null || _d.value._progCoeffs[_i].isNil()) {
                    continue;
                };
                var _v:GoInt = ((8 : GoInt)) * _d.value._comp[((0 : GoInt))]._v / _d.value._comp[_i]._v;
                var _h:GoInt = ((8 : GoInt)) * _d.value._comp[((0 : GoInt))]._h / _d.value._comp[_i]._h;
                var _stride:GoInt = _mxx * _d.value._comp[_i]._h;
                {
                    var _by:GoInt = ((0 : GoInt));
                    Go.cfor(_by * _v < _d.value._height, _by++, {
                        {
                            var _bx:GoInt = ((0 : GoInt));
                            Go.cfor(_bx * _h < _d.value._width, _bx++, {
                                {
                                    var _err:stdgo.Error = _d.value._reconstructBlock(Go.pointer(_d.value._progCoeffs[_i][_by * _stride + _bx]), _bx, _by, _i);
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
        return ((null : stdgo.Error));
    }
    public function _refineNonZeroes(_b:Pointer<T_block>, _zig:GoInt32, _zigEnd:GoInt32, _nz:GoInt32, _delta:GoInt32):{ var _0 : GoInt32; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        Go.cfor(_zig <= _zigEnd, _zig++, {
            var _u:GoInt = _unzig[_zig];
            if (_b.value.__t__[_u] == ((0 : GoInt32))) {
                if (_nz == ((0 : GoInt32))) {
                    break;
                };
                _nz--;
                continue;
            };
            var __tmp__ = _d.value._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt32)), _1 : _err };
            };
            if (!_bit) {
                continue;
            };
            if (_b.value.__t__[_u] >= ((0 : GoInt32))) {
                _b.value.__t__[_u] = _b.value.__t__[_u] + (_delta);
            } else {
                _b.value.__t__[_u] = _b.value.__t__[_u] - (_delta);
            };
        });
        return { _0 : _zig, _1 : ((null : stdgo.Error)) };
    }
    public function _refine(_b:Pointer<T_block>, _h:Pointer<T_huffman>, _zigStart:GoInt32, _zigEnd:GoInt32, _delta:GoInt32):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            if (_zigStart == ((0 : GoInt32))) {
                if (_zigEnd != ((0 : GoInt32))) {
                    throw "unreachable";
                };
                var __tmp__ = _d.value._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_bit) {
                    _b.value.__t__[((0 : GoInt))] = _b.value.__t__[((0 : GoInt))] | (_delta);
                };
                return ((null : stdgo.Error));
            };
            var _zig:GoInt32 = _zigStart;
            if (_d.value._eobRun == ((0 : GoUInt16))) {
                @:label("loop") Go.cfor(_zig <= _zigEnd, _zig++, {
                    var _z:GoInt32 = ((((0 : GoInt32)) : GoInt32));
                    var __tmp__ = _d.value._decodeHuffman(_h), _value:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                    var _val0:GoUInt8 = (_value >> ((4 : GoUnTypedInt)));
                    var _val1:GoUInt8 = _value & ((15 : GoUInt8));
                    {
                        var __switchIndex__ = -1;
                        while (true) {
                            if (_val1 == ((0 : GoUInt8))) {
                                if (_val0 != ((15 : GoUInt8))) {
                                    _d.value._eobRun = (((((1 : GoUInt16)) << _val0) : GoUInt16));
                                    if (_val0 != ((0 : GoUInt8))) {
                                        var __tmp__ = _d.value._decodeBits(((_val0 : GoInt32))), _bits:GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (_err != null) {
                                            return _err;
                                        };
                                        _d.value._eobRun = _d.value._eobRun | (((_bits : GoUInt16)));
                                    };
                                    @:break {
                                        ____exit____ = true;
                                        ____break____ = true;
                                        break;
                                    };
                                };
                                break;
                            } else if (_val1 == ((1 : GoUInt8))) {
                                _z = _delta;
                                var __tmp__ = _d.value._decodeBit(), _bit:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    return _err;
                                };
                                if (!_bit) {
                                    _z = -_z;
                                };
                                break;
                            } else {
                                return new FormatError("unexpected Huffman code");
                            };
                            break;
                        };
                    };
                    {
                        var __tmp__ = _d.value._refineNonZeroes(_b, _zig, _zigEnd, ((_val0 : GoInt32)), _delta);
                        _zig = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                    if (_zig > _zigEnd) {
                        return new FormatError("too many coefficients");
                    };
                    if (_z != ((0 : GoInt32))) {
                        _b.value.__t__[_unzig[_zig]] = _z;
                    };
                });
            };
            if (_d.value._eobRun > ((0 : GoUInt16))) {
                _d.value._eobRun--;
                {
                    var __tmp__ = _d.value._refineNonZeroes(_b, _zig, _zigEnd, -((1 : GoUnTypedInt)), _delta), _:GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            return ((null : stdgo.Error));
        });
    }
    public function _processSOS(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._nComp == ((0 : GoInt))) {
            return new FormatError("missing SOF marker");
        };
        if (_n < ((6 : GoInt)) || ((4 : GoInt)) + ((2 : GoInt)) * _d.value._nComp < _n || _n % ((2 : GoInt)) != ((0 : GoInt))) {
            return new FormatError("SOS has wrong length");
        };
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, _n));
            if (_err != null) {
                return _err;
            };
        };
        var _nComp:GoInt = ((_d.value._tmp[((0 : GoInt))] : GoInt));
        if (_n != ((4 : GoInt)) + ((2 : GoInt)) * _nComp) {
            return new FormatError("SOS length inconsistent with number of components");
        };
        var _scan:GoArray<T__struct_40> = new GoArray<T__struct_40>(...[for (i in 0 ... 4) new T__struct_40()]);
        var _totalHV:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _nComp, _i++, {
                var _cs:GoUInt8 = _d.value._tmp[((1 : GoInt)) + ((2 : GoInt)) * _i];
                var _compIndex:GoInt = -((1 : GoUnTypedInt));
                {
                    var _j;
                    var _comp;
                    for (_obj in _d.value._comp.__slice__(0, _d.value._nComp).keyValueIterator()) {
                        _j = _obj.key;
                        _comp = _obj.value;
                        if (_cs == _comp._c) {
                            _compIndex = _j;
                        };
                    };
                };
                if (_compIndex < ((0 : GoInt))) {
                    return new FormatError("unknown component selector");
                };
                _scan[_i]._compIndex = ((_compIndex : GoUInt8));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _i, _j++, {
                        if (_scan[_i]._compIndex == _scan[_j]._compIndex) {
                            return new FormatError("repeated component selector");
                        };
                    });
                };
                _totalHV = _totalHV + (_d.value._comp[_compIndex]._h * _d.value._comp[_compIndex]._v);
                _scan[_i]._td = (_d.value._tmp[((2 : GoInt)) + ((2 : GoInt)) * _i] >> ((4 : GoUnTypedInt)));
                {
                    var _t:GoUInt8 = _scan[_i]._td;
                    if (_t > _maxTh || (_d.value._baseline && _t > ((1 : GoUInt8)))) {
                        return new FormatError("bad Td value");
                    };
                };
                _scan[_i]._ta = _d.value._tmp[((2 : GoInt)) + ((2 : GoInt)) * _i] & ((15 : GoUInt8));
                {
                    var _t:GoUInt8 = _scan[_i]._ta;
                    if (_t > _maxTh || (_d.value._baseline && _t > ((1 : GoUInt8)))) {
                        return new FormatError("bad Ta value");
                    };
                };
            });
        };
        if (_d.value._nComp > ((1 : GoInt)) && _totalHV > ((10 : GoInt))) {
            return new FormatError("total sampling factors too large");
        };
        var _zigStart:GoInt32 = ((((0 : GoInt32)) : GoInt32)), _zigEnd:GoInt32 = (((_blockSize - ((1 : GoUnTypedInt))) : GoInt32)), _ah:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32)), _al:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        if (_d.value._progressive) {
            _zigStart = ((_d.value._tmp[((1 : GoInt)) + ((2 : GoInt)) * _nComp] : GoInt32));
            _zigEnd = ((_d.value._tmp[((2 : GoInt)) + ((2 : GoInt)) * _nComp] : GoInt32));
            _ah = (((_d.value._tmp[((3 : GoInt)) + ((2 : GoInt)) * _nComp] >> ((4 : GoUnTypedInt))) : GoUInt32));
            _al = (((_d.value._tmp[((3 : GoInt)) + ((2 : GoInt)) * _nComp] & ((15 : GoUInt8))) : GoUInt32));
            if ((_zigStart == ((0 : GoInt32)) && _zigEnd != ((0 : GoInt32))) || _zigStart > _zigEnd || _blockSize <= _zigEnd) {
                return new FormatError("bad spectral selection bounds");
            };
            if (_zigStart != ((0 : GoInt32)) && _nComp != ((1 : GoInt))) {
                return new FormatError("progressive AC coefficients for more than one component");
            };
            if (_ah != ((0 : GoUInt32)) && _ah != _al + ((1 : GoUInt32))) {
                return new FormatError("bad successive approximation values");
            };
        };
        var _h0:GoInt = _d.value._comp[((0 : GoInt))]._h, _v0:GoInt = _d.value._comp[((0 : GoInt))]._v;
        var _mxx:GoInt = (_d.value._width + ((8 : GoInt)) * _h0 - ((1 : GoInt))) / (((8 : GoInt)) * _h0);
        var _myy:GoInt = (_d.value._height + ((8 : GoInt)) * _v0 - ((1 : GoInt))) / (((8 : GoInt)) * _v0);
        if (_d.value._img1 == null || _d.value._img1.isNil() && _d.value._img3 == null || _d.value._img3.isNil()) {
            _d.value._makeImg(_mxx, _myy);
        };
        if (_d.value._progressive) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _nComp, _i++, {
                    var _compIndex:GoUInt8 = _scan[_i]._compIndex;
                    if (_d.value._progCoeffs[_compIndex] == null || _d.value._progCoeffs[_compIndex].isNil()) {
                        _d.value._progCoeffs[_compIndex] = new Slice<T_block>(...[for (i in 0 ... ((_mxx * _myy * _d.value._comp[_compIndex]._h * _d.value._comp[_compIndex]._v : GoInt)).toBasic()) new T_block()]);
                    };
                });
            };
        };
        _d.value._bits = new T_bits().__copy__();
        var _mcu:GoInt = ((0 : GoInt)), _expectedRST:GoUInt8 = ((_rst0Marker : GoUInt8));
        var _b:T_block = new T_block(), _dc:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 4) ((0 : GoInt32))]), _bx:GoInt = ((0 : GoInt)), _by:GoInt = ((0 : GoInt)), _blockCount:GoInt = ((0 : GoInt));
        {
            var _my:GoInt = ((0 : GoInt));
            Go.cfor(_my < _myy, _my++, {
                {
                    var _mx:GoInt = ((0 : GoInt));
                    Go.cfor(_mx < _mxx, _mx++, {
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < _nComp, _i++, {
                                var _compIndex:GoUInt8 = _scan[_i]._compIndex;
                                var _hi:GoInt = _d.value._comp[_compIndex]._h;
                                var _vi:GoInt = _d.value._comp[_compIndex]._v;
                                {
                                    var _j:GoInt = ((0 : GoInt));
                                    Go.cfor(_j < _hi * _vi, _j++, {
                                        if (_nComp != ((1 : GoInt))) {
                                            _bx = _hi * _mx + _j % _hi;
                                            _by = _vi * _my + _j / _hi;
                                        } else {
                                            var _q:GoInt = _mxx * _hi;
                                            _bx = _blockCount % _q;
                                            _by = _blockCount / _q;
                                            _blockCount++;
                                            if (_bx * ((8 : GoInt)) >= _d.value._width || _by * ((8 : GoInt)) >= _d.value._height) {
                                                continue;
                                            };
                                        };
                                        if (_d.value._progressive) {
                                            _b = _d.value._progCoeffs[_compIndex][_by * _mxx * _hi + _bx].__copy__();
                                        } else {
                                            _b = new T_block(new GoArray<GoInt32>(...([].concat([for (i in 0 ... 64) 0])))).__copy__();
                                        };
                                        if (_ah != ((0 : GoUInt32))) {
                                            {
                                                var _err:stdgo.Error = _d.value._refine(Go.pointer(_b), Go.pointer(_d.value._huff[_acTable][_scan[_i]._ta]), _zigStart, _zigEnd, (((1 : GoInt32)) << _al));
                                                if (_err != null) {
                                                    return _err;
                                                };
                                            };
                                        } else {
                                            var _zig:GoInt32 = _zigStart;
                                            if (_zig == ((0 : GoInt32))) {
                                                _zig++;
                                                var __tmp__ = _d.value._decodeHuffman(Go.pointer(_d.value._huff[_dcTable][_scan[_i]._td])), _value:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                if (_err != null) {
                                                    return _err;
                                                };
                                                if (_value > ((16 : GoUInt8))) {
                                                    return new UnsupportedError("excessive DC component");
                                                };
                                                var __tmp__ = _d.value._receiveExtend(_value), _dcDelta:GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                if (_err != null) {
                                                    return _err;
                                                };
                                                _dc[_compIndex] = _dc[_compIndex] + (_dcDelta);
                                                _b.__t__[((0 : GoInt))] = (_dc[_compIndex] << _al);
                                            };
                                            if (_zig <= _zigEnd && _d.value._eobRun > ((0 : GoUInt16))) {
                                                _d.value._eobRun--;
                                            } else {
                                                var _huff:Pointer<T_huffman> = Go.pointer(_d.value._huff[_acTable][_scan[_i]._ta]);
                                                Go.cfor(_zig <= _zigEnd, _zig++, {
                                                    var __tmp__ = _d.value._decodeHuffman(_huff), _value:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                    if (_err != null) {
                                                        return _err;
                                                    };
                                                    var _val0:GoUInt8 = (_value >> ((4 : GoUnTypedInt)));
                                                    var _val1:GoUInt8 = _value & ((15 : GoUInt8));
                                                    if (_val1 != ((0 : GoUInt8))) {
                                                        _zig = _zig + (((_val0 : GoInt32)));
                                                        if (_zig > _zigEnd) {
                                                            break;
                                                        };
                                                        var __tmp__ = _d.value._receiveExtend(_val1), _ac:GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                        if (_err != null) {
                                                            return _err;
                                                        };
                                                        _b.__t__[_unzig[_zig]] = (_ac << _al);
                                                    } else {
                                                        if (_val0 != ((15 : GoUInt8))) {
                                                            _d.value._eobRun = (((((1 : GoUInt16)) << _val0) : GoUInt16));
                                                            if (_val0 != ((0 : GoUInt8))) {
                                                                var __tmp__ = _d.value._decodeBits(((_val0 : GoInt32))), _bits:GoUInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                                if (_err != null) {
                                                                    return _err;
                                                                };
                                                                _d.value._eobRun = _d.value._eobRun | (((_bits : GoUInt16)));
                                                            };
                                                            _d.value._eobRun--;
                                                            break;
                                                        };
                                                        _zig = _zig + (((15 : GoInt32)));
                                                    };
                                                });
                                            };
                                        };
                                        if (_d.value._progressive) {
                                            _d.value._progCoeffs[_compIndex][_by * _mxx * _hi + _bx] = _b.__copy__();
                                            continue;
                                        };
                                        {
                                            var _err:stdgo.Error = _d.value._reconstructBlock(Go.pointer(_b), _bx, _by, ((_compIndex : GoInt)));
                                            if (_err != null) {
                                                return _err;
                                            };
                                        };
                                    });
                                };
                            });
                        };
                        _mcu++;
                        if (_d.value._ri > ((0 : GoInt)) && _mcu % _d.value._ri == ((0 : GoInt)) && _mcu < _mxx * _myy) {
                            {
                                var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            if (_d.value._tmp[((0 : GoInt))] == ((255 : GoUInt8)) && _d.value._tmp[((1 : GoInt))] == ((0 : GoUInt8))) {
                                {
                                    var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
                                    if (_err != null) {
                                        return _err;
                                    };
                                };
                            };
                            if (_d.value._tmp[((0 : GoInt))] != ((255 : GoUInt8)) || _d.value._tmp[((1 : GoInt))] != _expectedRST) {
                                return new FormatError("bad RST marker");
                            };
                            _expectedRST++;
                            if (_expectedRST == _rst7Marker + ((1 : GoUnTypedInt))) {
                                _expectedRST = _rst0Marker;
                            };
                            _d.value._bits = new T_bits().__copy__();
                            _dc = new GoArray<GoInt32>(...([].concat([for (i in 0 ... 4) 0]))).copy();
                            _d.value._eobRun = ((0 : GoUInt16));
                        };
                    });
                };
            });
        };
        return ((null : stdgo.Error));
    }
    public function _makeImg(_mxx:GoInt, _myy:GoInt):Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._nComp == ((1 : GoInt))) {
            var _m:Pointer<stdgo.image.Image.Gray> = stdgo.image.Image.newGray(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), ((8 : GoInt)) * _mxx, ((8 : GoInt)) * _myy).__copy__());
            _d.value._img1 = ((_m.value.subImage(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _d.value._width, _d.value._height).__copy__()).__underlying__().value : stdgo.image.Image.Gray));
            return;
        };
        var _h0:GoInt = _d.value._comp[((0 : GoInt))]._h;
        var _v0:GoInt = _d.value._comp[((0 : GoInt))]._v;
        var _hRatio:GoInt = _h0 / _d.value._comp[((1 : GoInt))]._h;
        var _vRatio:GoInt = _v0 / _d.value._comp[((1 : GoInt))]._v;
        var _subsampleRatio:stdgo.image.Image.YCbCrSubsampleRatio = new stdgo.image.Image.YCbCrSubsampleRatio();
        if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((17 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio444;
        } else if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((18 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio440;
        } else if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((33 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio422;
        } else if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((34 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio420;
        } else if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((65 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio411;
        } else if ((_hRatio << ((4 : GoUnTypedInt))) | _vRatio == ((66 : GoInt))) {
            _subsampleRatio = stdgo.image.Image.ycbCrSubsampleRatio410;
        } else {
            throw "unreachable";
        };
        var _m:Pointer<stdgo.image.Image.YCbCr> = stdgo.image.Image.newYCbCr(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), ((8 : GoInt)) * _h0 * _mxx, ((8 : GoInt)) * _v0 * _myy).__copy__(), _subsampleRatio);
        _d.value._img3 = ((_m.value.subImage(stdgo.image.Image.rect(((0 : GoInt)), ((0 : GoInt)), _d.value._width, _d.value._height).__copy__()).__underlying__().value : stdgo.image.Image.YCbCr));
        if (_d.value._nComp == ((4 : GoInt))) {
            var _h3:GoInt = _d.value._comp[((3 : GoInt))]._h, _v3:GoInt = _d.value._comp[((3 : GoInt))]._v;
            _d.value._blackPix = new Slice<GoUInt8>(...[for (i in 0 ... ((((8 : GoInt)) * _h3 * _mxx * ((8 : GoInt)) * _v3 * _myy : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _d.value._blackStride = ((8 : GoInt)) * _h3 * _mxx;
        };
    }
    public function _convertToRGB():{ var _0 : stdgo.image.Image.Image; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _cScale:GoInt = _d.value._comp[((0 : GoInt))]._h / _d.value._comp[((1 : GoInt))]._h;
        var _bounds:stdgo.image.Image.Rectangle = _d.value._img3.value.bounds().__copy__();
        var _img:Pointer<stdgo.image.Image.RGBA> = stdgo.image.Image.newRGBA(_bounds.__copy__());
        {
            var _y:GoInt = _bounds.min.y;
            Go.cfor(_y < _bounds.max.y, _y++, {
                var _po:GoInt = _img.value.pixOffset(_bounds.min.x, _y);
                var _yo:GoInt = _d.value._img3.value.yoffset(_bounds.min.x, _y);
                var _co:GoInt = _d.value._img3.value.coffset(_bounds.min.x, _y);
                {
                    var _i:GoInt = ((0 : GoInt)), _iMax:GoInt = _bounds.max.x - _bounds.min.x;
                    Go.cfor(_i < _iMax, _i++, {
                        _img.value.pix[_po + ((4 : GoInt)) * _i + ((0 : GoInt))] = _d.value._img3.value.y[_yo + _i];
                        _img.value.pix[_po + ((4 : GoInt)) * _i + ((1 : GoInt))] = _d.value._img3.value.cb[_co + _i / _cScale];
                        _img.value.pix[_po + ((4 : GoInt)) * _i + ((2 : GoInt))] = _d.value._img3.value.cr[_co + _i / _cScale];
                        _img.value.pix[_po + ((4 : GoInt)) * _i + ((3 : GoInt))] = ((255 : GoUInt8));
                    });
                };
            });
        };
        return { _0 : _img.value, _1 : ((null : stdgo.Error)) };
    }
    public function _isRGB():Bool {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._jfif) {
            return false;
        };
        if (_d.value._adobeTransformValid && _d.value._adobeTransform == _adobeTransformUnknown) {
            return true;
        };
        return _d.value._comp[((0 : GoInt))]._c == (("R".code : GoRune)) && _d.value._comp[((1 : GoInt))]._c == (("G".code : GoRune)) && _d.value._comp[((2 : GoInt))]._c == (("B".code : GoRune));
    }
    public function _applyBlack():{ var _0 : stdgo.image.Image.Image; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_d.value._adobeTransformValid) {
            return { _0 : ((null : stdgo.image.Image.Image)), _1 : new UnsupportedError("unknown color model: 4-component JPEG doesn\'t have Adobe APP14 metadata") };
        };
        if (_d.value._adobeTransform != _adobeTransformUnknown) {
            var _bounds:stdgo.image.Image.Rectangle = _d.value._img3.value.bounds().__copy__();
            var _img:Pointer<stdgo.image.Image.RGBA> = stdgo.image.Image.newRGBA(_bounds.__copy__());
            image.internal.imageutil.Imageutil.drawYCbCr(_img, _bounds.__copy__(), _d.value._img3, _bounds.min.__copy__());
            {
                var _iBase:GoInt = ((0 : GoInt)), _y:GoInt = _bounds.min.y;
                Go.cfor(_y < _bounds.max.y, {
                    final __tmp__0 = _iBase + _img.value.stride;
                    final __tmp__1 = _y + ((1 : GoInt));
                    _iBase = __tmp__0;
                    _y = __tmp__1;
                }, {
                    {
                        var _i:GoInt = _iBase + ((3 : GoInt)), _x:GoInt = _bounds.min.x;
                        Go.cfor(_x < _bounds.max.x, {
                            final __tmp__0 = _i + ((4 : GoInt));
                            final __tmp__1 = _x + ((1 : GoInt));
                            _i = __tmp__0;
                            _x = __tmp__1;
                        }, {
                            _img.value.pix[_i] = ((255 : GoUInt8)) - _d.value._blackPix[(_y - _bounds.min.y) * _d.value._blackStride + (_x - _bounds.min.x)];
                        });
                    };
                });
            };
            return { _0 : Go.pointer((({ pix : _img.value.pix, stride : _img.value.stride, rect : _img.value.rect.__copy__() } : stdgo.image.Image.CMYK))).value, _1 : ((null : stdgo.Error)) };
        };
        var _bounds:stdgo.image.Image.Rectangle = _d.value._img3.value.bounds().__copy__();
        var _img:Pointer<stdgo.image.Image.CMYK> = stdgo.image.Image.newCMYK(_bounds.__copy__());
        var _translations:GoArray<T__struct_39> = new GoArray<T__struct_39>(new T__struct_39(_d.value._img3.value.y, _d.value._img3.value.ystride).__copy__(), new T__struct_39(_d.value._img3.value.cb, _d.value._img3.value.cstride).__copy__(), new T__struct_39(_d.value._img3.value.cr, _d.value._img3.value.cstride).__copy__(), new T__struct_39(_d.value._blackPix, _d.value._blackStride).__copy__()).copy();
        {
            var _t;
            var _translation;
            for (_obj in _translations.keyValueIterator()) {
                _t = _obj.key;
                _translation = _obj.value;
                var _subsample:Bool = _d.value._comp[_t]._h != _d.value._comp[((0 : GoInt))]._h || _d.value._comp[_t]._v != _d.value._comp[((0 : GoInt))]._v;
                {
                    var _iBase:GoInt = ((0 : GoInt)), _y:GoInt = _bounds.min.y;
                    Go.cfor(_y < _bounds.max.y, {
                        final __tmp__0 = _iBase + _img.value.stride;
                        final __tmp__1 = _y + ((1 : GoInt));
                        _iBase = __tmp__0;
                        _y = __tmp__1;
                    }, {
                        var _sy:GoInt = _y - _bounds.min.y;
                        if (_subsample) {
                            _sy = _sy / (((2 : GoInt)));
                        };
                        {
                            var _i:GoInt = _iBase + _t, _x:GoInt = _bounds.min.x;
                            Go.cfor(_x < _bounds.max.x, {
                                final __tmp__0 = _i + ((4 : GoInt));
                                final __tmp__1 = _x + ((1 : GoInt));
                                _i = __tmp__0;
                                _x = __tmp__1;
                            }, {
                                var _sx:GoInt = _x - _bounds.min.x;
                                if (_subsample) {
                                    _sx = _sx / (((2 : GoInt)));
                                };
                                _img.value.pix[_i] = ((255 : GoUInt8)) - _translation._src[_sy * _translation._stride + _sx];
                            });
                        };
                    });
                };
            };
        };
        return { _0 : _img.value, _1 : ((null : stdgo.Error)) };
    }
    public function _decode(_r:stdgo.io.Io.Reader, _configOnly:Bool):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._r = _r;
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
            if (_err != null) {
                return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
            };
        };
        if (_d.value._tmp[((0 : GoInt))] != ((255 : GoUInt8)) || _d.value._tmp[((1 : GoInt))] != _soiMarker) {
            return { _0 : ((null : stdgo.image.Image.Image)), _1 : new FormatError("missing SOI marker") };
        };
        while (true) {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
            if (_err != null) {
                return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
            };
            while (_d.value._tmp[((0 : GoInt))] != ((255 : GoUInt8))) {
                _d.value._tmp[((0 : GoInt))] = _d.value._tmp[((1 : GoInt))];
                {
                    var __tmp__ = _d.value._readByte();
                    _d.value._tmp[((1 : GoInt))] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
                };
            };
            var _marker:GoUInt8 = _d.value._tmp[((1 : GoInt))];
            if (_marker == ((0 : GoUInt8))) {
                continue;
            };
            while (_marker == ((255 : GoUInt8))) {
                {
                    var __tmp__ = _d.value._readByte();
                    _marker = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
                };
            };
            if (_marker == _eoiMarker) {
                break;
            };
            if (_rst0Marker <= _marker && _marker <= _rst7Marker) {
                continue;
            };
            {
                _err = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
                if (_err != null) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
                };
            };
            var _n:GoInt = (((_d.value._tmp[((0 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) + ((_d.value._tmp[((1 : GoInt))] : GoInt)) - ((2 : GoInt));
            if (_n < ((0 : GoInt))) {
                return { _0 : ((null : stdgo.image.Image.Image)), _1 : new FormatError("short segment length") };
            };
            if (_marker == _sof0Marker || _marker == _sof1Marker || _marker == _sof2Marker) {
                _d.value._baseline = _marker == _sof0Marker;
                _d.value._progressive = _marker == _sof2Marker;
                _err = _d.value._processSOF(_n);
                if (_configOnly && _d.value._jfif) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
                };
            } else if (_marker == _dhtMarker) {
                if (_configOnly) {
                    _err = _d.value._ignore(_n);
                } else {
                    _err = _d.value._processDHT(_n);
                };
            } else if (_marker == _dqtMarker) {
                if (_configOnly) {
                    _err = _d.value._ignore(_n);
                } else {
                    _err = _d.value._processDQT(_n);
                };
            } else if (_marker == _sosMarker) {
                if (_configOnly) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : ((null : stdgo.Error)) };
                };
                _err = _d.value._processSOS(_n);
            } else if (_marker == _driMarker) {
                if (_configOnly) {
                    _err = _d.value._ignore(_n);
                } else {
                    _err = _d.value._processDRI(_n);
                };
            } else if (_marker == _app0Marker) {
                _err = _d.value._processApp0Marker(_n);
            } else if (_marker == _app14Marker) {
                _err = _d.value._processApp14Marker(_n);
            } else {
                if (_app0Marker <= _marker && _marker <= _app15Marker || _marker == _comMarker) {
                    _err = _d.value._ignore(_n);
                } else if (_marker < ((192 : GoUInt8))) {
                    _err = new FormatError("unknown marker");
                } else {
                    _err = new UnsupportedError("unknown marker");
                };
            };
            if (_err != null) {
                return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
            };
        };
        if (_d.value._progressive) {
            {
                var _err:stdgo.Error = _d.value._reconstructProgressiveImage();
                if (_err != null) {
                    return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
                };
            };
        };
        if (_d.value._img1 != null && !_d.value._img1.isNil()) {
            return { _0 : _d.value._img1.value, _1 : ((null : stdgo.Error)) };
        };
        if (_d.value._img3 != null && !_d.value._img3.isNil()) {
            if (_d.value._blackPix != null && !_d.value._blackPix.isNil()) {
                return _d.value._applyBlack();
            } else if (_d.value._isRGB()) {
                return _d.value._convertToRGB();
            };
            return { _0 : _d.value._img3.value, _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((null : stdgo.image.Image.Image)), _1 : new FormatError("missing SOS marker") };
    }
    public function _processApp14Marker(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((12 : GoInt))) {
            return _d.value._ignore(_n);
        };
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((12 : GoInt))));
            if (_err != null) {
                return _err;
            };
        };
        _n = _n - (((12 : GoInt)));
        if (_d.value._tmp[((0 : GoInt))] == (("A".code : GoRune)) && _d.value._tmp[((1 : GoInt))] == (("d".code : GoRune)) && _d.value._tmp[((2 : GoInt))] == (("o".code : GoRune)) && _d.value._tmp[((3 : GoInt))] == (("b".code : GoRune)) && _d.value._tmp[((4 : GoInt))] == (("e".code : GoRune))) {
            _d.value._adobeTransformValid = true;
            _d.value._adobeTransform = _d.value._tmp[((11 : GoInt))];
        };
        if (_n > ((0 : GoInt))) {
            return _d.value._ignore(_n);
        };
        return ((null : stdgo.Error));
    }
    public function _processApp0Marker(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n < ((5 : GoInt))) {
            return _d.value._ignore(_n);
        };
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((5 : GoInt))));
            if (_err != null) {
                return _err;
            };
        };
        _n = _n - (((5 : GoInt)));
        _d.value._jfif = _d.value._tmp[((0 : GoInt))] == (("J".code : GoRune)) && _d.value._tmp[((1 : GoInt))] == (("F".code : GoRune)) && _d.value._tmp[((2 : GoInt))] == (("I".code : GoRune)) && _d.value._tmp[((3 : GoInt))] == (("F".code : GoRune)) && _d.value._tmp[((4 : GoInt))] == (("\u{0000}".code : GoRune));
        if (_n > ((0 : GoInt))) {
            return _d.value._ignore(_n);
        };
        return ((null : stdgo.Error));
    }
    public function _processDRI(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n != ((2 : GoInt))) {
            return new FormatError("DRI has wrong length");
        };
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoInt))));
            if (_err != null) {
                return _err;
            };
        };
        _d.value._ri = (((_d.value._tmp[((0 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) + ((_d.value._tmp[((1 : GoInt))] : GoInt));
        return ((null : stdgo.Error));
    }
    public function _processDQT(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            @:label("loop") while (_n > ((0 : GoInt))) {
                _n--;
                var __tmp__ = _d.value._readByte(), _x:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                var _tq:GoUInt8 = _x & ((15 : GoUInt8));
                if (_tq > _maxTq) {
                    return new FormatError("bad Tq value");
                };
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if ((_x >> ((4 : GoUnTypedInt))) == ((0 : GoUInt8))) {
                            if (_n < _blockSize) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _n = _n - (_blockSize);
                            {
                                var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, _blockSize));
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            {
                                var _i;
                                for (_obj in _d.value._quant[_tq].__t__.keyValueIterator()) {
                                    _i = _obj.key;
                                    _d.value._quant[_tq].__t__[_i] = ((_d.value._tmp[_i] : GoInt32));
                                };
                            };
                            break;
                        } else if ((_x >> ((4 : GoUnTypedInt))) == ((1 : GoUInt8))) {
                            if (_n < ((2 : GoUnTypedInt)) * _blockSize) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _n = _n - (((2 : GoUnTypedInt)) * _blockSize);
                            {
                                var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((2 : GoUnTypedInt)) * _blockSize));
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            {
                                var _i;
                                for (_obj in _d.value._quant[_tq].__t__.keyValueIterator()) {
                                    _i = _obj.key;
                                    _d.value._quant[_tq].__t__[_i] = (((_d.value._tmp[((2 : GoInt)) * _i] : GoInt32)) << ((8 : GoUnTypedInt))) | ((_d.value._tmp[((2 : GoInt)) * _i + ((1 : GoInt))] : GoInt32));
                                };
                            };
                            break;
                        };
                        break;
                    };
                };
            };
            if (_n != ((0 : GoInt))) {
                return new FormatError("DQT has wrong length");
            };
            return ((null : stdgo.Error));
        });
    }
    public function _processSOF(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._nComp != ((0 : GoInt))) {
            return new FormatError("multiple SOF markers");
        };
        if (_n == ((6 : GoUnTypedInt)) + ((3 : GoUnTypedInt)) * ((1 : GoUnTypedInt))) {
            _d.value._nComp = ((1 : GoInt));
        } else if (_n == ((6 : GoUnTypedInt)) + ((3 : GoUnTypedInt)) * ((3 : GoUnTypedInt))) {
            _d.value._nComp = ((3 : GoInt));
        } else if (_n == ((6 : GoUnTypedInt)) + ((3 : GoUnTypedInt)) * ((4 : GoUnTypedInt))) {
            _d.value._nComp = ((4 : GoInt));
        } else {
            return new UnsupportedError("number of components");
        };
        {
            var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, _n));
            if (_err != null) {
                return _err;
            };
        };
        if (_d.value._tmp[((0 : GoInt))] != ((8 : GoUInt8))) {
            return new UnsupportedError("precision");
        };
        _d.value._height = (((_d.value._tmp[((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) + ((_d.value._tmp[((2 : GoInt))] : GoInt));
        _d.value._width = (((_d.value._tmp[((3 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt))) + ((_d.value._tmp[((4 : GoInt))] : GoInt));
        if (((_d.value._tmp[((5 : GoInt))] : GoInt)) != _d.value._nComp) {
            return new FormatError("SOF has wrong length");
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _d.value._nComp, _i++, {
                _d.value._comp[_i]._c = _d.value._tmp[((6 : GoInt)) + ((3 : GoInt)) * _i];
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < _i, _j++, {
                        if (_d.value._comp[_i]._c == _d.value._comp[_j]._c) {
                            return new FormatError("repeated component identifier");
                        };
                    });
                };
                _d.value._comp[_i]._tq = _d.value._tmp[((8 : GoInt)) + ((3 : GoInt)) * _i];
                if (_d.value._comp[_i]._tq > _maxTq) {
                    return new FormatError("bad Tq value");
                };
                var _hv:GoUInt8 = _d.value._tmp[((7 : GoInt)) + ((3 : GoInt)) * _i];
                var _h:GoInt = (((_hv >> ((4 : GoUnTypedInt))) : GoInt)), _v:GoInt = (((_hv & ((15 : GoUInt8))) : GoInt));
                if (_h < ((1 : GoInt)) || ((4 : GoInt)) < _h || _v < ((1 : GoInt)) || ((4 : GoInt)) < _v) {
                    return new FormatError("luma/chroma subsampling ratio");
                };
                if (_h == ((3 : GoInt)) || _v == ((3 : GoInt))) {
                    return _errUnsupportedSubsamplingRatio;
                };
                if (_d.value._nComp == ((1 : GoInt))) {
                    {
                        final __tmp__0 = ((1 : GoInt));
                        final __tmp__1 = ((1 : GoInt));
                        _h = __tmp__0;
                        _v = __tmp__1;
                    };
                } else if (_d.value._nComp == ((3 : GoInt))) {
                    if (_i == ((0 : GoInt))) {
                        if (_v == ((4 : GoInt))) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    } else if (_i == ((1 : GoInt))) {
                        if (_d.value._comp[((0 : GoInt))]._h % _h != ((0 : GoInt)) || _d.value._comp[((0 : GoInt))]._v % _v != ((0 : GoInt))) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    } else if (_i == ((2 : GoInt))) {
                        if (_d.value._comp[((1 : GoInt))]._h != _h || _d.value._comp[((1 : GoInt))]._v != _v) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    };
                } else if (_d.value._nComp == ((4 : GoInt))) {
                    if (_i == ((0 : GoInt))) {
                        if (_hv != ((17 : GoUInt8)) && _hv != ((34 : GoUInt8))) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    } else if (_i == ((1 : GoInt)) || _i == ((2 : GoInt))) {
                        if (_hv != ((17 : GoUInt8))) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    } else if (_i == ((3 : GoInt))) {
                        if (_d.value._comp[((0 : GoInt))]._h != _h || _d.value._comp[((0 : GoInt))]._v != _v) {
                            return _errUnsupportedSubsamplingRatio;
                        };
                    };
                };
                _d.value._comp[_i]._h = _h;
                _d.value._comp[_i]._v = _v;
            });
        };
        return ((null : stdgo.Error));
    }
    public function _ignore(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bytes._nUnreadable != ((0 : GoInt))) {
            if (_d.value._bits._n >= ((8 : GoInt32))) {
                _d.value._unreadByteStuffedByte();
            };
            _d.value._bytes._nUnreadable = ((0 : GoInt));
        };
        while (true) {
            var _m:GoInt = _d.value._bytes._j - _d.value._bytes._i;
            if (_m > _n) {
                _m = _n;
            };
            _d.value._bytes._i = _d.value._bytes._i + (_m);
            _n = _n - (_m);
            if (_n == ((0 : GoInt))) {
                break;
            };
            {
                var _err:stdgo.Error = _d.value._fill();
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readFull(_p:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bytes._nUnreadable != ((0 : GoInt))) {
            if (_d.value._bits._n >= ((8 : GoInt32))) {
                _d.value._unreadByteStuffedByte();
            };
            _d.value._bytes._nUnreadable = ((0 : GoInt));
        };
        while (true) {
            var _n:GoInt = Go.copy(_p, _d.value._bytes._buf.__slice__(_d.value._bytes._i, _d.value._bytes._j));
            _p = _p.__slice__(_n);
            _d.value._bytes._i = _d.value._bytes._i + (_n);
            if (_p.length == ((0 : GoInt))) {
                break;
            };
            {
                var _err:stdgo.Error = _d.value._fill();
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _readByteStuffedByte():{ var _0 : GoByte; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoByte = ((0 : GoUInt8)), _err:Error = ((null : stdgo.Error));
        if (_d.value._bytes._i + ((2 : GoInt)) <= _d.value._bytes._j) {
            _x = _d.value._bytes._buf[_d.value._bytes._i];
            _d.value._bytes._i++;
            _d.value._bytes._nUnreadable = ((1 : GoInt));
            if (_x != ((255 : GoUInt8))) {
                return { _0 : _x, _1 : _err };
            };
            if (_d.value._bytes._buf[_d.value._bytes._i] != ((0 : GoUInt8))) {
                return { _0 : ((0 : GoUInt8)), _1 : _errMissingFF00 };
            };
            _d.value._bytes._i++;
            _d.value._bytes._nUnreadable = ((2 : GoInt));
            return { _0 : ((255 : GoUInt8)), _1 : ((null : stdgo.Error)) };
        };
        _d.value._bytes._nUnreadable = ((0 : GoInt));
        {
            var __tmp__ = _d.value._readByte();
            _x = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : ((0 : GoUInt8)), _1 : _err };
        };
        _d.value._bytes._nUnreadable = ((1 : GoInt));
        if (_x != ((255 : GoUInt8))) {
            return { _0 : _x, _1 : ((null : stdgo.Error)) };
        };
        {
            var __tmp__ = _d.value._readByte();
            _x = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : ((0 : GoUInt8)), _1 : _err };
        };
        _d.value._bytes._nUnreadable = ((2 : GoInt));
        if (_x != ((0 : GoUInt8))) {
            return { _0 : ((0 : GoUInt8)), _1 : _errMissingFF00 };
        };
        return { _0 : ((255 : GoUInt8)), _1 : ((null : stdgo.Error)) };
    }
    public function _readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoByte = ((0 : GoUInt8)), _err:Error = ((null : stdgo.Error));
        while (_d.value._bytes._i == _d.value._bytes._j) {
            {
                _err = _d.value._fill();
                if (_err != null) {
                    return { _0 : ((0 : GoUInt8)), _1 : _err };
                };
            };
        };
        _x = _d.value._bytes._buf[_d.value._bytes._i];
        _d.value._bytes._i++;
        _d.value._bytes._nUnreadable = ((0 : GoInt));
        return { _0 : _x, _1 : ((null : stdgo.Error)) };
    }
    public function _unreadByteStuffedByte():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._bytes._i = _d.value._bytes._i - (_d.value._bytes._nUnreadable);
        _d.value._bytes._nUnreadable = ((0 : GoInt));
        if (_d.value._bits._n >= ((8 : GoInt32))) {
            _d.value._bits._a = (_d.value._bits._a >> (((8 : GoUnTypedInt))));
            _d.value._bits._n = _d.value._bits._n - (((8 : GoInt32)));
            _d.value._bits._m = (_d.value._bits._m >> (((8 : GoUnTypedInt))));
        };
    }
    public function _fill():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bytes._i != _d.value._bytes._j) {
            throw "jpeg: fill called when unread bytes exist";
        };
        if (_d.value._bytes._j > ((2 : GoInt))) {
            _d.value._bytes._buf[((0 : GoInt))] = _d.value._bytes._buf[_d.value._bytes._j - ((2 : GoInt))];
            _d.value._bytes._buf[((1 : GoInt))] = _d.value._bytes._buf[_d.value._bytes._j - ((1 : GoInt))];
            {
                final __tmp__0 = ((2 : GoInt));
                final __tmp__1 = ((2 : GoInt));
                _d.value._bytes._i = __tmp__0;
                _d.value._bytes._j = __tmp__1;
            };
        };
        var __tmp__ = _d.value._r.read(_d.value._bytes._buf.__slice__(_d.value._bytes._j)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _d.value._bytes._j = _d.value._bytes._j + (_n);
        if (_n > ((0 : GoInt))) {
            _err = ((null : stdgo.Error));
        };
        return _err;
    }
    public function _decodeBits(_n:GoInt32):{ var _0 : GoUInt32; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bits._n < _n) {
            {
                var _err:stdgo.Error = _d.value._ensureNBits(_n);
                if (_err != null) {
                    return { _0 : ((0 : GoUInt32)), _1 : _err };
                };
            };
        };
        var _ret:GoUInt32 = (_d.value._bits._a >> (((_d.value._bits._n - _n) : GoUInt32)));
        _ret = _ret & (((((1 : GoUInt32)) << ((_n : GoUInt32)))) - ((1 : GoUInt32)));
        _d.value._bits._n = _d.value._bits._n - (_n);
        _d.value._bits._m = (_d.value._bits._m >> (((_n : GoUInt32))));
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function _decodeBit():{ var _0 : Bool; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bits._n == ((0 : GoInt32))) {
            {
                var _err:stdgo.Error = _d.value._ensureNBits(((1 : GoInt32)));
                if (_err != null) {
                    return { _0 : false, _1 : _err };
                };
            };
        };
        var _ret:Bool = _d.value._bits._a & _d.value._bits._m != ((0 : GoUInt32));
        _d.value._bits._n--;
        _d.value._bits._m = (_d.value._bits._m >> (((1 : GoUnTypedInt))));
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function _decodeHuffman(_h:Pointer<T_huffman>):{ var _0 : GoUInt8; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            if (_h.value._nCodes == ((0 : GoInt32))) {
                return { _0 : ((0 : GoUInt8)), _1 : new FormatError("uninitialized Huffman table") };
            };
            if (_d.value._bits._n < ((8 : GoInt32))) {
                {
                    var _err:stdgo.Error = _d.value._ensureNBits(((8 : GoInt32)));
                    if (_err != null) {
                        if (Go.toInterface(_err) != Go.toInterface(_errMissingFF00.__t__) && Go.toInterface(_err) != Go.toInterface(_errShortHuffmanData.__t__)) {
                            return { _0 : ((0 : GoUInt8)), _1 : _err };
                        };
                        if (_d.value._bytes._nUnreadable != ((0 : GoInt))) {
                            _d.value._unreadByteStuffedByte();
                        };
                        @:goto "slowPath";
                    };
                };
            };
            {
                var _v:GoUInt16 = _h.value._lut[((_d.value._bits._a >> (((_d.value._bits._n - _lutSize) : GoUInt32)))) & ((255 : GoUInt32))];
                if (_v != ((0 : GoUInt16))) {
                    var _n:GoUInt16 = (_v & ((255 : GoUInt16))) - ((1 : GoUInt16));
                    _d.value._bits._n = _d.value._bits._n - (((_n : GoInt32)));
                    _d.value._bits._m = (_d.value._bits._m >> (_n));
                    return { _0 : (((_v >> ((8 : GoUnTypedInt))) : GoUInt8)), _1 : ((null : stdgo.Error)) };
                };
            };
            @:label("slowPath") {
                var _i:GoInt = ((0 : GoInt)), _code:GoInt32 = ((((0 : GoInt32)) : GoInt32));
                Go.cfor(_i < _maxCodeLength, _i++, {
                    if (_d.value._bits._n == ((0 : GoInt32))) {
                        {
                            var _err:stdgo.Error = _d.value._ensureNBits(((1 : GoInt32)));
                            if (_err != null) {
                                return { _0 : ((0 : GoUInt8)), _1 : _err };
                            };
                        };
                    };
                    if (_d.value._bits._a & _d.value._bits._m != ((0 : GoUInt32))) {
                        _code = _code | (((1 : GoInt32)));
                    };
                    _d.value._bits._n--;
                    _d.value._bits._m = (_d.value._bits._m >> (((1 : GoUnTypedInt))));
                    if (_code <= _h.value._maxCodes[_i]) {
                        return { _0 : _h.value._vals[_h.value._valsIndices[_i] + _code - _h.value._minCodes[_i]], _1 : ((null : stdgo.Error)) };
                    };
                    _code = (_code << (((1 : GoUnTypedInt))));
                });
            };
            return { _0 : ((0 : GoUInt8)), _1 : new FormatError("bad Huffman code") };
        });
    }
    public function _processDHT(_n:GoInt):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_n > ((0 : GoInt))) {
            if (_n < ((17 : GoInt))) {
                return new FormatError("DHT has wrong length");
            };
            {
                var _err:stdgo.Error = _d.value._readFull(_d.value._tmp.__slice__(0, ((17 : GoInt))));
                if (_err != null) {
                    return _err;
                };
            };
            var _tc:GoUInt8 = (_d.value._tmp[((0 : GoInt))] >> ((4 : GoUnTypedInt)));
            if (_tc > _maxTc) {
                return new FormatError("bad Tc value");
            };
            var _th:GoUInt8 = _d.value._tmp[((0 : GoInt))] & ((15 : GoUInt8));
            if (_th > _maxTh || (_d.value._baseline && _th > ((1 : GoUInt8)))) {
                return new FormatError("bad Th value");
            };
            var _h:Pointer<T_huffman> = Go.pointer(_d.value._huff[_tc][_th]);
            _h.value._nCodes = ((0 : GoInt32));
            var _nCodes:GoArray<GoInt32> = new GoArray<GoInt32>(...[for (i in 0 ... 16) ((0 : GoInt32))]);
            {
                var _i;
                for (_obj in _nCodes.keyValueIterator()) {
                    _i = _obj.key;
                    _nCodes[_i] = ((_d.value._tmp[_i + ((1 : GoInt))] : GoInt32));
                    _h.value._nCodes = _h.value._nCodes + (_nCodes[_i]);
                };
            };
            if (_h.value._nCodes == ((0 : GoInt32))) {
                return new FormatError("Huffman table has zero length");
            };
            if (_h.value._nCodes > _maxNCodes) {
                return new FormatError("Huffman table has excessive length");
            };
            _n = _n - (((_h.value._nCodes : GoInt)) + ((17 : GoInt)));
            if (_n < ((0 : GoInt))) {
                return new FormatError("DHT has wrong length");
            };
            {
                var _err:stdgo.Error = _d.value._readFull(_h.value._vals.__slice__(0, _h.value._nCodes));
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _i;
                for (_obj in _h.value._lut.keyValueIterator()) {
                    _i = _obj.key;
                    _h.value._lut[_i] = ((0 : GoUInt16));
                };
            };
            var _x:GoUInt32 = ((0 : GoUInt32)), _code:GoUInt32 = ((0 : GoUInt32));
            {
                var _i:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
                Go.cfor(_i < _lutSize, _i++, {
                    _code = (_code << (((1 : GoUnTypedInt))));
                    {
                        var _j:GoInt32 = ((((0 : GoInt32)) : GoInt32));
                        Go.cfor(_j < _nCodes[_i], _j++, {
                            var _base:GoUInt8 = (((_code << (((7 : GoUInt32)) - _i)) : GoUInt8));
                            var _lutValue:GoUInt16 = (((_h.value._vals[_x] : GoUInt16)) << ((8 : GoUnTypedInt))) | (((((2 : GoUInt32)) + _i) : GoUInt16));
                            {
                                var _k:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                                Go.cfor(_k < (((1 : GoUInt8)) << (((7 : GoUInt32)) - _i)), _k++, {
                                    _h.value._lut[_base | _k] = _lutValue;
                                });
                            };
                            _code++;
                            _x++;
                        });
                    };
                });
            };
            var _c:GoInt32 = ((0 : GoInt32)), _index:GoInt32 = ((0 : GoInt32));
            {
                var _i;
                var _n;
                for (_obj in _nCodes.keyValueIterator()) {
                    _i = _obj.key;
                    _n = _obj.value;
                    if (_n == ((0 : GoInt32))) {
                        _h.value._minCodes[_i] = -((1 : GoUnTypedInt));
                        _h.value._maxCodes[_i] = -((1 : GoUnTypedInt));
                        _h.value._valsIndices[_i] = -((1 : GoUnTypedInt));
                    } else {
                        _h.value._minCodes[_i] = _c;
                        _h.value._maxCodes[_i] = _c + _n - ((1 : GoInt32));
                        _h.value._valsIndices[_i] = _index;
                        _c = _c + (_n);
                        _index = _index + (_n);
                    };
                    _c = (_c << (((1 : GoUnTypedInt))));
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _receiveExtend(_t:GoUInt8):{ var _0 : GoInt32; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._bits._n < ((_t : GoInt32))) {
            {
                var _err:stdgo.Error = _d.value._ensureNBits(((_t : GoInt32)));
                if (_err != null) {
                    return { _0 : ((0 : GoInt32)), _1 : _err };
                };
            };
        };
        _d.value._bits._n = _d.value._bits._n - (((_t : GoInt32)));
        _d.value._bits._m = (_d.value._bits._m >> (_t));
        var _s:GoInt32 = (((((1 : GoInt32)) : GoInt32)) << _t);
        var _x:GoInt32 = (((_d.value._bits._a >> ((_d.value._bits._n : GoUInt8))) : GoInt32)) & (_s - ((1 : GoInt32)));
        if (_x < (_s >> ((1 : GoUnTypedInt)))) {
            _x = _x + ((((-((1 : GoUnTypedInt))) << _t)) + ((1 : GoInt32)));
        };
        return { _0 : _x, _1 : ((null : stdgo.Error)) };
    }
    public function _ensureNBits(_n:GoInt32):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            var __tmp__ = _d.value._readByteStuffedByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    return _errShortHuffmanData;
                };
                return _err;
            };
            _d.value._bits._a = (_d.value._bits._a << ((8 : GoUnTypedInt))) | ((_c : GoUInt32));
            _d.value._bits._n = _d.value._bits._n + (((8 : GoInt32)));
            if (_d.value._bits._m == ((0 : GoUInt32))) {
                _d.value._bits._m = (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt)));
            } else {
                _d.value._bits._m = (_d.value._bits._m << (((8 : GoUnTypedInt))));
            };
            if (_d.value._bits._n >= _n) {
                break;
            };
        };
        return ((null : stdgo.Error));
    }
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _bits : T_bits = new T_bits();
    public var _bytes : T__struct_38 = new T__struct_38();
    public var _width : GoInt = ((0 : GoInt));
    public var _height : GoInt = ((0 : GoInt));
    public var _img1 : Pointer<stdgo.image.Image.Gray> = new Pointer<stdgo.image.Image.Gray>().nil();
    public var _img3 : Pointer<stdgo.image.Image.YCbCr> = new Pointer<stdgo.image.Image.YCbCr>().nil();
    public var _blackPix : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _blackStride : GoInt = ((0 : GoInt));
    public var _ri : GoInt = ((0 : GoInt));
    public var _nComp : GoInt = ((0 : GoInt));
    public var _baseline : Bool = false;
    public var _progressive : Bool = false;
    public var _jfif : Bool = false;
    public var _adobeTransformValid : Bool = false;
    public var _adobeTransform : GoUInt8 = ((0 : GoUInt8));
    public var _eobRun : GoUInt16 = ((0 : GoUInt16));
    public var _comp : GoArray<T_component> = new GoArray<T_component>(...[for (i in 0 ... 4) new T_component()]);
    public var _progCoeffs : GoArray<Slice<T_block>> = new GoArray<Slice<T_block>>(...[for (i in 0 ... 4) new Slice<T_block>().nil()]);
    public var _huff : GoArray<GoArray<T_huffman>> = new GoArray<GoArray<T_huffman>>(...[for (i in 0 ... 2) new GoArray<T_huffman>(...[for (i in 0 ... 4) new T_huffman()])]);
    public var _quant : GoArray<T_block> = new GoArray<T_block>(...[for (i in 0 ... 4) new T_block()]);
    public var _tmp : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]);
    public function new(?_r:stdgo.io.Io.Reader, ?_bits:T_bits, ?_bytes:T__struct_38, ?_width:GoInt, ?_height:GoInt, ?_img1:Pointer<stdgo.image.Image.Gray>, ?_img3:Pointer<stdgo.image.Image.YCbCr>, ?_blackPix:Slice<GoUInt8>, ?_blackStride:GoInt, ?_ri:GoInt, ?_nComp:GoInt, ?_baseline:Bool, ?_progressive:Bool, ?_jfif:Bool, ?_adobeTransformValid:Bool, ?_adobeTransform:GoUInt8, ?_eobRun:GoUInt16, ?_comp:GoArray<T_component>, ?_progCoeffs:GoArray<Slice<T_block>>, ?_huff:GoArray<GoArray<T_huffman>>, ?_quant:GoArray<T_block>, ?_tmp:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_bits) + " " + Go.string(_bytes) + " " + Go.string(_width) + " " + Go.string(_height) + " " + Go.string(_img1) + " " + Go.string(_img3) + " " + Go.string(_blackPix) + " " + Go.string(_blackStride) + " " + Go.string(_ri) + " " + Go.string(_nComp) + " " + Go.string(_baseline) + " " + Go.string(_progressive) + " " + Go.string(_jfif) + " " + Go.string(_adobeTransformValid) + " " + Go.string(_adobeTransform) + " " + Go.string(_eobRun) + " " + Go.string(_comp) + " " + Go.string(_progCoeffs) + " " + Go.string(_huff) + " " + Go.string(_quant) + " " + Go.string(_tmp) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(
_r,
_bits,
_bytes,
_width,
_height,
_img1,
_img3,
_blackPix,
_blackStride,
_ri,
_nComp,
_baseline,
_progressive,
_jfif,
_adobeTransformValid,
_adobeTransform,
_eobRun,
_comp,
_progCoeffs,
_huff,
_quant,
_tmp);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._bits = __tmp__._bits;
        this._bytes = __tmp__._bytes;
        this._width = __tmp__._width;
        this._height = __tmp__._height;
        this._img1 = __tmp__._img1;
        this._img3 = __tmp__._img3;
        this._blackPix = __tmp__._blackPix;
        this._blackStride = __tmp__._blackStride;
        this._ri = __tmp__._ri;
        this._nComp = __tmp__._nComp;
        this._baseline = __tmp__._baseline;
        this._progressive = __tmp__._progressive;
        this._jfif = __tmp__._jfif;
        this._adobeTransformValid = __tmp__._adobeTransformValid;
        this._adobeTransform = __tmp__._adobeTransform;
        this._eobRun = __tmp__._eobRun;
        this._comp = __tmp__._comp;
        this._progCoeffs = __tmp__._progCoeffs;
        this._huff = __tmp__._huff;
        this._quant = __tmp__._quant;
        this._tmp = __tmp__._tmp;
        return this;
    }
}
@:named class T_quantIndex {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_quantIndex(__t__);
}
@:named class T_huffIndex {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_huffIndex(__t__);
}
@:structInit class T_huffmanSpec {
    public var _count : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _value : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_count:GoArray<GoUInt8>, ?_value:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_count) + " " + Go.string(_value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSpec(_count, _value);
    }
    public function __set__(__tmp__) {
        this._count = __tmp__._count;
        this._value = __tmp__._value;
        return this;
    }
}
@:named class T_huffmanLUT {
    public function _init(_s:T_huffmanSpec):Void {
        var _h = new Pointer(() -> new T_huffmanLUT(this.__t__), __tmp__ -> new T_huffmanLUT(this.__t__ = __tmp__.__t__));
        var _maxValue:GoInt = ((0 : GoInt));
        for (_v in _s._value) {
            if (((_v : GoInt)) > _maxValue) {
                _maxValue = ((_v : GoInt));
            };
        };
        _h.value = new T_huffmanLUT(new Slice<GoUInt32>(...[for (i in 0 ... ((_maxValue + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]));
        var _code:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32)), _k:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s._count.length, _i++, {
                var _nBits:GoUInt32 = ((((_i + ((1 : GoInt))) : GoUInt32)) << ((24 : GoUnTypedInt)));
                {
                    var _j:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                    Go.cfor(_j < _s._count[_i], _j++, {
                        (_h.value).__t__[_s._value[_k]] = _nBits | _code;
                        _code++;
                        _k++;
                    });
                };
                _code = (_code << (((1 : GoUnTypedInt))));
            });
        };
    }
    public var __t__ : Slice<GoUInt32>;
    public function new(?t:Slice<GoUInt32>) {
        __t__ = t == null ? new Slice<GoUInt32>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_huffmanLUT(__t__);
    public function __append__(args:haxe.Rest<GoUInt32>) return new T_huffmanLUT(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_huffmanLUT(this.__t__.__slice__(low, high));
}
@:structInit class T_encoder {
    public function _writeSOS(_m:stdgo.image.Image.Image):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.assertable(((_m : Pointer<stdgo.image.Image.Gray>)))) {
            _e.value._write(_sosHeaderY);
        } else {
            _e.value._write(_sosHeaderYCbCr);
        };
        var _b:T_block = new T_block(), _cb:GoArray<T_block> = new GoArray<T_block>(...[for (i in 0 ... 4) new T_block()]), _cr:GoArray<T_block> = new GoArray<T_block>(...[for (i in 0 ... 4) new T_block()]), _prevDCY:GoInt32 = ((0 : GoInt32)), _prevDCCb:GoInt32 = ((0 : GoInt32)), _prevDCCr:GoInt32 = ((0 : GoInt32));
        var _bounds:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
        if (Go.assertable(((_m : Pointer<stdgo.image.Image.Gray>)))) {
            var _m:Pointer<stdgo.image.Image.Gray> = _m == null ? null : _m.__underlying__() == null ? null : _m == null ? null : _m.__underlying__().value;
            {
                var _y:GoInt = _bounds.min.y;
                Go.cfor(_y < _bounds.max.y, _y = _y + (((8 : GoInt))), {
                    {
                        var _x:GoInt = _bounds.min.x;
                        Go.cfor(_x < _bounds.max.x, _x = _x + (((8 : GoInt))), {
                            var _p:stdgo.image.Image.Point = stdgo.image.Image.pt(_x, _y).__copy__();
                            _grayToY(_m, _p.__copy__(), Go.pointer(_b));
                            _prevDCY = _e.value._writeBlock(Go.pointer(_b), new T_quantIndex(((0 : GoInt))), _prevDCY);
                        });
                    };
                });
            };
        } else {
            var _m:stdgo.image.Image.Image = _m == null ? null : _m.__underlying__() == null ? null : _m == null ? null : _m.__underlying__().value;
            var __tmp__ = try {
                { value : ((_m.__underlying__().value : stdgo.image.Image.RGBA)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.image.Image.RGBA>().nil(), ok : false };
            }, _rgba = __tmp__.value, _ = __tmp__.ok;
            var __tmp__ = try {
                { value : ((_m.__underlying__().value : stdgo.image.Image.YCbCr)), ok : true };
            } catch(_) {
                { value : new Pointer<stdgo.image.Image.YCbCr>().nil(), ok : false };
            }, _ycbcr = __tmp__.value, _ = __tmp__.ok;
            {
                var _y:GoInt = _bounds.min.y;
                Go.cfor(_y < _bounds.max.y, _y = _y + (((16 : GoInt))), {
                    {
                        var _x:GoInt = _bounds.min.x;
                        Go.cfor(_x < _bounds.max.x, _x = _x + (((16 : GoInt))), {
                            {
                                var _i:GoInt = ((0 : GoInt));
                                Go.cfor(_i < ((4 : GoInt)), _i++, {
                                    var _xOff:GoInt = (_i & ((1 : GoInt))) * ((8 : GoInt));
                                    var _yOff:GoInt = (_i & ((2 : GoInt))) * ((4 : GoInt));
                                    var _p:stdgo.image.Image.Point = stdgo.image.Image.pt(_x + _xOff, _y + _yOff).__copy__();
                                    if (_rgba != null && !_rgba.isNil()) {
                                        _rgbaToYCbCr(_rgba, _p.__copy__(), Go.pointer(_b), Go.pointer(_cb[_i]), Go.pointer(_cr[_i]));
                                    } else if (_ycbcr != null && !_ycbcr.isNil()) {
                                        _yCbCrToYCbCr(_ycbcr, _p.__copy__(), Go.pointer(_b), Go.pointer(_cb[_i]), Go.pointer(_cr[_i]));
                                    } else {
                                        _toYCbCr(_m, _p.__copy__(), Go.pointer(_b), Go.pointer(_cb[_i]), Go.pointer(_cr[_i]));
                                    };
                                    _prevDCY = _e.value._writeBlock(Go.pointer(_b), new T_quantIndex(((0 : GoInt))), _prevDCY);
                                });
                            };
                            _scale(Go.pointer(_b), Go.pointer(_cb));
                            _prevDCCb = _e.value._writeBlock(Go.pointer(_b), new T_quantIndex(((1 : GoInt))), _prevDCCb);
                            _scale(Go.pointer(_b), Go.pointer(_cr));
                            _prevDCCr = _e.value._writeBlock(Go.pointer(_b), new T_quantIndex(((1 : GoInt))), _prevDCCr);
                        });
                    };
                });
            };
        };
        _e.value._emit(((127 : GoUInt32)), ((7 : GoUInt32)));
    }
    public function _writeBlock(_b:Pointer<T_block>, _q:T_quantIndex, _prevDC:GoInt32):GoInt32 {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _fdct(_b);
        var _dc:GoInt32 = _div(_b.value.__t__[((0 : GoInt))], ((8 : GoInt32)) * ((_e.value._quant[_q.__t__][((0 : GoInt))] : GoInt32)));
        _e.value._emitHuffRLE(new T_huffIndex(new T_quantIndex(new T_quantIndex(((2 : GoInt)) * _q.__t__).__t__ + ((0 : GoInt))).__t__), ((0 : GoInt32)), _dc - _prevDC);
        var _h:T_huffIndex = new T_huffIndex(new T_quantIndex(new T_quantIndex(((2 : GoInt)) * _q.__t__).__t__ + ((1 : GoInt))).__t__), _runLength:GoInt32 = ((((0 : GoInt32)) : GoInt32));
        {
            var _zig:GoInt = ((1 : GoInt));
            Go.cfor(_zig < _blockSize, _zig++, {
                var _ac:GoInt32 = _div(_b.value.__t__[_unzig[_zig]], ((8 : GoInt32)) * ((_e.value._quant[_q.__t__][_zig] : GoInt32)));
                if (_ac == ((0 : GoInt32))) {
                    _runLength++;
                } else {
                    while (_runLength > ((15 : GoInt32))) {
                        _e.value._emitHuff(_h, ((240 : GoInt32)));
                        _runLength = _runLength - (((16 : GoInt32)));
                    };
                    _e.value._emitHuffRLE(_h, _runLength, _ac);
                    _runLength = ((0 : GoInt32));
                };
            });
        };
        if (_runLength > ((0 : GoInt32))) {
            _e.value._emitHuff(_h, ((0 : GoInt32)));
        };
        return _dc;
    }
    public function _writeDHT(_nComponent:GoInt):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _markerlen:GoInt = ((2 : GoInt));
        var _specs:Slice<T_huffmanSpec> = _theHuffmanSpec.__slice__(0);
        if (_nComponent == ((1 : GoInt))) {
            _specs = _specs.__slice__(0, ((2 : GoInt)));
        };
        for (_s in _specs) {
            _markerlen = _markerlen + (((1 : GoUnTypedInt)) + ((16 : GoUnTypedInt)) + _s._value.length);
        };
        _e.value._writeMarkerHeader(_dhtMarker, _markerlen);
        {
            var _i;
            var _s;
            for (_obj in _specs.keyValueIterator()) {
                _i = _obj.key;
                _s = _obj.value;
                _e.value._writeByte((("\\x00\\x10\\x01\\x11" : GoString))[_i]);
                _e.value._write(_s._count.__slice__(0));
                _e.value._write(_s._value);
            };
        };
    }
    public function _writeSOF0(_size:stdgo.image.Image.Point, _nComponent:GoInt):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _markerlen:GoInt = ((8 : GoInt)) + ((3 : GoInt)) * _nComponent;
        _e.value._writeMarkerHeader(_sof0Marker, _markerlen);
        _e.value._buf[((0 : GoInt))] = ((8 : GoUInt8));
        _e.value._buf[((1 : GoInt))] = (((_size.y >> ((8 : GoUnTypedInt))) : GoUInt8));
        _e.value._buf[((2 : GoInt))] = (((_size.y & ((255 : GoInt))) : GoUInt8));
        _e.value._buf[((3 : GoInt))] = (((_size.x >> ((8 : GoUnTypedInt))) : GoUInt8));
        _e.value._buf[((4 : GoInt))] = (((_size.x & ((255 : GoInt))) : GoUInt8));
        _e.value._buf[((5 : GoInt))] = ((_nComponent : GoUInt8));
        if (_nComponent == ((1 : GoInt))) {
            _e.value._buf[((6 : GoInt))] = ((1 : GoUInt8));
            _e.value._buf[((7 : GoInt))] = ((17 : GoUInt8));
            _e.value._buf[((8 : GoInt))] = ((0 : GoUInt8));
        } else {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _nComponent, _i++, {
                    _e.value._buf[((3 : GoInt)) * _i + ((6 : GoInt))] = (((_i + ((1 : GoInt))) : GoUInt8));
                    _e.value._buf[((3 : GoInt)) * _i + ((7 : GoInt))] = (("\\x22\\x11\\x11" : GoString))[_i];
                    _e.value._buf[((3 : GoInt)) * _i + ((8 : GoInt))] = (("\\x00\\x01\\x01" : GoString))[_i];
                });
            };
        };
        _e.value._write(_e.value._buf.__slice__(0, ((3 : GoInt)) * (_nComponent - ((1 : GoInt))) + ((9 : GoInt))));
    }
    public function _writeDQT():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _markerlen:GoInt = ((2 : GoInt)) + _nQuantIndex.__t__ * (((1 : GoUnTypedInt)) + _blockSize);
        _e.value._writeMarkerHeader(_dqtMarker, _markerlen);
        {
            var _i;
            for (_obj in _e.value._quant.keyValueIterator()) {
                _i = _obj.key;
                _e.value._writeByte(((_i : GoUInt8)));
                _e.value._write(_e.value._quant[_i].__slice__(0));
            };
        };
    }
    public function _writeMarkerHeader(_marker:GoUInt8, _markerlen:GoInt):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _e.value._buf[((0 : GoInt))] = ((255 : GoUInt8));
        _e.value._buf[((1 : GoInt))] = _marker;
        _e.value._buf[((2 : GoInt))] = (((_markerlen >> ((8 : GoUnTypedInt))) : GoUInt8));
        _e.value._buf[((3 : GoInt))] = (((_markerlen & ((255 : GoInt))) : GoUInt8));
        _e.value._write(_e.value._buf.__slice__(0, ((4 : GoInt))));
    }
    public function _emitHuffRLE(_h:T_huffIndex, _runLength:GoInt32, _value:GoInt32):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a:GoInt32 = _value, _b:GoInt32 = _value;
        if (_a < ((0 : GoInt32))) {
            {
                final __tmp__0 = -_value;
                final __tmp__1 = _value - ((1 : GoInt32));
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        var _nBits:GoUInt32 = ((0 : GoUInt32));
        if (_a < ((256 : GoInt32))) {
            _nBits = ((_bitCount[_a] : GoUInt32));
        } else {
            _nBits = ((8 : GoUInt32)) + ((_bitCount[(_a >> ((8 : GoUnTypedInt)))] : GoUInt32));
        };
        _e.value._emitHuff(_h, (_runLength << ((4 : GoUnTypedInt))) | ((_nBits : GoInt32)));
        if (_nBits > ((0 : GoUInt32))) {
            _e.value._emit(((_b : GoUInt32)) & ((((1 : GoUInt32)) << _nBits) - ((1 : GoUInt32))), _nBits);
        };
    }
    public function _emitHuff(_h:T_huffIndex, _value:GoInt32):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x:GoUInt32 = _theHuffmanLUT[_h.__t__].__t__[_value];
        _e.value._emit(_x & ((((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))) - ((1 : GoUnTypedInt))), (_x >> ((24 : GoUnTypedInt))));
    }
    public function _emit(_bits:GoUInt32, _nBits:GoUInt32):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _nBits = _nBits + (_e.value._nBits);
        _bits = (_bits << (((32 : GoUInt32)) - _nBits));
        _bits = _bits | (_e.value._bits);
        while (_nBits >= ((8 : GoUInt32))) {
            var _b:GoUInt8 = (((_bits >> ((24 : GoUnTypedInt))) : GoUInt8));
            _e.value._writeByte(_b);
            if (_b == ((255 : GoUInt8))) {
                _e.value._writeByte(((0 : GoUInt8)));
            };
            _bits = (_bits << (((8 : GoUnTypedInt))));
            _nBits = _nBits - (((8 : GoUInt32)));
        };
        {
            final __tmp__0 = _bits;
            final __tmp__1 = _nBits;
            _e.value._bits = __tmp__0;
            _e.value._nBits = __tmp__1;
        };
    }
    public function _writeByte(_b:GoByte):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        _e.value._err = _e.value._w.writeByte(_b);
    }
    public function _write(_p:Slice<GoByte>):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        {
            var __tmp__ = _e.value._w.write(_p);
            _e.value._err = __tmp__._1;
        };
    }
    public function _flush():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        _e.value._err = _e.value._w.flush();
    }
    public var _w : T_writer = ((null : T_writer));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _bits : GoUInt32 = ((0 : GoUInt32));
    public var _nBits : GoUInt32 = ((0 : GoUInt32));
    public var _quant : GoArray<GoArray<GoUInt8>> = new GoArray<GoArray<GoUInt8>>(...[for (i in 0 ... 2) new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))])]);
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_buf:GoArray<GoUInt8>, ?_bits:GoUInt32, ?_nBits:GoUInt32, ?_quant:GoArray<GoArray<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_err) + " " + Go.string(_buf) + " " + Go.string(_bits) + " " + Go.string(_nBits) + " " + Go.string(_quant) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _buf, _bits, _nBits, _quant);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._err = __tmp__._err;
        this._buf = __tmp__._buf;
        this._bits = __tmp__._bits;
        this._nBits = __tmp__._nBits;
        this._quant = __tmp__._quant;
        return this;
    }
}
@:structInit class Options {
    public var quality : GoInt = ((0 : GoInt));
    public function new(?quality:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(quality) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Options(quality);
    }
    public function __set__(__tmp__) {
        this.quality = __tmp__.quality;
        return this;
    }
}
@:structInit @:local class T__struct_38 {
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4096) ((0 : GoUInt8))]);
    public var _i : GoInt = ((0 : GoInt));
    public var _j : GoInt = ((0 : GoInt));
    public var _nUnreadable : GoInt = ((0 : GoInt));
    public function new(?_buf:GoArray<GoUInt8>, ?_i:GoInt, ?_j:GoInt, ?_nUnreadable:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_buf) + " " + Go.string(_i) + " " + Go.string(_j) + " " + Go.string(_nUnreadable) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_38(_buf, _i, _j, _nUnreadable);
    }
    public function __set__(__tmp__) {
        this._buf = __tmp__._buf;
        this._i = __tmp__._i;
        this._j = __tmp__._j;
        this._nUnreadable = __tmp__._nUnreadable;
        return this;
    }
}
@:structInit @:local class T__struct_39 {
    public var _src : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _stride : GoInt = ((0 : GoInt));
    public function new(?_src:Slice<GoUInt8>, ?_stride:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_src) + " " + Go.string(_stride) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_39(_src, _stride);
    }
    public function __set__(__tmp__) {
        this._src = __tmp__._src;
        this._stride = __tmp__._stride;
        return this;
    }
}
@:structInit @:local class T__struct_40 {
    public var _compIndex : GoUInt8 = ((0 : GoUInt8));
    public var _td : GoUInt8 = ((0 : GoUInt8));
    public var _ta : GoUInt8 = ((0 : GoUInt8));
    public function new(?_compIndex:GoUInt8, ?_td:GoUInt8, ?_ta:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_compIndex) + " " + Go.string(_td) + " " + Go.string(_ta) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_40(_compIndex, _td, _ta);
    }
    public function __set__(__tmp__) {
        this._compIndex = __tmp__._compIndex;
        this._td = __tmp__._td;
        this._ta = __tmp__._ta;
        return this;
    }
}
var _theHuffmanLUT : GoArray<T_huffmanLUT> = new GoArray<T_huffmanLUT>(...[for (i in 0 ... 4) new T_huffmanLUT()]);
final _lutSize : GoInt64 = ((8 : GoUnTypedInt));
final _r2 : GoInt64 = ((181 : GoUnTypedInt));
final _maxTh : GoInt64 = ((3 : GoUnTypedInt));
final _fix_0_298631336 : GoInt64 = ((2446 : GoUnTypedInt));
var _sosHeaderYCbCr : Slice<GoUInt8> = new Slice<GoUInt8>(
((255 : GoUInt8)),
((218 : GoUInt8)),
((0 : GoUInt8)),
((12 : GoUInt8)),
((3 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((2 : GoUInt8)),
((17 : GoUInt8)),
((3 : GoUInt8)),
((17 : GoUInt8)),
((0 : GoUInt8)),
((63 : GoUInt8)),
((0 : GoUInt8)));
final _nQuantIndex : T_quantIndex = new T_quantIndex((2 : GoUnTypedInt));
final _adobeTransformUnknown : GoInt64 = ((0 : GoUnTypedInt));
final _eoiMarker : GoInt64 = ((217 : GoUnTypedInt));
final _w1 : GoInt64 = ((2841 : GoUnTypedInt));
final _app14Marker : GoInt64 = ((238 : GoUnTypedInt));
final _rst0Marker : GoInt64 = ((208 : GoUnTypedInt));
final _sosMarker : GoInt64 = ((218 : GoUnTypedInt));
final _fix_0_765366865 : GoInt64 = ((6270 : GoUnTypedInt));
final _dhtMarker : GoInt64 = ((196 : GoUnTypedInt));
final _constBits : GoInt64 = ((13 : GoUnTypedInt));
final _w2 : GoInt64 = ((2676 : GoUnTypedInt));
final _w3 : GoInt64 = ((2408 : GoUnTypedInt));
final _blockSize : GoInt64 = ((64 : GoUnTypedInt));
final _fix_2_053119869 : GoInt64 = ((16819 : GoUnTypedInt));
final _w5 : GoInt64 = ((1609 : GoUnTypedInt));
final _dqtMarker : GoInt64 = ((219 : GoUnTypedInt));
final _nHuffIndex : T_huffIndex = new T_huffIndex((4 : GoUnTypedInt));
final _maxTq : GoInt64 = ((3 : GoUnTypedInt));
final _fix_3_072711026 : GoInt64 = ((25172 : GoUnTypedInt));
final _w6 : GoInt64 = ((1108 : GoUnTypedInt));
final _w2mw6 : GoUnTypedInt = _w2 - _w6;
final _w7 : GoInt64 = ((565 : GoUnTypedInt));
final _w1mw7 : GoUnTypedInt = _w1 - _w7;
final _w3mw5 : GoUnTypedInt = _w3 - _w5;
final defaultQuality : GoInt64 = ((75 : GoUnTypedInt));
final _fix_1_847759065 : GoInt64 = ((15137 : GoUnTypedInt));
final _app0Marker : GoInt64 = ((224 : GoUnTypedInt));
final _sof1Marker : GoInt64 = ((193 : GoUnTypedInt));
var _unzig : GoArray<GoInt> = new GoArray<GoInt>(
((0 : GoInt)),
((1 : GoInt)),
((8 : GoInt)),
((16 : GoInt)),
((9 : GoInt)),
((2 : GoInt)),
((3 : GoInt)),
((10 : GoInt)),
((17 : GoInt)),
((24 : GoInt)),
((32 : GoInt)),
((25 : GoInt)),
((18 : GoInt)),
((11 : GoInt)),
((4 : GoInt)),
((5 : GoInt)),
((12 : GoInt)),
((19 : GoInt)),
((26 : GoInt)),
((33 : GoInt)),
((40 : GoInt)),
((48 : GoInt)),
((41 : GoInt)),
((34 : GoInt)),
((27 : GoInt)),
((20 : GoInt)),
((13 : GoInt)),
((6 : GoInt)),
((7 : GoInt)),
((14 : GoInt)),
((21 : GoInt)),
((28 : GoInt)),
((35 : GoInt)),
((42 : GoInt)),
((49 : GoInt)),
((56 : GoInt)),
((57 : GoInt)),
((50 : GoInt)),
((43 : GoInt)),
((36 : GoInt)),
((29 : GoInt)),
((22 : GoInt)),
((15 : GoInt)),
((23 : GoInt)),
((30 : GoInt)),
((37 : GoInt)),
((44 : GoInt)),
((51 : GoInt)),
((58 : GoInt)),
((59 : GoInt)),
((52 : GoInt)),
((45 : GoInt)),
((38 : GoInt)),
((31 : GoInt)),
((39 : GoInt)),
((46 : GoInt)),
((53 : GoInt)),
((60 : GoInt)),
((61 : GoInt)),
((54 : GoInt)),
((47 : GoInt)),
((55 : GoInt)),
((62 : GoInt)),
((63 : GoInt))).copy();
final _huffIndexLuminanceAC : T_huffIndex = new T_huffIndex((1 : GoUnTypedInt));
final _w3pw5 : GoUnTypedInt = _w3 + _w5;
final _w2pw6 : GoUnTypedInt = _w2 + _w6;
final _maxNCodes : GoInt64 = ((256 : GoUnTypedInt));
final _w1pw7 : GoUnTypedInt = _w1 + _w7;
final _quantIndexChrominance : T_quantIndex = new T_quantIndex((1 : GoUnTypedInt));
final _comMarker : GoInt64 = ((254 : GoUnTypedInt));
final _sof0Marker : GoInt64 = ((192 : GoUnTypedInt));
var _theHuffmanSpec : GoArray<T_huffmanSpec> = new GoArray<T_huffmanSpec>(new T_huffmanSpec(new GoArray<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((5 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))).copy(), new Slice<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)))).__copy__(), new T_huffmanSpec(new GoArray<GoUInt8>(
((0 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((3 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((125 : GoUInt8))).copy(), new Slice<GoUInt8>(
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((4 : GoUInt8)),
((17 : GoUInt8)),
((5 : GoUInt8)),
((18 : GoUInt8)),
((33 : GoUInt8)),
((49 : GoUInt8)),
((65 : GoUInt8)),
((6 : GoUInt8)),
((19 : GoUInt8)),
((81 : GoUInt8)),
((97 : GoUInt8)),
((7 : GoUInt8)),
((34 : GoUInt8)),
((113 : GoUInt8)),
((20 : GoUInt8)),
((50 : GoUInt8)),
((129 : GoUInt8)),
((145 : GoUInt8)),
((161 : GoUInt8)),
((8 : GoUInt8)),
((35 : GoUInt8)),
((66 : GoUInt8)),
((177 : GoUInt8)),
((193 : GoUInt8)),
((21 : GoUInt8)),
((82 : GoUInt8)),
((209 : GoUInt8)),
((240 : GoUInt8)),
((36 : GoUInt8)),
((51 : GoUInt8)),
((98 : GoUInt8)),
((114 : GoUInt8)),
((130 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((22 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((25 : GoUInt8)),
((26 : GoUInt8)),
((37 : GoUInt8)),
((38 : GoUInt8)),
((39 : GoUInt8)),
((40 : GoUInt8)),
((41 : GoUInt8)),
((42 : GoUInt8)),
((52 : GoUInt8)),
((53 : GoUInt8)),
((54 : GoUInt8)),
((55 : GoUInt8)),
((56 : GoUInt8)),
((57 : GoUInt8)),
((58 : GoUInt8)),
((67 : GoUInt8)),
((68 : GoUInt8)),
((69 : GoUInt8)),
((70 : GoUInt8)),
((71 : GoUInt8)),
((72 : GoUInt8)),
((73 : GoUInt8)),
((74 : GoUInt8)),
((83 : GoUInt8)),
((84 : GoUInt8)),
((85 : GoUInt8)),
((86 : GoUInt8)),
((87 : GoUInt8)),
((88 : GoUInt8)),
((89 : GoUInt8)),
((90 : GoUInt8)),
((99 : GoUInt8)),
((100 : GoUInt8)),
((101 : GoUInt8)),
((102 : GoUInt8)),
((103 : GoUInt8)),
((104 : GoUInt8)),
((105 : GoUInt8)),
((106 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((117 : GoUInt8)),
((118 : GoUInt8)),
((119 : GoUInt8)),
((120 : GoUInt8)),
((121 : GoUInt8)),
((122 : GoUInt8)),
((131 : GoUInt8)),
((132 : GoUInt8)),
((133 : GoUInt8)),
((134 : GoUInt8)),
((135 : GoUInt8)),
((136 : GoUInt8)),
((137 : GoUInt8)),
((138 : GoUInt8)),
((146 : GoUInt8)),
((147 : GoUInt8)),
((148 : GoUInt8)),
((149 : GoUInt8)),
((150 : GoUInt8)),
((151 : GoUInt8)),
((152 : GoUInt8)),
((153 : GoUInt8)),
((154 : GoUInt8)),
((162 : GoUInt8)),
((163 : GoUInt8)),
((164 : GoUInt8)),
((165 : GoUInt8)),
((166 : GoUInt8)),
((167 : GoUInt8)),
((168 : GoUInt8)),
((169 : GoUInt8)),
((170 : GoUInt8)),
((178 : GoUInt8)),
((179 : GoUInt8)),
((180 : GoUInt8)),
((181 : GoUInt8)),
((182 : GoUInt8)),
((183 : GoUInt8)),
((184 : GoUInt8)),
((185 : GoUInt8)),
((186 : GoUInt8)),
((194 : GoUInt8)),
((195 : GoUInt8)),
((196 : GoUInt8)),
((197 : GoUInt8)),
((198 : GoUInt8)),
((199 : GoUInt8)),
((200 : GoUInt8)),
((201 : GoUInt8)),
((202 : GoUInt8)),
((210 : GoUInt8)),
((211 : GoUInt8)),
((212 : GoUInt8)),
((213 : GoUInt8)),
((214 : GoUInt8)),
((215 : GoUInt8)),
((216 : GoUInt8)),
((217 : GoUInt8)),
((218 : GoUInt8)),
((225 : GoUInt8)),
((226 : GoUInt8)),
((227 : GoUInt8)),
((228 : GoUInt8)),
((229 : GoUInt8)),
((230 : GoUInt8)),
((231 : GoUInt8)),
((232 : GoUInt8)),
((233 : GoUInt8)),
((234 : GoUInt8)),
((241 : GoUInt8)),
((242 : GoUInt8)),
((243 : GoUInt8)),
((244 : GoUInt8)),
((245 : GoUInt8)),
((246 : GoUInt8)),
((247 : GoUInt8)),
((248 : GoUInt8)),
((249 : GoUInt8)),
((250 : GoUInt8)))).__copy__(), new T_huffmanSpec(new GoArray<GoUInt8>(
((0 : GoUInt8)),
((3 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))).copy(), new Slice<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)))).__copy__(), new T_huffmanSpec(new GoArray<GoUInt8>(
((0 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((119 : GoUInt8))).copy(), new Slice<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((17 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((33 : GoUInt8)),
((49 : GoUInt8)),
((6 : GoUInt8)),
((18 : GoUInt8)),
((65 : GoUInt8)),
((81 : GoUInt8)),
((7 : GoUInt8)),
((97 : GoUInt8)),
((113 : GoUInt8)),
((19 : GoUInt8)),
((34 : GoUInt8)),
((50 : GoUInt8)),
((129 : GoUInt8)),
((8 : GoUInt8)),
((20 : GoUInt8)),
((66 : GoUInt8)),
((145 : GoUInt8)),
((161 : GoUInt8)),
((177 : GoUInt8)),
((193 : GoUInt8)),
((9 : GoUInt8)),
((35 : GoUInt8)),
((51 : GoUInt8)),
((82 : GoUInt8)),
((240 : GoUInt8)),
((21 : GoUInt8)),
((98 : GoUInt8)),
((114 : GoUInt8)),
((209 : GoUInt8)),
((10 : GoUInt8)),
((22 : GoUInt8)),
((36 : GoUInt8)),
((52 : GoUInt8)),
((225 : GoUInt8)),
((37 : GoUInt8)),
((241 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((25 : GoUInt8)),
((26 : GoUInt8)),
((38 : GoUInt8)),
((39 : GoUInt8)),
((40 : GoUInt8)),
((41 : GoUInt8)),
((42 : GoUInt8)),
((53 : GoUInt8)),
((54 : GoUInt8)),
((55 : GoUInt8)),
((56 : GoUInt8)),
((57 : GoUInt8)),
((58 : GoUInt8)),
((67 : GoUInt8)),
((68 : GoUInt8)),
((69 : GoUInt8)),
((70 : GoUInt8)),
((71 : GoUInt8)),
((72 : GoUInt8)),
((73 : GoUInt8)),
((74 : GoUInt8)),
((83 : GoUInt8)),
((84 : GoUInt8)),
((85 : GoUInt8)),
((86 : GoUInt8)),
((87 : GoUInt8)),
((88 : GoUInt8)),
((89 : GoUInt8)),
((90 : GoUInt8)),
((99 : GoUInt8)),
((100 : GoUInt8)),
((101 : GoUInt8)),
((102 : GoUInt8)),
((103 : GoUInt8)),
((104 : GoUInt8)),
((105 : GoUInt8)),
((106 : GoUInt8)),
((115 : GoUInt8)),
((116 : GoUInt8)),
((117 : GoUInt8)),
((118 : GoUInt8)),
((119 : GoUInt8)),
((120 : GoUInt8)),
((121 : GoUInt8)),
((122 : GoUInt8)),
((130 : GoUInt8)),
((131 : GoUInt8)),
((132 : GoUInt8)),
((133 : GoUInt8)),
((134 : GoUInt8)),
((135 : GoUInt8)),
((136 : GoUInt8)),
((137 : GoUInt8)),
((138 : GoUInt8)),
((146 : GoUInt8)),
((147 : GoUInt8)),
((148 : GoUInt8)),
((149 : GoUInt8)),
((150 : GoUInt8)),
((151 : GoUInt8)),
((152 : GoUInt8)),
((153 : GoUInt8)),
((154 : GoUInt8)),
((162 : GoUInt8)),
((163 : GoUInt8)),
((164 : GoUInt8)),
((165 : GoUInt8)),
((166 : GoUInt8)),
((167 : GoUInt8)),
((168 : GoUInt8)),
((169 : GoUInt8)),
((170 : GoUInt8)),
((178 : GoUInt8)),
((179 : GoUInt8)),
((180 : GoUInt8)),
((181 : GoUInt8)),
((182 : GoUInt8)),
((183 : GoUInt8)),
((184 : GoUInt8)),
((185 : GoUInt8)),
((186 : GoUInt8)),
((194 : GoUInt8)),
((195 : GoUInt8)),
((196 : GoUInt8)),
((197 : GoUInt8)),
((198 : GoUInt8)),
((199 : GoUInt8)),
((200 : GoUInt8)),
((201 : GoUInt8)),
((202 : GoUInt8)),
((210 : GoUInt8)),
((211 : GoUInt8)),
((212 : GoUInt8)),
((213 : GoUInt8)),
((214 : GoUInt8)),
((215 : GoUInt8)),
((216 : GoUInt8)),
((217 : GoUInt8)),
((218 : GoUInt8)),
((226 : GoUInt8)),
((227 : GoUInt8)),
((228 : GoUInt8)),
((229 : GoUInt8)),
((230 : GoUInt8)),
((231 : GoUInt8)),
((232 : GoUInt8)),
((233 : GoUInt8)),
((234 : GoUInt8)),
((242 : GoUInt8)),
((243 : GoUInt8)),
((244 : GoUInt8)),
((245 : GoUInt8)),
((246 : GoUInt8)),
((247 : GoUInt8)),
((248 : GoUInt8)),
((249 : GoUInt8)),
((250 : GoUInt8)))).__copy__()).copy();
final _huffIndexLuminanceDC : T_huffIndex = new T_huffIndex((0 : GoUnTypedInt));
final _adobeTransformYCbCr : GoInt64 = ((1 : GoUnTypedInt));
final _huffIndexChrominanceAC : T_huffIndex = new T_huffIndex((3 : GoUnTypedInt));
final _fix_1_961570560 : GoInt64 = ((16069 : GoUnTypedInt));
final _maxComponents : GoInt64 = ((4 : GoUnTypedInt));
final _huffIndexChrominanceDC : T_huffIndex = new T_huffIndex((2 : GoUnTypedInt));
final _acTable : GoInt64 = ((1 : GoUnTypedInt));
var _bitCount : GoArray<GoUInt8> = new GoArray<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((3 : GoUInt8)),
((3 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8)),
((8 : GoUInt8))).copy();
final _sof2Marker : GoInt64 = ((194 : GoUnTypedInt));
final _dcTable : GoInt64 = ((0 : GoUnTypedInt));
final _soiMarker : GoInt64 = ((216 : GoUnTypedInt));
var _sosHeaderY : Slice<GoUInt8> = new Slice<GoUInt8>(((255 : GoUInt8)), ((218 : GoUInt8)), ((0 : GoUInt8)), ((8 : GoUInt8)), ((1 : GoUInt8)), ((1 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((63 : GoUInt8)), ((0 : GoUInt8)));
final _quantIndexLuminance : T_quantIndex = new T_quantIndex((0 : GoUnTypedInt));
final _adobeTransformYCbCrK : GoInt64 = ((2 : GoUnTypedInt));
final _rst7Marker : GoInt64 = ((215 : GoUnTypedInt));
final _fix_1_501321110 : GoInt64 = ((12299 : GoUnTypedInt));
var _unscaledQuant : GoArray<GoArray<GoUInt8>> = new GoArray<GoArray<GoUInt8>>(new GoArray<GoUInt8>(
((16 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((10 : GoUInt8)),
((16 : GoUInt8)),
((14 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((18 : GoUInt8)),
((17 : GoUInt8)),
((16 : GoUInt8)),
((19 : GoUInt8)),
((24 : GoUInt8)),
((40 : GoUInt8)),
((26 : GoUInt8)),
((24 : GoUInt8)),
((22 : GoUInt8)),
((22 : GoUInt8)),
((24 : GoUInt8)),
((49 : GoUInt8)),
((35 : GoUInt8)),
((37 : GoUInt8)),
((29 : GoUInt8)),
((40 : GoUInt8)),
((58 : GoUInt8)),
((51 : GoUInt8)),
((61 : GoUInt8)),
((60 : GoUInt8)),
((57 : GoUInt8)),
((51 : GoUInt8)),
((56 : GoUInt8)),
((55 : GoUInt8)),
((64 : GoUInt8)),
((72 : GoUInt8)),
((92 : GoUInt8)),
((78 : GoUInt8)),
((64 : GoUInt8)),
((68 : GoUInt8)),
((87 : GoUInt8)),
((69 : GoUInt8)),
((55 : GoUInt8)),
((56 : GoUInt8)),
((80 : GoUInt8)),
((109 : GoUInt8)),
((81 : GoUInt8)),
((87 : GoUInt8)),
((95 : GoUInt8)),
((98 : GoUInt8)),
((103 : GoUInt8)),
((104 : GoUInt8)),
((103 : GoUInt8)),
((62 : GoUInt8)),
((77 : GoUInt8)),
((113 : GoUInt8)),
((121 : GoUInt8)),
((112 : GoUInt8)),
((100 : GoUInt8)),
((120 : GoUInt8)),
((92 : GoUInt8)),
((101 : GoUInt8)),
((103 : GoUInt8)),
((99 : GoUInt8))).copy(), new GoArray<GoUInt8>(
((17 : GoUInt8)),
((18 : GoUInt8)),
((18 : GoUInt8)),
((24 : GoUInt8)),
((21 : GoUInt8)),
((24 : GoUInt8)),
((47 : GoUInt8)),
((26 : GoUInt8)),
((26 : GoUInt8)),
((47 : GoUInt8)),
((99 : GoUInt8)),
((66 : GoUInt8)),
((56 : GoUInt8)),
((66 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8)),
((99 : GoUInt8))).copy()).copy();
final _maxCodeLength : GoInt64 = ((16 : GoUnTypedInt));
final _centerJSample : GoInt64 = ((128 : GoUnTypedInt));
final _driMarker : GoInt64 = ((221 : GoUnTypedInt));
final _fix_0_541196100 : GoInt64 = ((4433 : GoUnTypedInt));
var _errShortHuffmanData : FormatError = new FormatError("short Huffman data");
final _maxTc : GoInt64 = ((1 : GoUnTypedInt));
final _app15Marker : GoInt64 = ((239 : GoUnTypedInt));
final _fix_0_390180644 : GoInt64 = ((3196 : GoUnTypedInt));
var _errMissingFF00 : FormatError = new FormatError("missing 0xff00 sequence");
final _pass1Bits : GoInt64 = ((2 : GoUnTypedInt));
var _errUnsupportedSubsamplingRatio : UnsupportedError = new UnsupportedError("luma/chroma subsampling ratio");
final _fix_1_175875602 : GoInt64 = ((9633 : GoUnTypedInt));
final _fix_0_899976223 : GoInt64 = ((7373 : GoUnTypedInt));
final _fix_2_562915447 : GoInt64 = ((20995 : GoUnTypedInt));
/**
    // fdct performs a forward DCT on an 8x8 block of coefficients, including a
    // level shift.
**/
function _fdct(_b:Pointer<T_block>):Void {
        {
            var _y:GoInt = ((0 : GoInt));
            Go.cfor(_y < ((8 : GoInt)), _y++, {
                var _y8:GoInt = _y * ((8 : GoInt));
                var _s:Slice<GoInt32> = _b.value.__slice__(_y8, _y8 + ((8 : GoInt))).setCap(((_y8 + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
                var _x0:GoInt32 = _s[((0 : GoInt))];
                var _x1:GoInt32 = _s[((1 : GoInt))];
                var _x2:GoInt32 = _s[((2 : GoInt))];
                var _x3:GoInt32 = _s[((3 : GoInt))];
                var _x4:GoInt32 = _s[((4 : GoInt))];
                var _x5:GoInt32 = _s[((5 : GoInt))];
                var _x6:GoInt32 = _s[((6 : GoInt))];
                var _x7:GoInt32 = _s[((7 : GoInt))];
                var _tmp0:GoInt32 = _x0 + _x7;
                var _tmp1:GoInt32 = _x1 + _x6;
                var _tmp2:GoInt32 = _x2 + _x5;
                var _tmp3:GoInt32 = _x3 + _x4;
                var _tmp10:GoInt32 = _tmp0 + _tmp3;
                var _tmp12:GoInt32 = _tmp0 - _tmp3;
                var _tmp11:GoInt32 = _tmp1 + _tmp2;
                var _tmp13:GoInt32 = _tmp1 - _tmp2;
                _tmp0 = _x0 - _x7;
                _tmp1 = _x1 - _x6;
                _tmp2 = _x2 - _x5;
                _tmp3 = _x3 - _x4;
                _s[((0 : GoInt))] = ((_tmp10 + _tmp11 - ((8 : GoUnTypedInt)) * _centerJSample) << _pass1Bits);
                _s[((4 : GoInt))] = ((_tmp10 - _tmp11) << _pass1Bits);
                var _z1:GoInt32 = (_tmp12 + _tmp13) * _fix_0_541196100;
                _z1 = _z1 + ((((1 : GoUnTypedInt)) << (_constBits - _pass1Bits - ((1 : GoUnTypedInt)))));
                _s[((2 : GoInt))] = ((_z1 + _tmp12 * _fix_0_765366865) >> (_constBits - _pass1Bits));
                _s[((6 : GoInt))] = ((_z1 - _tmp13 * _fix_1_847759065) >> (_constBits - _pass1Bits));
                _tmp10 = _tmp0 + _tmp3;
                _tmp11 = _tmp1 + _tmp2;
                _tmp12 = _tmp0 + _tmp2;
                _tmp13 = _tmp1 + _tmp3;
                _z1 = (_tmp12 + _tmp13) * _fix_1_175875602;
                _z1 = _z1 + ((((1 : GoUnTypedInt)) << (_constBits - _pass1Bits - ((1 : GoUnTypedInt)))));
                _tmp0 = _tmp0 * (_fix_1_501321110);
                _tmp1 = _tmp1 * (_fix_3_072711026);
                _tmp2 = _tmp2 * (_fix_2_053119869);
                _tmp3 = _tmp3 * (_fix_0_298631336);
                _tmp10 = _tmp10 * (-_fix_0_899976223);
                _tmp11 = _tmp11 * (-_fix_2_562915447);
                _tmp12 = _tmp12 * (-_fix_0_390180644);
                _tmp13 = _tmp13 * (-_fix_1_961570560);
                _tmp12 = _tmp12 + (_z1);
                _tmp13 = _tmp13 + (_z1);
                _s[((1 : GoInt))] = ((_tmp0 + _tmp10 + _tmp12) >> (_constBits - _pass1Bits));
                _s[((3 : GoInt))] = ((_tmp1 + _tmp11 + _tmp13) >> (_constBits - _pass1Bits));
                _s[((5 : GoInt))] = ((_tmp2 + _tmp11 + _tmp12) >> (_constBits - _pass1Bits));
                _s[((7 : GoInt))] = ((_tmp3 + _tmp10 + _tmp13) >> (_constBits - _pass1Bits));
            });
        };
        {
            var _x:GoInt = ((0 : GoInt));
            Go.cfor(_x < ((8 : GoInt)), _x++, {
                var _tmp0:GoInt32 = _b.value.__t__[((0 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] + _b.value.__t__[((7 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                var _tmp1:GoInt32 = _b.value.__t__[((1 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] + _b.value.__t__[((6 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                var _tmp2:GoInt32 = _b.value.__t__[((2 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] + _b.value.__t__[((5 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                var _tmp3:GoInt32 = _b.value.__t__[((3 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] + _b.value.__t__[((4 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                var _tmp10:GoInt32 = _tmp0 + _tmp3 + (((1 : GoUnTypedInt)) << (_pass1Bits - ((1 : GoUnTypedInt))));
                var _tmp12:GoInt32 = _tmp0 - _tmp3;
                var _tmp11:GoInt32 = _tmp1 + _tmp2;
                var _tmp13:GoInt32 = _tmp1 - _tmp2;
                _tmp0 = _b.value.__t__[((0 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] - _b.value.__t__[((7 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                _tmp1 = _b.value.__t__[((1 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] - _b.value.__t__[((6 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                _tmp2 = _b.value.__t__[((2 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] - _b.value.__t__[((5 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                _tmp3 = _b.value.__t__[((3 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] - _b.value.__t__[((4 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x];
                _b.value.__t__[((0 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp10 + _tmp11) >> _pass1Bits);
                _b.value.__t__[((4 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp10 - _tmp11) >> _pass1Bits);
                var _z1:GoInt32 = (_tmp12 + _tmp13) * _fix_0_541196100;
                _z1 = _z1 + ((((1 : GoUnTypedInt)) << (_constBits + _pass1Bits - ((1 : GoUnTypedInt)))));
                _b.value.__t__[((2 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_z1 + _tmp12 * _fix_0_765366865) >> (_constBits + _pass1Bits));
                _b.value.__t__[((6 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_z1 - _tmp13 * _fix_1_847759065) >> (_constBits + _pass1Bits));
                _tmp10 = _tmp0 + _tmp3;
                _tmp11 = _tmp1 + _tmp2;
                _tmp12 = _tmp0 + _tmp2;
                _tmp13 = _tmp1 + _tmp3;
                _z1 = (_tmp12 + _tmp13) * _fix_1_175875602;
                _z1 = _z1 + ((((1 : GoUnTypedInt)) << (_constBits + _pass1Bits - ((1 : GoUnTypedInt)))));
                _tmp0 = _tmp0 * (_fix_1_501321110);
                _tmp1 = _tmp1 * (_fix_3_072711026);
                _tmp2 = _tmp2 * (_fix_2_053119869);
                _tmp3 = _tmp3 * (_fix_0_298631336);
                _tmp10 = _tmp10 * (-_fix_0_899976223);
                _tmp11 = _tmp11 * (-_fix_2_562915447);
                _tmp12 = _tmp12 * (-_fix_0_390180644);
                _tmp13 = _tmp13 * (-_fix_1_961570560);
                _tmp12 = _tmp12 + (_z1);
                _tmp13 = _tmp13 + (_z1);
                _b.value.__t__[((1 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp0 + _tmp10 + _tmp12) >> (_constBits + _pass1Bits));
                _b.value.__t__[((3 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp1 + _tmp11 + _tmp13) >> (_constBits + _pass1Bits));
                _b.value.__t__[((5 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp2 + _tmp11 + _tmp12) >> (_constBits + _pass1Bits));
                _b.value.__t__[((7 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _x] = ((_tmp3 + _tmp10 + _tmp13) >> (_constBits + _pass1Bits));
            });
        };
    }
/**
    // idct performs a 2-D Inverse Discrete Cosine Transformation.
    //
    // The input coefficients should already have been multiplied by the
    // appropriate quantization table. We use fixed-point computation, with the
    // number of bits for the fractional component varying over the intermediate
    // stages.
    //
    // For more on the actual algorithm, see Z. Wang, "Fast algorithms for the
    // discrete W transform and for the discrete Fourier transform", IEEE Trans. on
    // ASSP, Vol. ASSP- 32, pp. 803-816, Aug. 1984.
**/
function _idct(_src:Pointer<T_block>):Void {
        {
            var _y:GoInt = ((0 : GoInt));
            Go.cfor(_y < ((8 : GoInt)), _y++, {
                var _y8:GoInt = _y * ((8 : GoInt));
                var _s:Slice<GoInt32> = _src.value.__slice__(_y8, _y8 + ((8 : GoInt))).setCap(((_y8 + ((8 : GoInt)) : GoInt)) - ((1 : GoInt)));
                if (_s[((1 : GoInt))] == ((0 : GoInt32)) && _s[((2 : GoInt))] == ((0 : GoInt32)) && _s[((3 : GoInt))] == ((0 : GoInt32)) && _s[((4 : GoInt))] == ((0 : GoInt32)) && _s[((5 : GoInt))] == ((0 : GoInt32)) && _s[((6 : GoInt))] == ((0 : GoInt32)) && _s[((7 : GoInt))] == ((0 : GoInt32))) {
                    var _dc:GoInt32 = (_s[((0 : GoInt))] << ((3 : GoUnTypedInt)));
                    _s[((0 : GoInt))] = _dc;
                    _s[((1 : GoInt))] = _dc;
                    _s[((2 : GoInt))] = _dc;
                    _s[((3 : GoInt))] = _dc;
                    _s[((4 : GoInt))] = _dc;
                    _s[((5 : GoInt))] = _dc;
                    _s[((6 : GoInt))] = _dc;
                    _s[((7 : GoInt))] = _dc;
                    continue;
                };
                var _x0:GoInt32 = ((_s[((0 : GoInt))] << ((11 : GoUnTypedInt)))) + ((128 : GoInt32));
                var _x1:GoInt32 = (_s[((4 : GoInt))] << ((11 : GoUnTypedInt)));
                var _x2:GoInt32 = _s[((6 : GoInt))];
                var _x3:GoInt32 = _s[((2 : GoInt))];
                var _x4:GoInt32 = _s[((1 : GoInt))];
                var _x5:GoInt32 = _s[((7 : GoInt))];
                var _x6:GoInt32 = _s[((5 : GoInt))];
                var _x7:GoInt32 = _s[((3 : GoInt))];
                var _x8:GoInt32 = _w7 * (_x4 + _x5);
                _x4 = _x8 + _w1mw7 * _x4;
                _x5 = _x8 - _w1pw7 * _x5;
                _x8 = _w3 * (_x6 + _x7);
                _x6 = _x8 - _w3mw5 * _x6;
                _x7 = _x8 - _w3pw5 * _x7;
                _x8 = _x0 + _x1;
                _x0 = _x0 - (_x1);
                _x1 = _w6 * (_x3 + _x2);
                _x2 = _x1 - _w2pw6 * _x2;
                _x3 = _x1 + _w2mw6 * _x3;
                _x1 = _x4 + _x6;
                _x4 = _x4 - (_x6);
                _x6 = _x5 + _x7;
                _x5 = _x5 - (_x7);
                _x7 = _x8 + _x3;
                _x8 = _x8 - (_x3);
                _x3 = _x0 + _x2;
                _x0 = _x0 - (_x2);
                _x2 = ((_r2 * (_x4 + _x5) + ((128 : GoInt32))) >> ((8 : GoUnTypedInt)));
                _x4 = ((_r2 * (_x4 - _x5) + ((128 : GoInt32))) >> ((8 : GoUnTypedInt)));
                _s[((0 : GoInt))] = ((_x7 + _x1) >> ((8 : GoUnTypedInt)));
                _s[((1 : GoInt))] = ((_x3 + _x2) >> ((8 : GoUnTypedInt)));
                _s[((2 : GoInt))] = ((_x0 + _x4) >> ((8 : GoUnTypedInt)));
                _s[((3 : GoInt))] = ((_x8 + _x6) >> ((8 : GoUnTypedInt)));
                _s[((4 : GoInt))] = ((_x8 - _x6) >> ((8 : GoUnTypedInt)));
                _s[((5 : GoInt))] = ((_x0 - _x4) >> ((8 : GoUnTypedInt)));
                _s[((6 : GoInt))] = ((_x3 - _x2) >> ((8 : GoUnTypedInt)));
                _s[((7 : GoInt))] = ((_x7 - _x1) >> ((8 : GoUnTypedInt)));
            });
        };
        {
            var _x:GoInt = ((0 : GoInt));
            Go.cfor(_x < ((8 : GoInt)), _x++, {
                var _s:Slice<GoInt32> = _src.value.__slice__(_x, _x + ((57 : GoInt))).setCap(((_x + ((57 : GoInt)) : GoInt)) - ((1 : GoInt)));
                var _y0:GoInt32 = ((_s[((8 : GoUnTypedInt)) * ((0 : GoUnTypedInt))] << ((8 : GoUnTypedInt)))) + ((8192 : GoInt32));
                var _y1:GoInt32 = (_s[((8 : GoUnTypedInt)) * ((4 : GoUnTypedInt))] << ((8 : GoUnTypedInt)));
                var _y2:GoInt32 = _s[((8 : GoUnTypedInt)) * ((6 : GoUnTypedInt))];
                var _y3:GoInt32 = _s[((8 : GoUnTypedInt)) * ((2 : GoUnTypedInt))];
                var _y4:GoInt32 = _s[((8 : GoUnTypedInt)) * ((1 : GoUnTypedInt))];
                var _y5:GoInt32 = _s[((8 : GoUnTypedInt)) * ((7 : GoUnTypedInt))];
                var _y6:GoInt32 = _s[((8 : GoUnTypedInt)) * ((5 : GoUnTypedInt))];
                var _y7:GoInt32 = _s[((8 : GoUnTypedInt)) * ((3 : GoUnTypedInt))];
                var _y8:GoInt32 = _w7 * (_y4 + _y5) + ((4 : GoInt32));
                _y4 = ((_y8 + _w1mw7 * _y4) >> ((3 : GoUnTypedInt)));
                _y5 = ((_y8 - _w1pw7 * _y5) >> ((3 : GoUnTypedInt)));
                _y8 = _w3 * (_y6 + _y7) + ((4 : GoInt32));
                _y6 = ((_y8 - _w3mw5 * _y6) >> ((3 : GoUnTypedInt)));
                _y7 = ((_y8 - _w3pw5 * _y7) >> ((3 : GoUnTypedInt)));
                _y8 = _y0 + _y1;
                _y0 = _y0 - (_y1);
                _y1 = _w6 * (_y3 + _y2) + ((4 : GoInt32));
                _y2 = ((_y1 - _w2pw6 * _y2) >> ((3 : GoUnTypedInt)));
                _y3 = ((_y1 + _w2mw6 * _y3) >> ((3 : GoUnTypedInt)));
                _y1 = _y4 + _y6;
                _y4 = _y4 - (_y6);
                _y6 = _y5 + _y7;
                _y5 = _y5 - (_y7);
                _y7 = _y8 + _y3;
                _y8 = _y8 - (_y3);
                _y3 = _y0 + _y2;
                _y0 = _y0 - (_y2);
                _y2 = ((_r2 * (_y4 + _y5) + ((128 : GoInt32))) >> ((8 : GoUnTypedInt)));
                _y4 = ((_r2 * (_y4 - _y5) + ((128 : GoInt32))) >> ((8 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((0 : GoUnTypedInt))] = ((_y7 + _y1) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((1 : GoUnTypedInt))] = ((_y3 + _y2) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((2 : GoUnTypedInt))] = ((_y0 + _y4) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((3 : GoUnTypedInt))] = ((_y8 + _y6) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((4 : GoUnTypedInt))] = ((_y8 - _y6) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((5 : GoUnTypedInt))] = ((_y0 - _y4) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((6 : GoUnTypedInt))] = ((_y3 - _y2) >> ((14 : GoUnTypedInt)));
                _s[((8 : GoUnTypedInt)) * ((7 : GoUnTypedInt))] = ((_y7 - _y1) >> ((14 : GoUnTypedInt)));
            });
        };
    }
/**
    // Decode reads a JPEG image from r and returns it as an image.Image.
**/
function decode(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } {
        var _d:T_decoder = new T_decoder();
        return _d._decode(_r, false);
    }
/**
    // DecodeConfig returns the color model and dimensions of a JPEG image without
    // decoding the entire image.
**/
function decodeConfig(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.image.Image.Config; var _1 : Error; } {
        var _d:T_decoder = new T_decoder();
        {
            var __tmp__ = _d._decode(_r, true), _:stdgo.image.Image.Image = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new stdgo.image.Image.Config().__copy__(), _1 : _err };
            };
        };
        if (_d._nComp == ((1 : GoInt))) {
            return { _0 : (({ colorModel : stdgo.image.color.Color.grayModel, width : _d._width, height : _d._height } : stdgo.image.Image.Config)).__copy__(), _1 : ((null : stdgo.Error)) };
        } else if (_d._nComp == ((3 : GoInt))) {
            var _cm:stdgo.image.color.Color.Model = stdgo.image.color.Color.ycbCrModel;
            if (_d._isRGB()) {
                _cm = stdgo.image.color.Color.rgbamodel;
            };
            return { _0 : (({ colorModel : _cm, width : _d._width, height : _d._height } : stdgo.image.Image.Config)).__copy__(), _1 : ((null : stdgo.Error)) };
        } else if (_d._nComp == ((4 : GoInt))) {
            return { _0 : (({ colorModel : stdgo.image.color.Color.cmykmodel, width : _d._width, height : _d._height } : stdgo.image.Image.Config)).__copy__(), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : new stdgo.image.Image.Config().__copy__(), _1 : new FormatError("missing SOF marker") };
    }
/**
    // min returns the minimum of two integers.
**/
function _min(_x:GoInt, _y:GoInt):GoInt {
        if (_x < _y) {
            return _x;
        };
        return _y;
    }
/**
    // div returns a/b rounded to the nearest integer, instead of rounded to zero.
**/
function _div(_a:GoInt32, _b:GoInt32):GoInt32 {
        if (_a >= ((0 : GoInt32))) {
            return (_a + ((_b >> ((1 : GoUnTypedInt))))) / _b;
        };
        return -((-_a + ((_b >> ((1 : GoUnTypedInt))))) / _b);
    }
/**
    // toYCbCr converts the 8x8 region of m whose top-left corner is p to its
    // YCbCr values.
**/
function _toYCbCr(_m:stdgo.image.Image.Image, _p:stdgo.image.Image.Point, _yBlock:Pointer<T_block>, _cbBlock:Pointer<T_block>, _crBlock:Pointer<T_block>):Void {
        var _b:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
        var _xmax:GoInt = _b.max.x - ((1 : GoInt));
        var _ymax:GoInt = _b.max.y - ((1 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < ((8 : GoInt)), _j++, {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((8 : GoInt)), _i++, {
                        var __tmp__ = _m.at(_min(_p.x + _i, _xmax), _min(_p.y + _j, _ymax)).rgba(), _r:GoUInt32 = __tmp__._0, _g:GoUInt32 = __tmp__._1, _b:GoUInt32 = __tmp__._2, _:GoUInt32 = __tmp__._3;
                        var __tmp__ = stdgo.image.color.Color.rgbtoYCbCr((((_r >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_g >> ((8 : GoUnTypedInt))) : GoUInt8)), (((_b >> ((8 : GoUnTypedInt))) : GoUInt8))), _yy:GoUInt8 = __tmp__._0, _cb:GoUInt8 = __tmp__._1, _cr:GoUInt8 = __tmp__._2;
                        _yBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_yy : GoInt32));
                        _cbBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_cb : GoInt32));
                        _crBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_cr : GoInt32));
                    });
                };
            });
        };
    }
/**
    // grayToY stores the 8x8 region of m whose top-left corner is p in yBlock.
**/
function _grayToY(_m:Pointer<stdgo.image.Image.Gray>, _p:stdgo.image.Image.Point, _yBlock:Pointer<T_block>):Void {
        var _b:stdgo.image.Image.Rectangle = _m.value.bounds().__copy__();
        var _xmax:GoInt = _b.max.x - ((1 : GoInt));
        var _ymax:GoInt = _b.max.y - ((1 : GoInt));
        var _pix:Slice<GoUInt8> = _m.value.pix;
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < ((8 : GoInt)), _j++, {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((8 : GoInt)), _i++, {
                        var _idx:GoInt = _m.value.pixOffset(_min(_p.x + _i, _xmax), _min(_p.y + _j, _ymax));
                        _yBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_pix[_idx] : GoInt32));
                    });
                };
            });
        };
    }
/**
    // rgbaToYCbCr is a specialized version of toYCbCr for image.RGBA images.
**/
function _rgbaToYCbCr(_m:Pointer<stdgo.image.Image.RGBA>, _p:stdgo.image.Image.Point, _yBlock:Pointer<T_block>, _cbBlock:Pointer<T_block>, _crBlock:Pointer<T_block>):Void {
        var _b:stdgo.image.Image.Rectangle = _m.value.bounds().__copy__();
        var _xmax:GoInt = _b.max.x - ((1 : GoInt));
        var _ymax:GoInt = _b.max.y - ((1 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < ((8 : GoInt)), _j++, {
                var _sj:GoInt = _p.y + _j;
                if (_sj > _ymax) {
                    _sj = _ymax;
                };
                var _offset:GoInt = (_sj - _b.min.y) * _m.value.stride - _b.min.x * ((4 : GoInt));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((8 : GoInt)), _i++, {
                        var _sx:GoInt = _p.x + _i;
                        if (_sx > _xmax) {
                            _sx = _xmax;
                        };
                        var _pix:Slice<GoUInt8> = _m.value.pix.__slice__(_offset + _sx * ((4 : GoInt)));
                        var __tmp__ = stdgo.image.color.Color.rgbtoYCbCr(_pix[((0 : GoInt))], _pix[((1 : GoInt))], _pix[((2 : GoInt))]), _yy:GoUInt8 = __tmp__._0, _cb:GoUInt8 = __tmp__._1, _cr:GoUInt8 = __tmp__._2;
                        _yBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_yy : GoInt32));
                        _cbBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_cb : GoInt32));
                        _crBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_cr : GoInt32));
                    });
                };
            });
        };
    }
/**
    // yCbCrToYCbCr is a specialized version of toYCbCr for image.YCbCr images.
**/
function _yCbCrToYCbCr(_m:Pointer<stdgo.image.Image.YCbCr>, _p:stdgo.image.Image.Point, _yBlock:Pointer<T_block>, _cbBlock:Pointer<T_block>, _crBlock:Pointer<T_block>):Void {
        var _b:stdgo.image.Image.Rectangle = _m.value.bounds().__copy__();
        var _xmax:GoInt = _b.max.x - ((1 : GoInt));
        var _ymax:GoInt = _b.max.y - ((1 : GoInt));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < ((8 : GoInt)), _j++, {
                var _sy:GoInt = _p.y + _j;
                if (_sy > _ymax) {
                    _sy = _ymax;
                };
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < ((8 : GoInt)), _i++, {
                        var _sx:GoInt = _p.x + _i;
                        if (_sx > _xmax) {
                            _sx = _xmax;
                        };
                        var _yi:GoInt = _m.value.yoffset(_sx, _sy);
                        var _ci:GoInt = _m.value.coffset(_sx, _sy);
                        _yBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_m.value.y[_yi] : GoInt32));
                        _cbBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_m.value.cb[_ci] : GoInt32));
                        _crBlock.value.__t__[((8 : GoInt)) * _j + _i] = ((_m.value.cr[_ci] : GoInt32));
                    });
                };
            });
        };
    }
/**
    // scale scales the 16x16 region represented by the 4 src blocks to the 8x8
    // dst block.
**/
function _scale(_dst:Pointer<T_block>, _src:Pointer<GoArray<T_block>>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                var _dstOff:GoInt = ((_i & ((2 : GoInt))) << ((4 : GoUnTypedInt))) | ((_i & ((1 : GoInt))) << ((2 : GoUnTypedInt)));
                {
                    var _y:GoInt = ((0 : GoInt));
                    Go.cfor(_y < ((4 : GoInt)), _y++, {
                        {
                            var _x:GoInt = ((0 : GoInt));
                            Go.cfor(_x < ((4 : GoInt)), _x++, {
                                var _j:GoInt = ((16 : GoInt)) * _y + ((2 : GoInt)) * _x;
                                var _sum:GoInt32 = _src.value[_i].__t__[_j] + _src.value[_i].__t__[_j + ((1 : GoInt))] + _src.value[_i].__t__[_j + ((8 : GoInt))] + _src.value[_i].__t__[_j + ((9 : GoInt))];
                                _dst.value.__t__[((8 : GoInt)) * _y + _x + _dstOff] = ((_sum + ((2 : GoInt32))) >> ((2 : GoUnTypedInt)));
                            });
                        };
                    });
                };
            });
        };
    }
/**
    // Encode writes the Image m to w in JPEG 4:2:0 baseline format with the given
    // options. Default parameters are used if a nil *Options is passed.
**/
function encode(_w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image, _o:Pointer<Options>):Error {
        var _b:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
        if (_b.dx() >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) || _b.dy() >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
            return stdgo.errors.Errors.new_("jpeg: image is too large to encode");
        };
        var _e:T_encoder = new T_encoder();
        {
            var __tmp__ = try {
                { value : ((_w.__underlying__().value : T_writer)), ok : true };
            } catch(_) {
                { value : ((null : T_writer)), ok : false };
            }, _ww = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _e._w = _ww;
            } else {
                _e._w = bufio.Bufio.newWriter(_w).value;
            };
        };
        var _quality:GoInt = defaultQuality;
        if (_o != null && !_o.isNil()) {
            _quality = _o.value.quality;
            if (_quality < ((1 : GoInt))) {
                _quality = ((1 : GoInt));
            } else if (_quality > ((100 : GoInt))) {
                _quality = ((100 : GoInt));
            };
        };
        var _scale:GoInt = ((0 : GoInt));
        if (_quality < ((50 : GoInt))) {
            _scale = ((5000 : GoInt)) / _quality;
        } else {
            _scale = ((200 : GoInt)) - _quality * ((2 : GoInt));
        };
        {
            var _i;
            for (_obj in _e._quant.keyValueIterator()) {
                _i = _obj.key;
                {
                    var _j;
                    for (_obj in _e._quant[_i].keyValueIterator()) {
                        _j = _obj.key;
                        var _x:GoInt = ((_unscaledQuant[_i][_j] : GoInt));
                        _x = (_x * _scale + ((50 : GoInt))) / ((100 : GoInt));
                        if (_x < ((1 : GoInt))) {
                            _x = ((1 : GoInt));
                        } else if (_x > ((255 : GoInt))) {
                            _x = ((255 : GoInt));
                        };
                        _e._quant[_i][_j] = ((_x : GoUInt8));
                    };
                };
            };
        };
        var _nComponent:GoInt = ((3 : GoInt));
        if (Go.assertable(((_m : Pointer<stdgo.image.Image.Gray>)))) {
            _nComponent = ((1 : GoInt));
        };
        _e._buf[((0 : GoInt))] = ((255 : GoUInt8));
        _e._buf[((1 : GoInt))] = ((216 : GoUInt8));
        _e._write(_e._buf.__slice__(0, ((2 : GoInt))));
        _e._writeDQT();
        _e._writeSOF0(_b.size().__copy__(), _nComponent);
        _e._writeDHT(_nComponent);
        _e._writeSOS(_m);
        _e._buf[((0 : GoInt))] = ((255 : GoUInt8));
        _e._buf[((1 : GoInt))] = ((217 : GoUInt8));
        _e._write(_e._buf.__slice__(0, ((2 : GoInt))));
        _e._flush();
        return _e._err;
    }
@:keep var _ = {
        try {
            stdgo.image.Image.registerFormat("jpeg", "\\xff\\xd8", decode, decodeConfig);
            {
                var _i;
                var _s;
                for (_obj in _theHuffmanSpec.keyValueIterator()) {
                    _i = _obj.key;
                    _s = _obj.value;
                    _theHuffmanLUT[_i]._init(_s.__copy__());
                };
            };
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class FormatError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class UnsupportedError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_decoder_extension_fields {
    public function _ensureNBits(__tmp__, _n:GoInt32):Error return __tmp__._ensureNBits(_n);
    public function _receiveExtend(__tmp__, _t:GoUInt8):{ var _0 : GoInt32; var _1 : Error; } return __tmp__._receiveExtend(_t);
    public function _processDHT(__tmp__, _n:GoInt):Error return __tmp__._processDHT(_n);
    public function _decodeHuffman(__tmp__, _h:Pointer<T_huffman>):{ var _0 : GoUInt8; var _1 : Error; } return __tmp__._decodeHuffman(_h);
    public function _decodeBit(__tmp__):{ var _0 : Bool; var _1 : Error; } return __tmp__._decodeBit();
    public function _decodeBits(__tmp__, _n:GoInt32):{ var _0 : GoUInt32; var _1 : Error; } return __tmp__._decodeBits(_n);
    public function _fill(__tmp__):Error return __tmp__._fill();
    public function _unreadByteStuffedByte(__tmp__):Void __tmp__._unreadByteStuffedByte();
    public function _readByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__._readByte();
    public function _readByteStuffedByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__._readByteStuffedByte();
    public function _readFull(__tmp__, _p:Slice<GoByte>):Error return __tmp__._readFull(_p);
    public function _ignore(__tmp__, _n:GoInt):Error return __tmp__._ignore(_n);
    public function _processSOF(__tmp__, _n:GoInt):Error return __tmp__._processSOF(_n);
    public function _processDQT(__tmp__, _n:GoInt):Error return __tmp__._processDQT(_n);
    public function _processDRI(__tmp__, _n:GoInt):Error return __tmp__._processDRI(_n);
    public function _processApp0Marker(__tmp__, _n:GoInt):Error return __tmp__._processApp0Marker(_n);
    public function _processApp14Marker(__tmp__, _n:GoInt):Error return __tmp__._processApp14Marker(_n);
    public function _decode(__tmp__, _r:stdgo.io.Io.Reader, _configOnly:Bool):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } return __tmp__._decode(_r, _configOnly);
    public function _applyBlack(__tmp__):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } return __tmp__._applyBlack();
    public function _isRGB(__tmp__):Bool return __tmp__._isRGB();
    public function _convertToRGB(__tmp__):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } return __tmp__._convertToRGB();
    public function _makeImg(__tmp__, _mxx:GoInt, _myy:GoInt):Void __tmp__._makeImg(_mxx, _myy);
    public function _processSOS(__tmp__, _n:GoInt):Error return __tmp__._processSOS(_n);
    public function _refine(__tmp__, _b:Pointer<T_block>, _h:Pointer<T_huffman>, _zigStart:GoInt32, _zigEnd:GoInt32, _delta:GoInt32):Error return __tmp__._refine(_b, _h, _zigStart, _zigEnd, _delta);
    public function _refineNonZeroes(__tmp__, _b:Pointer<T_block>, _zig:GoInt32, _zigEnd:GoInt32, _nz:GoInt32, _delta:GoInt32):{ var _0 : GoInt32; var _1 : Error; } return __tmp__._refineNonZeroes(_b, _zig, _zigEnd, _nz, _delta);
    public function _reconstructProgressiveImage(__tmp__):Error return __tmp__._reconstructProgressiveImage();
    public function _reconstructBlock(__tmp__, _b:Pointer<T_block>, _bx:GoInt, _by:GoInt, _compIndex:GoInt):Error return __tmp__._reconstructBlock(_b, _bx, _by, _compIndex);
}
class T_huffmanLUT_extension_fields {
    public function _init(__tmp__, _s:T_huffmanSpec):Void __tmp__._init(_s);
}
class T_encoder_extension_fields {
    public function _flush(__tmp__):Void __tmp__._flush();
    public function _write(__tmp__, _p:Slice<GoByte>):Void __tmp__._write(_p);
    public function _writeByte(__tmp__, _b:GoByte):Void __tmp__._writeByte(_b);
    public function _emit(__tmp__, _bits:GoUInt32, _nBits:GoUInt32):Void __tmp__._emit(_bits, _nBits);
    public function _emitHuff(__tmp__, _h:T_huffIndex, _value:GoInt32):Void __tmp__._emitHuff(_h, _value);
    public function _emitHuffRLE(__tmp__, _h:T_huffIndex, _runLength:GoInt32, _value:GoInt32):Void __tmp__._emitHuffRLE(_h, _runLength, _value);
    public function _writeMarkerHeader(__tmp__, _marker:GoUInt8, _markerlen:GoInt):Void __tmp__._writeMarkerHeader(_marker, _markerlen);
    public function _writeDQT(__tmp__):Void __tmp__._writeDQT();
    public function _writeSOF0(__tmp__, _size:stdgo.image.Image.Point, _nComponent:GoInt):Void __tmp__._writeSOF0(_size, _nComponent);
    public function _writeDHT(__tmp__, _nComponent:GoInt):Void __tmp__._writeDHT(_nComponent);
    public function _writeBlock(__tmp__, _b:Pointer<T_block>, _q:T_quantIndex, _prevDC:GoInt32):GoInt32 return __tmp__._writeBlock(_b, _q, _prevDC);
    public function _writeSOS(__tmp__, _m:stdgo.image.Image.Image):Void __tmp__._writeSOS(_m);
}
