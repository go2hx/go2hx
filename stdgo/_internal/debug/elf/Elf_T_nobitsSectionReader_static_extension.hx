package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_nobitsSectionReader_asInterface) class T_nobitsSectionReader_static_extension {
    @:keep
    static public function readAt( _:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.debug.elf.Elf_T_nobitsSectionReader.T_nobitsSectionReader> = _;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("unexpected read from SHT_NOBITS section" : stdgo.GoString)) };
    }
}