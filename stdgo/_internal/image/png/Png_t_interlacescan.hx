package stdgo._internal.image.png;
@:structInit @:using(stdgo._internal.image.png.Png_t_interlacescan_static_extension.T_interlaceScan_static_extension) class T_interlaceScan {
    public var _xFactor : stdgo.GoInt = 0;
    public var _yFactor : stdgo.GoInt = 0;
    public var _xOffset : stdgo.GoInt = 0;
    public var _yOffset : stdgo.GoInt = 0;
    public function new(?_xFactor:stdgo.GoInt, ?_yFactor:stdgo.GoInt, ?_xOffset:stdgo.GoInt, ?_yOffset:stdgo.GoInt) {
        if (_xFactor != null) this._xFactor = _xFactor;
        if (_yFactor != null) this._yFactor = _yFactor;
        if (_xOffset != null) this._xOffset = _xOffset;
        if (_yOffset != null) this._yOffset = _yOffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_interlaceScan(_xFactor, _yFactor, _xOffset, _yOffset);
    }
}
