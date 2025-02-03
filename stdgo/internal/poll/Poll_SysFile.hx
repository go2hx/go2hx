package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.SysFile_static_extension) abstract SysFile(stdgo._internal.internal.poll.Poll_SysFile.SysFile) from stdgo._internal.internal.poll.Poll_SysFile.SysFile to stdgo._internal.internal.poll.Poll_SysFile.SysFile {
    public var _iovecs(get, set) : Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>;
    function get__iovecs():Array<stdgo._internal.syscall.Syscall_Iovec.Iovec> return this._iovecs;
    function set__iovecs(v:Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>):Array<stdgo._internal.syscall.Syscall_Iovec.Iovec> {
        this._iovecs = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_Iovec.Iovec>>);
        return v;
    }
    public function new(?_iovecs:Array<stdgo._internal.syscall.Syscall_Iovec.Iovec>) this = new stdgo._internal.internal.poll.Poll_SysFile.SysFile((_iovecs : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_Iovec.Iovec>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
