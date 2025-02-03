package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.File_static_extension) abstract File(stdgo._internal.debug.elf.Elf_File.File) from stdgo._internal.debug.elf.Elf_File.File to stdgo._internal.debug.elf.Elf_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>);
        return v;
    }
    public var progs(get, set) : Array<Prog>;
    function get_progs():Array<Prog> return [for (i in this.progs) i];
    function set_progs(v:Array<Prog>):Array<Prog> {
        this.progs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public var _gnuNeed(get, set) : Array<T_verneed>;
    function get__gnuNeed():Array<T_verneed> return [for (i in this._gnuNeed) i];
    function set__gnuNeed(v:Array<T_verneed>):Array<T_verneed> {
        this._gnuNeed = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>);
        return v;
    }
    public var _gnuVersym(get, set) : Array<std.UInt>;
    function get__gnuVersym():Array<std.UInt> return [for (i in this._gnuVersym) i];
    function set__gnuVersym(v:Array<std.UInt>):Array<std.UInt> {
        this._gnuVersym = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?progs:Array<Prog>, ?_closer:stdgo._internal.io.Io_Closer.Closer, ?_gnuNeed:Array<T_verneed>, ?_gnuVersym:Array<std.UInt>) this = new stdgo._internal.debug.elf.Elf_File.File(fileHeader, ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Section.Section>>), ([for (i in progs) (i : stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>>), _closer, ([for (i in _gnuNeed) i] : stdgo.Slice<stdgo._internal.debug.elf.Elf_T_verneed.T_verneed>), ([for (i in _gnuVersym) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
