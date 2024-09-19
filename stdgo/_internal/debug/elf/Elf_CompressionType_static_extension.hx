package stdgo._internal.debug.elf;
@:keep @:allow(stdgo._internal.debug.elf.Elf.CompressionType_asInterface) class CompressionType_static_extension {
    @:keep
    static public function goString( _i:stdgo._internal.debug.elf.Elf_CompressionType.CompressionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_CompressionType.CompressionType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__compressionStrings._compressionStrings, true)?.__copy__();
    }
    @:keep
    static public function string( _i:stdgo._internal.debug.elf.Elf_CompressionType.CompressionType):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.elf.Elf_CompressionType.CompressionType = _i;
        return stdgo._internal.debug.elf.Elf__stringName._stringName((_i : stdgo.GoUInt32), stdgo._internal.debug.elf.Elf__compressionStrings._compressionStrings, false)?.__copy__();
    }
}
