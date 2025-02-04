package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_regs386_static_extension.Regs386_static_extension) class Regs386 {
    public var aX : stdgo.GoUInt32 = 0;
    public var bX : stdgo.GoUInt32 = 0;
    public var cX : stdgo.GoUInt32 = 0;
    public var dX : stdgo.GoUInt32 = 0;
    public var dI : stdgo.GoUInt32 = 0;
    public var sI : stdgo.GoUInt32 = 0;
    public var bP : stdgo.GoUInt32 = 0;
    public var sP : stdgo.GoUInt32 = 0;
    public var sS : stdgo.GoUInt32 = 0;
    public var fLAGS : stdgo.GoUInt32 = 0;
    public var iP : stdgo.GoUInt32 = 0;
    public var cS : stdgo.GoUInt32 = 0;
    public var dS : stdgo.GoUInt32 = 0;
    public var eS : stdgo.GoUInt32 = 0;
    public var fS : stdgo.GoUInt32 = 0;
    public var gS : stdgo.GoUInt32 = 0;
    public function new(?aX:stdgo.GoUInt32, ?bX:stdgo.GoUInt32, ?cX:stdgo.GoUInt32, ?dX:stdgo.GoUInt32, ?dI:stdgo.GoUInt32, ?sI:stdgo.GoUInt32, ?bP:stdgo.GoUInt32, ?sP:stdgo.GoUInt32, ?sS:stdgo.GoUInt32, ?fLAGS:stdgo.GoUInt32, ?iP:stdgo.GoUInt32, ?cS:stdgo.GoUInt32, ?dS:stdgo.GoUInt32, ?eS:stdgo.GoUInt32, ?fS:stdgo.GoUInt32, ?gS:stdgo.GoUInt32) {
        if (aX != null) this.aX = aX;
        if (bX != null) this.bX = bX;
        if (cX != null) this.cX = cX;
        if (dX != null) this.dX = dX;
        if (dI != null) this.dI = dI;
        if (sI != null) this.sI = sI;
        if (bP != null) this.bP = bP;
        if (sP != null) this.sP = sP;
        if (sS != null) this.sS = sS;
        if (fLAGS != null) this.fLAGS = fLAGS;
        if (iP != null) this.iP = iP;
        if (cS != null) this.cS = cS;
        if (dS != null) this.dS = dS;
        if (eS != null) this.eS = eS;
        if (fS != null) this.fS = fS;
        if (gS != null) this.gS = gS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regs386(
aX,
bX,
cX,
dX,
dI,
sI,
bP,
sP,
sS,
fLAGS,
iP,
cS,
dS,
eS,
fS,
gS);
    }
}
