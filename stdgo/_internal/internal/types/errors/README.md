# Module: `stdgo._internal.internal.types.errors`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [typedef Code](<#typedef-code>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

# Constants


```haxe
import stdgo._internal.internal.types.errors.Errors
```


```haxe
final __1:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final __2:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final __3:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final __4:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final __5:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final __Code_name_0:stdgo.GoString = (("InvalidSyntaxTree" : stdgo.GoString))
```


```haxe
final __Code_name_1:stdgo.GoString = (("TestBlankPkgNameMismatchedPkgNameInvalidPkgUseBadImportPathBrokenImportImportCRenamedUnusedImportInvalidInitCycleDuplicateDeclInvalidDeclCycleInvalidTypeCycleInvalidConstInitInvalidConstValInvalidConstTypeUntypedNilUseWrongAssignCountUnassignableOperandNoNewVarMultiValAssignOpInvalidIfaceAssignInvalidChanAssignIncompatibleAssignUnaddressableFieldAssignNotATypeInvalidArrayLenBlankIfaceMethodIncomparableMapKey" : stdgo.GoString))
```


```haxe
final __Code_name_2:stdgo.GoString = (("InvalidPtrEmbedBadRecvInvalidRecvDuplicateFieldAndMethodDuplicateMethodInvalidBlankInvalidIotaMissingInitBodyInvalidInitSigInvalidInitDeclInvalidMainDeclTooManyValuesNotAnExprTruncatedFloatNumericOverflowUndefinedOpMismatchedTypesDivByZeroNonNumericIncDecUnaddressableOperandInvalidIndirectionNonIndexableOperandInvalidIndexSwappedSliceIndicesNonSliceableOperandInvalidSliceExprInvalidShiftCountInvalidShiftOperandInvalidReceiveInvalidSendDuplicateLitKeyMissingLitKeyInvalidLitIndexOversizeArrayLitMixedStructLitInvalidStructLitMissingLitFieldDuplicateLitFieldUnexportedLitFieldInvalidLitFieldUntypedLitInvalidLitAmbiguousSelectorUndeclaredImportedNameUnexportedNameUndeclaredNameMissingFieldOrMethodBadDotDotDotSyntaxNonVariadicDotDotDotMisplacedDotDotDot" : stdgo.GoString))
```


```haxe
final __Code_name_3:stdgo.GoString = (("InvalidDotDotDotUncalledBuiltinInvalidAppendInvalidCapInvalidCloseInvalidCopyInvalidComplexInvalidDeleteInvalidImagInvalidLenSwappedMakeArgsInvalidMakeInvalidRealInvalidAssertImpossibleAssertInvalidConversionInvalidUntypedConversionBadOffsetofSyntaxInvalidOffsetofUnusedExprUnusedVarMissingReturnWrongResultCountOutOfScopeResultInvalidCondInvalidPostDecl" : stdgo.GoString))
```


```haxe
final __Code_name_4:stdgo.GoString = (("InvalidIterVarInvalidRangeExprMisplacedBreakMisplacedContinueMisplacedFallthroughDuplicateCaseDuplicateDefaultBadTypeKeywordInvalidTypeSwitchInvalidExprSwitchInvalidSelectCaseUndeclaredLabelDuplicateLabelMisplacedLabelUnusedLabelJumpOverDeclJumpIntoBlockInvalidMethodExprWrongArgCountInvalidCallUnusedResultsInvalidDeferInvalidGoBadDeclRepeatedDeclInvalidUnsafeAddInvalidUnsafeSliceUnsupportedFeatureNotAGenericTypeWrongTypeArgCountCannotInferTypeArgsInvalidTypeArgInvalidInstanceCycleInvalidUnionMisplacedConstraintIfaceInvalidMethodTypeParamsMisplacedTypeParamInvalidUnsafeSliceDataInvalidUnsafeString" : stdgo.GoString))
```


```haxe
final __Code_name_5:stdgo.GoString = (("InvalidClearTypeTooLargeInvalidMinMaxOperand" : stdgo.GoString))
```


```haxe
final ambiguousSelector:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badDotDotDotSyntax:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badImportPath:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badOffsetofSyntax:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badRecv:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final badTypeKeyword:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final blankIfaceMethod:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final blankPkgName:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final brokenImport:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final cannotInferTypeArgs:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final divByZero:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateCase:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateDefault:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateFieldAndMethod:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateLabel:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateLitField:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateLitKey:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final duplicateMethod:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final importCRenamed:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final impossibleAssert:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final incomparableMapKey:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final incompatibleAssign:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidAppend:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidArrayLen:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidAssert:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidBlank:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidCall:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidCap:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidChanAssign:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidClear:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidClose:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidComplex:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidCond:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidConstInit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidConstType:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidConstVal:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidConversion:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidCopy:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidDeclCycle:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidDefer:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidDelete:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidDotDotDot:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidExprSwitch:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidGo:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidIfaceAssign:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidImag:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidIndex:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidIndirection:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidInitCycle:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidInitDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidInitSig:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidInstanceCycle:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidIota:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidIterVar:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidLen:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidLit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidLitField:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidLitIndex:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidMainDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidMake:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidMethodExpr:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidMethodTypeParams:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidMinMaxOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidOffsetof:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidPkgUse:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidPostDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidPtrEmbed:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidRangeExpr:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidReal:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidReceive:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidRecv:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidSelectCase:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidSend:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidShiftCount:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidShiftOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidSliceExpr:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidStructLit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidSyntaxTree:stdgo._internal.internal.types.errors.Code = ((-1 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidTypeArg:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidTypeCycle:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidTypeSwitch:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUnion:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUnsafeAdd:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUnsafeSlice:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUnsafeSliceData:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUnsafeString:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final invalidUntypedConversion:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final jumpIntoBlock:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final jumpOverDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final mismatchedPkgName:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final mismatchedTypes:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedBreak:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedConstraintIface:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedContinue:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedDotDotDot:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedFallthrough:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedLabel:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final misplacedTypeParam:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final missingFieldOrMethod:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final missingInitBody:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final missingLitField:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final missingLitKey:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final missingReturn:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final mixedStructLit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final multiValAssignOp:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final noNewVar:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final nonIndexableOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final nonNumericIncDec:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final nonSliceableOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final nonVariadicDotDotDot:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final notAGenericType:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final notAType:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final notAnExpr:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final numericOverflow:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final outOfScopeResult:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final oversizeArrayLit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final repeatedDecl:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final swappedMakeArgs:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final swappedSliceIndices:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final test:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final tooManyValues:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final truncatedFloat:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final typeTooLarge:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unaddressableFieldAssign:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unaddressableOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unassignableOperand:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final uncalledBuiltin:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final undeclaredImportedName:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final undeclaredLabel:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final undeclaredName:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final undefinedOp:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unexportedLitField:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unexportedName:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unsupportedFeature:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final untypedLit:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final untypedNilUse:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unusedExpr:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unusedImport:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unusedLabel:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unusedResults:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final unusedVar:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final wrongArgCount:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final wrongAssignCount:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final wrongResultCount:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


```haxe
final wrongTypeArgCount:stdgo._internal.internal.types.errors.Code = ((150 : stdgo._internal.internal.types.errors.Errors.Code))
```


# Variables


```haxe
import stdgo._internal.internal.types.errors.Errors
```


```haxe
var __Code_index_1:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var __Code_index_2:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var __Code_index_3:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var __Code_index_4:stdgo.GoArray<stdgo.GoUInt16>
```


```haxe
var __Code_index_5:stdgo.GoArray<stdgo.GoUInt8>
```


# Typedefs


```haxe
import stdgo._internal.internal.types.errors.*
```


## typedef Code


```haxe
typedef Code = stdgo.GoInt;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


