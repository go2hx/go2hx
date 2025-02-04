package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.Timeval_asInterface) class Timeval_static_extension {
    @:keep
    @:tdfield
    static public function nano( _tv:stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>):stdgo.GoInt64 throw "Timeval:syscall.nano is not yet implemented";
    @:keep
    @:tdfield
    static public function unix( _tv:stdgo.Ref<stdgo._internal.syscall.Syscall_timeval.Timeval>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timeval:syscall.unix is not yet implemented";
}
