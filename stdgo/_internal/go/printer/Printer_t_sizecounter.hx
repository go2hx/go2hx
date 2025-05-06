package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_sizecounter_static_extension.T_sizeCounter_static_extension) class T_sizeCounter {
    public var _hasNewline : Bool = false;
    public var _size : stdgo.GoInt = 0;
    public function new(?_hasNewline:Bool, ?_size:stdgo.GoInt) {
        if (_hasNewline != null) this._hasNewline = _hasNewline;
        if (_size != null) this._size = _size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sizeCounter(_hasNewline, _size);
    }
}
