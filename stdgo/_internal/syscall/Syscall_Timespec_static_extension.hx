package stdgo._internal.syscall;
@:keep @:allow(stdgo._internal.syscall.Syscall.Timespec_asInterface) class Timespec_static_extension {
    @:keep
    static public function nano( _ts:stdgo.Ref<stdgo._internal.syscall.Syscall_Timespec.Timespec>):stdgo.GoInt64 throw "Timespec:syscall.nano is not yet implemented";
    @:keep
    static public function unix( _ts:stdgo.Ref<stdgo._internal.syscall.Syscall_Timespec.Timespec>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } throw "Timespec:syscall.unix is not yet implemented";
}