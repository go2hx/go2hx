package stdgo._internal.image.jpeg;
@:structInit class T_huffman {
    public var _nCodes : stdgo.GoInt32 = 0;
    public var _lut : stdgo.GoArray<stdgo.GoUInt16> = new stdgo.GoArray<stdgo.GoUInt16>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt16)]);
    public var _vals : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public var _minCodes : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoInt32)]);
    public var _maxCodes : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoInt32)]);
    public var _valsIndices : stdgo.GoArray<stdgo.GoInt32> = new stdgo.GoArray<stdgo.GoInt32>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoInt32)]);
    public function new(?_nCodes:stdgo.GoInt32, ?_lut:stdgo.GoArray<stdgo.GoUInt16>, ?_vals:stdgo.GoArray<stdgo.GoUInt8>, ?_minCodes:stdgo.GoArray<stdgo.GoInt32>, ?_maxCodes:stdgo.GoArray<stdgo.GoInt32>, ?_valsIndices:stdgo.GoArray<stdgo.GoInt32>) {
        if (_nCodes != null) this._nCodes = _nCodes;
        if (_lut != null) this._lut = _lut;
        if (_vals != null) this._vals = _vals;
        if (_minCodes != null) this._minCodes = _minCodes;
        if (_maxCodes != null) this._maxCodes = _maxCodes;
        if (_valsIndices != null) this._valsIndices = _valsIndices;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffman(_nCodes, _lut, _vals, _minCodes, _maxCodes, _valsIndices);
    }
}
