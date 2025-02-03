package stdgo.os;
class SyscallError_static_extension {
    static public function timeout(_e:SyscallError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>);
        return stdgo._internal.os.Os_SyscallError_static_extension.SyscallError_static_extension.timeout(_e);
    }
    static public function unwrap(_e:SyscallError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>);
        return stdgo._internal.os.Os_SyscallError_static_extension.SyscallError_static_extension.unwrap(_e);
    }
    static public function error(_e:SyscallError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.os.Os_SyscallError.SyscallError>);
        return stdgo._internal.os.Os_SyscallError_static_extension.SyscallError_static_extension.error(_e);
    }
}
