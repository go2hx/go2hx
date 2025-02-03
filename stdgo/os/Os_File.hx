package stdgo.os;
@:structInit @:using(stdgo.os.Os.File_static_extension) abstract File(stdgo._internal.os.Os_File.File) from stdgo._internal.os.Os_File.File to stdgo._internal.os.Os_File.File {
    public var _file(get, set) : T_file;
    function get__file():T_file return this._file;
    function set__file(v:T_file):T_file {
        this._file = (v : stdgo.Ref<stdgo._internal.os.Os_T_file.T_file>);
        return v;
    }
    public function new(?_file:T_file, ?_input:haxe.io.Input, ?_output:haxe.io.Output) this = new stdgo._internal.os.Os_File.File((_file : stdgo.Ref<stdgo._internal.os.Os_T_file.T_file>), _input, _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
