package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.RelocTypeX86_64_asInterface) class RelocTypeX86_64_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64 = _i;
        if (((_i < (0 : stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64) : Bool) || (_i >= ((10 : stdgo.GoInt) : stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64) : Bool) : Bool)) {
            return ((("RelocTypeX86_64(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("X86_64_RELOC_UNSIGNEDX86_64_RELOC_SIGNEDX86_64_RELOC_BRANCHX86_64_RELOC_GOT_LOADX86_64_RELOC_GOTX86_64_RELOC_SUBTRACTORX86_64_RELOC_SIGNED_1X86_64_RELOC_SIGNED_2X86_64_RELOC_SIGNED_4X86_64_RELOC_TLV" : stdgo.GoString).__slice__(stdgo._internal.debug.macho.Macho___reloctypex86_64_index.__RelocTypeX86_64_index[(_i : stdgo.GoInt)], stdgo._internal.debug.macho.Macho___reloctypex86_64_index.__RelocTypeX86_64_index[((_i + (1 : stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64) : stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goString( _r:stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64):stdgo.GoString {
        @:recv var _r:stdgo._internal.debug.macho.Macho_reloctypex86_64.RelocTypeX86_64 = _r;
        return (("macho." : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
