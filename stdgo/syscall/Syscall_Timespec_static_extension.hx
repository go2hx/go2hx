package stdgo.syscall;
class Timespec_static_extension {
    static public function nano(_ts:Timespec):haxe.Int64 {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_Timespec.Timespec>);
        return stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.nano(_ts);
    }
    static public function unix(_ts:Timespec):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _ts = (_ts : stdgo.Ref<stdgo._internal.syscall.Syscall_Timespec.Timespec>);
        return {
            final obj = stdgo._internal.syscall.Syscall_Timespec_static_extension.Timespec_static_extension.unix(_ts);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
