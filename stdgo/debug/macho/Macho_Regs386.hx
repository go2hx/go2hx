package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Regs386_static_extension) abstract Regs386(stdgo._internal.debug.macho.Macho_Regs386.Regs386) from stdgo._internal.debug.macho.Macho_Regs386.Regs386 to stdgo._internal.debug.macho.Macho_Regs386.Regs386 {
    public var aX(get, set) : std.UInt;
    function get_aX():std.UInt return this.aX;
    function set_aX(v:std.UInt):std.UInt {
        this.aX = (v : stdgo.GoUInt32);
        return v;
    }
    public var bX(get, set) : std.UInt;
    function get_bX():std.UInt return this.bX;
    function set_bX(v:std.UInt):std.UInt {
        this.bX = (v : stdgo.GoUInt32);
        return v;
    }
    public var cX(get, set) : std.UInt;
    function get_cX():std.UInt return this.cX;
    function set_cX(v:std.UInt):std.UInt {
        this.cX = (v : stdgo.GoUInt32);
        return v;
    }
    public var dX(get, set) : std.UInt;
    function get_dX():std.UInt return this.dX;
    function set_dX(v:std.UInt):std.UInt {
        this.dX = (v : stdgo.GoUInt32);
        return v;
    }
    public var dI(get, set) : std.UInt;
    function get_dI():std.UInt return this.dI;
    function set_dI(v:std.UInt):std.UInt {
        this.dI = (v : stdgo.GoUInt32);
        return v;
    }
    public var sI(get, set) : std.UInt;
    function get_sI():std.UInt return this.sI;
    function set_sI(v:std.UInt):std.UInt {
        this.sI = (v : stdgo.GoUInt32);
        return v;
    }
    public var bP(get, set) : std.UInt;
    function get_bP():std.UInt return this.bP;
    function set_bP(v:std.UInt):std.UInt {
        this.bP = (v : stdgo.GoUInt32);
        return v;
    }
    public var sP(get, set) : std.UInt;
    function get_sP():std.UInt return this.sP;
    function set_sP(v:std.UInt):std.UInt {
        this.sP = (v : stdgo.GoUInt32);
        return v;
    }
    public var sS(get, set) : std.UInt;
    function get_sS():std.UInt return this.sS;
    function set_sS(v:std.UInt):std.UInt {
        this.sS = (v : stdgo.GoUInt32);
        return v;
    }
    public var fLAGS(get, set) : std.UInt;
    function get_fLAGS():std.UInt return this.fLAGS;
    function set_fLAGS(v:std.UInt):std.UInt {
        this.fLAGS = (v : stdgo.GoUInt32);
        return v;
    }
    public var iP(get, set) : std.UInt;
    function get_iP():std.UInt return this.iP;
    function set_iP(v:std.UInt):std.UInt {
        this.iP = (v : stdgo.GoUInt32);
        return v;
    }
    public var cS(get, set) : std.UInt;
    function get_cS():std.UInt return this.cS;
    function set_cS(v:std.UInt):std.UInt {
        this.cS = (v : stdgo.GoUInt32);
        return v;
    }
    public var dS(get, set) : std.UInt;
    function get_dS():std.UInt return this.dS;
    function set_dS(v:std.UInt):std.UInt {
        this.dS = (v : stdgo.GoUInt32);
        return v;
    }
    public var eS(get, set) : std.UInt;
    function get_eS():std.UInt return this.eS;
    function set_eS(v:std.UInt):std.UInt {
        this.eS = (v : stdgo.GoUInt32);
        return v;
    }
    public var fS(get, set) : std.UInt;
    function get_fS():std.UInt return this.fS;
    function set_fS(v:std.UInt):std.UInt {
        this.fS = (v : stdgo.GoUInt32);
        return v;
    }
    public var gS(get, set) : std.UInt;
    function get_gS():std.UInt return this.gS;
    function set_gS(v:std.UInt):std.UInt {
        this.gS = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?aX:std.UInt, ?bX:std.UInt, ?cX:std.UInt, ?dX:std.UInt, ?dI:std.UInt, ?sI:std.UInt, ?bP:std.UInt, ?sP:std.UInt, ?sS:std.UInt, ?fLAGS:std.UInt, ?iP:std.UInt, ?cS:std.UInt, ?dS:std.UInt, ?eS:std.UInt, ?fS:std.UInt, ?gS:std.UInt) this = new stdgo._internal.debug.macho.Macho_Regs386.Regs386(
(aX : stdgo.GoUInt32),
(bX : stdgo.GoUInt32),
(cX : stdgo.GoUInt32),
(dX : stdgo.GoUInt32),
(dI : stdgo.GoUInt32),
(sI : stdgo.GoUInt32),
(bP : stdgo.GoUInt32),
(sP : stdgo.GoUInt32),
(sS : stdgo.GoUInt32),
(fLAGS : stdgo.GoUInt32),
(iP : stdgo.GoUInt32),
(cS : stdgo.GoUInt32),
(dS : stdgo.GoUInt32),
(eS : stdgo.GoUInt32),
(fS : stdgo.GoUInt32),
(gS : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
