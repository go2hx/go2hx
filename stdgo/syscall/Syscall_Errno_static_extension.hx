package stdgo.syscall;
class Errno_static_extension {
    static public function timeout(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.timeout(_e);
    }
    static public function temporary(_e:Errno):Bool {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.temporary(_e);
    }
    static public function is_(_e:Errno, _target:stdgo.Error):Bool {
        final _target = (_target : stdgo.Error);
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.is_(_e, _target);
    }
    static public function error(_e:Errno):String {
        return stdgo._internal.syscall.Syscall_Errno_static_extension.Errno_static_extension.error(_e);
    }
}
