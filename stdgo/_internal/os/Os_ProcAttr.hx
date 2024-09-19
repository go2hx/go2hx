package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
@:structInit class ProcAttr {
    public var dir : stdgo.GoString = "";
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var files : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>);
    public var sys : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>);
    public function new(?dir:stdgo.GoString, ?env:stdgo.Slice<stdgo.GoString>, ?files:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_File.File>>, ?sys:stdgo.Ref<stdgo._internal.syscall.Syscall_SysProcAttr.SysProcAttr>) {
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