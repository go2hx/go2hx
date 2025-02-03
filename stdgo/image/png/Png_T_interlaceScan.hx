package stdgo.image.png;
@:structInit @:using(stdgo.image.png.Png.T_interlaceScan_static_extension) abstract T_interlaceScan(stdgo._internal.image.png.Png_T_interlaceScan.T_interlaceScan) from stdgo._internal.image.png.Png_T_interlaceScan.T_interlaceScan to stdgo._internal.image.png.Png_T_interlaceScan.T_interlaceScan {
    public var _xFactor(get, set) : StdTypes.Int;
    function get__xFactor():StdTypes.Int return this._xFactor;
    function set__xFactor(v:StdTypes.Int):StdTypes.Int {
        this._xFactor = (v : stdgo.GoInt);
        return v;
    }
    public var _yFactor(get, set) : StdTypes.Int;
    function get__yFactor():StdTypes.Int return this._yFactor;
    function set__yFactor(v:StdTypes.Int):StdTypes.Int {
        this._yFactor = (v : stdgo.GoInt);
        return v;
    }
    public var _xOffset(get, set) : StdTypes.Int;
    function get__xOffset():StdTypes.Int return this._xOffset;
    function set__xOffset(v:StdTypes.Int):StdTypes.Int {
        this._xOffset = (v : stdgo.GoInt);
        return v;
    }
    public var _yOffset(get, set) : StdTypes.Int;
    function get__yOffset():StdTypes.Int return this._yOffset;
    function set__yOffset(v:StdTypes.Int):StdTypes.Int {
        this._yOffset = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_xFactor:StdTypes.Int, ?_yFactor:StdTypes.Int, ?_xOffset:StdTypes.Int, ?_yOffset:StdTypes.Int) this = new stdgo._internal.image.png.Png_T_interlaceScan.T_interlaceScan((_xFactor : stdgo.GoInt), (_yFactor : stdgo.GoInt), (_xOffset : stdgo.GoInt), (_yOffset : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
