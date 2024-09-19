package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.Prog_asInterface) class Prog_static_extension {
    @:keep
    static public function open( _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog>):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        @:recv var _p:stdgo.Ref<stdgo._internal.debug.elf.Elf_Prog.Prog> = _p;
        return stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_p._sr), (0i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64)));
    }
    @:embedded
    public static function readAt( __self__:stdgo._internal.debug.elf.Elf_Prog.Prog, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.readAt(_p, _off);
}
