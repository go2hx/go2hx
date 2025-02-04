package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_lineentry_static_extension.LineEntry_static_extension) class LineEntry {
    public var address : stdgo.GoUInt64 = 0;
    public var opIndex : stdgo.GoInt = 0;
    public var file : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>);
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public var isStmt : Bool = false;
    public var basicBlock : Bool = false;
    public var prologueEnd : Bool = false;
    public var epilogueBegin : Bool = false;
    public var iSA : stdgo.GoInt = 0;
    public var discriminator : stdgo.GoInt = 0;
    public var endSequence : Bool = false;
    public function new(?address:stdgo.GoUInt64, ?opIndex:stdgo.GoInt, ?file:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?isStmt:Bool, ?basicBlock:Bool, ?prologueEnd:Bool, ?epilogueBegin:Bool, ?iSA:stdgo.GoInt, ?discriminator:stdgo.GoInt, ?endSequence:Bool) {
        if (address != null) this.address = address;
        if (opIndex != null) this.opIndex = opIndex;
        if (file != null) this.file = file;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
        if (isStmt != null) this.isStmt = isStmt;
        if (basicBlock != null) this.basicBlock = basicBlock;
        if (prologueEnd != null) this.prologueEnd = prologueEnd;
        if (epilogueBegin != null) this.epilogueBegin = epilogueBegin;
        if (iSA != null) this.iSA = iSA;
        if (discriminator != null) this.discriminator = discriminator;
        if (endSequence != null) this.endSequence = endSequence;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LineEntry(
address,
opIndex,
file,
line,
column,
isStmt,
basicBlock,
prologueEnd,
epilogueBegin,
iSA,
discriminator,
endSequence);
    }
}
