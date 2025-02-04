package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.CompressionType_asInterface) class CompressionType_static_extension {
    @:keep
    @:tdfield
    static public function goString( _i:stdgo._internal.debug.elf.Elf_compressiontype.CompressionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_compressiontype.CompressionType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__compressionstrings._compressionStrings, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.elf.Elf_compressiontype.CompressionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_compressiontype.CompressionType = _i;
        return stdgo._internal.debug.elf.Elf__stringname._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__compressionstrings._compressionStrings, false)?.__copy__();
    }
}
