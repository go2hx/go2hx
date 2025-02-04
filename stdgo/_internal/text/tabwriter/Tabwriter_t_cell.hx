package stdgo._internal.text.tabwriter;
@:structInit @:using(stdgo._internal.text.tabwriter.Tabwriter_t_cell_static_extension.T_cell_static_extension) class T_cell {
    public var _size : stdgo.GoInt = 0;
    public var _width : stdgo.GoInt = 0;
    public var _htab : Bool = false;
    public function new(?_size:stdgo.GoInt, ?_width:stdgo.GoInt, ?_htab:Bool) {
        if (_size != null) this._size = _size;
        if (_width != null) this._width = _width;
        if (_htab != null) this._htab = _htab;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cell(_size, _width, _htab);
    }
}
