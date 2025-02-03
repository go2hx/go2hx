package stdgo.debug.plan9obj;
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.T_prog_static_extension) abstract T_prog(stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog) from stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog to stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var text(get, set) : std.UInt;
    function get_text():std.UInt return this.text;
    function set_text(v:std.UInt):std.UInt {
        this.text = (v : stdgo.GoUInt32);
        return v;
    }
    public var data(get, set) : std.UInt;
    function get_data():std.UInt return this.data;
    function set_data(v:std.UInt):std.UInt {
        this.data = (v : stdgo.GoUInt32);
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = (v : stdgo.GoUInt32);
        return v;
    }
    public var syms(get, set) : std.UInt;
    function get_syms():std.UInt return this.syms;
    function set_syms(v:std.UInt):std.UInt {
        this.syms = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = (v : stdgo.GoUInt32);
        return v;
    }
    public var spsz(get, set) : std.UInt;
    function get_spsz():std.UInt return this.spsz;
    function set_spsz(v:std.UInt):std.UInt {
        this.spsz = (v : stdgo.GoUInt32);
        return v;
    }
    public var pcsz(get, set) : std.UInt;
    function get_pcsz():std.UInt return this.pcsz;
    function set_pcsz(v:std.UInt):std.UInt {
        this.pcsz = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?magic:std.UInt, ?text:std.UInt, ?data:std.UInt, ?bss:std.UInt, ?syms:std.UInt, ?entry:std.UInt, ?spsz:std.UInt, ?pcsz:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_T_prog.T_prog((magic : stdgo.GoUInt32), (text : stdgo.GoUInt32), (data : stdgo.GoUInt32), (bss : stdgo.GoUInt32), (syms : stdgo.GoUInt32), (entry : stdgo.GoUInt32), (spsz : stdgo.GoUInt32), (pcsz : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
