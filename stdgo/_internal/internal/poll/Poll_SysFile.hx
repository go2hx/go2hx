package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_SysFile_static_extension.SysFile_static_extension) class SysFile {
    public var _iovecs : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_Iovec.Iovec>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_Iovec.Iovec>>);
    public function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_Iovec.Iovec>>) {
        if (_iovecs != null) this._iovecs = _iovecs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SysFile(_iovecs);
    }
}
