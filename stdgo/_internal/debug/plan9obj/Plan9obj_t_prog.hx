package stdgo._internal.debug.plan9obj;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_t_prog_static_extension.T_prog_static_extension) class T_prog {
    public var magic : stdgo.GoUInt32 = 0;
    public var text : stdgo.GoUInt32 = 0;
    public var data : stdgo.GoUInt32 = 0;
    public var bss : stdgo.GoUInt32 = 0;
    public var syms : stdgo.GoUInt32 = 0;
    public var entry : stdgo.GoUInt32 = 0;
    public var spsz : stdgo.GoUInt32 = 0;
    public var pcsz : stdgo.GoUInt32 = 0;
    public function new(?magic:stdgo.GoUInt32, ?text:stdgo.GoUInt32, ?data:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?syms:stdgo.GoUInt32, ?entry:stdgo.GoUInt32, ?spsz:stdgo.GoUInt32, ?pcsz:stdgo.GoUInt32) {
        if (magic != null) this.magic = magic;
        if (text != null) this.text = text;
        if (data != null) this.data = data;
        if (bss != null) this.bss = bss;
        if (syms != null) this.syms = syms;
        if (entry != null) this.entry = entry;
        if (spsz != null) this.spsz = spsz;
        if (pcsz != null) this.pcsz = pcsz;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_prog(magic, text, data, bss, syms, entry, spsz, pcsz);
    }
}
