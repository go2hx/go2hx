package stdgo.debug.buildinfo;
@:structInit @:using(stdgo.debug.buildinfo.Buildinfo.T_elfExe_static_extension) abstract T_elfExe(stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe) from stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe to stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe {
    public var _f(get, set) : stdgo._internal.debug.elf.Elf_File.File;
    function get__f():stdgo._internal.debug.elf.Elf_File.File return this._f;
    function set__f(v:stdgo._internal.debug.elf.Elf_File.File):stdgo._internal.debug.elf.Elf_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>);
        return v;
    }
    public function new(?_f:stdgo._internal.debug.elf.Elf_File.File) this = new stdgo._internal.debug.buildinfo.Buildinfo_T_elfExe.T_elfExe((_f : stdgo.Ref<stdgo._internal.debug.elf.Elf_File.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
