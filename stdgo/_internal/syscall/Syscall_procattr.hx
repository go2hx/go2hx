package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_procattr_static_extension.ProcAttr_static_extension) class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var sys : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.GoUIntptr>, ?sys:stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>) {
        if (dir != null) this.dir = dir;
        if (env != null) this.env = env;
        if (files != null) this.files = files;
        if (sys != null) this.sys = sys;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcAttr(dir, env, files, sys);
    }
}
