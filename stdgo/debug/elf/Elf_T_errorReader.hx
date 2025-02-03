package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.T_errorReader_static_extension) abstract T_errorReader(stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader) from stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader to stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = (v : stdgo.Error);
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.debug.elf.Elf_T_errorReader.T_errorReader((_error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
