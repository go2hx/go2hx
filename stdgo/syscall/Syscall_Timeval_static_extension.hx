package stdgo.syscall;
class Timeval_static_extension {
    static public function nano(_tv:Timeval):haxe.Int64 {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>);
        return stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.nano(_tv);
    }
    static public function unix(_tv:Timeval):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _tv = (_tv : stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>);
        return {
            final obj = stdgo._internal.syscall.Syscall_Timeval_static_extension.Timeval_static_extension.unix(_tv);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
