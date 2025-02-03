package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.LineEntry_static_extension) abstract LineEntry(stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry) from stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry to stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry {
    public var address(get, set) : haxe.UInt64;
    function get_address():haxe.UInt64 return this.address;
    function set_address(v:haxe.UInt64):haxe.UInt64 {
        this.address = (v : stdgo.GoUInt64);
        return v;
    }
    public var opIndex(get, set) : StdTypes.Int;
    function get_opIndex():StdTypes.Int return this.opIndex;
    function set_opIndex(v:StdTypes.Int):StdTypes.Int {
        this.opIndex = (v : stdgo.GoInt);
        return v;
    }
    public var file(get, set) : LineFile;
    function get_file():LineFile return this.file;
    function set_file(v:LineFile):LineFile {
        this.file = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var column(get, set) : StdTypes.Int;
    function get_column():StdTypes.Int return this.column;
    function set_column(v:StdTypes.Int):StdTypes.Int {
        this.column = (v : stdgo.GoInt);
        return v;
    }
    public var isStmt(get, set) : Bool;
    function get_isStmt():Bool return this.isStmt;
    function set_isStmt(v:Bool):Bool {
        this.isStmt = v;
        return v;
    }
    public var basicBlock(get, set) : Bool;
    function get_basicBlock():Bool return this.basicBlock;
    function set_basicBlock(v:Bool):Bool {
        this.basicBlock = v;
        return v;
    }
    public var prologueEnd(get, set) : Bool;
    function get_prologueEnd():Bool return this.prologueEnd;
    function set_prologueEnd(v:Bool):Bool {
        this.prologueEnd = v;
        return v;
    }
    public var epilogueBegin(get, set) : Bool;
    function get_epilogueBegin():Bool return this.epilogueBegin;
    function set_epilogueBegin(v:Bool):Bool {
        this.epilogueBegin = v;
        return v;
    }
    public var iSA(get, set) : StdTypes.Int;
    function get_iSA():StdTypes.Int return this.iSA;
    function set_iSA(v:StdTypes.Int):StdTypes.Int {
        this.iSA = (v : stdgo.GoInt);
        return v;
    }
    public var discriminator(get, set) : StdTypes.Int;
    function get_discriminator():StdTypes.Int return this.discriminator;
    function set_discriminator(v:StdTypes.Int):StdTypes.Int {
        this.discriminator = (v : stdgo.GoInt);
        return v;
    }
    public var endSequence(get, set) : Bool;
    function get_endSequence():Bool return this.endSequence;
    function set_endSequence(v:Bool):Bool {
        this.endSequence = v;
        return v;
    }
    public function new(?address:haxe.UInt64, ?opIndex:StdTypes.Int, ?file:LineFile, ?line:StdTypes.Int, ?column:StdTypes.Int, ?isStmt:Bool, ?basicBlock:Bool, ?prologueEnd:Bool, ?epilogueBegin:Bool, ?iSA:StdTypes.Int, ?discriminator:StdTypes.Int, ?endSequence:Bool) this = new stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry(
(address : stdgo.GoUInt64),
(opIndex : stdgo.GoInt),
(file : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>),
(line : stdgo.GoInt),
(column : stdgo.GoInt),
isStmt,
basicBlock,
prologueEnd,
epilogueBegin,
(iSA : stdgo.GoInt),
(discriminator : stdgo.GoInt),
endSequence);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
