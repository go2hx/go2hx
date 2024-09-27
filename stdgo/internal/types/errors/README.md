# Module: `stdgo.internal.types.errors`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Errors](<#class-errors>)

- [typedef Code](<#typedef-code>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Constants


```haxe
import stdgo.internal.types.errors.Errors
```


```haxe
final ambiguousSelector:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_ambiguousSelector.ambiguousSelector
```


```haxe
final badDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badDecl.badDecl
```


```haxe
final badDotDotDotSyntax:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badDotDotDotSyntax.badDotDotDotSyntax
```


```haxe
final badImportPath:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badImportPath.badImportPath
```


```haxe
final badOffsetofSyntax:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badOffsetofSyntax.badOffsetofSyntax
```


```haxe
final badRecv:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badRecv.badRecv
```


```haxe
final badTypeKeyword:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_badTypeKeyword.badTypeKeyword
```


```haxe
final blankIfaceMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_blankIfaceMethod.blankIfaceMethod
```


```haxe
final blankPkgName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_blankPkgName.blankPkgName
```


```haxe
final brokenImport:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_brokenImport.brokenImport
```


```haxe
final cannotInferTypeArgs:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_cannotInferTypeArgs.cannotInferTypeArgs
```


```haxe
final divByZero:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_divByZero.divByZero
```


```haxe
final duplicateCase:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateCase.duplicateCase
```


```haxe
final duplicateDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateDecl.duplicateDecl
```


```haxe
final duplicateDefault:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateDefault.duplicateDefault
```


```haxe
final duplicateFieldAndMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateFieldAndMethod.duplicateFieldAndMethod
```


```haxe
final duplicateLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateLabel.duplicateLabel
```


```haxe
final duplicateLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateLitField.duplicateLitField
```


```haxe
final duplicateLitKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateLitKey.duplicateLitKey
```


```haxe
final duplicateMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_duplicateMethod.duplicateMethod
```


```haxe
final importCRenamed:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_importCRenamed.importCRenamed
```


```haxe
final impossibleAssert:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_impossibleAssert.impossibleAssert
```


```haxe
final incomparableMapKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_incomparableMapKey.incomparableMapKey
```


```haxe
final incompatibleAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_incompatibleAssign.incompatibleAssign
```


```haxe
final invalidAppend:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidAppend.invalidAppend
```


```haxe
final invalidArrayLen:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidArrayLen.invalidArrayLen
```


```haxe
final invalidAssert:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidAssert.invalidAssert
```


```haxe
final invalidBlank:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidBlank.invalidBlank
```


```haxe
final invalidCall:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidCall.invalidCall
```


```haxe
final invalidCap:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidCap.invalidCap
```


```haxe
final invalidChanAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidChanAssign.invalidChanAssign
```


```haxe
final invalidClear:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidClear.invalidClear
```


```haxe
final invalidClose:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidClose.invalidClose
```


```haxe
final invalidComplex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidComplex.invalidComplex
```


```haxe
final invalidCond:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidCond.invalidCond
```


```haxe
final invalidConstInit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidConstInit.invalidConstInit
```


```haxe
final invalidConstType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidConstType.invalidConstType
```


```haxe
final invalidConstVal:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidConstVal.invalidConstVal
```


```haxe
final invalidConversion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidConversion.invalidConversion
```


```haxe
final invalidCopy:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidCopy.invalidCopy
```


```haxe
final invalidDeclCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidDeclCycle.invalidDeclCycle
```


```haxe
final invalidDefer:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidDefer.invalidDefer
```


```haxe
final invalidDelete:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidDelete.invalidDelete
```


```haxe
final invalidDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidDotDotDot.invalidDotDotDot
```


```haxe
final invalidExprSwitch:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidExprSwitch.invalidExprSwitch
```


```haxe
final invalidGo:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidGo.invalidGo
```


```haxe
final invalidIfaceAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidIfaceAssign.invalidIfaceAssign
```


```haxe
final invalidImag:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidImag.invalidImag
```


```haxe
final invalidIndex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidIndex.invalidIndex
```


```haxe
final invalidIndirection:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidIndirection.invalidIndirection
```


```haxe
final invalidInitCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidInitCycle.invalidInitCycle
```


```haxe
final invalidInitDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidInitDecl.invalidInitDecl
```


```haxe
final invalidInitSig:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidInitSig.invalidInitSig
```


```haxe
final invalidInstanceCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidInstanceCycle.invalidInstanceCycle
```


```haxe
final invalidIota:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidIota.invalidIota
```


```haxe
final invalidIterVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidIterVar.invalidIterVar
```


```haxe
final invalidLen:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidLen.invalidLen
```


```haxe
final invalidLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidLit.invalidLit
```


```haxe
final invalidLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidLitField.invalidLitField
```


```haxe
final invalidLitIndex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidLitIndex.invalidLitIndex
```


```haxe
final invalidMainDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidMainDecl.invalidMainDecl
```


```haxe
final invalidMake:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidMake.invalidMake
```


```haxe
final invalidMethodExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidMethodExpr.invalidMethodExpr
```


```haxe
final invalidMethodTypeParams:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidMethodTypeParams.invalidMethodTypeParams
```


```haxe
final invalidMinMaxOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidMinMaxOperand.invalidMinMaxOperand
```


```haxe
final invalidOffsetof:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidOffsetof.invalidOffsetof
```


```haxe
final invalidPkgUse:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidPkgUse.invalidPkgUse
```


```haxe
final invalidPostDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidPostDecl.invalidPostDecl
```


```haxe
final invalidPtrEmbed:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidPtrEmbed.invalidPtrEmbed
```


```haxe
final invalidRangeExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidRangeExpr.invalidRangeExpr
```


```haxe
final invalidReal:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidReal.invalidReal
```


```haxe
final invalidReceive:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidReceive.invalidReceive
```


```haxe
final invalidRecv:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidRecv.invalidRecv
```


```haxe
final invalidSelectCase:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidSelectCase.invalidSelectCase
```


```haxe
final invalidSend:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidSend.invalidSend
```


```haxe
final invalidShiftCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidShiftCount.invalidShiftCount
```


```haxe
final invalidShiftOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidShiftOperand.invalidShiftOperand
```


```haxe
final invalidSliceExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidSliceExpr.invalidSliceExpr
```


```haxe
final invalidStructLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidStructLit.invalidStructLit
```


```haxe
final invalidSyntaxTree:stdgo.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidSyntaxTree.invalidSyntaxTree
```


```haxe
final invalidTypeArg:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidTypeArg.invalidTypeArg
```


```haxe
final invalidTypeCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidTypeCycle.invalidTypeCycle
```


```haxe
final invalidTypeSwitch:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidTypeSwitch.invalidTypeSwitch
```


```haxe
final invalidUnion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUnion.invalidUnion
```


```haxe
final invalidUnsafeAdd:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUnsafeAdd.invalidUnsafeAdd
```


```haxe
final invalidUnsafeSlice:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUnsafeSlice.invalidUnsafeSlice
```


```haxe
final invalidUnsafeSliceData:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUnsafeSliceData.invalidUnsafeSliceData
```


```haxe
final invalidUnsafeString:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUnsafeString.invalidUnsafeString
```


```haxe
final invalidUntypedConversion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_invalidUntypedConversion.invalidUntypedConversion
```


```haxe
final jumpIntoBlock:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_jumpIntoBlock.jumpIntoBlock
```


```haxe
final jumpOverDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_jumpOverDecl.jumpOverDecl
```


```haxe
final mismatchedPkgName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_mismatchedPkgName.mismatchedPkgName
```


```haxe
final mismatchedTypes:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_mismatchedTypes.mismatchedTypes
```


```haxe
final misplacedBreak:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedBreak.misplacedBreak
```


```haxe
final misplacedConstraintIface:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedConstraintIface.misplacedConstraintIface
```


```haxe
final misplacedContinue:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedContinue.misplacedContinue
```


```haxe
final misplacedDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedDotDotDot.misplacedDotDotDot
```


```haxe
final misplacedFallthrough:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedFallthrough.misplacedFallthrough
```


```haxe
final misplacedLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedLabel.misplacedLabel
```


```haxe
final misplacedTypeParam:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_misplacedTypeParam.misplacedTypeParam
```


```haxe
final missingFieldOrMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_missingFieldOrMethod.missingFieldOrMethod
```


```haxe
final missingInitBody:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_missingInitBody.missingInitBody
```


```haxe
final missingLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_missingLitField.missingLitField
```


```haxe
final missingLitKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_missingLitKey.missingLitKey
```


```haxe
final missingReturn:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_missingReturn.missingReturn
```


```haxe
final mixedStructLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_mixedStructLit.mixedStructLit
```


```haxe
final multiValAssignOp:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_multiValAssignOp.multiValAssignOp
```


```haxe
final noNewVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_noNewVar.noNewVar
```


```haxe
final nonIndexableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_nonIndexableOperand.nonIndexableOperand
```


```haxe
final nonNumericIncDec:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_nonNumericIncDec.nonNumericIncDec
```


```haxe
final nonSliceableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_nonSliceableOperand.nonSliceableOperand
```


```haxe
final nonVariadicDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_nonVariadicDotDotDot.nonVariadicDotDotDot
```


```haxe
final notAGenericType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_notAGenericType.notAGenericType
```


```haxe
final notAType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_notAType.notAType
```


```haxe
final notAnExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_notAnExpr.notAnExpr
```


```haxe
final numericOverflow:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_numericOverflow.numericOverflow
```


```haxe
final outOfScopeResult:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_outOfScopeResult.outOfScopeResult
```


```haxe
final oversizeArrayLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_oversizeArrayLit.oversizeArrayLit
```


```haxe
final repeatedDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_repeatedDecl.repeatedDecl
```


```haxe
final swappedMakeArgs:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_swappedMakeArgs.swappedMakeArgs
```


```haxe
final swappedSliceIndices:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_swappedSliceIndices.swappedSliceIndices
```


```haxe
final test:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_test.test
```


```haxe
final tooManyValues:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_tooManyValues.tooManyValues
```


```haxe
final truncatedFloat:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_truncatedFloat.truncatedFloat
```


```haxe
final typeTooLarge:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_typeTooLarge.typeTooLarge
```


```haxe
final unaddressableFieldAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unaddressableFieldAssign.unaddressableFieldAssign
```


```haxe
final unaddressableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unaddressableOperand.unaddressableOperand
```


```haxe
final unassignableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unassignableOperand.unassignableOperand
```


```haxe
final uncalledBuiltin:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_uncalledBuiltin.uncalledBuiltin
```


```haxe
final undeclaredImportedName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_undeclaredImportedName.undeclaredImportedName
```


```haxe
final undeclaredLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_undeclaredLabel.undeclaredLabel
```


```haxe
final undeclaredName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_undeclaredName.undeclaredName
```


```haxe
final undefinedOp:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_undefinedOp.undefinedOp
```


```haxe
final unexportedLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unexportedLitField.unexportedLitField
```


```haxe
final unexportedName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unexportedName.unexportedName
```


```haxe
final unsupportedFeature:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unsupportedFeature.unsupportedFeature
```


```haxe
final untypedLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_untypedLit.untypedLit
```


```haxe
final untypedNilUse:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_untypedNilUse.untypedNilUse
```


```haxe
final unusedExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unusedExpr.unusedExpr
```


```haxe
final unusedImport:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unusedImport.unusedImport
```


```haxe
final unusedLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unusedLabel.unusedLabel
```


```haxe
final unusedResults:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unusedResults.unusedResults
```


```haxe
final unusedVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_unusedVar.unusedVar
```


```haxe
final wrongArgCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_wrongArgCount.wrongArgCount
```


```haxe
final wrongAssignCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_wrongAssignCount.wrongAssignCount
```


```haxe
final wrongResultCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_wrongResultCount.wrongResultCount
```


```haxe
final wrongTypeArgCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors_wrongTypeArgCount.wrongTypeArgCount
```


# Classes


```haxe
import stdgo.internal.types.errors.*
```


## class Errors


# Typedefs


```haxe
import stdgo.internal.types.errors.*
```


## typedef Code


```haxe
typedef Code = stdgo._internal.internal.types.errors.Code;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.types.errors.T__struct_0;
```


