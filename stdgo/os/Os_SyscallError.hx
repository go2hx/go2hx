package stdgo.os;
@:structInit @:using(stdgo.os.Os.SyscallError_static_extension) abstract SyscallError(stdgo._internal.os.Os_SyscallError.SyscallError) from stdgo._internal.os.Os_SyscallError.SyscallError to stdgo._internal.os.Os_SyscallError.SyscallError {
    public var syscall(get, set) : String;
    function get_syscall():String return this.syscall;
    function set_syscall(v:String):String {
        this.syscall = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?syscall:String, ?err:stdgo.Error) this = new stdgo._internal.os.Os_SyscallError.SyscallError((syscall : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
