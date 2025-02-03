package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.File_static_extension) abstract File(stdgo._internal.debug.macho.Macho_File.File) from stdgo._internal.debug.macho.Macho_File.File to stdgo._internal.debug.macho.Macho_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var byteOrder(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get_byteOrder():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this.byteOrder;
    function set_byteOrder(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this.byteOrder = v;
        return v;
    }
    public var loads(get, set) : Array<Load>;
    function get_loads():Array<Load> return [for (i in this.loads) i];
    function set_loads(v:Array<Load>):Array<Load> {
        this.loads = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>);
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>);
        return v;
    }
    public var symtab(get, set) : Symtab;
    function get_symtab():Symtab return this.symtab;
    function set_symtab(v:Symtab):Symtab {
        this.symtab = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>);
        return v;
    }
    public var dysymtab(get, set) : Dysymtab;
    function get_dysymtab():Dysymtab return this.dysymtab;
    function set_dysymtab(v:Dysymtab):Dysymtab {
        this.dysymtab = (v : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?loads:Array<Load>, ?sections:Array<Section>, ?symtab:Symtab, ?dysymtab:Dysymtab, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.macho.Macho_File.File(fileHeader, byteOrder, ([for (i in loads) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>), ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>), (symtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>), (dysymtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
