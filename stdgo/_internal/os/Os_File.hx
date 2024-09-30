package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_File_static_extension.File_static_extension) class File {
    @:embedded
    public var _file : stdgo.Ref<stdgo._internal.os.Os_T_file.T_file> = (null : stdgo.Ref<stdgo._internal.os.Os_T_file.T_file>);
    @:local
    var _input : haxe.io.Input = null;
    @:local
    var _output : haxe.io.Output = null;
    public function new(?_file:stdgo.Ref<stdgo._internal.os.Os_T_file.T_file>, ?_input:haxe.io.Input, ?_output:haxe.io.Output) {
        if (_file != null) this._file = _file;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _close():stdgo.Error return this._file._close();
    public function __copy__() {
        return new File(_file, _input, _output);
    }
}
