package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_limitwriter_static_extension.T_limitWriter_static_extension) class T_limitWriter {
    public var _remaining : stdgo.GoInt = 0;
    public var _errCount : stdgo.GoInt = 0;
    public function new(?_remaining:stdgo.GoInt, ?_errCount:stdgo.GoInt) {
        if (_remaining != null) this._remaining = _remaining;
        if (_errCount != null) this._errCount = _errCount;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_limitWriter(_remaining, _errCount);
    }
}
