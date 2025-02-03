package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.DysymtabCmd_static_extension) abstract DysymtabCmd(stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd) from stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd to stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var ilocalsym(get, set) : std.UInt;
    function get_ilocalsym():std.UInt return this.ilocalsym;
    function set_ilocalsym(v:std.UInt):std.UInt {
        this.ilocalsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlocalsym(get, set) : std.UInt;
    function get_nlocalsym():std.UInt return this.nlocalsym;
    function set_nlocalsym(v:std.UInt):std.UInt {
        this.nlocalsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var iextdefsym(get, set) : std.UInt;
    function get_iextdefsym():std.UInt return this.iextdefsym;
    function set_iextdefsym(v:std.UInt):std.UInt {
        this.iextdefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextdefsym(get, set) : std.UInt;
    function get_nextdefsym():std.UInt return this.nextdefsym;
    function set_nextdefsym(v:std.UInt):std.UInt {
        this.nextdefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var iundefsym(get, set) : std.UInt;
    function get_iundefsym():std.UInt return this.iundefsym;
    function set_iundefsym(v:std.UInt):std.UInt {
        this.iundefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var nundefsym(get, set) : std.UInt;
    function get_nundefsym():std.UInt return this.nundefsym;
    function set_nundefsym(v:std.UInt):std.UInt {
        this.nundefsym = (v : stdgo.GoUInt32);
        return v;
    }
    public var tocoffset(get, set) : std.UInt;
    function get_tocoffset():std.UInt return this.tocoffset;
    function set_tocoffset(v:std.UInt):std.UInt {
        this.tocoffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var ntoc(get, set) : std.UInt;
    function get_ntoc():std.UInt return this.ntoc;
    function set_ntoc(v:std.UInt):std.UInt {
        this.ntoc = (v : stdgo.GoUInt32);
        return v;
    }
    public var modtaboff(get, set) : std.UInt;
    function get_modtaboff():std.UInt return this.modtaboff;
    function set_modtaboff(v:std.UInt):std.UInt {
        this.modtaboff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nmodtab(get, set) : std.UInt;
    function get_nmodtab():std.UInt return this.nmodtab;
    function set_nmodtab(v:std.UInt):std.UInt {
        this.nmodtab = (v : stdgo.GoUInt32);
        return v;
    }
    public var extrefsymoff(get, set) : std.UInt;
    function get_extrefsymoff():std.UInt return this.extrefsymoff;
    function set_extrefsymoff(v:std.UInt):std.UInt {
        this.extrefsymoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextrefsyms(get, set) : std.UInt;
    function get_nextrefsyms():std.UInt return this.nextrefsyms;
    function set_nextrefsyms(v:std.UInt):std.UInt {
        this.nextrefsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var indirectsymoff(get, set) : std.UInt;
    function get_indirectsymoff():std.UInt return this.indirectsymoff;
    function set_indirectsymoff(v:std.UInt):std.UInt {
        this.indirectsymoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nindirectsyms(get, set) : std.UInt;
    function get_nindirectsyms():std.UInt return this.nindirectsyms;
    function set_nindirectsyms(v:std.UInt):std.UInt {
        this.nindirectsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var extreloff(get, set) : std.UInt;
    function get_extreloff():std.UInt return this.extreloff;
    function set_extreloff(v:std.UInt):std.UInt {
        this.extreloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nextrel(get, set) : std.UInt;
    function get_nextrel():std.UInt return this.nextrel;
    function set_nextrel(v:std.UInt):std.UInt {
        this.nextrel = (v : stdgo.GoUInt32);
        return v;
    }
    public var locreloff(get, set) : std.UInt;
    function get_locreloff():std.UInt return this.locreloff;
    function set_locreloff(v:std.UInt):std.UInt {
        this.locreloff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlocrel(get, set) : std.UInt;
    function get_nlocrel():std.UInt return this.nlocrel;
    function set_nlocrel(v:std.UInt):std.UInt {
        this.nlocrel = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?ilocalsym:std.UInt, ?nlocalsym:std.UInt, ?iextdefsym:std.UInt, ?nextdefsym:std.UInt, ?iundefsym:std.UInt, ?nundefsym:std.UInt, ?tocoffset:std.UInt, ?ntoc:std.UInt, ?modtaboff:std.UInt, ?nmodtab:std.UInt, ?extrefsymoff:std.UInt, ?nextrefsyms:std.UInt, ?indirectsymoff:std.UInt, ?nindirectsyms:std.UInt, ?extreloff:std.UInt, ?nextrel:std.UInt, ?locreloff:std.UInt, ?nlocrel:std.UInt) this = new stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd(
cmd,
(len : stdgo.GoUInt32),
(ilocalsym : stdgo.GoUInt32),
(nlocalsym : stdgo.GoUInt32),
(iextdefsym : stdgo.GoUInt32),
(nextdefsym : stdgo.GoUInt32),
(iundefsym : stdgo.GoUInt32),
(nundefsym : stdgo.GoUInt32),
(tocoffset : stdgo.GoUInt32),
(ntoc : stdgo.GoUInt32),
(modtaboff : stdgo.GoUInt32),
(nmodtab : stdgo.GoUInt32),
(extrefsymoff : stdgo.GoUInt32),
(nextrefsyms : stdgo.GoUInt32),
(indirectsymoff : stdgo.GoUInt32),
(nindirectsyms : stdgo.GoUInt32),
(extreloff : stdgo.GoUInt32),
(nextrel : stdgo.GoUInt32),
(locreloff : stdgo.GoUInt32),
(nlocrel : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
