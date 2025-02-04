package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.Errno_asInterface) class Errno_static_extension {
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo._internal.syscall.Syscall_errno.Errno):Bool throw "Errno:syscall.timeout is not yet implemented";
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo._internal.syscall.Syscall_errno.Errno):Bool throw "Errno:syscall.temporary is not yet implemented";
    @:keep
    @:tdfield
    static public function is_( _e:stdgo._internal.syscall.Syscall_errno.Errno, _target:stdgo.Error):Bool throw "Errno:syscall.is_ is not yet implemented";
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.syscall.Syscall_errno.Errno):stdgo.GoString throw "Errno:syscall.error is not yet implemented";
}
