package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_regsamd64_static_extension.RegsAMD64_static_extension) class RegsAMD64 {
    public var aX : stdgo.GoUInt64 = 0;
    public var bX : stdgo.GoUInt64 = 0;
    public var cX : stdgo.GoUInt64 = 0;
    public var dX : stdgo.GoUInt64 = 0;
    public var dI : stdgo.GoUInt64 = 0;
    public var sI : stdgo.GoUInt64 = 0;
    public var bP : stdgo.GoUInt64 = 0;
    public var sP : stdgo.GoUInt64 = 0;
    public var r8 : stdgo.GoUInt64 = 0;
    public var r9 : stdgo.GoUInt64 = 0;
    public var r10 : stdgo.GoUInt64 = 0;
    public var r11 : stdgo.GoUInt64 = 0;
    public var r12 : stdgo.GoUInt64 = 0;
    public var r13 : stdgo.GoUInt64 = 0;
    public var r14 : stdgo.GoUInt64 = 0;
    public var r15 : stdgo.GoUInt64 = 0;
    public var iP : stdgo.GoUInt64 = 0;
    public var fLAGS : stdgo.GoUInt64 = 0;
    public var cS : stdgo.GoUInt64 = 0;
    public var fS : stdgo.GoUInt64 = 0;
    public var gS : stdgo.GoUInt64 = 0;
    public function new(?aX:stdgo.GoUInt64, ?bX:stdgo.GoUInt64, ?cX:stdgo.GoUInt64, ?dX:stdgo.GoUInt64, ?dI:stdgo.GoUInt64, ?sI:stdgo.GoUInt64, ?bP:stdgo.GoUInt64, ?sP:stdgo.GoUInt64, ?r8:stdgo.GoUInt64, ?r9:stdgo.GoUInt64, ?r10:stdgo.GoUInt64, ?r11:stdgo.GoUInt64, ?r12:stdgo.GoUInt64, ?r13:stdgo.GoUInt64, ?r14:stdgo.GoUInt64, ?r15:stdgo.GoUInt64, ?iP:stdgo.GoUInt64, ?fLAGS:stdgo.GoUInt64, ?cS:stdgo.GoUInt64, ?fS:stdgo.GoUInt64, ?gS:stdgo.GoUInt64) {
        if (aX != null) this.aX = aX;
        if (bX != null) this.bX = bX;
        if (cX != null) this.cX = cX;
        if (dX != null) this.dX = dX;
        if (dI != null) this.dI = dI;
        if (sI != null) this.sI = sI;
        if (bP != null) this.bP = bP;
        if (sP != null) this.sP = sP;
        if (r8 != null) this.r8 = r8;
        if (r9 != null) this.r9 = r9;
        if (r10 != null) this.r10 = r10;
        if (r11 != null) this.r11 = r11;
        if (r12 != null) this.r12 = r12;
        if (r13 != null) this.r13 = r13;
        if (r14 != null) this.r14 = r14;
        if (r15 != null) this.r15 = r15;
        if (iP != null) this.iP = iP;
        if (fLAGS != null) this.fLAGS = fLAGS;
        if (cS != null) this.cS = cS;
        if (fS != null) this.fS = fS;
        if (gS != null) this.gS = gS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegsAMD64(
aX,
bX,
cX,
dX,
dI,
sI,
bP,
sP,
r8,
r9,
r10,
r11,
r12,
r13,
r14,
r15,
iP,
fLAGS,
cS,
fS,
gS);
    }
}
