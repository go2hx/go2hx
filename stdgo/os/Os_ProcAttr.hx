package stdgo.os;
@:structInit @:using(stdgo.os.Os.ProcAttr_static_extension) abstract ProcAttr(stdgo._internal.os.Os_ProcAttr.ProcAttr) from stdgo._internal.os.Os_ProcAttr.ProcAttr to stdgo._internal.os.Os_ProcAttr.ProcAttr {
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
    public var files(get, set) : Array<File>;
    function get_files():Array<File> return [for (i in this.files) i];
    function set_files(v:Array<File>):Array<File> {
        this.files = ([for (i in v) (i : stdgo.Ref<stdgo._internal.os.Os_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
        return v;
    }
    public var sys(get, set) : stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr;
    function get_sys():stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr return this.sys;
    function set_sys(v:stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr):stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr {
        this.sys = (v : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>);
        return v;
    }
    public function new(?dir:String, ?env:Array<String>, ?files:Array<File>, ?sys:stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr) this = new stdgo._internal.os.Os_ProcAttr.ProcAttr((dir : stdgo.GoString), ([for (i in env) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in files) (i : stdgo.Ref<stdgo._internal.os.Os_File.File>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>), (sys : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
