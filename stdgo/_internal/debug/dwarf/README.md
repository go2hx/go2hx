# Module: `stdgo._internal.debug.dwarf`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _formToClass(_form:stdgo._internal.debug.dwarf.T_format, _attr:stdgo._internal.debug.dwarf.Attr, _vers:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.debug.dwarf.T_buf>):stdgo._internal.debug.dwarf.Class_`](<#function-_formtoclass>)

- [`function _makeBuf(_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, _format:stdgo._internal.debug.dwarf.T_dataFormat, _name:stdgo.GoString, _off:stdgo._internal.debug.dwarf.Offset, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.debug.dwarf.T_buf`](<#function-_makebuf>)

- [`function _pathIsAbs(_path:stdgo.GoString):Bool`](<#function-_pathisabs>)

- [`function _pathJoin(_dirname:stdgo.GoString, _filename:stdgo.GoString):stdgo.GoString`](<#function-_pathjoin>)

- [`function _splitDrive(_path:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-_splitdrive>)

- [`function _zeroArray(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Type_>):Void`](<#function-_zeroarray>)

- [`function new_(_abbrev:stdgo.Slice<stdgo.GoUInt8>, _aranges:stdgo.Slice<stdgo.GoUInt8>, _frame:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>, _line:stdgo.Slice<stdgo.GoUInt8>, _pubnames:stdgo.Slice<stdgo.GoUInt8>, _ranges:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.dwarf.Data>;
}`](<#function-new_>)

- [class AddrType](<#class-addrtype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#addrtype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#addrtype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#addrtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#addrtype-function-size>)

  - [`function string():stdgo.GoString`](<#addrtype-function-string>)

- [class ArrayType](<#class-arraytype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#arraytype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_, ?strideBitSize:stdgo.GoInt64, ?count:stdgo.GoInt64):Void`](<#arraytype-function-new>)

- [class BasicType](<#class-basictype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#basictype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?bitSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64):Void`](<#basictype-function-new>)

  - [`function size():stdgo.GoInt64`](<#basictype-function-size>)

- [class BoolType](<#class-booltype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#booltype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#booltype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#booltype-function-new>)

  - [`function size():stdgo.GoInt64`](<#booltype-function-size>)

  - [`function string():stdgo.GoString`](<#booltype-function-string>)

- [class CharType](<#class-chartype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#chartype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#chartype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#chartype-function-new>)

  - [`function size():stdgo.GoInt64`](<#chartype-function-size>)

  - [`function string():stdgo.GoString`](<#chartype-function-string>)

- [class CommonType](<#class-commontype>)

  - [`function new(?byteSize:stdgo.GoInt64, ?name:stdgo.GoString):Void`](<#commontype-function-new>)

- [class ComplexType](<#class-complextype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#complextype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#complextype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#complextype-function-new>)

  - [`function size():stdgo.GoInt64`](<#complextype-function-size>)

  - [`function string():stdgo.GoString`](<#complextype-function-string>)

- [class Data](<#class-data>)

  - [`function new(?_abbrev:stdgo.Slice<stdgo.GoUInt8>, ?_aranges:stdgo.Slice<stdgo.GoUInt8>, ?_frame:stdgo.Slice<stdgo.GoUInt8>, ?_info:stdgo.Slice<stdgo.GoUInt8>, ?_line:stdgo.Slice<stdgo.GoUInt8>, ?_pubnames:stdgo.Slice<stdgo.GoUInt8>, ?_ranges:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_addr:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_strOffsets:stdgo.Slice<stdgo.GoUInt8>, ?_rngLists:stdgo.Slice<stdgo.GoUInt8>, ?_abbrevCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.T_abbrevTable>, ?_bigEndian:Bool, ?_order:stdgo._internal.encoding.binary.ByteOrder, ?_typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Offset, stdgo._internal.debug.dwarf.Type_>, ?_typeSigs:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>>, ?_unit:stdgo.Slice<stdgo._internal.debug.dwarf.T_unit>):Void`](<#data-function-new>)

- [class DecodeError](<#class-decodeerror>)

  - [`function new(?name:stdgo.GoString, ?offset:stdgo._internal.debug.dwarf.Offset, ?err:stdgo.GoString):Void`](<#decodeerror-function-new>)

- [class DotDotDotType](<#class-dotdotdottype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#dotdotdottype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType):Void`](<#dotdotdottype-function-new>)

  - [`function size():stdgo.GoInt64`](<#dotdotdottype-function-size>)

- [class Entry](<#class-entry>)

  - [`function new(?offset:stdgo._internal.debug.dwarf.Offset, ?tag:stdgo._internal.debug.dwarf.Tag, ?children:Bool, ?field:stdgo.Slice<stdgo._internal.debug.dwarf.Field>):Void`](<#entry-function-new>)

- [class EnumType](<#class-enumtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#enumtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?enumName:stdgo.GoString, ?val:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.EnumValue_>>):Void`](<#enumtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#enumtype-function-size>)

- [class EnumValue\_](<#class-enumvalue_>)

  - [`function new(?name:stdgo.GoString, ?val:stdgo.GoInt64):Void`](<#enumvalue_-function-new>)

- [class Field](<#class-field>)

  - [`function new(?attr:stdgo._internal.debug.dwarf.Attr, ?val:stdgo.AnyInterface, ?class_:stdgo._internal.debug.dwarf.Class_):Void`](<#field-function-new>)

- [class FloatType](<#class-floattype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#floattype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#floattype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#floattype-function-new>)

  - [`function size():stdgo.GoInt64`](<#floattype-function-size>)

  - [`function string():stdgo.GoString`](<#floattype-function-string>)

- [class FuncType](<#class-functype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#functype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?returnType:stdgo._internal.debug.dwarf.Type_, ?paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Type_>):Void`](<#functype-function-new>)

  - [`function size():stdgo.GoInt64`](<#functype-function-size>)

- [class IntType](<#class-inttype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#inttype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#inttype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#inttype-function-new>)

  - [`function size():stdgo.GoInt64`](<#inttype-function-size>)

  - [`function string():stdgo.GoString`](<#inttype-function-string>)

- [class LineEntry](<#class-lineentry>)

  - [`function new(?address:stdgo.GoUInt64, ?opIndex:stdgo.GoInt, ?file:stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?isStmt:Bool, ?basicBlock:Bool, ?prologueEnd:Bool, ?epilogueBegin:Bool, ?isa:stdgo.GoInt, ?discriminator:stdgo.GoInt, ?endSequence:Bool):Void`](<#lineentry-function-new>)

- [class LineFile](<#class-linefile>)

  - [`function new(?name:stdgo.GoString, ?mtime:stdgo.GoUInt64, ?length_:stdgo.GoInt):Void`](<#linefile-function-new>)

- [class LineReader](<#class-linereader>)

  - [`function new(?_buf:stdgo._internal.debug.dwarf.T_buf, ?_section:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_addrsize:stdgo.GoInt, ?_segmentSelectorSize:stdgo.GoInt, ?_minInstructionLength:stdgo.GoInt, ?_maxOpsPerInstruction:stdgo.GoInt, ?_defaultIsStmt:Bool, ?_lineBase:stdgo.GoInt, ?_lineRange:stdgo.GoInt, ?_opcodeBase:stdgo.GoInt, ?_opcodeLengths:stdgo.Slice<stdgo.GoInt>, ?_directories:stdgo.Slice<stdgo.GoString>, ?_fileEntries:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>>, ?_programOffset:stdgo._internal.debug.dwarf.Offset, ?_endOffset:stdgo._internal.debug.dwarf.Offset, ?_initialFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.LineEntry, ?_fileIndex:stdgo.GoInt):Void`](<#linereader-function-new>)

- [class LineReaderPos](<#class-linereaderpos>)

  - [`function new(?_off:stdgo._internal.debug.dwarf.Offset, ?_numFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.LineEntry, ?_fileIndex:stdgo.GoInt):Void`](<#linereaderpos-function-new>)

- [class PtrType](<#class-ptrtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#ptrtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_):Void`](<#ptrtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#ptrtype-function-size>)

- [class QualType](<#class-qualtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#qualtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?qual:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Type_):Void`](<#qualtype-function-new>)

- [class Reader](<#class-reader>)

  - [`function new(?_b:stdgo._internal.debug.dwarf.T_buf, ?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_err:stdgo.Error, ?_unit:stdgo.GoInt, ?_lastUnit:Bool, ?_lastChildren:Bool, ?_lastSibling:stdgo._internal.debug.dwarf.Offset, ?_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Entry>):Void`](<#reader-function-new>)

- [class StructField](<#class-structfield>)

  - [`function new(?name:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Type_, ?byteOffset:stdgo.GoInt64, ?byteSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64, ?bitSize:stdgo.GoInt64):Void`](<#structfield-function-new>)

- [class StructType](<#class-structtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#structtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?structName:stdgo.GoString, ?kind:stdgo.GoString, ?field:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.StructField>>, ?incomplete:Bool):Void`](<#structtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#structtype-function-size>)

- [class T\_\_entry\_\_\_localname\_\_\_delayed\_12177](<#class-tentry_localname___delayed_12177>)

  - [`function new(?_idx:stdgo.GoInt, ?_off:stdgo.GoUInt64, ?_fmt:stdgo._internal.debug.dwarf.T_format):Void`](<#tentry_localname___delayed_12177-function-new>)

- [class T\_abbrev](<#class-t_abbrev>)

  - [`function new(?_tag:stdgo._internal.debug.dwarf.Tag, ?_children:Bool, ?_field:stdgo.Slice<stdgo._internal.debug.dwarf.T_afield>):Void`](<#t_abbrev-function-new>)

- [class T\_afield](<#class-t_afield>)

  - [`function new(?_attr:stdgo._internal.debug.dwarf.Attr, ?_fmt:stdgo._internal.debug.dwarf.T_format, ?_class:stdgo._internal.debug.dwarf.Class_, ?_val:stdgo.GoInt64):Void`](<#t_afield-function-new>)

- [class T\_buf](<#class-t_buf>)

  - [`function new(?_dwarf:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_order:stdgo._internal.encoding.binary.ByteOrder, ?_format:stdgo._internal.debug.dwarf.T_dataFormat, ?_name:stdgo.GoString, ?_off:stdgo._internal.debug.dwarf.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo.Error):Void`](<#t_buf-function-new>)

- [class T\_lnctForm](<#class-t_lnctform>)

  - [`function new(?_lnct:stdgo.GoInt, ?_form:stdgo._internal.debug.dwarf.T_format):Void`](<#t_lnctform-function-new>)

- [class T\_typeFixer](<#class-t_typefixer>)

  - [`function new(?_typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.TypedefType>>, ?_arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Type_>>):Void`](<#t_typefixer-function-new>)

- [class T\_typeUnit](<#class-t_typeunit>)

  - [`function _addrsize():stdgo.GoInt`](<#t_typeunit-function-_addrsize>)

  - [`function _dwarf64():{ _1:Bool; _0:Bool;}`](<#t_typeunit-function-_dwarf64>)

  - [`function _version():stdgo.GoInt`](<#t_typeunit-function-_version>)

  - [`function new(?_unit:stdgo._internal.debug.dwarf.T_unit, ?_toff:stdgo._internal.debug.dwarf.Offset, ?_name:stdgo.GoString, ?_cache:stdgo._internal.debug.dwarf.Type_):Void`](<#t_typeunit-function-new>)

- [class T\_typeUnitReader](<#class-t_typeunitreader>)

  - [`function new(?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_tu:stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>, ?_b:stdgo._internal.debug.dwarf.T_buf, ?_err:stdgo.Error):Void`](<#t_typeunitreader-function-new>)

- [class T\_unit](<#class-t_unit>)

  - [`function new(?_base:stdgo._internal.debug.dwarf.Offset, ?_off:stdgo._internal.debug.dwarf.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_atable:stdgo._internal.debug.dwarf.T_abbrevTable, ?_asize:stdgo.GoInt, ?_vers:stdgo.GoInt, ?_utype:stdgo.GoUInt8, ?_is64:Bool):Void`](<#t_unit-function-new>)

- [class T\_unknownFormat](<#class-t_unknownformat>)

  - [`function new():Void`](<#t_unknownformat-function-new>)

- [class TypedefType](<#class-typedeftype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#typedeftype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_):Void`](<#typedeftype-function-new>)

- [class UcharType](<#class-uchartype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#uchartype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#uchartype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#uchartype-function-new>)

  - [`function size():stdgo.GoInt64`](<#uchartype-function-size>)

  - [`function string():stdgo.GoString`](<#uchartype-function-string>)

- [class UintType](<#class-uinttype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#uinttype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#uinttype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#uinttype-function-new>)

  - [`function size():stdgo.GoInt64`](<#uinttype-function-size>)

  - [`function string():stdgo.GoString`](<#uinttype-function-string>)

- [class UnspecifiedType](<#class-unspecifiedtype>)

  - [`function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>`](<#unspecifiedtype-function-basic>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#unspecifiedtype-function-common>)

  - [`function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void`](<#unspecifiedtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#unspecifiedtype-function-size>)

  - [`function string():stdgo.GoString`](<#unspecifiedtype-function-string>)

- [class UnsupportedType](<#class-unsupportedtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#unsupportedtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?tag:stdgo._internal.debug.dwarf.Tag):Void`](<#unsupportedtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#unsupportedtype-function-size>)

- [class VoidType](<#class-voidtype>)

  - [`function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>`](<#voidtype-function-common>)

  - [`function new(?commonType:stdgo._internal.debug.dwarf.CommonType):Void`](<#voidtype-function-new>)

  - [`function size():stdgo.GoInt64`](<#voidtype-function-size>)

- [typedef Attr](<#typedef-attr>)

- [typedef Class\_](<#typedef-class_>)

- [typedef Offset](<#typedef-offset>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_abbrevTable](<#typedef-t_abbrevtable>)

- [typedef T\_dataFormat](<#typedef-t_dataformat>)

- [typedef T\_format](<#typedef-t_format>)

- [typedef T\_typeReader](<#typedef-t_typereader>)

- [typedef Tag](<#typedef-tag>)

- [typedef Type\_](<#typedef-type_>)

# Constants


```haxe
import stdgo._internal.debug.dwarf.Dwarf_tagWithStmt
```


```haxe
final __Attr_name:stdgo.GoString = (("SiblingLocationNameOrderingByteSizeBitOffsetBitSizeStmtListLowpcHighpcLanguageDiscrDiscrValueVisibilityImportStringLengthCommonRefCompDirConstValueContainingTypeDefaultValueInlineIsOptionalLowerBoundProducerPrototypedReturnAddrStartScopeStrideSizeUpperBoundAbstractOriginAccessibilityAddrClassArtificialBaseTypesCallingCountDataMemberLocDeclColumnDeclFileDeclLineDeclarationDiscrListEncodingExternalFrameBaseFriendIdentifierCaseMacroInfoNamelistItemPrioritySegmentSpecificationStaticLinkTypeUseLocationVarParamVirtualityVtableElemLocAllocatedAssociatedDataLocationStrideEntrypcUseUTF8ExtensionRangesTrampolineCallColumnCallFileCallLineDescriptionBinaryScaleDecimalScaleSmallDecimalSignDigitCountPictureStringMutableThreadsScaledExplicitObjectPointerEndianityElementalPureRecursiveSignatureMainSubprogramDataBitOffsetConstExprEnumClassLinkageNameStringLengthBitSizeStringLengthByteSizeRankStrOffsetsBaseAddrBaseRnglistsBaseDwoNameReferenceRvalueReferenceMacrosCallAllCallsCallAllSourceCallsCallAllTailCallsCallReturnPCCallValueCallOriginCallParameterCallPCCallTailCallCallTargetCallTargetClobberedCallDataLocationCallDataValueNoreturnAlignmentExportSymbolsDeletedDefaultedLoclistsBase" : stdgo.GoString))
```


```haxe
final __Class_name:stdgo.GoString = (("ClassUnknownClassAddressClassBlockClassConstantClassExprLocClassFlagClassLinePtrClassLocListPtrClassMacPtrClassRangeListPtrClassReferenceClassReferenceSigClassStringClassReferenceAltClassStringAltClassAddrPtrClassLocListClassRngListClassRngListsPtrClassStrOffsetsPtr" : stdgo.GoString))
```


```haxe
final __Tag_name_0:stdgo.GoString = (("ArrayTypeClassTypeEntryPointEnumerationTypeFormalParameter" : stdgo.GoString))
```


```haxe
final __Tag_name_1:stdgo.GoString = (("ImportedDeclaration" : stdgo.GoString))
```


```haxe
final __Tag_name_2:stdgo.GoString = (("LabelLexDwarfBlock" : stdgo.GoString))
```


```haxe
final __Tag_name_3:stdgo.GoString = (("Member" : stdgo.GoString))
```


```haxe
final __Tag_name_4:stdgo.GoString = (("PointerTypeReferenceTypeCompileUnitStringTypeStructType" : stdgo.GoString))
```


```haxe
final __Tag_name_5:stdgo.GoString = (("SubroutineTypeTypedefUnionTypeUnspecifiedParametersVariantCommonDwarfBlockCommonInclusionInheritanceInlinedSubroutineModulePtrToMemberTypeSetTypeSubrangeTypeWithStmtAccessDeclarationBaseTypeCatchDwarfBlockConstTypeConstantEnumeratorFileTypeFriendNamelistNamelistItemPackedTypeSubprogramTemplateTypeParameterTemplateValueParameterThrownTypeTryDwarfBlockVariantPartVariableVolatileTypeDwarfProcedureRestrictTypeInterfaceTypeNamespaceImportedModuleUnspecifiedTypePartialUnitImportedUnitMutableTypeConditionSharedTypeTypeUnitRvalueReferenceTypeTemplateAliasCoarrayTypeGenericSubrangeDynamicTypeAtomicTypeCallSiteCallSiteParameterSkeletonUnitImmutableType" : stdgo.GoString))
```


```haxe
final _encASCII:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final _encAddress:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _encBoolean:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _encComplexFloat:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _encDecimalFloat:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _encEdited:stdgo.GoUInt64 = ((12i64 : stdgo.GoUInt64))
```


```haxe
final _encFloat:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _encImaginaryFloat:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final _encNumericString:stdgo.GoUInt64 = ((11i64 : stdgo.GoUInt64))
```


```haxe
final _encPackedDecimal:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final _encSigned:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _encSignedChar:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _encSignedFixed:stdgo.GoUInt64 = ((13i64 : stdgo.GoUInt64))
```


```haxe
final _encUCS:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```


```haxe
final _encUTF:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _encUnsigned:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final _encUnsignedChar:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _encUnsignedFixed:stdgo.GoUInt64 = ((14i64 : stdgo.GoUInt64))
```


```haxe
final _formAddr:stdgo._internal.debug.dwarf.T_format = ((1u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formAddrx:stdgo._internal.debug.dwarf.T_format = ((27u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formAddrx1:stdgo._internal.debug.dwarf.T_format = ((41u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formAddrx2:stdgo._internal.debug.dwarf.T_format = ((42u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formAddrx3:stdgo._internal.debug.dwarf.T_format = ((43u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formAddrx4:stdgo._internal.debug.dwarf.T_format = ((44u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formData1:stdgo._internal.debug.dwarf.T_format = ((11u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formData16:stdgo._internal.debug.dwarf.T_format = ((30u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formData2:stdgo._internal.debug.dwarf.T_format = ((5u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formData4:stdgo._internal.debug.dwarf.T_format = ((6u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formData8:stdgo._internal.debug.dwarf.T_format = ((7u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formDwarfBlock:stdgo._internal.debug.dwarf.T_format = ((9u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formDwarfBlock1:stdgo._internal.debug.dwarf.T_format = ((10u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formDwarfBlock2:stdgo._internal.debug.dwarf.T_format = ((3u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formDwarfBlock4:stdgo._internal.debug.dwarf.T_format = ((4u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formExprloc:stdgo._internal.debug.dwarf.T_format = ((24u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formFlag:stdgo._internal.debug.dwarf.T_format = ((12u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formFlagPresent:stdgo._internal.debug.dwarf.T_format = ((25u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formGnuRefAlt:stdgo._internal.debug.dwarf.T_format = ((7968u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formGnuStrpAlt:stdgo._internal.debug.dwarf.T_format = ((7969u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formImplicitConst:stdgo._internal.debug.dwarf.T_format = ((33u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formIndirect:stdgo._internal.debug.dwarf.T_format = ((22u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formLineStrp:stdgo._internal.debug.dwarf.T_format = ((31u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formLoclistx:stdgo._internal.debug.dwarf.T_format = ((34u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRef1:stdgo._internal.debug.dwarf.T_format = ((17u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRef2:stdgo._internal.debug.dwarf.T_format = ((18u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRef4:stdgo._internal.debug.dwarf.T_format = ((19u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRef8:stdgo._internal.debug.dwarf.T_format = ((20u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRefAddr:stdgo._internal.debug.dwarf.T_format = ((16u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRefSig8:stdgo._internal.debug.dwarf.T_format = ((32u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRefSup4:stdgo._internal.debug.dwarf.T_format = ((28u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRefSup8:stdgo._internal.debug.dwarf.T_format = ((36u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRefUdata:stdgo._internal.debug.dwarf.T_format = ((21u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formRnglistx:stdgo._internal.debug.dwarf.T_format = ((35u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formSdata:stdgo._internal.debug.dwarf.T_format = ((13u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formSecOffset:stdgo._internal.debug.dwarf.T_format = ((23u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formString:stdgo._internal.debug.dwarf.T_format = ((8u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrp:stdgo._internal.debug.dwarf.T_format = ((14u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrpSup:stdgo._internal.debug.dwarf.T_format = ((29u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrx:stdgo._internal.debug.dwarf.T_format = ((26u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrx1:stdgo._internal.debug.dwarf.T_format = ((37u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrx2:stdgo._internal.debug.dwarf.T_format = ((38u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrx3:stdgo._internal.debug.dwarf.T_format = ((39u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formStrx4:stdgo._internal.debug.dwarf.T_format = ((40u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _formUdata:stdgo._internal.debug.dwarf.T_format = ((15u32 : stdgo._internal.debug.dwarf.Dwarf_T_format.T_format))
```


```haxe
final _lleBaseAddress:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _lleBaseAddressx:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _lleDefaultLocation:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _lleEndOfList:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _lleOffsetPair:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _lleStartEnd:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final _lleStartLength:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _lleStartxEndx:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _lleStartxLength:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _lnctDirectoryIndex:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _lnctMD5:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _lnctPath:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _lnctSize:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _lnctTimestamp:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _lneDefineFile:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _lneEndSequence:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _lneSetAddress:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _lneSetDiscriminator:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _lnsAdvanceLine:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _lnsAdvancePC:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _lnsConstAddPC:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _lnsCopy:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _lnsFixedAdvancePC:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final _lnsNegateStmt:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetBasicBlock:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetColumn:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetEpilogueBegin:stdgo.GoUInt64 = ((11i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetFile:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetISA:stdgo.GoUInt64 = ((12i64 : stdgo.GoUInt64))
```


```haxe
final _lnsSetPrologueEnd:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final _opAbs:stdgo.GoUInt64 = ((25i64 : stdgo.GoUInt64))
```


```haxe
final _opAddr:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _opAddrx:stdgo.GoUInt64 = ((161i64 : stdgo.GoUInt64))
```


```haxe
final _opAnd:stdgo.GoUInt64 = ((26i64 : stdgo.GoUInt64))
```


```haxe
final _opBitPiece:stdgo.GoUInt64 = ((157i64 : stdgo.GoUInt64))
```


```haxe
final _opBra:stdgo.GoUInt64 = ((40i64 : stdgo.GoUInt64))
```


```haxe
final _opBreg0:stdgo.GoUInt64 = ((112i64 : stdgo.GoUInt64))
```


```haxe
final _opBregx:stdgo.GoUInt64 = ((146i64 : stdgo.GoUInt64))
```


```haxe
final _opCall2:stdgo.GoUInt64 = ((152i64 : stdgo.GoUInt64))
```


```haxe
final _opCall4:stdgo.GoUInt64 = ((153i64 : stdgo.GoUInt64))
```


```haxe
final _opCallFrameCFA:stdgo.GoUInt64 = ((156i64 : stdgo.GoUInt64))
```


```haxe
final _opCallRef:stdgo.GoUInt64 = ((154i64 : stdgo.GoUInt64))
```


```haxe
final _opConst1s:stdgo.GoUInt64 = ((9i64 : stdgo.GoUInt64))
```


```haxe
final _opConst1u:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


```haxe
final _opConst2s:stdgo.GoUInt64 = ((11i64 : stdgo.GoUInt64))
```


```haxe
final _opConst2u:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final _opConst4s:stdgo.GoUInt64 = ((13i64 : stdgo.GoUInt64))
```


```haxe
final _opConst4u:stdgo.GoUInt64 = ((12i64 : stdgo.GoUInt64))
```


```haxe
final _opConst8s:stdgo.GoUInt64 = ((15i64 : stdgo.GoUInt64))
```


```haxe
final _opConst8u:stdgo.GoUInt64 = ((14i64 : stdgo.GoUInt64))
```


```haxe
final _opConstType:stdgo.GoUInt64 = ((164i64 : stdgo.GoUInt64))
```


```haxe
final _opConsts:stdgo.GoUInt64 = ((17i64 : stdgo.GoUInt64))
```


```haxe
final _opConstu:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


```haxe
final _opConstx:stdgo.GoUInt64 = ((162i64 : stdgo.GoUInt64))
```


```haxe
final _opConvert:stdgo.GoUInt64 = ((168i64 : stdgo.GoUInt64))
```


```haxe
final _opDeref:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _opDerefSize:stdgo.GoUInt64 = ((148i64 : stdgo.GoUInt64))
```


```haxe
final _opDerefType:stdgo.GoUInt64 = ((166i64 : stdgo.GoUInt64))
```


```haxe
final _opDiv:stdgo.GoUInt64 = ((27i64 : stdgo.GoUInt64))
```


```haxe
final _opDrop:stdgo.GoUInt64 = ((19i64 : stdgo.GoUInt64))
```


```haxe
final _opDup:stdgo.GoUInt64 = ((18i64 : stdgo.GoUInt64))
```


```haxe
final _opEntryValue:stdgo.GoUInt64 = ((163i64 : stdgo.GoUInt64))
```


```haxe
final _opEq:stdgo.GoUInt64 = ((41i64 : stdgo.GoUInt64))
```


```haxe
final _opFbreg:stdgo.GoUInt64 = ((145i64 : stdgo.GoUInt64))
```


```haxe
final _opFormTLSAddress:stdgo.GoUInt64 = ((155i64 : stdgo.GoUInt64))
```


```haxe
final _opGe:stdgo.GoUInt64 = ((42i64 : stdgo.GoUInt64))
```


```haxe
final _opGt:stdgo.GoUInt64 = ((43i64 : stdgo.GoUInt64))
```


```haxe
final _opImplicitPointer:stdgo.GoUInt64 = ((160i64 : stdgo.GoUInt64))
```


```haxe
final _opImplicitValue:stdgo.GoUInt64 = ((158i64 : stdgo.GoUInt64))
```


```haxe
final _opLe:stdgo.GoUInt64 = ((44i64 : stdgo.GoUInt64))
```


```haxe
final _opLit0:stdgo.GoUInt64 = ((48i64 : stdgo.GoUInt64))
```


```haxe
final _opLt:stdgo.GoUInt64 = ((45i64 : stdgo.GoUInt64))
```


```haxe
final _opMinus:stdgo.GoUInt64 = ((28i64 : stdgo.GoUInt64))
```


```haxe
final _opMod:stdgo.GoUInt64 = ((29i64 : stdgo.GoUInt64))
```


```haxe
final _opMul:stdgo.GoUInt64 = ((30i64 : stdgo.GoUInt64))
```


```haxe
final _opNe:stdgo.GoUInt64 = ((46i64 : stdgo.GoUInt64))
```


```haxe
final _opNeg:stdgo.GoUInt64 = ((31i64 : stdgo.GoUInt64))
```


```haxe
final _opNop:stdgo.GoUInt64 = ((150i64 : stdgo.GoUInt64))
```


```haxe
final _opNot:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _opOr:stdgo.GoUInt64 = ((33i64 : stdgo.GoUInt64))
```


```haxe
final _opOver:stdgo.GoUInt64 = ((20i64 : stdgo.GoUInt64))
```


```haxe
final _opPick:stdgo.GoUInt64 = ((21i64 : stdgo.GoUInt64))
```


```haxe
final _opPiece:stdgo.GoUInt64 = ((147i64 : stdgo.GoUInt64))
```


```haxe
final _opPlus:stdgo.GoUInt64 = ((34i64 : stdgo.GoUInt64))
```


```haxe
final _opPlusUconst:stdgo.GoUInt64 = ((35i64 : stdgo.GoUInt64))
```


```haxe
final _opPushObjAddr:stdgo.GoUInt64 = ((151i64 : stdgo.GoUInt64))
```


```haxe
final _opReg0:stdgo.GoUInt64 = ((80i64 : stdgo.GoUInt64))
```


```haxe
final _opRegvalType:stdgo.GoUInt64 = ((165i64 : stdgo.GoUInt64))
```


```haxe
final _opRegx:stdgo.GoUInt64 = ((144i64 : stdgo.GoUInt64))
```


```haxe
final _opReinterpret:stdgo.GoUInt64 = ((169i64 : stdgo.GoUInt64))
```


```haxe
final _opRot:stdgo.GoUInt64 = ((23i64 : stdgo.GoUInt64))
```


```haxe
final _opShl:stdgo.GoUInt64 = ((36i64 : stdgo.GoUInt64))
```


```haxe
final _opShr:stdgo.GoUInt64 = ((37i64 : stdgo.GoUInt64))
```


```haxe
final _opShra:stdgo.GoUInt64 = ((38i64 : stdgo.GoUInt64))
```


```haxe
final _opSkip:stdgo.GoUInt64 = ((47i64 : stdgo.GoUInt64))
```


```haxe
final _opStackValue:stdgo.GoUInt64 = ((159i64 : stdgo.GoUInt64))
```


```haxe
final _opSwap:stdgo.GoUInt64 = ((22i64 : stdgo.GoUInt64))
```


```haxe
final _opXderef:stdgo.GoUInt64 = ((24i64 : stdgo.GoUInt64))
```


```haxe
final _opXderefSize:stdgo.GoUInt64 = ((149i64 : stdgo.GoUInt64))
```


```haxe
final _opXderefType:stdgo.GoUInt64 = ((167i64 : stdgo.GoUInt64))
```


```haxe
final _opXor:stdgo.GoUInt64 = ((39i64 : stdgo.GoUInt64))
```


```haxe
final _rleBaseAddress:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _rleBaseAddressx:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _rleEndOfList:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _rleOffsetPair:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _rleStartEnd:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _rleStartLength:stdgo.GoUInt64 = ((7i64 : stdgo.GoUInt64))
```


```haxe
final _rleStartxEndx:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final _rleStartxLength:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _utCompile:stdgo.GoUInt64 = ((1i64 : stdgo.GoUInt64))
```


```haxe
final _utPartial:stdgo.GoUInt64 = ((3i64 : stdgo.GoUInt64))
```


```haxe
final _utSkeleton:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _utSplitCompile:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final _utSplitType:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final _utType:stdgo.GoUInt64 = ((2i64 : stdgo.GoUInt64))
```


```haxe
final attrAbstractOrigin:stdgo._internal.debug.dwarf.Attr = ((49u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAccessibility:stdgo._internal.debug.dwarf.Attr = ((50u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAddrBase:stdgo._internal.debug.dwarf.Attr = ((115u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAddrClass:stdgo._internal.debug.dwarf.Attr = ((51u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAlignment:stdgo._internal.debug.dwarf.Attr = ((136u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAllocated:stdgo._internal.debug.dwarf.Attr = ((78u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrArtificial:stdgo._internal.debug.dwarf.Attr = ((52u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrAssociated:stdgo._internal.debug.dwarf.Attr = ((79u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrBaseTypes:stdgo._internal.debug.dwarf.Attr = ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrBinaryScale:stdgo._internal.debug.dwarf.Attr = ((91u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrBitOffset:stdgo._internal.debug.dwarf.Attr = ((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrBitSize:stdgo._internal.debug.dwarf.Attr = ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrByteSize:stdgo._internal.debug.dwarf.Attr = ((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallAllCalls:stdgo._internal.debug.dwarf.Attr = ((122u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallAllSourceCalls:stdgo._internal.debug.dwarf.Attr = ((123u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallAllTailCalls:stdgo._internal.debug.dwarf.Attr = ((124u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallColumn:stdgo._internal.debug.dwarf.Attr = ((87u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallDataLocation:stdgo._internal.debug.dwarf.Attr = ((133u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallDataValue:stdgo._internal.debug.dwarf.Attr = ((134u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallFile:stdgo._internal.debug.dwarf.Attr = ((88u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallLine:stdgo._internal.debug.dwarf.Attr = ((89u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallOrigin:stdgo._internal.debug.dwarf.Attr = ((127u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallPC:stdgo._internal.debug.dwarf.Attr = ((129u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallParameter:stdgo._internal.debug.dwarf.Attr = ((128u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallReturnPC:stdgo._internal.debug.dwarf.Attr = ((125u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallTailCall:stdgo._internal.debug.dwarf.Attr = ((130u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallTarget:stdgo._internal.debug.dwarf.Attr = ((131u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallTargetClobbered:stdgo._internal.debug.dwarf.Attr = ((132u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCallValue:stdgo._internal.debug.dwarf.Attr = ((126u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCalling:stdgo._internal.debug.dwarf.Attr = ((54u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCommonRef:stdgo._internal.debug.dwarf.Attr = ((26u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCompDir:stdgo._internal.debug.dwarf.Attr = ((27u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrConstExpr:stdgo._internal.debug.dwarf.Attr = ((108u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrConstValue:stdgo._internal.debug.dwarf.Attr = ((28u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrContainingType:stdgo._internal.debug.dwarf.Attr = ((29u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrCount:stdgo._internal.debug.dwarf.Attr = ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDataBitOffset:stdgo._internal.debug.dwarf.Attr = ((107u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDataLocation:stdgo._internal.debug.dwarf.Attr = ((80u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDataMemberLoc:stdgo._internal.debug.dwarf.Attr = ((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDecimalScale:stdgo._internal.debug.dwarf.Attr = ((92u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDecimalSign:stdgo._internal.debug.dwarf.Attr = ((94u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDeclColumn:stdgo._internal.debug.dwarf.Attr = ((57u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDeclFile:stdgo._internal.debug.dwarf.Attr = ((58u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDeclLine:stdgo._internal.debug.dwarf.Attr = ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDeclaration:stdgo._internal.debug.dwarf.Attr = ((60u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDefaultValue:stdgo._internal.debug.dwarf.Attr = ((30u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDefaulted:stdgo._internal.debug.dwarf.Attr = ((139u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDeleted:stdgo._internal.debug.dwarf.Attr = ((138u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDescription:stdgo._internal.debug.dwarf.Attr = ((90u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDigitCount:stdgo._internal.debug.dwarf.Attr = ((95u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDiscr:stdgo._internal.debug.dwarf.Attr = ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDiscrList:stdgo._internal.debug.dwarf.Attr = ((61u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDiscrValue:stdgo._internal.debug.dwarf.Attr = ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrDwoName:stdgo._internal.debug.dwarf.Attr = ((118u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrElemental:stdgo._internal.debug.dwarf.Attr = ((102u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrEncoding:stdgo._internal.debug.dwarf.Attr = ((62u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrEndianity:stdgo._internal.debug.dwarf.Attr = ((101u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrEntrypc:stdgo._internal.debug.dwarf.Attr = ((82u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrEnumClass:stdgo._internal.debug.dwarf.Attr = ((109u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrExplicit:stdgo._internal.debug.dwarf.Attr = ((99u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrExportSymbols:stdgo._internal.debug.dwarf.Attr = ((137u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrExtension:stdgo._internal.debug.dwarf.Attr = ((84u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrExternal:stdgo._internal.debug.dwarf.Attr = ((63u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrFrameBase:stdgo._internal.debug.dwarf.Attr = ((64u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrFriend:stdgo._internal.debug.dwarf.Attr = ((65u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrHighpc:stdgo._internal.debug.dwarf.Attr = ((18u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrIdentifierCase:stdgo._internal.debug.dwarf.Attr = ((66u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrImport:stdgo._internal.debug.dwarf.Attr = ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrInline:stdgo._internal.debug.dwarf.Attr = ((32u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrIsOptional:stdgo._internal.debug.dwarf.Attr = ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLanguage:stdgo._internal.debug.dwarf.Attr = ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLinkageName:stdgo._internal.debug.dwarf.Attr = ((110u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLocation:stdgo._internal.debug.dwarf.Attr = ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLoclistsBase:stdgo._internal.debug.dwarf.Attr = ((140u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLowerBound:stdgo._internal.debug.dwarf.Attr = ((34u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrLowpc:stdgo._internal.debug.dwarf.Attr = ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrMacroInfo:stdgo._internal.debug.dwarf.Attr = ((67u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrMacros:stdgo._internal.debug.dwarf.Attr = ((121u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrMainSubprogram:stdgo._internal.debug.dwarf.Attr = ((106u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrMutable:stdgo._internal.debug.dwarf.Attr = ((97u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrName:stdgo._internal.debug.dwarf.Attr = ((3u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrNamelistItem:stdgo._internal.debug.dwarf.Attr = ((68u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrNoreturn:stdgo._internal.debug.dwarf.Attr = ((135u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrObjectPointer:stdgo._internal.debug.dwarf.Attr = ((100u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrOrdering:stdgo._internal.debug.dwarf.Attr = ((9u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrPictureString:stdgo._internal.debug.dwarf.Attr = ((96u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrPriority:stdgo._internal.debug.dwarf.Attr = ((69u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrProducer:stdgo._internal.debug.dwarf.Attr = ((37u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrPrototyped:stdgo._internal.debug.dwarf.Attr = ((39u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrPure:stdgo._internal.debug.dwarf.Attr = ((103u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrRanges:stdgo._internal.debug.dwarf.Attr = ((85u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrRank:stdgo._internal.debug.dwarf.Attr = ((113u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrRecursive:stdgo._internal.debug.dwarf.Attr = ((104u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrReference:stdgo._internal.debug.dwarf.Attr = ((119u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrReturnAddr:stdgo._internal.debug.dwarf.Attr = ((42u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrRnglistsBase:stdgo._internal.debug.dwarf.Attr = ((116u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrRvalueReference:stdgo._internal.debug.dwarf.Attr = ((120u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrSegment:stdgo._internal.debug.dwarf.Attr = ((70u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrSibling:stdgo._internal.debug.dwarf.Attr = ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrSignature:stdgo._internal.debug.dwarf.Attr = ((105u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrSmall:stdgo._internal.debug.dwarf.Attr = ((93u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrSpecification:stdgo._internal.debug.dwarf.Attr = ((71u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStartScope:stdgo._internal.debug.dwarf.Attr = ((44u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStaticLink:stdgo._internal.debug.dwarf.Attr = ((72u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStmtList:stdgo._internal.debug.dwarf.Attr = ((16u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStrOffsetsBase:stdgo._internal.debug.dwarf.Attr = ((114u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStride:stdgo._internal.debug.dwarf.Attr = ((81u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStrideSize:stdgo._internal.debug.dwarf.Attr = ((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStringLength:stdgo._internal.debug.dwarf.Attr = ((25u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStringLengthBitSize:stdgo._internal.debug.dwarf.Attr = ((111u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrStringLengthByteSize:stdgo._internal.debug.dwarf.Attr = ((112u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrThreadsScaled:stdgo._internal.debug.dwarf.Attr = ((98u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrTrampoline:stdgo._internal.debug.dwarf.Attr = ((86u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrType:stdgo._internal.debug.dwarf.Attr = ((73u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrUpperBound:stdgo._internal.debug.dwarf.Attr = ((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrUseLocation:stdgo._internal.debug.dwarf.Attr = ((74u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrUseUTF8:stdgo._internal.debug.dwarf.Attr = ((83u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrVarParam:stdgo._internal.debug.dwarf.Attr = ((75u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrVirtuality:stdgo._internal.debug.dwarf.Attr = ((76u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrVisibility:stdgo._internal.debug.dwarf.Attr = ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final attrVtableElemLoc:stdgo._internal.debug.dwarf.Attr = ((77u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr))
```


```haxe
final classAddrPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classAddress:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classBlock:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classConstant:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classExprLoc:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classFlag:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classLinePtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classLocList:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classLocListPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classMacPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classRangeListPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classReference:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classReferenceAlt:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classReferenceSig:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classRngList:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classRngListsPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classStrOffsetsPtr:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classString:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classStringAlt:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final classUnknown:stdgo._internal.debug.dwarf.Class_ = ((17 : stdgo._internal.debug.dwarf.Dwarf_Class_.Class_))
```


```haxe
final tagAccessDeclaration:stdgo._internal.debug.dwarf.Tag = ((35u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagArrayType:stdgo._internal.debug.dwarf.Tag = ((1u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagAtomicType:stdgo._internal.debug.dwarf.Tag = ((71u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagBaseType:stdgo._internal.debug.dwarf.Tag = ((36u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCallSite:stdgo._internal.debug.dwarf.Tag = ((72u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCallSiteParameter:stdgo._internal.debug.dwarf.Tag = ((73u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCatchDwarfBlock:stdgo._internal.debug.dwarf.Tag = ((37u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagClassType:stdgo._internal.debug.dwarf.Tag = ((2u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCoarrayType:stdgo._internal.debug.dwarf.Tag = ((68u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCommonDwarfBlock:stdgo._internal.debug.dwarf.Tag = ((26u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCommonInclusion:stdgo._internal.debug.dwarf.Tag = ((27u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCompileUnit:stdgo._internal.debug.dwarf.Tag = ((17u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagCondition:stdgo._internal.debug.dwarf.Tag = ((63u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagConstType:stdgo._internal.debug.dwarf.Tag = ((38u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagConstant:stdgo._internal.debug.dwarf.Tag = ((39u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagDwarfProcedure:stdgo._internal.debug.dwarf.Tag = ((54u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagDynamicType:stdgo._internal.debug.dwarf.Tag = ((70u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagEntryPoint:stdgo._internal.debug.dwarf.Tag = ((3u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagEnumerationType:stdgo._internal.debug.dwarf.Tag = ((4u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagEnumerator:stdgo._internal.debug.dwarf.Tag = ((40u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagFileType:stdgo._internal.debug.dwarf.Tag = ((41u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagFormalParameter:stdgo._internal.debug.dwarf.Tag = ((5u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagFriend:stdgo._internal.debug.dwarf.Tag = ((42u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagGenericSubrange:stdgo._internal.debug.dwarf.Tag = ((69u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagImmutableType:stdgo._internal.debug.dwarf.Tag = ((75u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagImportedDeclaration:stdgo._internal.debug.dwarf.Tag = ((8u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagImportedModule:stdgo._internal.debug.dwarf.Tag = ((58u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagImportedUnit:stdgo._internal.debug.dwarf.Tag = ((61u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagInheritance:stdgo._internal.debug.dwarf.Tag = ((28u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagInlinedSubroutine:stdgo._internal.debug.dwarf.Tag = ((29u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagInterfaceType:stdgo._internal.debug.dwarf.Tag = ((56u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagLabel:stdgo._internal.debug.dwarf.Tag = ((10u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagLexDwarfBlock:stdgo._internal.debug.dwarf.Tag = ((11u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagMember:stdgo._internal.debug.dwarf.Tag = ((13u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagModule:stdgo._internal.debug.dwarf.Tag = ((30u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagMutableType:stdgo._internal.debug.dwarf.Tag = ((62u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagNamelist:stdgo._internal.debug.dwarf.Tag = ((43u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagNamelistItem:stdgo._internal.debug.dwarf.Tag = ((44u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagNamespace:stdgo._internal.debug.dwarf.Tag = ((57u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagPackedType:stdgo._internal.debug.dwarf.Tag = ((45u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagPartialUnit:stdgo._internal.debug.dwarf.Tag = ((60u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagPointerType:stdgo._internal.debug.dwarf.Tag = ((15u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagPtrToMemberType:stdgo._internal.debug.dwarf.Tag = ((31u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagReferenceType:stdgo._internal.debug.dwarf.Tag = ((16u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagRestrictType:stdgo._internal.debug.dwarf.Tag = ((55u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagRvalueReferenceType:stdgo._internal.debug.dwarf.Tag = ((66u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSetType:stdgo._internal.debug.dwarf.Tag = ((32u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSharedType:stdgo._internal.debug.dwarf.Tag = ((64u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSkeletonUnit:stdgo._internal.debug.dwarf.Tag = ((74u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagStringType:stdgo._internal.debug.dwarf.Tag = ((18u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagStructType:stdgo._internal.debug.dwarf.Tag = ((19u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSubprogram:stdgo._internal.debug.dwarf.Tag = ((46u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSubrangeType:stdgo._internal.debug.dwarf.Tag = ((33u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagSubroutineType:stdgo._internal.debug.dwarf.Tag = ((21u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTemplateAlias:stdgo._internal.debug.dwarf.Tag = ((67u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTemplateTypeParameter:stdgo._internal.debug.dwarf.Tag = ((47u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTemplateValueParameter:stdgo._internal.debug.dwarf.Tag = ((48u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagThrownType:stdgo._internal.debug.dwarf.Tag = ((49u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTryDwarfBlock:stdgo._internal.debug.dwarf.Tag = ((50u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTypeUnit:stdgo._internal.debug.dwarf.Tag = ((65u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagTypedef:stdgo._internal.debug.dwarf.Tag = ((22u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagUnionType:stdgo._internal.debug.dwarf.Tag = ((23u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagUnspecifiedParameters:stdgo._internal.debug.dwarf.Tag = ((24u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagUnspecifiedType:stdgo._internal.debug.dwarf.Tag = ((59u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagVariable:stdgo._internal.debug.dwarf.Tag = ((52u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagVariant:stdgo._internal.debug.dwarf.Tag = ((25u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagVariantPart:stdgo._internal.debug.dwarf.Tag = ((51u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagVolatileType:stdgo._internal.debug.dwarf.Tag = ((53u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


```haxe
final tagWithStmt:stdgo._internal.debug.dwarf.Tag = ((34u32 : stdgo._internal.debug.dwarf.Dwarf_Tag.Tag))
```


# Variables


```haxe
import stdgo._internal.debug.dwarf.Dwarf_tagWithStmt
```


```haxe
var __Attr_map:stdgo.GoMap<stdgo._internal.debug.dwarf.Attr, stdgo.GoString>
```


```haxe
var __Class_index:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var _attrIsExprloc:stdgo.GoMap<stdgo._internal.debug.dwarf.Attr, Bool>
```


```haxe
var _attrPtrClass:stdgo.GoMap<stdgo._internal.debug.dwarf.Attr, stdgo._internal.debug.dwarf.Class_>
```


```haxe
var _knownOpcodeLengths:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>
```


```haxe
var errUnknownPC:stdgo.Error
```


```haxe
var _errSegmentSelector:stdgo.Error
```


```haxe
var __Tag_index_0:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __Tag_index_2:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __Tag_index_4:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var __Tag_index_5:stdgo.GoArray<stdgo.GoUInt16>
```


# Functions


```haxe
import stdgo._internal.debug.dwarf.Dwarf_tagWithStmt
```


## function \_formToClass


```haxe
function _formToClass(_form:stdgo._internal.debug.dwarf.T_format, _attr:stdgo._internal.debug.dwarf.Attr, _vers:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.debug.dwarf.T_buf>):stdgo._internal.debug.dwarf.Class_
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function \_makeBuf


```haxe
function _makeBuf(_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, _format:stdgo._internal.debug.dwarf.T_dataFormat, _name:stdgo.GoString, _off:stdgo._internal.debug.dwarf.Offset, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.debug.dwarf.T_buf
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function \_pathIsAbs


```haxe
function _pathIsAbs(_path:stdgo.GoString):Bool
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function \_pathJoin


```haxe
function _pathJoin(_dirname:stdgo.GoString, _filename:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function \_splitDrive


```haxe
function _splitDrive(_path:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function \_zeroArray


```haxe
function _zeroArray(_t:stdgo.Ref<stdgo._internal.debug.dwarf.Type_>):Void
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


## function new\_


```haxe
function new_(_abbrev:stdgo.Slice<stdgo.GoUInt8>, _aranges:stdgo.Slice<stdgo.GoUInt8>, _frame:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>, _line:stdgo.Slice<stdgo.GoUInt8>, _pubnames:stdgo.Slice<stdgo.GoUInt8>, _ranges:stdgo.Slice<stdgo.GoUInt8>, _str:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.debug.dwarf.Data>;
}
```


[\(view code\)](<./Dwarf_tagWithStmt.hx#L2>)


# Classes


```haxe
import stdgo._internal.debug.dwarf.*
```


## class AddrType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### AddrType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_AddrType.hx#L10>)


### AddrType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_AddrType.hx#L12>)


### AddrType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_AddrType.hx#L5>)


### AddrType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_AddrType.hx#L14>)


### AddrType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_AddrType.hx#L16>)


## class ArrayType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var count:stdgo.GoInt64
```


```haxe
var strideBitSize:stdgo.GoInt64
```


```haxe
var type:stdgo._internal.debug.dwarf.Type_
```


### ArrayType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_ArrayType.hx#L16>)


### ArrayType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_, ?strideBitSize:stdgo.GoInt64, ?count:stdgo.GoInt64):Void
```


[\(view code\)](<./Dwarf_ArrayType.hx#L8>)


## class BasicType


```haxe
var bitOffset:stdgo.GoInt64
```


```haxe
var bitSize:stdgo.GoInt64
```


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var dataBitOffset:stdgo.GoInt64
```


### BasicType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_BasicType.hx#L16>)


### BasicType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?bitSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64):Void
```


[\(view code\)](<./Dwarf_BasicType.hx#L8>)


### BasicType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_BasicType.hx#L18>)


## class BoolType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### BoolType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_BoolType.hx#L10>)


### BoolType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_BoolType.hx#L12>)


### BoolType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_BoolType.hx#L5>)


### BoolType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_BoolType.hx#L14>)


### BoolType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_BoolType.hx#L16>)


## class CharType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### CharType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_CharType.hx#L10>)


### CharType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_CharType.hx#L12>)


### CharType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_CharType.hx#L5>)


### CharType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_CharType.hx#L14>)


### CharType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_CharType.hx#L16>)


## class CommonType


```haxe
var byteSize:stdgo.GoInt64
```


```haxe
var name:stdgo.GoString
```


### CommonType function new


```haxe
function new(?byteSize:stdgo.GoInt64, ?name:stdgo.GoString):Void
```


[\(view code\)](<./Dwarf_CommonType.hx#L5>)


## class ComplexType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### ComplexType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_ComplexType.hx#L10>)


### ComplexType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_ComplexType.hx#L12>)


### ComplexType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_ComplexType.hx#L5>)


### ComplexType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_ComplexType.hx#L14>)


### ComplexType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_ComplexType.hx#L16>)


## class Data


```haxe
var _abbrev:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _abbrevCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.T_abbrevTable>
```


```haxe
var _addr:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _aranges:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _bigEndian:Bool
```


```haxe
var _frame:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _info:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _line:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _lineStr:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _order:stdgo._internal.encoding.binary.ByteOrder
```


```haxe
var _pubnames:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _ranges:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _rngLists:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _str:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _strOffsets:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Offset, stdgo._internal.debug.dwarf.Type_>
```


```haxe
var _typeSigs:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>>
```


```haxe
var _unit:stdgo.Slice<stdgo._internal.debug.dwarf.T_unit>
```


### Data function new


```haxe
function new(?_abbrev:stdgo.Slice<stdgo.GoUInt8>, ?_aranges:stdgo.Slice<stdgo.GoUInt8>, ?_frame:stdgo.Slice<stdgo.GoUInt8>, ?_info:stdgo.Slice<stdgo.GoUInt8>, ?_line:stdgo.Slice<stdgo.GoUInt8>, ?_pubnames:stdgo.Slice<stdgo.GoUInt8>, ?_ranges:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_addr:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_strOffsets:stdgo.Slice<stdgo.GoUInt8>, ?_rngLists:stdgo.Slice<stdgo.GoUInt8>, ?_abbrevCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.T_abbrevTable>, ?_bigEndian:Bool, ?_order:stdgo._internal.encoding.binary.ByteOrder, ?_typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Offset, stdgo._internal.debug.dwarf.Type_>, ?_typeSigs:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>>, ?_unit:stdgo.Slice<stdgo._internal.debug.dwarf.T_unit>):Void
```


[\(view code\)](<./Dwarf_Data.hx#L21>)


## class DecodeError


```haxe
var err:stdgo.GoString
```


```haxe
var name:stdgo.GoString
```


```haxe
var offset:stdgo._internal.debug.dwarf.Offset
```


### DecodeError function new


```haxe
function new(?name:stdgo.GoString, ?offset:stdgo._internal.debug.dwarf.Offset, ?err:stdgo.GoString):Void
```


[\(view code\)](<./Dwarf_DecodeError.hx#L6>)


## class DotDotDotType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


### DotDotDotType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_DotDotDotType.hx#L10>)


### DotDotDotType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType):Void
```


[\(view code\)](<./Dwarf_DotDotDotType.hx#L5>)


### DotDotDotType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_DotDotDotType.hx#L12>)


## class Entry


```haxe
var children:Bool
```


```haxe
var field:stdgo.Slice<stdgo._internal.debug.dwarf.Field>
```


```haxe
var offset:stdgo._internal.debug.dwarf.Offset
```


```haxe
var tag:stdgo._internal.debug.dwarf.Tag
```


### Entry function new


```haxe
function new(?offset:stdgo._internal.debug.dwarf.Offset, ?tag:stdgo._internal.debug.dwarf.Tag, ?children:Bool, ?field:stdgo.Slice<stdgo._internal.debug.dwarf.Field>):Void
```


[\(view code\)](<./Dwarf_Entry.hx#L7>)


## class EnumType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var enumName:stdgo.GoString
```


```haxe
var val:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.EnumValue_>>
```


### EnumType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_EnumType.hx#L14>)


### EnumType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?enumName:stdgo.GoString, ?val:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.EnumValue_>>):Void
```


[\(view code\)](<./Dwarf_EnumType.hx#L7>)


### EnumType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_EnumType.hx#L16>)


## class EnumValue\_


```haxe
var name:stdgo.GoString
```


```haxe
var val:stdgo.GoInt64
```


### EnumValue\_ function new


```haxe
function new(?name:stdgo.GoString, ?val:stdgo.GoInt64):Void
```


[\(view code\)](<./Dwarf_EnumValue_.hx#L5>)


## class Field


```haxe
var attr:stdgo._internal.debug.dwarf.Attr
```


```haxe
var class_:stdgo._internal.debug.dwarf.Class_
```


```haxe
var val:stdgo.AnyInterface
```


### Field function new


```haxe
function new(?attr:stdgo._internal.debug.dwarf.Attr, ?val:stdgo.AnyInterface, ?class_:stdgo._internal.debug.dwarf.Class_):Void
```


[\(view code\)](<./Dwarf_Field.hx#L6>)


## class FloatType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### FloatType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_FloatType.hx#L10>)


### FloatType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_FloatType.hx#L12>)


### FloatType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_FloatType.hx#L5>)


### FloatType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_FloatType.hx#L14>)


### FloatType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_FloatType.hx#L16>)


## class FuncType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Type_>
```


```haxe
var returnType:stdgo._internal.debug.dwarf.Type_
```


### FuncType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_FuncType.hx#L14>)


### FuncType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?returnType:stdgo._internal.debug.dwarf.Type_, ?paramType:stdgo.Slice<stdgo._internal.debug.dwarf.Type_>):Void
```


[\(view code\)](<./Dwarf_FuncType.hx#L7>)


### FuncType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_FuncType.hx#L16>)


## class IntType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### IntType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_IntType.hx#L10>)


### IntType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_IntType.hx#L12>)


### IntType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_IntType.hx#L5>)


### IntType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_IntType.hx#L14>)


### IntType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_IntType.hx#L16>)


## class LineEntry


```haxe
var address:stdgo.GoUInt64
```


```haxe
var basicBlock:Bool
```


```haxe
var column:stdgo.GoInt
```


```haxe
var discriminator:stdgo.GoInt
```


```haxe
var endSequence:Bool
```


```haxe
var epilogueBegin:Bool
```


```haxe
var file:stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>
```


```haxe
var isStmt:Bool
```


```haxe
var isa:stdgo.GoInt
```


```haxe
var line:stdgo.GoInt
```


```haxe
var opIndex:stdgo.GoInt
```


```haxe
var prologueEnd:Bool
```


### LineEntry function new


```haxe
function new(?address:stdgo.GoUInt64, ?opIndex:stdgo.GoInt, ?file:stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?isStmt:Bool, ?basicBlock:Bool, ?prologueEnd:Bool, ?epilogueBegin:Bool, ?isa:stdgo.GoInt, ?discriminator:stdgo.GoInt, ?endSequence:Bool):Void
```


[\(view code\)](<./Dwarf_LineEntry.hx#L15>)


## class LineFile


```haxe
var length_:stdgo.GoInt
```


```haxe
var mtime:stdgo.GoUInt64
```


```haxe
var name:stdgo.GoString
```


### LineFile function new


```haxe
function new(?name:stdgo.GoString, ?mtime:stdgo.GoUInt64, ?length_:stdgo.GoInt):Void
```


[\(view code\)](<./Dwarf_LineFile.hx#L6>)


## class LineReader


```haxe
var _addrsize:stdgo.GoInt
```


```haxe
var _buf:stdgo._internal.debug.dwarf.T_buf
```


```haxe
var _defaultIsStmt:Bool
```


```haxe
var _directories:stdgo.Slice<stdgo.GoString>
```


```haxe
var _endOffset:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _fileEntries:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>>
```


```haxe
var _fileIndex:stdgo.GoInt
```


```haxe
var _initialFileEntries:stdgo.GoInt
```


```haxe
var _lineBase:stdgo.GoInt
```


```haxe
var _lineRange:stdgo.GoInt
```


```haxe
var _lineStr:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _maxOpsPerInstruction:stdgo.GoInt
```


```haxe
var _minInstructionLength:stdgo.GoInt
```


```haxe
var _opcodeBase:stdgo.GoInt
```


```haxe
var _opcodeLengths:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _programOffset:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _section:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _segmentSelectorSize:stdgo.GoInt
```


```haxe
var _state:stdgo._internal.debug.dwarf.LineEntry
```


```haxe
var _str:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _version:stdgo.GoUInt16
```


### LineReader function new


```haxe
function new(?_buf:stdgo._internal.debug.dwarf.T_buf, ?_section:stdgo.Slice<stdgo.GoUInt8>, ?_str:stdgo.Slice<stdgo.GoUInt8>, ?_lineStr:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_addrsize:stdgo.GoInt, ?_segmentSelectorSize:stdgo.GoInt, ?_minInstructionLength:stdgo.GoInt, ?_maxOpsPerInstruction:stdgo.GoInt, ?_defaultIsStmt:Bool, ?_lineBase:stdgo.GoInt, ?_lineRange:stdgo.GoInt, ?_opcodeBase:stdgo.GoInt, ?_opcodeLengths:stdgo.Slice<stdgo.GoInt>, ?_directories:stdgo.Slice<stdgo.GoString>, ?_fileEntries:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.LineFile>>, ?_programOffset:stdgo._internal.debug.dwarf.Offset, ?_endOffset:stdgo._internal.debug.dwarf.Offset, ?_initialFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.LineEntry, ?_fileIndex:stdgo.GoInt):Void
```


[\(view code\)](<./Dwarf_LineReader.hx#L24>)


## class LineReaderPos


```haxe
var _fileIndex:stdgo.GoInt
```


```haxe
var _numFileEntries:stdgo.GoInt
```


```haxe
var _off:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _state:stdgo._internal.debug.dwarf.LineEntry
```


### LineReaderPos function new


```haxe
function new(?_off:stdgo._internal.debug.dwarf.Offset, ?_numFileEntries:stdgo.GoInt, ?_state:stdgo._internal.debug.dwarf.LineEntry, ?_fileIndex:stdgo.GoInt):Void
```


[\(view code\)](<./Dwarf_LineReaderPos.hx#L7>)


## class PtrType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var type:stdgo._internal.debug.dwarf.Type_
```


### PtrType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_PtrType.hx#L12>)


### PtrType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_):Void
```


[\(view code\)](<./Dwarf_PtrType.hx#L6>)


### PtrType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_PtrType.hx#L14>)


## class QualType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var qual:stdgo.GoString
```


```haxe
var type:stdgo._internal.debug.dwarf.Type_
```


### QualType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_QualType.hx#L14>)


### QualType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?qual:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Type_):Void
```


[\(view code\)](<./Dwarf_QualType.hx#L7>)


## class Reader


```haxe
var _b:stdgo._internal.debug.dwarf.T_buf
```


```haxe
var _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Entry>
```


```haxe
var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _lastChildren:Bool
```


```haxe
var _lastSibling:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _lastUnit:Bool
```


```haxe
var _unit:stdgo.GoInt
```


### Reader function new


```haxe
function new(?_b:stdgo._internal.debug.dwarf.T_buf, ?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_err:stdgo.Error, ?_unit:stdgo.GoInt, ?_lastUnit:Bool, ?_lastChildren:Bool, ?_lastSibling:stdgo._internal.debug.dwarf.Offset, ?_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Entry>):Void
```


[\(view code\)](<./Dwarf_Reader.hx#L11>)


## class StructField


```haxe
var bitOffset:stdgo.GoInt64
```


```haxe
var bitSize:stdgo.GoInt64
```


```haxe
var byteOffset:stdgo.GoInt64
```


```haxe
var byteSize:stdgo.GoInt64
```


```haxe
var dataBitOffset:stdgo.GoInt64
```


```haxe
var name:stdgo.GoString
```


```haxe
var type:stdgo._internal.debug.dwarf.Type_
```


### StructField function new


```haxe
function new(?name:stdgo.GoString, ?type:stdgo._internal.debug.dwarf.Type_, ?byteOffset:stdgo.GoInt64, ?byteSize:stdgo.GoInt64, ?bitOffset:stdgo.GoInt64, ?dataBitOffset:stdgo.GoInt64, ?bitSize:stdgo.GoInt64):Void
```


[\(view code\)](<./Dwarf_StructField.hx#L10>)


## class StructType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var field:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.StructField>>
```


```haxe
var incomplete:Bool
```


```haxe
var kind:stdgo.GoString
```


```haxe
var structName:stdgo.GoString
```


### StructType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_StructType.hx#L18>)


### StructType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?structName:stdgo.GoString, ?kind:stdgo.GoString, ?field:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.StructField>>, ?incomplete:Bool):Void
```


[\(view code\)](<./Dwarf_StructType.hx#L9>)


### StructType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_StructType.hx#L20>)


## class T\_\_entry\_\_\_localname\_\_\_delayed\_12177


```haxe
var _fmt:stdgo._internal.debug.dwarf.T_format
```


```haxe
var _idx:stdgo.GoInt
```


```haxe
var _off:stdgo.GoUInt64
```


### T\_\_entry\_\_\_localname\_\_\_delayed\_12177 function new


```haxe
function new(?_idx:stdgo.GoInt, ?_off:stdgo.GoUInt64, ?_fmt:stdgo._internal.debug.dwarf.T_format):Void
```


[\(view code\)](<./Dwarf_T__entry___localname___delayed_12177.hx#L6>)


## class T\_abbrev


```haxe
var _children:Bool
```


```haxe
var _field:stdgo.Slice<stdgo._internal.debug.dwarf.T_afield>
```


```haxe
var _tag:stdgo._internal.debug.dwarf.Tag
```


### T\_abbrev function new


```haxe
function new(?_tag:stdgo._internal.debug.dwarf.Tag, ?_children:Bool, ?_field:stdgo.Slice<stdgo._internal.debug.dwarf.T_afield>):Void
```


[\(view code\)](<./Dwarf_T_abbrev.hx#L6>)


## class T\_afield


```haxe
var _attr:stdgo._internal.debug.dwarf.Attr
```


```haxe
var _class:stdgo._internal.debug.dwarf.Class_
```


```haxe
var _fmt:stdgo._internal.debug.dwarf.T_format
```


```haxe
var _val:stdgo.GoInt64
```


### T\_afield function new


```haxe
function new(?_attr:stdgo._internal.debug.dwarf.Attr, ?_fmt:stdgo._internal.debug.dwarf.T_format, ?_class:stdgo._internal.debug.dwarf.Class_, ?_val:stdgo.GoInt64):Void
```


[\(view code\)](<./Dwarf_T_afield.hx#L7>)


## class T\_buf


```haxe
var _data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _dwarf:stdgo.Ref<stdgo._internal.debug.dwarf.Data>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _format:stdgo._internal.debug.dwarf.T_dataFormat
```


```haxe
var _name:stdgo.GoString
```


```haxe
var _off:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _order:stdgo._internal.encoding.binary.ByteOrder
```


### T\_buf function new


```haxe
function new(?_dwarf:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_order:stdgo._internal.encoding.binary.ByteOrder, ?_format:stdgo._internal.debug.dwarf.T_dataFormat, ?_name:stdgo.GoString, ?_off:stdgo._internal.debug.dwarf.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo.Error):Void
```


[\(view code\)](<./Dwarf_T_buf.hx#L10>)


## class T\_lnctForm


```haxe
var _form:stdgo._internal.debug.dwarf.T_format
```


```haxe
var _lnct:stdgo.GoInt
```


### T\_lnctForm function new


```haxe
function new(?_lnct:stdgo.GoInt, ?_form:stdgo._internal.debug.dwarf.T_format):Void
```


[\(view code\)](<./Dwarf_T_lnctForm.hx#L5>)


## class T\_typeFixer


```haxe
var _arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Type_>>
```


```haxe
var _typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.TypedefType>>
```


### T\_typeFixer function new


```haxe
function new(?_typedefs:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.TypedefType>>, ?_arraytypes:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Type_>>):Void
```


[\(view code\)](<./Dwarf_T_typeFixer.hx#L5>)


## class T\_typeUnit


```haxe
var _cache:stdgo._internal.debug.dwarf.Type_
```


```haxe
var _name:stdgo.GoString
```


```haxe
var _toff:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _unit:stdgo._internal.debug.dwarf.T_unit
```


### T\_typeUnit function \_addrsize


```haxe
function _addrsize():stdgo.GoInt
```


[\(view code\)](<./Dwarf_T_typeUnit.hx#L16>)


### T\_typeUnit function \_dwarf64


```haxe
function _dwarf64():{
	_1:Bool;
	_0:Bool;
}
```


[\(view code\)](<./Dwarf_T_typeUnit.hx#L18>)


### T\_typeUnit function \_version


```haxe
function _version():stdgo.GoInt
```


[\(view code\)](<./Dwarf_T_typeUnit.hx#L20>)


### T\_typeUnit function new


```haxe
function new(?_unit:stdgo._internal.debug.dwarf.T_unit, ?_toff:stdgo._internal.debug.dwarf.Offset, ?_name:stdgo.GoString, ?_cache:stdgo._internal.debug.dwarf.Type_):Void
```


[\(view code\)](<./Dwarf_T_typeUnit.hx#L8>)


## class T\_typeUnitReader


```haxe
var _b:stdgo._internal.debug.dwarf.T_buf
```


```haxe
var _d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>
```


```haxe
var _err:stdgo.Error
```


```haxe
var _tu:stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>
```


### T\_typeUnitReader function new


```haxe
function new(?_d:stdgo.Ref<stdgo._internal.debug.dwarf.Data>, ?_tu:stdgo.Ref<stdgo._internal.debug.dwarf.T_typeUnit>, ?_b:stdgo._internal.debug.dwarf.T_buf, ?_err:stdgo.Error):Void
```


[\(view code\)](<./Dwarf_T_typeUnitReader.hx#L7>)


## class T\_unit


```haxe
var _asize:stdgo.GoInt
```


```haxe
var _atable:stdgo._internal.debug.dwarf.T_abbrevTable
```


```haxe
var _base:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _data:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _is64:Bool
```


```haxe
var _off:stdgo._internal.debug.dwarf.Offset
```


```haxe
var _utype:stdgo.GoUInt8
```


```haxe
var _vers:stdgo.GoInt
```


### T\_unit function new


```haxe
function new(?_base:stdgo._internal.debug.dwarf.Offset, ?_off:stdgo._internal.debug.dwarf.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_atable:stdgo._internal.debug.dwarf.T_abbrevTable, ?_asize:stdgo.GoInt, ?_vers:stdgo.GoInt, ?_utype:stdgo.GoUInt8, ?_is64:Bool):Void
```


[\(view code\)](<./Dwarf_T_unit.hx#L11>)


## class T\_unknownFormat


### T\_unknownFormat function new


```haxe
function new():Void
```


[\(view code\)](<./Dwarf_T_unknownFormat.hx#L3>)


## class TypedefType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var type:stdgo._internal.debug.dwarf.Type_
```


### TypedefType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_TypedefType.hx#L12>)


### TypedefType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?type:stdgo._internal.debug.dwarf.Type_):Void
```


[\(view code\)](<./Dwarf_TypedefType.hx#L6>)


## class UcharType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### UcharType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_UcharType.hx#L10>)


### UcharType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_UcharType.hx#L12>)


### UcharType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_UcharType.hx#L5>)


### UcharType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_UcharType.hx#L14>)


### UcharType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_UcharType.hx#L16>)


## class UintType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### UintType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_UintType.hx#L10>)


### UintType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_UintType.hx#L12>)


### UintType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_UintType.hx#L5>)


### UintType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_UintType.hx#L14>)


### UintType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_UintType.hx#L16>)


## class UnspecifiedType


```haxe
var basicType:stdgo._internal.debug.dwarf.BasicType
```


### UnspecifiedType function basic


```haxe
function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>
```


[\(view code\)](<./Dwarf_UnspecifiedType.hx#L10>)


### UnspecifiedType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_UnspecifiedType.hx#L12>)


### UnspecifiedType function new


```haxe
function new(?basicType:stdgo._internal.debug.dwarf.BasicType):Void
```


[\(view code\)](<./Dwarf_UnspecifiedType.hx#L5>)


### UnspecifiedType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_UnspecifiedType.hx#L14>)


### UnspecifiedType function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Dwarf_UnspecifiedType.hx#L16>)


## class UnsupportedType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


```haxe
var tag:stdgo._internal.debug.dwarf.Tag
```


### UnsupportedType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_UnsupportedType.hx#L12>)


### UnsupportedType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType, ?tag:stdgo._internal.debug.dwarf.Tag):Void
```


[\(view code\)](<./Dwarf_UnsupportedType.hx#L6>)


### UnsupportedType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_UnsupportedType.hx#L14>)


## class VoidType


```haxe
var commonType:stdgo._internal.debug.dwarf.CommonType
```


### VoidType function common


```haxe
function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>
```


[\(view code\)](<./Dwarf_VoidType.hx#L10>)


### VoidType function new


```haxe
function new(?commonType:stdgo._internal.debug.dwarf.CommonType):Void
```


[\(view code\)](<./Dwarf_VoidType.hx#L5>)


### VoidType function size


```haxe
function size():stdgo.GoInt64
```


[\(view code\)](<./Dwarf_VoidType.hx#L12>)


# Typedefs


```haxe
import stdgo._internal.debug.dwarf.*
```


## typedef Attr


```haxe
typedef Attr = stdgo.GoUInt32;
```


## typedef Class\_


```haxe
typedef Class_ = stdgo.GoInt;
```


## typedef Offset


```haxe
typedef Offset = stdgo.GoUInt32;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function basic():stdgo.Ref<stdgo._internal.debug.dwarf.BasicType>;
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


## typedef T\_abbrevTable


```haxe
typedef T_abbrevTable = stdgo.GoMap<stdgo.GoUInt32, stdgo._internal.debug.dwarf.T_abbrev>;
```


## typedef T\_dataFormat


```haxe
typedef T_dataFormat = {
	public function _version():stdgo.GoInt;	// DWARF version number. Zero means unknown.
	public function _dwarf64():{
		_1:Bool;
		_0:Bool;
	};	// 64-bit DWARF format?
	public function _addrsize():stdgo.GoInt;	// Size of an address, in bytes. Zero means unknown.
};
```


## typedef T\_format


```haxe
typedef T_format = stdgo.GoUInt32;
```


## typedef T\_typeReader


```haxe
typedef T_typeReader = {
	public function seek(_0:stdgo._internal.debug.dwarf.Offset):Void;
	public function next():{
		_1:stdgo.Error;
		_0:stdgo.Ref<stdgo._internal.debug.dwarf.Entry>;
	};
	public function addressSize():stdgo.GoInt;	// AddressSize returns the size in bytes of addresses in the current compilation unit.
	public function _offset():stdgo._internal.debug.dwarf.Offset;
	public function _clone():stdgo._internal.debug.dwarf.T_typeReader;
};
```


## typedef Tag


```haxe
typedef Tag = stdgo.GoUInt32;
```


## typedef Type\_


```haxe
typedef Type_ = {
	public function string():stdgo.GoString;
	public function size():stdgo.GoInt64;
	public function common():stdgo.Ref<stdgo._internal.debug.dwarf.CommonType>;
};
```


