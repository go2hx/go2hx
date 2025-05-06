package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _source : stdgo.GoString = "";
    public var _golden : stdgo.GoString = "";
    public var _mode : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode);
    public function new(?_source:stdgo.GoString, ?_golden:stdgo.GoString, ?_mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) {
        if (_source != null) this._source = _source;
        if (_golden != null) this._golden = _golden;
        if (_mode != null) this._mode = _mode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_source, _golden, _mode);
    }
}
