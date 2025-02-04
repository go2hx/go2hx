package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_dysymtabcmd_static_extension.DysymtabCmd_static_extension) class DysymtabCmd {
    public var cmd : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var ilocalsym : stdgo.GoUInt32 = 0;
    public var nlocalsym : stdgo.GoUInt32 = 0;
    public var iextdefsym : stdgo.GoUInt32 = 0;
    public var nextdefsym : stdgo.GoUInt32 = 0;
    public var iundefsym : stdgo.GoUInt32 = 0;
    public var nundefsym : stdgo.GoUInt32 = 0;
    public var tocoffset : stdgo.GoUInt32 = 0;
    public var ntoc : stdgo.GoUInt32 = 0;
    public var modtaboff : stdgo.GoUInt32 = 0;
    public var nmodtab : stdgo.GoUInt32 = 0;
    public var extrefsymoff : stdgo.GoUInt32 = 0;
    public var nextrefsyms : stdgo.GoUInt32 = 0;
    public var indirectsymoff : stdgo.GoUInt32 = 0;
    public var nindirectsyms : stdgo.GoUInt32 = 0;
    public var extreloff : stdgo.GoUInt32 = 0;
    public var nextrel : stdgo.GoUInt32 = 0;
    public var locreloff : stdgo.GoUInt32 = 0;
    public var nlocrel : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd, ?len:stdgo.GoUInt32, ?ilocalsym:stdgo.GoUInt32, ?nlocalsym:stdgo.GoUInt32, ?iextdefsym:stdgo.GoUInt32, ?nextdefsym:stdgo.GoUInt32, ?iundefsym:stdgo.GoUInt32, ?nundefsym:stdgo.GoUInt32, ?tocoffset:stdgo.GoUInt32, ?ntoc:stdgo.GoUInt32, ?modtaboff:stdgo.GoUInt32, ?nmodtab:stdgo.GoUInt32, ?extrefsymoff:stdgo.GoUInt32, ?nextrefsyms:stdgo.GoUInt32, ?indirectsymoff:stdgo.GoUInt32, ?nindirectsyms:stdgo.GoUInt32, ?extreloff:stdgo.GoUInt32, ?nextrel:stdgo.GoUInt32, ?locreloff:stdgo.GoUInt32, ?nlocrel:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (ilocalsym != null) this.ilocalsym = ilocalsym;
        if (nlocalsym != null) this.nlocalsym = nlocalsym;
        if (iextdefsym != null) this.iextdefsym = iextdefsym;
        if (nextdefsym != null) this.nextdefsym = nextdefsym;
        if (iundefsym != null) this.iundefsym = iundefsym;
        if (nundefsym != null) this.nundefsym = nundefsym;
        if (tocoffset != null) this.tocoffset = tocoffset;
        if (ntoc != null) this.ntoc = ntoc;
        if (modtaboff != null) this.modtaboff = modtaboff;
        if (nmodtab != null) this.nmodtab = nmodtab;
        if (extrefsymoff != null) this.extrefsymoff = extrefsymoff;
        if (nextrefsyms != null) this.nextrefsyms = nextrefsyms;
        if (indirectsymoff != null) this.indirectsymoff = indirectsymoff;
        if (nindirectsyms != null) this.nindirectsyms = nindirectsyms;
        if (extreloff != null) this.extreloff = extreloff;
        if (nextrel != null) this.nextrel = nextrel;
        if (locreloff != null) this.locreloff = locreloff;
        if (nlocrel != null) this.nlocrel = nlocrel;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DysymtabCmd(
cmd,
len,
ilocalsym,
nlocalsym,
iextdefsym,
nextdefsym,
iundefsym,
nundefsym,
tocoffset,
ntoc,
modtaboff,
nmodtab,
extrefsymoff,
nextrefsyms,
indirectsymoff,
nindirectsyms,
extreloff,
nextrel,
locreloff,
nlocrel);
    }
}
