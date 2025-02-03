package stdgo.syscall;
class Signal_static_extension {
    static public function string(_s:Signal):String {
        return stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.string(_s);
    }
    static public function signal(_s:Signal):Void {
        stdgo._internal.syscall.Syscall_Signal_static_extension.Signal_static_extension.signal(_s);
    }
}
