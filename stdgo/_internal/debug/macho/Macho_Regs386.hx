package stdgo._internal.debug.macho;
@:structInit class Regs386 {
    public var ax : stdgo.GoUInt32 = 0;
    public var bx : stdgo.GoUInt32 = 0;
    public var cx : stdgo.GoUInt32 = 0;
    public var dx : stdgo.GoUInt32 = 0;
    public var di : stdgo.GoUInt32 = 0;
    public var si : stdgo.GoUInt32 = 0;
    public var bp : stdgo.GoUInt32 = 0;
    public var sp : stdgo.GoUInt32 = 0;
    public var ss : stdgo.GoUInt32 = 0;
    public var flags : stdgo.GoUInt32 = 0;
    public var ip : stdgo.GoUInt32 = 0;
    public var cs : stdgo.GoUInt32 = 0;
    public var ds : stdgo.GoUInt32 = 0;
    public var es : stdgo.GoUInt32 = 0;
    public var fs : stdgo.GoUInt32 = 0;
    public var gs : stdgo.GoUInt32 = 0;
    public function new(?ax:stdgo.GoUInt32, ?bx:stdgo.GoUInt32, ?cx:stdgo.GoUInt32, ?dx:stdgo.GoUInt32, ?di:stdgo.GoUInt32, ?si:stdgo.GoUInt32, ?bp:stdgo.GoUInt32, ?sp:stdgo.GoUInt32, ?ss:stdgo.GoUInt32, ?flags:stdgo.GoUInt32, ?ip:stdgo.GoUInt32, ?cs:stdgo.GoUInt32, ?ds:stdgo.GoUInt32, ?es:stdgo.GoUInt32, ?fs:stdgo.GoUInt32, ?gs:stdgo.GoUInt32) {
        if (ax != null) this.ax = ax;
        if (bx != null) this.bx = bx;
        if (cx != null) this.cx = cx;
        if (dx != null) this.dx = dx;
        if (di != null) this.di = di;
        if (si != null) this.si = si;
        if (bp != null) this.bp = bp;
        if (sp != null) this.sp = sp;
        if (ss != null) this.ss = ss;
        if (flags != null) this.flags = flags;
        if (ip != null) this.ip = ip;
        if (cs != null) this.cs = cs;
        if (ds != null) this.ds = ds;
        if (es != null) this.es = es;
        if (fs != null) this.fs = fs;
        if (gs != null) this.gs = gs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regs386(
ax,
bx,
cx,
dx,
di,
si,
bp,
sp,
ss,
flags,
ip,
cs,
ds,
es,
fs,
gs);
    }
}
