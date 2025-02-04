package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_file_static_extension.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file> = (null : stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_t_file.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__close():() -> stdgo.Error return @:check32 this._file._close;
    public function __copy__() {
        return new File(_file, _input, _output);
    }
}
