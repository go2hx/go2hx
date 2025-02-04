package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.RelocTypeARM_asInterface) class RelocTypeARM_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM = _i;
        if (((_i < (0 : stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM) : Bool) || (_i >= ((10 : stdgo.GoInt) : stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM) : Bool) : Bool)) {
            return ((("RelocTypeARM(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("ARM_RELOC_VANILLAARM_RELOC_PAIRARM_RELOC_SECTDIFFARM_RELOC_LOCAL_SECTDIFFARM_RELOC_PB_LA_PTRARM_RELOC_BR24ARM_THUMB_RELOC_BR22ARM_THUMB_32BIT_BRANCHARM_RELOC_HALFARM_RELOC_HALF_SECTDIFF" : stdgo.GoString).__slice__(stdgo._internal.debug.macho.Macho___reloctypearm_index.__RelocTypeARM_index[(_i : stdgo.GoInt)], stdgo._internal.debug.macho.Macho___reloctypearm_index.__RelocTypeARM_index[((_i + (1 : stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM) : stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function goString( _r:stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM):stdgo.GoString {
        @:recv var _r:stdgo._internal.debug.macho.Macho_reloctypearm.RelocTypeARM = _r;
        return (("macho." : stdgo.GoString) + (_r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
