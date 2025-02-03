package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.ProcAttr_static_extension) abstract ProcAttr(stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr) from stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr to stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr {
    public var dir(get, set) : String;
    function get_dir():String return this.dir;
    function set_dir(v:String):String {
        this.dir = (v : stdgo.GoString);
        return v;
    }
    public var env(get, set) : Array<String>;
    function get_env():Array<String> return [for (i in this.env) i];
    function set_env(v:Array<String>):Array<String> {
        this.env = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var files(get, set) : Array<stdgo.GoUIntptr>;
    function get_files():Array<stdgo.GoUIntptr> return [for (i in this.files) i];
    function set_files(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this.files = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var sys(get, set) : SysProcAttr;
    function get_sys():SysProcAttr return this.sys;
    function set_sys(v:SysProcAttr):SysProcAttr {
        this.sys = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>);
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<stdgo.GoUIntptr>, ?sys:SysProcAttr) this = new stdgo._internal.syscall.Syscall_ProcAttr.ProcAttr((dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), (sys : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
