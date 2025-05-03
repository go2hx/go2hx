package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Tag_asInterface) class Tag_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_tag.Tag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_tag.Tag = _i;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L99"
        if ((((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (5u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L102"
            return (("ArrayTypeClassTypeEntryPointEnumerationTypeFormalParameter" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_0.__Tag_index_0[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_0.__Tag_index_0[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L104"
            return ("ImportedDeclaration" : stdgo.GoString);
        } else if ((((10u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (11u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((10u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L107"
            return (("LabelLexDwarfBlock" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_2.__Tag_index_2[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_2.__Tag_index_2[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L109"
            return ("Member" : stdgo.GoString);
        } else if ((((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L112"
            return (("PointerTypeReferenceTypeCompileUnitStringTypeStructType" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_4.__Tag_index_4[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_4.__Tag_index_4[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if ((((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (75u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L115"
            return (("SubroutineTypeTypedefUnionTypeUnspecifiedParametersVariantCommonDwarfBlockCommonInclusionInheritanceInlinedSubroutineModulePtrToMemberTypeSetTypeSubrangeTypeWithStmtAccessDeclarationBaseTypeCatchDwarfBlockConstTypeConstantEnumeratorFileTypeFriendNamelistNamelistItemPackedTypeSubprogramTemplateTypeParameterTemplateValueParameterThrownTypeTryDwarfBlockVariantPartVariableVolatileTypeDwarfProcedureRestrictTypeInterfaceTypeNamespaceImportedModuleUnspecifiedTypePartialUnitImportedUnitMutableTypeConditionSharedTypeTypeUnitRvalueReferenceTypeTemplateAliasCoarrayTypeGenericSubrangeDynamicTypeAtomicTypeCallSiteCallSiteParameterSkeletonUnitImmutableType" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_5.__Tag_index_5[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_5.__Tag_index_5[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/tag_string.go#L117"
            return ((("Tag(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function goString( _t:stdgo._internal.debug.dwarf.Dwarf_tag.Tag):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.dwarf.Dwarf_tag.Tag = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L285"
        if ((_t <= (67u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L286"
            return (("dwarf.Tag" : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/dwarf/const.go#L288"
        return (("dwarf." : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
