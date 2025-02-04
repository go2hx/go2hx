package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.Tag_asInterface) class Tag_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.debug.dwarf.Dwarf_tag.Tag):stdgo.GoString {
        @:recv var _i:stdgo._internal.debug.dwarf.Dwarf_tag.Tag = _i;
        if ((((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (5u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            return (("ArrayTypeClassTypeEntryPointEnumerationTypeFormalParameter" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_0.__Tag_index_0[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_0.__Tag_index_0[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((8u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            return ("ImportedDeclaration" : stdgo.GoString);
        } else if ((((10u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (11u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((10u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            return (("LabelLexDwarfBlock" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_2.__Tag_index_2[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_2.__Tag_index_2[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((13u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag))) {
            return ("Member" : stdgo.GoString);
        } else if ((((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (19u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((15u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            return (("PointerTypeReferenceTypeCompileUnitStringTypeStructType" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_4.__Tag_index_4[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_4.__Tag_index_4[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if ((((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) <= _i : Bool) && (_i <= (75u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool) : Bool)) {
            _i = (_i - ((21u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag)) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag);
            return (("SubroutineTypeTypedefUnionTypeUnspecifiedParametersVariantCommonDwarfBlockCommonInclusionInheritanceInlinedSubroutineModulePtrToMemberTypeSetTypeSubrangeTypeWithStmtAccessDeclarationBaseTypeCatchDwarfBlockConstTypeConstantEnumeratorFileTypeFriendNamelistNamelistItemPackedTypeSubprogramTemplateTypeParameterTemplateValueParameterThrownTypeTryDwarfBlockVariantPartVariableVolatileTypeDwarfProcedureRestrictTypeInterfaceTypeNamespaceImportedModuleUnspecifiedTypePartialUnitImportedUnitMutableTypeConditionSharedTypeTypeUnitRvalueReferenceTypeTemplateAliasCoarrayTypeGenericSubrangeDynamicTypeAtomicTypeCallSiteCallSiteParameterSkeletonUnitImmutableType" : stdgo.GoString).__slice__(stdgo._internal.debug.dwarf.Dwarf___tag_index_5.__Tag_index_5[(_i : stdgo.GoInt)], stdgo._internal.debug.dwarf.Dwarf___tag_index_5.__Tag_index_5[((_i + (1u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else {
            return ((("Tag(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function goString( _t:stdgo._internal.debug.dwarf.Dwarf_tag.Tag):stdgo.GoString {
        @:recv var _t:stdgo._internal.debug.dwarf.Dwarf_tag.Tag = _t;
        if ((_t <= (67u32 : stdgo._internal.debug.dwarf.Dwarf_tag.Tag) : Bool)) {
            return (("dwarf.Tag" : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("dwarf." : stdgo.GoString) + (_t.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
