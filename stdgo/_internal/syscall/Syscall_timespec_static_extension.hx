package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.Timespec_asInterface) class Timespec_static_extension {
    @:keep
    @:tdfield
    static public function nano( _ts:stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>):stdgo.GoInt64 throw "Timespec:syscall.nano is not yet implemented";
    @:keep
    @:tdfield
    static public function unix( _ts:stdgo.Ref<stdgo._internal.syscall.Syscall_timespec.Timespec>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timespec:syscall.unix is not yet implemented";
}
