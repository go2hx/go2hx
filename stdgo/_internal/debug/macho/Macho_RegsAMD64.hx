package stdgo._internal.debug.macho;
@:structInit class RegsAMD64 {
    public var ax : stdgo.GoUInt64 = 0;
    public var bx : stdgo.GoUInt64 = 0;
    public var cx : stdgo.GoUInt64 = 0;
    public var dx : stdgo.GoUInt64 = 0;
    public var di : stdgo.GoUInt64 = 0;
    public var si : stdgo.GoUInt64 = 0;
    public var bp : stdgo.GoUInt64 = 0;
    public var sp : stdgo.GoUInt64 = 0;
    public var r8 : stdgo.GoUInt64 = 0;
    public var r9 : stdgo.GoUInt64 = 0;
    public var r10 : stdgo.GoUInt64 = 0;
    public var r11 : stdgo.GoUInt64 = 0;
    public var r12 : stdgo.GoUInt64 = 0;
    public var r13 : stdgo.GoUInt64 = 0;
    public var r14 : stdgo.GoUInt64 = 0;
    public var r15 : stdgo.GoUInt64 = 0;
    public var ip : stdgo.GoUInt64 = 0;
    public var flags : stdgo.GoUInt64 = 0;
    public var cs : stdgo.GoUInt64 = 0;
    public var fs : stdgo.GoUInt64 = 0;
    public var gs : stdgo.GoUInt64 = 0;
    public function new(?ax:stdgo.GoUInt64, ?bx:stdgo.GoUInt64, ?cx:stdgo.GoUInt64, ?dx:stdgo.GoUInt64, ?di:stdgo.GoUInt64, ?si:stdgo.GoUInt64, ?bp:stdgo.GoUInt64, ?sp:stdgo.GoUInt64, ?r8:stdgo.GoUInt64, ?r9:stdgo.GoUInt64, ?r10:stdgo.GoUInt64, ?r11:stdgo.GoUInt64, ?r12:stdgo.GoUInt64, ?r13:stdgo.GoUInt64, ?r14:stdgo.GoUInt64, ?r15:stdgo.GoUInt64, ?ip:stdgo.GoUInt64, ?flags:stdgo.GoUInt64, ?cs:stdgo.GoUInt64, ?fs:stdgo.GoUInt64, ?gs:stdgo.GoUInt64) {
        if (ax != null) this.ax = ax;
        if (bx != null) this.bx = bx;
        if (cx != null) this.cx = cx;
        if (dx != null) this.dx = dx;
        if (di != null) this.di = di;
        if (si != null) this.si = si;
        if (bp != null) this.bp = bp;
        if (sp != null) this.sp = sp;
        if (r8 != null) this.r8 = r8;
        if (r9 != null) this.r9 = r9;
        if (r10 != null) this.r10 = r10;
        if (r11 != null) this.r11 = r11;
        if (r12 != null) this.r12 = r12;
        if (r13 != null) this.r13 = r13;
        if (r14 != null) this.r14 = r14;
        if (r15 != null) this.r15 = r15;
        if (ip != null) this.ip = ip;
        if (flags != null) this.flags = flags;
        if (cs != null) this.cs = cs;
        if (fs != null) this.fs = fs;
        if (gs != null) this.gs = gs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegsAMD64(
ax,
bx,
cx,
dx,
di,
si,
bp,
sp,
r8,
r9,
r10,
r11,
r12,
r13,
r14,
r15,
ip,
flags,
cs,
fs,
gs);
    }
}
