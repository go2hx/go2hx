package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_T_errorReader_static_extension.T_errorReader_static_extension) class T_errorReader {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return this._error.error();
    public function __copy__() {
        return new T_errorReader(_error);
    }
}
