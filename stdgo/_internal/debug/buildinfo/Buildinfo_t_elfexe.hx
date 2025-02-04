package stdgo._internal.debug.buildinfo;
@:structInit @:using(stdgo._internal.debug.buildinfo.Buildinfo_t_elfexe_static_extension.T_elfExe_static_extension) class T_elfExe {
    public var _f : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = (null : stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>);
    public function new(?_f:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File>) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_elfExe(_f);
    }
}
