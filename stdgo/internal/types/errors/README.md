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
final ambiguousSelector:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.ambiguousSelector
```


```haxe
final badDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badDecl
```


```haxe
final badDotDotDotSyntax:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badDotDotDotSyntax
```


```haxe
final badImportPath:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badImportPath
```


```haxe
final badOffsetofSyntax:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badOffsetofSyntax
```


```haxe
final badRecv:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badRecv
```


```haxe
final badTypeKeyword:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.badTypeKeyword
```


```haxe
final blankIfaceMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.blankIfaceMethod
```


```haxe
final blankPkgName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.blankPkgName
```


```haxe
final brokenImport:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.brokenImport
```


```haxe
final cannotInferTypeArgs:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.cannotInferTypeArgs
```


```haxe
final divByZero:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.divByZero
```


```haxe
final duplicateCase:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateCase
```


```haxe
final duplicateDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateDecl
```


```haxe
final duplicateDefault:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateDefault
```


```haxe
final duplicateFieldAndMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateFieldAndMethod
```


```haxe
final duplicateLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateLabel
```


```haxe
final duplicateLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateLitField
```


```haxe
final duplicateLitKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateLitKey
```


```haxe
final duplicateMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.duplicateMethod
```


```haxe
final importCRenamed:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.importCRenamed
```


```haxe
final impossibleAssert:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.impossibleAssert
```


```haxe
final incomparableMapKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.incomparableMapKey
```


```haxe
final incompatibleAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.incompatibleAssign
```


```haxe
final invalidAppend:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidAppend
```


```haxe
final invalidArrayLen:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidArrayLen
```


```haxe
final invalidAssert:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidAssert
```


```haxe
final invalidBlank:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidBlank
```


```haxe
final invalidCall:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidCall
```


```haxe
final invalidCap:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidCap
```


```haxe
final invalidChanAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidChanAssign
```


```haxe
final invalidClear:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidClear
```


```haxe
final invalidClose:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidClose
```


```haxe
final invalidComplex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidComplex
```


```haxe
final invalidCond:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidCond
```


```haxe
final invalidConstInit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidConstInit
```


```haxe
final invalidConstType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidConstType
```


```haxe
final invalidConstVal:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidConstVal
```


```haxe
final invalidConversion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidConversion
```


```haxe
final invalidCopy:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidCopy
```


```haxe
final invalidDeclCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidDeclCycle
```


```haxe
final invalidDefer:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidDefer
```


```haxe
final invalidDelete:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidDelete
```


```haxe
final invalidDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidDotDotDot
```


```haxe
final invalidExprSwitch:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidExprSwitch
```


```haxe
final invalidGo:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidGo
```


```haxe
final invalidIfaceAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidIfaceAssign
```


```haxe
final invalidImag:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidImag
```


```haxe
final invalidIndex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidIndex
```


```haxe
final invalidIndirection:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidIndirection
```


```haxe
final invalidInitCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidInitCycle
```


```haxe
final invalidInitDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidInitDecl
```


```haxe
final invalidInitSig:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidInitSig
```


```haxe
final invalidInstanceCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidInstanceCycle
```


```haxe
final invalidIota:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidIota
```


```haxe
final invalidIterVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidIterVar
```


```haxe
final invalidLen:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidLen
```


```haxe
final invalidLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidLit
```


```haxe
final invalidLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidLitField
```


```haxe
final invalidLitIndex:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidLitIndex
```


```haxe
final invalidMainDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidMainDecl
```


```haxe
final invalidMake:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidMake
```


```haxe
final invalidMethodExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidMethodExpr
```


```haxe
final invalidMethodTypeParams:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidMethodTypeParams
```


```haxe
final invalidMinMaxOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidMinMaxOperand
```


```haxe
final invalidOffsetof:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidOffsetof
```


```haxe
final invalidPkgUse:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidPkgUse
```


```haxe
final invalidPostDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidPostDecl
```


```haxe
final invalidPtrEmbed:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidPtrEmbed
```


```haxe
final invalidRangeExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidRangeExpr
```


```haxe
final invalidReal:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidReal
```


```haxe
final invalidReceive:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidReceive
```


```haxe
final invalidRecv:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidRecv
```


```haxe
final invalidSelectCase:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidSelectCase
```


```haxe
final invalidSend:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidSend
```


```haxe
final invalidShiftCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidShiftCount
```


```haxe
final invalidShiftOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidShiftOperand
```


```haxe
final invalidSliceExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidSliceExpr
```


```haxe
final invalidStructLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidStructLit
```


```haxe
final invalidSyntaxTree:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidSyntaxTree
```


```haxe
final invalidTypeArg:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidTypeArg
```


```haxe
final invalidTypeCycle:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidTypeCycle
```


```haxe
final invalidTypeSwitch:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidTypeSwitch
```


```haxe
final invalidUnion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUnion
```


```haxe
final invalidUnsafeAdd:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUnsafeAdd
```


```haxe
final invalidUnsafeSlice:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUnsafeSlice
```


```haxe
final invalidUnsafeSliceData:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUnsafeSliceData
```


```haxe
final invalidUnsafeString:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUnsafeString
```


```haxe
final invalidUntypedConversion:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.invalidUntypedConversion
```


```haxe
final jumpIntoBlock:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.jumpIntoBlock
```


```haxe
final jumpOverDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.jumpOverDecl
```


```haxe
final mismatchedPkgName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.mismatchedPkgName
```


```haxe
final mismatchedTypes:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.mismatchedTypes
```


```haxe
final misplacedBreak:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedBreak
```


```haxe
final misplacedConstraintIface:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedConstraintIface
```


```haxe
final misplacedContinue:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedContinue
```


```haxe
final misplacedDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedDotDotDot
```


```haxe
final misplacedFallthrough:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedFallthrough
```


```haxe
final misplacedLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedLabel
```


```haxe
final misplacedTypeParam:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.misplacedTypeParam
```


```haxe
final missingFieldOrMethod:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.missingFieldOrMethod
```


```haxe
final missingInitBody:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.missingInitBody
```


```haxe
final missingLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.missingLitField
```


```haxe
final missingLitKey:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.missingLitKey
```


```haxe
final missingReturn:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.missingReturn
```


```haxe
final mixedStructLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.mixedStructLit
```


```haxe
final multiValAssignOp:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.multiValAssignOp
```


```haxe
final noNewVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.noNewVar
```


```haxe
final nonIndexableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.nonIndexableOperand
```


```haxe
final nonNumericIncDec:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.nonNumericIncDec
```


```haxe
final nonSliceableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.nonSliceableOperand
```


```haxe
final nonVariadicDotDotDot:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.nonVariadicDotDotDot
```


```haxe
final notAGenericType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.notAGenericType
```


```haxe
final notAType:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.notAType
```


```haxe
final notAnExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.notAnExpr
```


```haxe
final numericOverflow:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.numericOverflow
```


```haxe
final outOfScopeResult:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.outOfScopeResult
```


```haxe
final oversizeArrayLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.oversizeArrayLit
```


```haxe
final repeatedDecl:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.repeatedDecl
```


```haxe
final swappedMakeArgs:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.swappedMakeArgs
```


```haxe
final swappedSliceIndices:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.swappedSliceIndices
```


```haxe
final test:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.test
```


```haxe
final tooManyValues:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.tooManyValues
```


```haxe
final truncatedFloat:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.truncatedFloat
```


```haxe
final typeTooLarge:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.typeTooLarge
```


```haxe
final unaddressableFieldAssign:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unaddressableFieldAssign
```


```haxe
final unaddressableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unaddressableOperand
```


```haxe
final unassignableOperand:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unassignableOperand
```


```haxe
final uncalledBuiltin:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.uncalledBuiltin
```


```haxe
final undeclaredImportedName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.undeclaredImportedName
```


```haxe
final undeclaredLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.undeclaredLabel
```


```haxe
final undeclaredName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.undeclaredName
```


```haxe
final undefinedOp:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.undefinedOp
```


```haxe
final unexportedLitField:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unexportedLitField
```


```haxe
final unexportedName:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unexportedName
```


```haxe
final unsupportedFeature:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unsupportedFeature
```


```haxe
final untypedLit:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.untypedLit
```


```haxe
final untypedNilUse:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.untypedNilUse
```


```haxe
final unusedExpr:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unusedExpr
```


```haxe
final unusedImport:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unusedImport
```


```haxe
final unusedLabel:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unusedLabel
```


```haxe
final unusedResults:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unusedResults
```


```haxe
final unusedVar:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.unusedVar
```


```haxe
final wrongArgCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.wrongArgCount
```


```haxe
final wrongAssignCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.wrongAssignCount
```


```haxe
final wrongResultCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.wrongResultCount
```


```haxe
final wrongTypeArgCount:stdgo._internal.internal.types.errors.Code = stdgo._internal.internal.types.errors.Errors.wrongTypeArgCount
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


