package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.elf.Elf_fileheader.FileHeader = ({} : stdgo._internal.debug.elf.Elf_fileheader.FileHeader);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>);
    public var progs : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>);
    public var _closer : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public var _gnuNeed : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed> = (null : stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>);
    public var _gnuVersym : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?fileHeader:stdgo._internal.debug.elf.Elf_fileheader.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section>>, ?progs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_prog.Prog>>, ?_closer:stdgo._internal.io.Io_closer.Closer, ?_gnuNeed:stdgo.Slice<stdgo._internal.debug.elf.Elf_t_verneed.T_verneed>, ?_gnuVersym:stdgo.Slice<stdgo.GoUInt8>) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (progs != null) this.progs = progs;
        if (_closer != null) this._closer = _closer;
        if (_gnuNeed != null) this._gnuNeed = _gnuNeed;
        if (_gnuVersym != null) this._gnuVersym = _gnuVersym;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, progs, _closer, _gnuNeed, _gnuVersym);
    }
}
