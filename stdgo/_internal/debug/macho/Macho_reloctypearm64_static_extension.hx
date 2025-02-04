package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.RelocTypeARM64_asInterface) class RelocTypeARM64_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64 = _i;
        if (((_i < (0 : stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64) : Bool) || (_i >= ((11 : stdgo.GoInt) : stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64) : Bool) : Bool)) {
            return ((("RelocTypeARM64(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("ARM64_RELOC_UNSIGNEDARM64_RELOC_SUBTRACTORARM64_RELOC_BRANCH26ARM64_RELOC_PAGE21ARM64_RELOC_PAGEOFF12ARM64_RELOC_GOT_LOAD_PAGE21ARM64_RELOC_GOT_LOAD_PAGEOFF12ARM64_RELOC_POINTER_TO_GOTARM64_RELOC_TLVP_LOAD_PAGE21ARM64_RELOC_TLVP_LOAD_PAGEOFF12ARM64_RELOC_ADDEND" : stdgo.GoString).__slice__(stdgo._internal.debug.macho.Macho___reloctypearm64_index.__RelocTypeARM64_index[(_i : stdgo.GoInt)], stdgo._internal.debug.macho.Macho___reloctypearm64_index.__RelocTypeARM64_index[((_i + (1 : stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64) : stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goString( _r:stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64):stdgo.GoString {
        @:recv var _r:stdgo._internal.debug.macho.Macho_reloctypearm64.RelocTypeARM64 = _r;
        return (("macho." : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
