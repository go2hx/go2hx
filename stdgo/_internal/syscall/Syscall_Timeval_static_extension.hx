package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.Timeval_asInterface) class Timeval_static_extension {
    @:keep
    static public function nano( _tv:stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>):stdgo.GoInt64 throw "Timeval:syscall.nano is not yet implemented";
    @:keep
    static public function unix( _tv:stdgo.Ref<stdgo._internal.syscall.Syscall_Timeval.Timeval>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timeval:syscall.unix is not yet implemented";
}