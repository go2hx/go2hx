package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.T_nobitsSectionReader_asInterface) class T_nobitsSectionReader_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader>, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.debug.elf.Elf_t_nobitssectionreader.T_nobitsSectionReader> = _;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("unexpected read from SHT_NOBITS section" : stdgo.GoString)) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
