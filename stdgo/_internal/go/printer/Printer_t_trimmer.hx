package stdgo._internal.go.printer;
@:structInit @:using(stdgo._internal.go.printer.Printer_t_trimmer_static_extension.T_trimmer_static_extension) class T_trimmer {
    public var _output : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _state : stdgo.GoInt = 0;
    public var _space : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_state:stdgo.GoInt, ?_space:stdgo.Slice<stdgo.GoUInt8>) {
        if (_output != null) this._output = _output;
        if (_state != null) this._state = _state;
        if (_space != null) this._space = _space;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_trimmer(_output, _state, _space);
    }
}
