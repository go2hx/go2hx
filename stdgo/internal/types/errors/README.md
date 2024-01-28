# Module: `stdgo.internal.types.errors`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [typedef Code](<#typedef-code>)

- [typedef Code\_asInterface](<#typedef-code_asinterface>)

- [typedef Code\_static\_extension](<#typedef-code_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

# Variables


```haxe
import stdgo.internal.types.errors.Errors
```


```haxe
var __1:Dynamic
```


```haxe
var __2:Dynamic
```


```haxe
var __3:Dynamic
```


```haxe
var __4:Dynamic
```


```haxe
var __5:Dynamic
```


```haxe
var __Code_index_1:Dynamic
```


```haxe
var __Code_index_2:Dynamic
```


```haxe
var __Code_index_3:Dynamic
```


```haxe
var __Code_index_4:Dynamic
```


```haxe
var __Code_index_5:Dynamic
```


```haxe
var __Code_name_0:Dynamic
```


```haxe
var __Code_name_1:Dynamic
```


```haxe
var __Code_name_2:Dynamic
```


```haxe
var __Code_name_3:Dynamic
```


```haxe
var __Code_name_4:Dynamic
```


```haxe
var __Code_name_5:Dynamic
```


```haxe
var ambiguousSelector:Dynamic
```


```haxe
var badDecl:Dynamic
```


```haxe
var badDotDotDotSyntax:Dynamic
```


```haxe
var badImportPath:Dynamic
```


```haxe
var badOffsetofSyntax:Dynamic
```


```haxe
var badRecv:Dynamic
```


```haxe
var badTypeKeyword:Dynamic
```


```haxe
var blankIfaceMethod:Dynamic
```


```haxe
var blankPkgName:Dynamic
```


```haxe
var brokenImport:Dynamic
```


```haxe
var cannotInferTypeArgs:Dynamic
```


```haxe
var divByZero:Dynamic
```


```haxe
var duplicateCase:Dynamic
```


```haxe
var duplicateDecl:Dynamic
```


```haxe
var duplicateDefault:Dynamic
```


```haxe
var duplicateFieldAndMethod:Dynamic
```


```haxe
var duplicateLabel:Dynamic
```


```haxe
var duplicateLitField:Dynamic
```


```haxe
var duplicateLitKey:Dynamic
```


```haxe
var duplicateMethod:Dynamic
```


```haxe
var importCRenamed:Dynamic
```


```haxe
var impossibleAssert:Dynamic
```


```haxe
var incomparableMapKey:Dynamic
```


```haxe
var incompatibleAssign:Dynamic
```


```haxe
var invalidAppend:Dynamic
```


```haxe
var invalidArrayLen:Dynamic
```


```haxe
var invalidAssert:Dynamic
```


```haxe
var invalidBlank:Dynamic
```


```haxe
var invalidCall:Dynamic
```


```haxe
var invalidCap:Dynamic
```


```haxe
var invalidChanAssign:Dynamic
```


```haxe
var invalidClear:Dynamic
```


```haxe
var invalidClose:Dynamic
```


```haxe
var invalidComplex:Dynamic
```


```haxe
var invalidCond:Dynamic
```


```haxe
var invalidConstInit:Dynamic
```


```haxe
var invalidConstType:Dynamic
```


```haxe
var invalidConstVal:Dynamic
```


```haxe
var invalidConversion:Dynamic
```


```haxe
var invalidCopy:Dynamic
```


```haxe
var invalidDeclCycle:Dynamic
```


```haxe
var invalidDefer:Dynamic
```


```haxe
var invalidDelete:Dynamic
```


```haxe
var invalidDotDotDot:Dynamic
```


```haxe
var invalidExprSwitch:Dynamic
```


```haxe
var invalidGo:Dynamic
```


```haxe
var invalidIfaceAssign:Dynamic
```


```haxe
var invalidImag:Dynamic
```


```haxe
var invalidIndex:Dynamic
```


```haxe
var invalidIndirection:Dynamic
```


```haxe
var invalidInitCycle:Dynamic
```


```haxe
var invalidInitDecl:Dynamic
```


```haxe
var invalidInitSig:Dynamic
```


```haxe
var invalidInstanceCycle:Dynamic
```


```haxe
var invalidIota:Dynamic
```


```haxe
var invalidIterVar:Dynamic
```


```haxe
var invalidLen:Dynamic
```


```haxe
var invalidLit:Dynamic
```


```haxe
var invalidLitField:Dynamic
```


```haxe
var invalidLitIndex:Dynamic
```


```haxe
var invalidMainDecl:Dynamic
```


```haxe
var invalidMake:Dynamic
```


```haxe
var invalidMethodExpr:Dynamic
```


```haxe
var invalidMethodTypeParams:Dynamic
```


```haxe
var invalidMinMaxOperand:Dynamic
```


```haxe
var invalidOffsetof:Dynamic
```


```haxe
var invalidPkgUse:Dynamic
```


```haxe
var invalidPostDecl:Dynamic
```


```haxe
var invalidPtrEmbed:Dynamic
```


```haxe
var invalidRangeExpr:Dynamic
```


```haxe
var invalidReal:Dynamic
```


```haxe
var invalidReceive:Dynamic
```


```haxe
var invalidRecv:Dynamic
```


```haxe
var invalidSelectCase:Dynamic
```


```haxe
var invalidSend:Dynamic
```


```haxe
var invalidShiftCount:Dynamic
```


```haxe
var invalidShiftOperand:Dynamic
```


```haxe
var invalidSliceExpr:Dynamic
```


```haxe
var invalidStructLit:Dynamic
```


```haxe
var invalidSyntaxTree:Dynamic
```


```haxe
var invalidTypeArg:Dynamic
```


```haxe
var invalidTypeCycle:Dynamic
```


```haxe
var invalidTypeSwitch:Dynamic
```


```haxe
var invalidUnion:Dynamic
```


```haxe
var invalidUnsafeAdd:Dynamic
```


```haxe
var invalidUnsafeSlice:Dynamic
```


```haxe
var invalidUnsafeSliceData:Dynamic
```


```haxe
var invalidUnsafeString:Dynamic
```


```haxe
var invalidUntypedConversion:Dynamic
```


```haxe
var jumpIntoBlock:Dynamic
```


```haxe
var jumpOverDecl:Dynamic
```


```haxe
var mismatchedPkgName:Dynamic
```


```haxe
var mismatchedTypes:Dynamic
```


```haxe
var misplacedBreak:Dynamic
```


```haxe
var misplacedConstraintIface:Dynamic
```


```haxe
var misplacedContinue:Dynamic
```


```haxe
var misplacedDotDotDot:Dynamic
```


```haxe
var misplacedFallthrough:Dynamic
```


```haxe
var misplacedLabel:Dynamic
```


```haxe
var misplacedTypeParam:Dynamic
```


```haxe
var missingFieldOrMethod:Dynamic
```


```haxe
var missingInitBody:Dynamic
```


```haxe
var missingLitField:Dynamic
```


```haxe
var missingLitKey:Dynamic
```


```haxe
var missingReturn:Dynamic
```


```haxe
var mixedStructLit:Dynamic
```


```haxe
var multiValAssignOp:Dynamic
```


```haxe
var noNewVar:Dynamic
```


```haxe
var nonIndexableOperand:Dynamic
```


```haxe
var nonNumericIncDec:Dynamic
```


```haxe
var nonSliceableOperand:Dynamic
```


```haxe
var nonVariadicDotDotDot:Dynamic
```


```haxe
var notAGenericType:Dynamic
```


```haxe
var notAType:Dynamic
```


```haxe
var notAnExpr:Dynamic
```


```haxe
var numericOverflow:Dynamic
```


```haxe
var outOfScopeResult:Dynamic
```


```haxe
var oversizeArrayLit:Dynamic
```


```haxe
var repeatedDecl:Dynamic
```


```haxe
var swappedMakeArgs:Dynamic
```


```haxe
var swappedSliceIndices:Dynamic
```


```haxe
var test:Dynamic
```


```haxe
var tooManyValues:Dynamic
```


```haxe
var truncatedFloat:Dynamic
```


```haxe
var typeTooLarge:Dynamic
```


```haxe
var unaddressableFieldAssign:Dynamic
```


```haxe
var unaddressableOperand:Dynamic
```


```haxe
var unassignableOperand:Dynamic
```


```haxe
var uncalledBuiltin:Dynamic
```


```haxe
var undeclaredImportedName:Dynamic
```


```haxe
var undeclaredLabel:Dynamic
```


```haxe
var undeclaredName:Dynamic
```


```haxe
var undefinedOp:Dynamic
```


```haxe
var unexportedLitField:Dynamic
```


```haxe
var unexportedName:Dynamic
```


```haxe
var unsupportedFeature:Dynamic
```


```haxe
var untypedLit:Dynamic
```


```haxe
var untypedNilUse:Dynamic
```


```haxe
var unusedExpr:Dynamic
```


```haxe
var unusedImport:Dynamic
```


```haxe
var unusedLabel:Dynamic
```


```haxe
var unusedResults:Dynamic
```


```haxe
var unusedVar:Dynamic
```


```haxe
var wrongArgCount:Dynamic
```


```haxe
var wrongAssignCount:Dynamic
```


```haxe
var wrongResultCount:Dynamic
```


```haxe
var wrongTypeArgCount:Dynamic
```


# Typedefs


```haxe
import stdgo.internal.types.errors.*
```


## typedef Code


```haxe
typedef Code = stdgo._internal.internal.types.errors.Code;
```


## typedef Code\_asInterface


```haxe
typedef Code_asInterface = Dynamic;
```


## typedef Code\_static\_extension


```haxe
typedef Code_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.internal.types.errors.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


