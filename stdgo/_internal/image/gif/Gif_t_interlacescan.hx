package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_t_interlacescan_static_extension.T_interlaceScan_static_extension) class T_interlaceScan {
    public var _skip : stdgo.GoInt = 0;
    public var _start : stdgo.GoInt = 0;
    public function new(?_skip:stdgo.GoInt, ?_start:stdgo.GoInt) {
        if (_skip != null) this._skip = _skip;
        if (_start != null) this._start = _start;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_interlaceScan(_skip, _start);
    }
}
