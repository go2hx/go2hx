package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.T_nobitsSectionReader_static_extension) abstract T_nobitsSectionReader(stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader) from stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader to stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader {
    public function new() this = new stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
