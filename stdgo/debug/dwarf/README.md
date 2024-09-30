# Module: `stdgo.debug.dwarf`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [class Dwarf](<#class-dwarf>)

  - [`function new_(_abbrev:Array<UInt>, _aranges:Array<UInt>, _frame:Array<UInt>, _info:Array<UInt>, _line:Array<UInt>, _pubnames:Array<UInt>, _ranges:Array<UInt>, _str:Array<UInt>):stdgo.Tuple<stdgo.debug.dwarf.Data, stdgo.Error>`](<#dwarf-function-new_>)

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

- [abstract T\_buf](<#abstract-t_buf>)

- [abstract T\_unknownFormat](<#abstract-t_unknownformat>)

- [abstract DecodeError](<#abstract-decodeerror>)

- [abstract T\_abbrev](<#abstract-t_abbrev>)

- [abstract T\_afield](<#abstract-t_afield>)

- [abstract Entry](<#abstract-entry>)

- [abstract Field](<#abstract-field>)

- [abstract Reader](<#abstract-reader>)

- [abstract LineReader](<#abstract-linereader>)

- [abstract LineEntry](<#abstract-lineentry>)

- [abstract LineFile](<#abstract-linefile>)

- [abstract T\_lnctForm](<#abstract-t_lnctform>)

- [abstract LineReaderPos](<#abstract-linereaderpos>)

- [abstract Data](<#abstract-data>)

- [abstract CommonType](<#abstract-commontype>)

- [abstract BasicType](<#abstract-basictype>)

- [abstract CharType](<#abstract-chartype>)

- [abstract UcharType](<#abstract-uchartype>)

- [abstract IntType](<#abstract-inttype>)

- [abstract UintType](<#abstract-uinttype>)

- [abstract FloatType](<#abstract-floattype>)

- [abstract ComplexType](<#abstract-complextype>)

- [abstract BoolType](<#abstract-booltype>)

- [abstract AddrType](<#abstract-addrtype>)

- [abstract UnspecifiedType](<#abstract-unspecifiedtype>)

- [abstract QualType](<#abstract-qualtype>)

- [abstract ArrayType](<#abstract-arraytype>)

- [abstract VoidType](<#abstract-voidtype>)

- [abstract PtrType](<#abstract-ptrtype>)

- [abstract StructType](<#abstract-structtype>)

- [abstract StructField](<#abstract-structfield>)

- [abstract EnumType](<#abstract-enumtype>)

- [abstract EnumValue\_](<#abstract-enumvalue_>)

- [abstract FuncType](<#abstract-functype>)

- [abstract DotDotDotType](<#abstract-dotdotdottype>)

- [abstract TypedefType](<#abstract-typedeftype>)

- [abstract UnsupportedType](<#abstract-unsupportedtype>)

- [abstract T\_typeFixer](<#abstract-t_typefixer>)

- [abstract T\_typeUnit](<#abstract-t_typeunit>)

- [abstract T\_typeUnitReader](<#abstract-t_typeunitreader>)

- [abstract T\_unit](<#abstract-t_unit>)

- [abstract T\_\_entry\_\_\_localname\_\_\_delayed\_12177](<#abstract-tentry_localname___delayed_12177>)

# Constants


```haxe
import stdgo.debug.dwarf.Dwarf
```


```haxe
final attrAbstractOrigin:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAbstractOrigin.attrAbstractOrigin
```


```haxe
final attrAccessibility:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAccessibility.attrAccessibility
```


```haxe
final attrAddrBase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAddrBase.attrAddrBase
```


```haxe
final attrAddrClass:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAddrClass.attrAddrClass
```


```haxe
final attrAlignment:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAlignment.attrAlignment
```


```haxe
final attrAllocated:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAllocated.attrAllocated
```


```haxe
final attrArtificial:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrArtificial.attrArtificial
```


```haxe
final attrAssociated:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrAssociated.attrAssociated
```


```haxe
final attrBaseTypes:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrBaseTypes.attrBaseTypes
```


```haxe
final attrBinaryScale:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrBinaryScale.attrBinaryScale
```


```haxe
final attrBitOffset:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrBitOffset.attrBitOffset
```


```haxe
final attrBitSize:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrBitSize.attrBitSize
```


```haxe
final attrByteSize:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrByteSize.attrByteSize
```


```haxe
final attrCallAllCalls:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallAllCalls.attrCallAllCalls
```


```haxe
final attrCallAllSourceCalls:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallAllSourceCalls.attrCallAllSourceCalls
```


```haxe
final attrCallAllTailCalls:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallAllTailCalls.attrCallAllTailCalls
```


```haxe
final attrCallColumn:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallColumn.attrCallColumn
```


```haxe
final attrCallDataLocation:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallDataLocation.attrCallDataLocation
```


```haxe
final attrCallDataValue:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallDataValue.attrCallDataValue
```


```haxe
final attrCallFile:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallFile.attrCallFile
```


```haxe
final attrCallLine:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallLine.attrCallLine
```


```haxe
final attrCallOrigin:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallOrigin.attrCallOrigin
```


```haxe
final attrCallPC:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallPC.attrCallPC
```


```haxe
final attrCallParameter:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallParameter.attrCallParameter
```


```haxe
final attrCallReturnPC:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallReturnPC.attrCallReturnPC
```


```haxe
final attrCallTailCall:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallTailCall.attrCallTailCall
```


```haxe
final attrCallTarget:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallTarget.attrCallTarget
```


```haxe
final attrCallTargetClobbered:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallTargetClobbered.attrCallTargetClobbered
```


```haxe
final attrCallValue:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCallValue.attrCallValue
```


```haxe
final attrCalling:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCalling.attrCalling
```


```haxe
final attrCommonRef:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCommonRef.attrCommonRef
```


```haxe
final attrCompDir:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCompDir.attrCompDir
```


```haxe
final attrConstExpr:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrConstExpr.attrConstExpr
```


```haxe
final attrConstValue:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrConstValue.attrConstValue
```


```haxe
final attrContainingType:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrContainingType.attrContainingType
```


```haxe
final attrCount:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrCount.attrCount
```


```haxe
final attrDataBitOffset:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDataBitOffset.attrDataBitOffset
```


```haxe
final attrDataLocation:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDataLocation.attrDataLocation
```


```haxe
final attrDataMemberLoc:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDataMemberLoc.attrDataMemberLoc
```


```haxe
final attrDecimalScale:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDecimalScale.attrDecimalScale
```


```haxe
final attrDecimalSign:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDecimalSign.attrDecimalSign
```


```haxe
final attrDeclColumn:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDeclColumn.attrDeclColumn
```


```haxe
final attrDeclFile:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDeclFile.attrDeclFile
```


```haxe
final attrDeclLine:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDeclLine.attrDeclLine
```


```haxe
final attrDeclaration:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDeclaration.attrDeclaration
```


```haxe
final attrDefaultValue:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDefaultValue.attrDefaultValue
```


```haxe
final attrDefaulted:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDefaulted.attrDefaulted
```


```haxe
final attrDeleted:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDeleted.attrDeleted
```


```haxe
final attrDescription:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDescription.attrDescription
```


```haxe
final attrDigitCount:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDigitCount.attrDigitCount
```


```haxe
final attrDiscr:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDiscr.attrDiscr
```


```haxe
final attrDiscrList:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDiscrList.attrDiscrList
```


```haxe
final attrDiscrValue:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDiscrValue.attrDiscrValue
```


```haxe
final attrDwoName:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrDwoName.attrDwoName
```


```haxe
final attrElemental:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrElemental.attrElemental
```


```haxe
final attrEncoding:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrEncoding.attrEncoding
```


```haxe
final attrEndianity:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrEndianity.attrEndianity
```


```haxe
final attrEntrypc:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrEntrypc.attrEntrypc
```


```haxe
final attrEnumClass:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrEnumClass.attrEnumClass
```


```haxe
final attrExplicit:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrExplicit.attrExplicit
```


```haxe
final attrExportSymbols:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrExportSymbols.attrExportSymbols
```


```haxe
final attrExtension:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrExtension.attrExtension
```


```haxe
final attrExternal:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrExternal.attrExternal
```


```haxe
final attrFrameBase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrFrameBase.attrFrameBase
```


```haxe
final attrFriend:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrFriend.attrFriend
```


```haxe
final attrHighpc:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrHighpc.attrHighpc
```


```haxe
final attrIdentifierCase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrIdentifierCase.attrIdentifierCase
```


```haxe
final attrImport:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrImport.attrImport
```


```haxe
final attrInline:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrInline.attrInline
```


```haxe
final attrIsOptional:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrIsOptional.attrIsOptional
```


```haxe
final attrLanguage:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLanguage.attrLanguage
```


```haxe
final attrLinkageName:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLinkageName.attrLinkageName
```


```haxe
final attrLocation:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLocation.attrLocation
```


```haxe
final attrLoclistsBase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLoclistsBase.attrLoclistsBase
```


```haxe
final attrLowerBound:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLowerBound.attrLowerBound
```


```haxe
final attrLowpc:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrLowpc.attrLowpc
```


```haxe
final attrMacroInfo:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrMacroInfo.attrMacroInfo
```


```haxe
final attrMacros:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrMacros.attrMacros
```


```haxe
final attrMainSubprogram:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrMainSubprogram.attrMainSubprogram
```


```haxe
final attrMutable:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrMutable.attrMutable
```


```haxe
final attrName:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrName.attrName
```


```haxe
final attrNamelistItem:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrNamelistItem.attrNamelistItem
```


```haxe
final attrNoreturn:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrNoreturn.attrNoreturn
```


```haxe
final attrObjectPointer:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrObjectPointer.attrObjectPointer
```


```haxe
final attrOrdering:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrOrdering.attrOrdering
```


```haxe
final attrPictureString:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrPictureString.attrPictureString
```


```haxe
final attrPriority:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrPriority.attrPriority
```


```haxe
final attrProducer:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrProducer.attrProducer
```


```haxe
final attrPrototyped:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrPrototyped.attrPrototyped
```


```haxe
final attrPure:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrPure.attrPure
```


```haxe
final attrRanges:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrRanges.attrRanges
```


```haxe
final attrRank:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrRank.attrRank
```


```haxe
final attrRecursive:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrRecursive.attrRecursive
```


```haxe
final attrReference:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrReference.attrReference
```


```haxe
final attrReturnAddr:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrReturnAddr.attrReturnAddr
```


```haxe
final attrRnglistsBase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrRnglistsBase.attrRnglistsBase
```


```haxe
final attrRvalueReference:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrRvalueReference.attrRvalueReference
```


```haxe
final attrSegment:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrSegment.attrSegment
```


```haxe
final attrSibling:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrSibling.attrSibling
```


```haxe
final attrSignature:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrSignature.attrSignature
```


```haxe
final attrSmall:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrSmall.attrSmall
```


```haxe
final attrSpecification:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrSpecification.attrSpecification
```


```haxe
final attrStartScope:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStartScope.attrStartScope
```


```haxe
final attrStaticLink:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStaticLink.attrStaticLink
```


```haxe
final attrStmtList:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStmtList.attrStmtList
```


```haxe
final attrStrOffsetsBase:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStrOffsetsBase.attrStrOffsetsBase
```


```haxe
final attrStride:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStride.attrStride
```


```haxe
final attrStrideSize:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStrideSize.attrStrideSize
```


```haxe
final attrStringLength:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStringLength.attrStringLength
```


```haxe
final attrStringLengthBitSize:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStringLengthBitSize.attrStringLengthBitSize
```


```haxe
final attrStringLengthByteSize:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrStringLengthByteSize.attrStringLengthByteSize
```


```haxe
final attrThreadsScaled:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrThreadsScaled.attrThreadsScaled
```


```haxe
final attrTrampoline:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrTrampoline.attrTrampoline
```


```haxe
final attrType:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrType.attrType
```


```haxe
final attrUpperBound:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrUpperBound.attrUpperBound
```


```haxe
final attrUseLocation:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrUseLocation.attrUseLocation
```


```haxe
final attrUseUTF8:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrUseUTF8.attrUseUTF8
```


```haxe
final attrVarParam:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrVarParam.attrVarParam
```


```haxe
final attrVirtuality:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrVirtuality.attrVirtuality
```


```haxe
final attrVisibility:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrVisibility.attrVisibility
```


```haxe
final attrVtableElemLoc:stdgo.debug.dwarf.Attr = stdgo._internal.debug.dwarf.Dwarf_attrVtableElemLoc.attrVtableElemLoc
```


```haxe
final classAddrPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classAddrPtr.classAddrPtr
```


```haxe
final classAddress:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classAddress.classAddress
```


```haxe
final classBlock:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classBlock.classBlock
```


```haxe
final classConstant:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classConstant.classConstant
```


```haxe
final classExprLoc:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classExprLoc.classExprLoc
```


```haxe
final classFlag:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classFlag.classFlag
```


```haxe
final classLinePtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classLinePtr.classLinePtr
```


```haxe
final classLocList:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classLocList.classLocList
```


```haxe
final classLocListPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classLocListPtr.classLocListPtr
```


```haxe
final classMacPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classMacPtr.classMacPtr
```


```haxe
final classRangeListPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classRangeListPtr.classRangeListPtr
```


```haxe
final classReference:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classReference.classReference
```


```haxe
final classReferenceAlt:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classReferenceAlt.classReferenceAlt
```


```haxe
final classReferenceSig:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classReferenceSig.classReferenceSig
```


```haxe
final classRngList:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classRngList.classRngList
```


```haxe
final classRngListsPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classRngListsPtr.classRngListsPtr
```


```haxe
final classStrOffsetsPtr:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classStrOffsetsPtr.classStrOffsetsPtr
```


```haxe
final classString:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classString.classString
```


```haxe
final classStringAlt:stdgo._internal.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classStringAlt.classStringAlt
```


```haxe
final classUnknown:stdgo.debug.dwarf.Class_ = stdgo._internal.debug.dwarf.Dwarf_classUnknown.classUnknown
```


```haxe
final tagAccessDeclaration:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagAccessDeclaration.tagAccessDeclaration
```


```haxe
final tagArrayType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagArrayType.tagArrayType
```


```haxe
final tagAtomicType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagAtomicType.tagAtomicType
```


```haxe
final tagBaseType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagBaseType.tagBaseType
```


```haxe
final tagCallSite:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCallSite.tagCallSite
```


```haxe
final tagCallSiteParameter:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCallSiteParameter.tagCallSiteParameter
```


```haxe
final tagCatchDwarfBlock:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCatchDwarfBlock.tagCatchDwarfBlock
```


```haxe
final tagClassType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagClassType.tagClassType
```


```haxe
final tagCoarrayType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCoarrayType.tagCoarrayType
```


```haxe
final tagCommonDwarfBlock:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCommonDwarfBlock.tagCommonDwarfBlock
```


```haxe
final tagCommonInclusion:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCommonInclusion.tagCommonInclusion
```


```haxe
final tagCompileUnit:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCompileUnit.tagCompileUnit
```


```haxe
final tagCondition:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagCondition.tagCondition
```


```haxe
final tagConstType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagConstType.tagConstType
```


```haxe
final tagConstant:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagConstant.tagConstant
```


```haxe
final tagDwarfProcedure:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagDwarfProcedure.tagDwarfProcedure
```


```haxe
final tagDynamicType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagDynamicType.tagDynamicType
```


```haxe
final tagEntryPoint:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagEntryPoint.tagEntryPoint
```


```haxe
final tagEnumerationType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagEnumerationType.tagEnumerationType
```


```haxe
final tagEnumerator:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagEnumerator.tagEnumerator
```


```haxe
final tagFileType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagFileType.tagFileType
```


```haxe
final tagFormalParameter:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagFormalParameter.tagFormalParameter
```


```haxe
final tagFriend:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagFriend.tagFriend
```


```haxe
final tagGenericSubrange:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagGenericSubrange.tagGenericSubrange
```


```haxe
final tagImmutableType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagImmutableType.tagImmutableType
```


```haxe
final tagImportedDeclaration:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagImportedDeclaration.tagImportedDeclaration
```


```haxe
final tagImportedModule:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagImportedModule.tagImportedModule
```


```haxe
final tagImportedUnit:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagImportedUnit.tagImportedUnit
```


```haxe
final tagInheritance:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagInheritance.tagInheritance
```


```haxe
final tagInlinedSubroutine:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagInlinedSubroutine.tagInlinedSubroutine
```


```haxe
final tagInterfaceType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagInterfaceType.tagInterfaceType
```


```haxe
final tagLabel:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagLabel.tagLabel
```


```haxe
final tagLexDwarfBlock:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagLexDwarfBlock.tagLexDwarfBlock
```


```haxe
final tagMember:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagMember.tagMember
```


```haxe
final tagModule:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagModule.tagModule
```


```haxe
final tagMutableType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagMutableType.tagMutableType
```


```haxe
final tagNamelist:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagNamelist.tagNamelist
```


```haxe
final tagNamelistItem:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagNamelistItem.tagNamelistItem
```


```haxe
final tagNamespace:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagNamespace.tagNamespace
```


```haxe
final tagPackedType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagPackedType.tagPackedType
```


```haxe
final tagPartialUnit:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagPartialUnit.tagPartialUnit
```


```haxe
final tagPointerType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagPointerType.tagPointerType
```


```haxe
final tagPtrToMemberType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagPtrToMemberType.tagPtrToMemberType
```


```haxe
final tagReferenceType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagReferenceType.tagReferenceType
```


```haxe
final tagRestrictType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagRestrictType.tagRestrictType
```


```haxe
final tagRvalueReferenceType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagRvalueReferenceType.tagRvalueReferenceType
```


```haxe
final tagSetType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSetType.tagSetType
```


```haxe
final tagSharedType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSharedType.tagSharedType
```


```haxe
final tagSkeletonUnit:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSkeletonUnit.tagSkeletonUnit
```


```haxe
final tagStringType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagStringType.tagStringType
```


```haxe
final tagStructType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagStructType.tagStructType
```


```haxe
final tagSubprogram:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSubprogram.tagSubprogram
```


```haxe
final tagSubrangeType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSubrangeType.tagSubrangeType
```


```haxe
final tagSubroutineType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagSubroutineType.tagSubroutineType
```


```haxe
final tagTemplateAlias:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTemplateAlias.tagTemplateAlias
```


```haxe
final tagTemplateTypeParameter:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTemplateTypeParameter.tagTemplateTypeParameter
```


```haxe
final tagTemplateValueParameter:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTemplateValueParameter.tagTemplateValueParameter
```


```haxe
final tagThrownType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagThrownType.tagThrownType
```


```haxe
final tagTryDwarfBlock:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTryDwarfBlock.tagTryDwarfBlock
```


```haxe
final tagTypeUnit:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTypeUnit.tagTypeUnit
```


```haxe
final tagTypedef:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagTypedef.tagTypedef
```


```haxe
final tagUnionType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagUnionType.tagUnionType
```


```haxe
final tagUnspecifiedParameters:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagUnspecifiedParameters.tagUnspecifiedParameters
```


```haxe
final tagUnspecifiedType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagUnspecifiedType.tagUnspecifiedType
```


```haxe
final tagVariable:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagVariable.tagVariable
```


```haxe
final tagVariant:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagVariant.tagVariant
```


```haxe
final tagVariantPart:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagVariantPart.tagVariantPart
```


```haxe
final tagVolatileType:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagVolatileType.tagVolatileType
```


```haxe
final tagWithStmt:stdgo.debug.dwarf.Tag = stdgo._internal.debug.dwarf.Dwarf_tagWithStmt.tagWithStmt
```


# Variables


```haxe
import stdgo.debug.dwarf.Dwarf
```


```haxe
var errUnknownPC:stdgo.Error
```


# Classes


```haxe
import stdgo.debug.dwarf.*
```


## class Dwarf



Package dwarf provides access to DWARF debugging information loaded from
executable files, as defined in the DWARF 2.0 Standard at
http://dwarfstd.org/doc/dwarf-2.0.0.pdf.  

### Security



This package is not designed to be hardened against adversarial inputs, and is
outside the scope of https://go.dev/security/policy. In particular, only basic
validation is done when parsing object files. As such, care should be taken when
parsing untrusted inputs, as parsing malformed files may consume significant
resources, or cause panics.  

### Dwarf function new\_


```haxe
function new_(_abbrev:Array<UInt>, _aranges:Array<UInt>, _frame:Array<UInt>, _info:Array<UInt>, _line:Array<UInt>, _pubnames:Array<UInt>, _ranges:Array<UInt>, _str:Array<UInt>):stdgo.Tuple<stdgo.debug.dwarf.Data, stdgo.Error>
```


```
New returns a new Data object initialized from the given parameters.
        Rather than calling this function directly, clients should typically use
        the DWARF method of the File type of the appropriate package debug/elf,
        debug/macho, or debug/pe.
```

The \[\]byte arguments are the data from the corresponding debug section
in the object file; for example, for an ELF object, abbrev is the contents of
the ".debug\_abbrev" section.  

[\(view code\)](<./Dwarf.hx#L2150>)


# Typedefs


```haxe
import stdgo.debug.dwarf.*
```


## typedef Attr


```haxe
typedef Attr = stdgo._internal.debug.dwarf.Attr;
```


## typedef Class\_


```haxe
typedef Class_ = stdgo._internal.debug.dwarf.Class_;
```


## typedef Offset


```haxe
typedef Offset = stdgo._internal.debug.dwarf.Offset;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.debug.dwarf.T__interface_0;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.debug.dwarf.T__struct_0;
```


## typedef T\_abbrevTable


```haxe
typedef T_abbrevTable = stdgo._internal.debug.dwarf.T_abbrevTable;
```


## typedef T\_dataFormat


```haxe
typedef T_dataFormat = stdgo._internal.debug.dwarf.T_dataFormat;
```


## typedef T\_format


```haxe
typedef T_format = stdgo._internal.debug.dwarf.T_format;
```


## typedef T\_typeReader


```haxe
typedef T_typeReader = stdgo._internal.debug.dwarf.T_typeReader;
```


## typedef Tag


```haxe
typedef Tag = stdgo._internal.debug.dwarf.Tag;
```


## typedef Type\_


```haxe
typedef Type_ = stdgo._internal.debug.dwarf.Type_;
```


# Abstracts


## abstract T\_buf


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_unknownFormat


[\(view file containing code\)](<./Dwarf.hx>)


## abstract DecodeError


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_abbrev


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_afield


[\(view file containing code\)](<./Dwarf.hx>)


## abstract Entry


[\(view file containing code\)](<./Dwarf.hx>)


## abstract Field


[\(view file containing code\)](<./Dwarf.hx>)


## abstract Reader


[\(view file containing code\)](<./Dwarf.hx>)


## abstract LineReader


[\(view file containing code\)](<./Dwarf.hx>)


## abstract LineEntry


[\(view file containing code\)](<./Dwarf.hx>)


## abstract LineFile


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_lnctForm


[\(view file containing code\)](<./Dwarf.hx>)


## abstract LineReaderPos


[\(view file containing code\)](<./Dwarf.hx>)


## abstract Data


[\(view file containing code\)](<./Dwarf.hx>)


## abstract CommonType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract BasicType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract CharType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract UcharType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract IntType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract UintType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract FloatType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract ComplexType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract BoolType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract AddrType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract UnspecifiedType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract QualType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract ArrayType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract VoidType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract PtrType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract StructType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract StructField


[\(view file containing code\)](<./Dwarf.hx>)


## abstract EnumType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract EnumValue\_


[\(view file containing code\)](<./Dwarf.hx>)


## abstract FuncType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract DotDotDotType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract TypedefType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract UnsupportedType


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_typeFixer


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_typeUnit


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_typeUnitReader


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_unit


[\(view file containing code\)](<./Dwarf.hx>)


## abstract T\_\_entry\_\_\_localname\_\_\_delayed\_12177


[\(view file containing code\)](<./Dwarf.hx>)


