package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.T_interlaceScan_static_extension) abstract T_interlaceScan(stdgo._internal.image.gif.Gif_T_interlaceScan.T_interlaceScan) from stdgo._internal.image.gif.Gif_T_interlaceScan.T_interlaceScan to stdgo._internal.image.gif.Gif_T_interlaceScan.T_interlaceScan {
    public var _skip(get, set) : StdTypes.Int;
    function get__skip():StdTypes.Int return this._skip;
    function set__skip(v:StdTypes.Int):StdTypes.Int {
        this._skip = (v : stdgo.GoInt);
        return v;
    }
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_skip:StdTypes.Int, ?_start:StdTypes.Int) this = new stdgo._internal.image.gif.Gif_T_interlaceScan.T_interlaceScan((_skip : stdgo.GoInt), (_start : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
