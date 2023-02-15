# Module: `stdgo.internal.types.errors`

[(view library index)](../../../stdgo.md)


# Overview





# Index


- [Constants](<#constants>)

- [typedef Code](<#typedef-code>)

# Constants


```haxe
import stdgo.internal.types.errors.Errors
```


```haxe
final ambiguousSelector:stdgo.internal.types.errors.Code = ((148 : Code))
```


AmbiguousSelector occurs when a selector is ambiguous.  



Example:  
type E1 struct \{ i int \}  
type E2 struct \{ i int \}  
type T struct \{ E1; E2 \}  



var x T  
var \_ = x.i  



```haxe
final badDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadDecl occurs when a declaration has invalid syntax.  



```haxe
final badDotDotDotSyntax:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadDotDotDotSyntax occurs when a "..." occurs in a context where it is  
not valid.  



Example:  
var \_ = map\[int\]\[...\]int\{0: \{\}\}  



```haxe
final badImportPath:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadImportPath occurs when an import path is not valid.  



```haxe
final badOffsetofSyntax:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadOffsetofSyntax occurs when unsafe.Offsetof is called with an argument  
that is not a selector expression.  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.Offsetof\(x\)  



```haxe
final badRecv:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadRecv occurs when a method declaration does not have exactly one  
receiver parameter.  



Example:  
func \(\) \_\(\) \{\}  



```haxe
final badTypeKeyword:stdgo.internal.types.errors.Code = ((148 : Code))
```


BadTypeKeyword occurs when a .\(type\) expression is used anywhere other  
than a type switch.  



Example:  
type I interface \{  



m\(\)  
\}  
var t I  
var \_ = t.\(type\)  



```haxe
final blankIfaceMethod:stdgo.internal.types.errors.Code = ((148 : Code))
```


BlankIfaceMethod occurs when a method name is '\_'.  



Per the spec:  
"The name of each explicitly specified method must be unique and not  
blank."  



Example:  
type T interface \{  



\_\(int\)  
\}  



```haxe
final blankPkgName:stdgo.internal.types.errors.Code = ((148 : Code))
```


BlankPkgName occurs when a package name is the blank identifier "\_".  



Per the spec:  
"The PackageName must not be the blank identifier."  



Example:  
package \_  



```haxe
final brokenImport:stdgo.internal.types.errors.Code = ((148 : Code))
```


BrokenImport occurs when importing a package fails.  



Example:  
import "amissingpackage"  



```haxe
final cannotInferTypeArgs:stdgo.internal.types.errors.Code = ((148 : Code))
```


CannotInferTypeArgs occurs when type or function type argument inference  
fails to infer all type arguments.  



Example:  
func f\[T any\]\(\) \{\}  



func \_\(\) \{  



f\(\)  
\}  



```haxe
final divByZero:stdgo.internal.types.errors.Code = ((148 : Code))
```


DivByZero occurs when a division operation is provable at compile  
time to be a division by zero.  



Example:  
const divisor = 0  
var x int = 1/divisor  



```haxe
final duplicateCase:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateCase occurs when a type or expression switch has duplicate  
cases.  



Example:  
func printInt\(i int\) \{  



switch i \{  



case 1:  



println\("one"\)  



case 1:  



println\("One"\)  



\}  
\}  



```haxe
final duplicateDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateDecl occurs when an identifier is declared multiple times.  



Example:  
var x = 1  
var x = 2  



```haxe
final duplicateDefault:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateDefault occurs when a type or expression switch has multiple  
default clauses.  



Example:  
func printInt\(i int\) \{  



switch i \{  



case 1:  



println\("one"\)  



default:  



println\("One"\)  



default:  



println\("1"\)  



\}  
\}  



```haxe
final duplicateFieldAndMethod:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateFieldAndMethod occurs when an identifier appears as both a field  
and method name.  



Example:  
type T struct \{  



m int  
\}  



func \(T\) m\(\) \{\}  



```haxe
final duplicateLabel:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateLabel occurs when a label is declared more than once.  



Example:  
func f\(\) int \{  
L:  
L:  



return 1  
\}  



```haxe
final duplicateLitField:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateLitField occurs when a struct literal contains duplicated  
fields.  



Example:  
var \_ = struct\{i int\}\{i: 1, i: 2\}  



```haxe
final duplicateLitKey:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateLitKey occurs when an index is duplicated in a slice, array, or  
map literal.  



Example:  
var \_ = \[\]int\{0:1, 0:2\}  



Example:  
var \_ = map\[string\]int\{"a": 1, "a": 2\}  



```haxe
final duplicateMethod:stdgo.internal.types.errors.Code = ((148 : Code))
```


DuplicateMethod occurs when two methods on the same receiver type have  
the same name.  



Example:  
type T struct \{\}  
func \(T\) m\(\) \{\}  
func \(T\) m\(i int\) int \{ return i \}  



```haxe
final importCRenamed:stdgo.internal.types.errors.Code = ((148 : Code))
```


ImportCRenamed occurs when the special import "C" is renamed. "C" is a  
pseudo\-package, and must not be renamed.  



Example:  
import \_ "C"  



```haxe
final impossibleAssert:stdgo.internal.types.errors.Code = ((148 : Code))
```


ImpossibleAssert occurs for a type assertion x.\(T\) when the value x of  
interface cannot have dynamic type T, due to a missing or mismatching  
method on T.  



Example:  
type T int  



func \(t \*T\) m\(\) int \{ return int\(\*t\) \}  



type I interface \{ m\(\) int \}  



var x I  
var \_ = x.\(T\)  



```haxe
final incomparableMapKey:stdgo.internal.types.errors.Code = ((148 : Code))
```


IncomparableMapKey occurs when a map key type does not support the == and  
\!= operators.  



Per the spec:  
"The comparison operators == and \!= must be fully defined for operands of  
the key type; thus the key type must not be a function, map, or slice."  



Example:  
var x map\[T\]int  



type T \[\]int  



```haxe
final incompatibleAssign:stdgo.internal.types.errors.Code = ((148 : Code))
```


IncompatibleAssign occurs when the type of the right\-hand side expression  
in an assignment cannot be assigned to the type of the variable being  
assigned.  



Example:  
var x \[\]int  
var \_ int = x  



```haxe
final invalidAppend:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidAppend occurs when append is called with a first argument that is  
not a slice.  



Example:  
var \_ = append\(1, 2\)  



```haxe
final invalidArrayLen:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidArrayLen occurs when an array length is not a constant value.  



Example:  
var n = 3  
var \_ = \[n\]int\{\}  



```haxe
final invalidAssert:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidAssert occurs when a type assertion is applied to a  
value that is not of interface type.  



Example:  
var x = 1  
var \_ = x.\(float64\)  



```haxe
final invalidBlank:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidBlank occurs when a blank identifier is used as a value or type.  



Per the spec:  
"The blank identifier may appear as an operand only on the left\-hand side  
of an assignment."  



Example:  
var x = \_  



```haxe
final invalidCall:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidCall occurs when an expression is called that is not of function  
type.  



Example:  
var x = "x"  
var y = x\(\)  



```haxe
final invalidCap:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidCap occurs when an argument to the cap built\-in function is not of  
supported type.  



See https://golang.org/ref/spec#Length_and_capacity for information on  
which underlying types are supported as arguments to cap and len.  



Example:  
var s = 2  
var x = cap\(s\)  



```haxe
final invalidChanAssign:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidChanAssign occurs when a chan assignment is invalid.  



Per the spec, a value x is assignable to a channel type T if:  
"x is a bidirectional channel value, T is a channel type, x's type V and  
T have identical element types, and at least one of V or T is not a  
defined type."  



Example:  
type T1 chan int  
type T2 chan int  



var x T1  
// Invalid assignment because both types are named  
var \_ T2 = x  



```haxe
final invalidClear:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidClear occurs when clear is called with an argument  
that is not of map, slice, or pointer\-to\-array type.  



Example:  
func \_\(x int\) \{  



clear\(x\)  
\}  



```haxe
final invalidClose:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidClose occurs when close\(...\) is called with an argument that is  
not of channel type, or that is a receive\-only channel.  



Example:  
func f\(\) \{  



var x int  



close\(x\)  
\}  



```haxe
final invalidComplex:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidComplex occurs when the complex built\-in function is called with  
arguments with incompatible types.  



Example:  
var \_ = complex\(float32\(1\), float64\(2\)\)  



```haxe
final invalidCond:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidCond occurs when an if condition is not a boolean expression.  



Example:  
func checkReturn\(i int\) \{  



if i \{  



panic\("non\-zero return"\)  



\}  
\}  



```haxe
final invalidConstInit:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidConstInit occurs when a const declaration has a non\-constant  
initializer.  



Example:  
var x int  
const \_ = x  



```haxe
final invalidConstType:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidConstType occurs when the underlying type in a const declaration  
is not a valid constant type.  



Example:  
const c \*int = 4  



```haxe
final invalidConstVal:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidConstVal occurs when a const value cannot be converted to its  
target type.  



TODO\(findleyr\): this error code and example are not very clear. Consider  
removing it.  



Example:  
const \_ = 1 \<\< "hello"  



```haxe
final invalidConversion:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidConversion occurs when the argument type cannot be converted to the  
target.  



See https://golang.org/ref/spec#Conversions for the rules of  
convertibility.  



Example:  
var x float64  
var \_ = string\(x\)  



```haxe
final invalidCopy:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidCopy occurs when the arguments are not of slice type or do not  
have compatible type.  



See https://golang.org/ref/spec#Appending_and_copying_slices for more  
information on the type requirements for the copy built\-in.  



Example:  
func f\(\) \{  



var x \[\]int  



y := \[\]int64\{1,2,3\}  



copy\(x, y\)  
\}  



```haxe
final invalidDeclCycle:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidDeclCycle occurs when a declaration cycle is not valid.  



Example:  
type S struct \{  



S  
\}  






```haxe
final invalidDefer:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidDefer occurs when a deferred expression is not a function call,  
for example if the expression is a type conversion.  



Example:  
func f\(i int\) int \{  



defer int32\(i\)  



return i  
\}  



```haxe
final invalidDelete:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidDelete occurs when the delete built\-in function is called with a  
first argument that is not a map.  



Example:  
func f\(\) \{  



m := "hello"  



delete\(m, "e"\)  
\}  



```haxe
final invalidDotDotDot:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidDotDotDot occurs when a "..." is used in a non\-variadic built\-in  
function.  



Example:  
var s = \[\]int\{1, 2, 3\}  
var l = len\(s...\)  



```haxe
final invalidExprSwitch:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidExprSwitch occurs when a switch expression is not comparable.  



Example:  
func \_\(\) \{  



var a struct\{ \_ func\(\) \}  



switch a /|\* ERROR cannot switch on a \*|/ \{  



\}  
\}  



```haxe
final invalidGo:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidGo occurs when a go expression is not a function call, for example  
if the expression is a type conversion.  



Example:  
func f\(i int\) int \{  



go int32\(i\)  



return i  
\}  



```haxe
final invalidIfaceAssign:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidIfaceAssign occurs when a value of type T is used as an  
interface, but T does not implement a method of the expected interface.  



Example:  
type I interface \{  



f\(\)  
\}  



type T int  



var x I = T\(1\)  



```haxe
final invalidImag:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidImag occurs when the imag built\-in function is called with an  
argument that does not have complex type.  



Example:  
var \_ = imag\(int\(1\)\)  



```haxe
final invalidIndex:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidIndex occurs when an index argument is not of integer type,  
negative, or out\-of\-bounds.  



Example:  
var s = \[...\]int\{1,2,3\}  
var x = s\[5\]  



Example:  
var s = \[\]int\{1,2,3\}  
var \_ = s\[\-1\]  



Example:  
var s = \[\]int\{1,2,3\}  
var i string  
var \_ = s\[i\]  



```haxe
final invalidIndirection:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidIndirection occurs when a non\-pointer value is indirected via the  
'\*' operator.  



Example:  
var x int  
var y = \*x  



```haxe
final invalidInitCycle:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidInitCycle occurs when an invalid cycle is detected within the  
initialization graph.  



Example:  
var x int = f\(\)  



func f\(\) int \{ return x \}  



```haxe
final invalidInitDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidInitDecl occurs when init is declared as anything other than a  
function.  



Example:  
var init = 1  



Example:  
func init\(\) int \{ return 1 \}  



```haxe
final invalidInitSig:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidInitSig occurs when an init function declares parameters or  
results.  



Deprecated: no longer emitted by the type checker. \_InvalidInitDecl is  
used instead.  



```haxe
final invalidInstanceCycle:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidInstanceCycle occurs when an invalid cycle is detected  
within the instantiation graph.  



Example:  
func f\[T any\]\(\) \{ f\[\*T\]\(\) \}  



```haxe
final invalidIota:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidIota occurs when the predeclared identifier iota is used outside  
of a constant declaration.  



Example:  
var x = iota  



```haxe
final invalidIterVar:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidIterVar occurs when two iteration variables are used while ranging  
over a channel.  



Example:  
func f\(c chan int\) \{  



for k, v := range c \{  



println\(k, v\)  



\}  
\}  



```haxe
final invalidLen:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidLen occurs when an argument to the len built\-in function is not of  
supported type.  



See https://golang.org/ref/spec#Length_and_capacity for information on  
which underlying types are supported as arguments to cap and len.  



Example:  
var s = 2  
var x = len\(s\)  



```haxe
final invalidLit:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidLit occurs when a composite literal expression does not match its  
type.  



Example:  
type P \*struct\{  



x int  
\}  
var \_ = P \{\}  



```haxe
final invalidLitField:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidLitField occurs when a field name is not a valid identifier.  



Example:  
var \_ = struct\{i int\}\{1: 1\}  



```haxe
final invalidLitIndex:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidLitIndex occurs when the key in a key\-value element of a slice or  
array literal is not an integer constant.  



Example:  
var i = 0  
var x = \[\]string\{i: "world"\}  



```haxe
final invalidMainDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidMainDecl occurs when main is declared as anything other than a  
function, in a main package.  



```haxe
final invalidMake:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidMake occurs when make is called with an unsupported type argument.  



See https://golang.org/ref/spec#Making_slices_maps_and_channels for  
information on the types that may be created using make.  



Example:  
var x = make\(int\)  



```haxe
final invalidMethodExpr:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidMethodExpr occurs when a pointer method is called but the argument  
is not addressable.  



Example:  
type T struct \{\}  



func \(\*T\) m\(\) int \{ return 1 \}  



var \_ = T.m\(T\{\}\)  



```haxe
final invalidMethodTypeParams:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidMethodTypeParams occurs when methods have type parameters.  



It cannot be encountered with an AST parsed using go/parser.  



```haxe
final invalidOffsetof:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidOffsetof occurs when unsafe.Offsetof is called with a method  
selector, rather than a field selector, or when the field is embedded via  
a pointer.  



Per the spec:  



"If f is an embedded field, it must be reachable without pointer  
indirections through fields of the struct. "  



Example:  
import "unsafe"  



type T struct \{ f int \}  
type S struct \{ \*T \}  
var s S  
var \_ = unsafe.Offsetof\(s.f\)  



Example:  
import "unsafe"  



type S struct\{\}  



func \(S\) m\(\) \{\}  



var s S  
var \_ = unsafe.Offsetof\(s.m\)  



```haxe
final invalidPkgUse:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidPkgUse occurs when a package identifier is used outside of a  
selector expression.  



Example:  
import "fmt"  



var \_ = fmt  



```haxe
final invalidPostDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidPostDecl occurs when there is a declaration in a for\-loop post  
statement.  



Example:  
func f\(\) \{  



for i := 0; i \< 10; j := 0 \{\}  
\}  



```haxe
final invalidPtrEmbed:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidPtrEmbed occurs when an embedded field is of the pointer form \*T,  
and T itself is itself a pointer, an unsafe.Pointer, or an interface.  



Per the spec:  
"An embedded field must be specified as a type name T or as a pointer to  
a non\-interface type name \*T, and T itself may not be a pointer type."  



Example:  
type T \*int  



type S struct \{  



T  
\}  



```haxe
final invalidRangeExpr:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidRangeExpr occurs when the type of a range expression is not array,  
slice, string, map, or channel.  



Example:  
func f\(i int\) \{  



for j := range i \{  



println\(j\)  



\}  
\}  



```haxe
final invalidReal:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidReal occurs when the real built\-in function is called with an  
argument that does not have complex type.  



Example:  
var \_ = real\(int\(1\)\)  



```haxe
final invalidReceive:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidReceive occurs when there is a channel receive from a value that  
is either not a channel, or is a send\-only channel.  



Example:  
func f\(\) \{  



var x = 1  



\<\-x  
\}  



```haxe
final invalidRecv:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidRecv occurs when a receiver type expression is not of the form T  
or \*T, or T is a pointer type.  



Example:  
type T struct \{\}  



func \(\*\*T\) m\(\) \{\}  



```haxe
final invalidSelectCase:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidSelectCase occurs when a select case is not a channel send or  
receive.  



Example:  
func checkChan\(c \<\-chan int\) bool \{  



select \{  



case c:  



return true  



default:  



return false  



\}  
\}  



```haxe
final invalidSend:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidSend occurs when there is a channel send to a value that is not a  
channel, or is a receive\-only channel.  



Example:  
func f\(\) \{  



var x = 1  



x \<\- "hello\!"  
\}  



```haxe
final invalidShiftCount:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidShiftCount occurs when the right\-hand side of a shift operation is  
either non\-integer, negative, or too large.  



Example:  
var \(  



x string  



y int = 1 \<\< x  
\)  



```haxe
final invalidShiftOperand:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidShiftOperand occurs when the shifted operand is not an integer.  



Example:  
var s = "hello"  
var x = s \<\< 2  



```haxe
final invalidSliceExpr:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidSliceExpr occurs when a three\-index slice expression \(a\[x:y:z\]\) is  
applied to a string.  



Example:  
var s = "hello"  
var x = s\[1:2:3\]  



```haxe
final invalidStructLit:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidStructLit occurs when a positional struct literal has an incorrect  
number of values.  



Example:  
var \_ = struct\{i, j int\}\{1,2,3\}  



```haxe
final invalidSyntaxTree:stdgo.internal.types.errors.Code = ((-1 : Code))
```


InvalidSyntaxTree occurs if an invalid syntax tree is provided  
to the type checker. It should never happen.  



```haxe
final invalidTypeArg:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidTypeArg occurs when a type argument does not satisfy its  
corresponding type parameter constraints.  



Example:  
type T\[P \~int\] struct\{\}  



var \_ T\[string\]  



arguments? InferenceFailed  



```haxe
final invalidTypeCycle:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidTypeCycle occurs when a cycle in type definitions results in a  
type that is not well\-defined.  



Example:  
import "unsafe"  



type T \[unsafe.Sizeof\(T\{\}\)\]int  



```haxe
final invalidTypeSwitch:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidTypeSwitch occurs when .\(type\) is used on an expression that is  
not of interface type.  



Example:  
func f\(i int\) \{  



switch x := i.\(type\) \{\}  
\}  



```haxe
final invalidUnion:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUnion occurs when an embedded union or approximation element is  
not valid.  



Example:  
type \_ interface \{  



\~int | interface\{ m\(\) \}  
\}  



```haxe
final invalidUnsafeAdd:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUnsafeAdd occurs when unsafe.Add is called with a  
length argument that is not of integer type.  
It also occurs if it is used in a package compiled for a  
language version before go1.17.  



Example:  
import "unsafe"  



var p unsafe.Pointer  
var \_ = unsafe.Add\(p, float64\(1\)\)  



```haxe
final invalidUnsafeSlice:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUnsafeSlice occurs when unsafe.Slice is called with a  
pointer argument that is not of pointer type or a length argument  
that is not of integer type, negative, or out of bounds.  
It also occurs if it is used in a package compiled for a language  
version before go1.17.  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.Slice\(x, 1\)  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.Slice\(&x, float64\(1\)\)  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.Slice\(&x, \-1\)  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.Slice\(&x, uint64\(1\) \<\< 63\)  



```haxe
final invalidUnsafeSliceData:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUnsafeSliceData occurs when unsafe.SliceData is called with  
an argument that is not of slice type. It also occurs if it is used  
in a package compiled for a language version before go1.20.  



Example:  
import "unsafe"  



var x int  
var \_ = unsafe.SliceData\(x\)  



```haxe
final invalidUnsafeString:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUnsafeString occurs when unsafe.String is called with  
a length argument that is not of integer type, negative, or  
out of bounds. It also occurs if it is used in a package  
compiled for a language version before go1.20.  



Example:  
import "unsafe"  



var b \[10\]byte  
var \_ = unsafe.String\(&b\[0\], \-1\)  



```haxe
final invalidUntypedConversion:stdgo.internal.types.errors.Code = ((148 : Code))
```


InvalidUntypedConversion occurs when there is no valid implicit  
conversion from an untyped value satisfying the type constraints of the  
context in which it is used.  



Example:  
var \_ = 1 \+ \[\]int\{\}  



```haxe
final jumpIntoBlock:stdgo.internal.types.errors.Code = ((148 : Code))
```


JumpIntoBlock occurs when a forward jump goes to a label inside a nested  
block.  



Example:  
func f\(x int\) \{  



goto L  



if x \> 0 \{  



L:  



print\("inside block"\)  



\}  
\}  



```haxe
final jumpOverDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


JumpOverDecl occurs when a label jumps over a variable declaration.  



Example:  
func f\(\) int \{  



goto L  



x := 2  
L:  



x\+\+  



return x  
\}  



```haxe
final mismatchedPkgName:stdgo.internal.types.errors.Code = ((148 : Code))
```


MismatchedPkgName occurs when a file's package name doesn't match the  
package name already established by other files.  



```haxe
final mismatchedTypes:stdgo.internal.types.errors.Code = ((148 : Code))
```


MismatchedTypes occurs when operand types are incompatible in a binary  
operation.  



Example:  
var a = "hello"  
var b = 1  
var c = a \- b  



```haxe
final misplacedBreak:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedBreak occurs when a break statement is not within a for, switch,  
or select statement of the innermost function definition.  



Example:  
func f\(\) \{  



break  
\}  



```haxe
final misplacedConstraintIface:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedConstraintIface occurs when a constraint\-type interface is used  
outside of constraint position.  



Example:  
type I interface \{ \~int \}  



var \_ I  



```haxe
final misplacedContinue:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedContinue occurs when a continue statement is not within a for  
loop of the innermost function definition.  



Example:  
func sumeven\(n int\) int \{  



proceed := func\(\) \{  



continue  



\}  



sum := 0  



for i := 1; i \<= n; i\+\+ \{  



if i % 2 \!= 0 \{  



proceed\(\)  



\}  



sum \+= i  



\}  



return sum  
\}  



```haxe
final misplacedDotDotDot:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedDotDotDot occurs when a "..." is used somewhere other than the  
final argument in a function declaration.  



Example:  



func f\(...int, int\)  



```haxe
final misplacedFallthrough:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedFallthrough occurs when a fallthrough statement is not within an  
expression switch.  



Example:  
func typename\(i interface\{\}\) string \{  



switch i.\(type\) \{  



case int64:  



fallthrough  



case int:  



return "int"  



\}  



return "unsupported"  
\}  



```haxe
final misplacedLabel:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedLabel occurs when a break or continue label is not on a for,  
switch, or select statement.  



Example:  
func f\(\) \{  
L:  



a := \[\]int\{1,2,3\}  



for \_, e := range a \{  



if e \> 10 \{  



break L  



\}  



println\(a\)  



\}  
\}  



```haxe
final misplacedTypeParam:stdgo.internal.types.errors.Code = ((148 : Code))
```


MisplacedTypeParam occurs when a type parameter is used in a place where  
it is not permitted.  



Example:  
type T\[P any\] P  



Example:  
type T\[P any\] struct\{ \*P \}  



```haxe
final missingFieldOrMethod:stdgo.internal.types.errors.Code = ((148 : Code))
```


MissingFieldOrMethod occurs when a selector references a field or method  
that does not exist.  



Example:  
type T struct \{\}  



var x = T\{\}.f  



```haxe
final missingInitBody:stdgo.internal.types.errors.Code = ((148 : Code))
```


MissingInitBody occurs when an init function is missing its body.  



Example:  
func init\(\)  



```haxe
final missingLitField:stdgo.internal.types.errors.Code = ((148 : Code))
```


MissingLitField occurs when a struct literal refers to a field that does  
not exist on the struct type.  



Example:  
var \_ = struct\{i int\}\{j: 2\}  



```haxe
final missingLitKey:stdgo.internal.types.errors.Code = ((148 : Code))
```


MissingLitKey occurs when a map literal is missing a key expression.  



Example:  
var \_ = map\[string\]int\{1\}  



```haxe
final missingReturn:stdgo.internal.types.errors.Code = ((148 : Code))
```


MissingReturn occurs when a function with results is missing a return  
statement.  



Example:  
func f\(\) int \{\}  



```haxe
final mixedStructLit:stdgo.internal.types.errors.Code = ((148 : Code))
```


MixedStructLit occurs when a struct literal contains a mix of positional  
and named elements.  



Example:  
var \_ = struct\{i, j int\}\{i: 1, 2\}  



```haxe
final multiValAssignOp:stdgo.internal.types.errors.Code = ((148 : Code))
```


MultiValAssignOp occurs when an assignment operation \(\+=, \*=, etc\) does  
not have single\-valued left\-hand or right\-hand side.  



Per the spec:  
"In assignment operations, both the left\- and right\-hand expression lists  
must contain exactly one single\-valued expression"  



Example:  
func f\(\) int \{  



x, y := 1, 2  



x, y \+= 1  



return x \+ y  
\}  



```haxe
final noNewVar:stdgo.internal.types.errors.Code = ((148 : Code))
```


NoNewVar occurs when a short variable declaration \(':='\) does not declare  
new variables.  



Example:  
func f\(\) \{  



x := 1  



x := 2  
\}  



```haxe
final nonIndexableOperand:stdgo.internal.types.errors.Code = ((148 : Code))
```


NonIndexableOperand occurs when an index operation is applied to a value  
that cannot be indexed.  



Example:  
var x = 1  
var y = x\[1\]  



```haxe
final nonNumericIncDec:stdgo.internal.types.errors.Code = ((148 : Code))
```


NonNumericIncDec occurs when an increment or decrement operator is  
applied to a non\-numeric value.  



Example:  
func f\(\) \{  



var c = "c"  



c\+\+  
\}  



```haxe
final nonSliceableOperand:stdgo.internal.types.errors.Code = ((148 : Code))
```


NonSliceableOperand occurs when a slice operation is applied to a value  
whose type is not sliceable, or is unaddressable.  



Example:  
var x = \[...\]int\{1, 2, 3\}\[:1\]  



Example:  
var x = 1  
var y = 1\[:1\]  



```haxe
final nonVariadicDotDotDot:stdgo.internal.types.errors.Code = ((148 : Code))
```


NonVariadicDotDotDot occurs when a "..." is used on the final argument to  
a non\-variadic function.  



Example:  
func printArgs\(s \[\]string\) \{  



for \_, a := range s \{  



println\(a\)  



\}  
\}  



func f\(\) \{  



s := \[\]string\{"a", "b", "c"\}  



printArgs\(s...\)  
\}  



```haxe
final notAGenericType:stdgo.internal.types.errors.Code = ((148 : Code))
```


NotAGenericType occurs when a non\-generic type is used where a generic  
type is expected: in type or function instantiation.  



Example:  
type T int  



var \_ T\[int\]  



```haxe
final notAType:stdgo.internal.types.errors.Code = ((148 : Code))
```


NotAType occurs when the identifier used as the underlying type in a type  
declaration or the right\-hand side of a type alias does not denote a type.  



Example:  
var S = 2  



type T S  



```haxe
final notAnExpr:stdgo.internal.types.errors.Code = ((148 : Code))
```


NotAnExpr occurs when a type expression is used where a value expression  
is expected.  



Example:  
type T struct \{\}  



func f\(\) \{  



T  
\}  



```haxe
final numericOverflow:stdgo.internal.types.errors.Code = ((148 : Code))
```


NumericOverflow occurs when a numeric constant overflows its target type.  



Example:  
var x int8 = 1000  



```haxe
final outOfScopeResult:stdgo.internal.types.errors.Code = ((148 : Code))
```


OutOfScopeResult occurs when the name of a value implicitly returned by  
an empty return statement is shadowed in a nested scope.  



Example:  
func factor\(n int\) \(i int\) \{  



for i := 2; i \< n; i\+\+ \{  



if n%i == 0 \{  



return  



\}  



\}  



return 0  
\}  



```haxe
final oversizeArrayLit:stdgo.internal.types.errors.Code = ((148 : Code))
```


OversizeArrayLit occurs when an array literal exceeds its length.  



Example:  
var \_ = \[2\]int\{1,2,3\}  



```haxe
final repeatedDecl:stdgo.internal.types.errors.Code = ((148 : Code))
```


RepeatedDecl occurs when an identifier occurs more than once on the left  
hand side of a short variable declaration.  



Example:  
func \_\(\) \{  



x, y, y := 1, 2, 3  
\}  



```haxe
final swappedMakeArgs:stdgo.internal.types.errors.Code = ((148 : Code))
```


SwappedMakeArgs occurs when make is called with three arguments, and its  
length argument is larger than its capacity argument.  



Example:  
var x = make\(\[\]int, 3, 2\)  



```haxe
final swappedSliceIndices:stdgo.internal.types.errors.Code = ((148 : Code))
```


SwappedSliceIndices occurs when constant indices in a slice expression  
are decreasing in value.  



Example:  
var \_ = \[\]int\{1,2,3\}\[2:1\]  



```haxe
final test:stdgo.internal.types.errors.Code = ((148 : Code))
```


Test is reserved for errors that only apply while in self\-test mode.  



```haxe
final tooManyValues:stdgo.internal.types.errors.Code = ((148 : Code))
```


TooManyValues occurs when a function returns too many values for the  
expression context in which it is used.  



Example:  
func ReturnTwo\(\) \(int, int\) \{  



return 1, 2  
\}  



var x = ReturnTwo\(\)  



```haxe
final truncatedFloat:stdgo.internal.types.errors.Code = ((148 : Code))
```


TruncatedFloat occurs when a float constant is truncated to an integer  
value.  



Example:  
var \_ int = 98.6  



```haxe
final unaddressableFieldAssign:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnaddressableFieldAssign occurs when trying to assign to a struct field  
in a map value.  



Example:  
func f\(\) \{  



m := make\(map\[string\]struct\{i int\}\)  



m\["foo"\].i = 42  
\}  



```haxe
final unaddressableOperand:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnaddressableOperand occurs when the & operator is applied to an  
unaddressable expression.  



Example:  
var x = &1  



```haxe
final unassignableOperand:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnassignableOperand occurs when the left\-hand side of an assignment is  
not assignable.  



Example:  
func f\(\) \{  



const c = 1  



c = 2  
\}  



```haxe
final uncalledBuiltin:stdgo.internal.types.errors.Code = ((148 : Code))
```


UncalledBuiltin occurs when a built\-in function is used as a  
function\-valued expression, instead of being called.  



Per the spec:  
"The built\-in functions do not have standard Go types, so they can only  
appear in call expressions; they cannot be used as function values."  



Example:  
var \_ = copy  



```haxe
final undeclaredImportedName:stdgo.internal.types.errors.Code = ((148 : Code))
```


UndeclaredImportedName occurs when a package\-qualified identifier is  
undeclared by the imported package.  



Example:  
import "go/types"  



var \_ = types.NotAnActualIdentifier  



```haxe
final undeclaredLabel:stdgo.internal.types.errors.Code = ((148 : Code))
```


UndeclaredLabel occurs when an undeclared label is jumped to.  



Example:  
func f\(\) \{  



goto L  
\}  



```haxe
final undeclaredName:stdgo.internal.types.errors.Code = ((148 : Code))
```


UndeclaredName occurs when an identifier is not declared in the current  
scope.  



Example:  
var x T  



```haxe
final undefinedOp:stdgo.internal.types.errors.Code = ((148 : Code))
```


UndefinedOp occurs when an operator is not defined for the type\(s\) used  
in an operation.  



Example:  
var c = "a" \- "b"  



```haxe
final unexportedLitField:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnexportedLitField occurs when a positional struct literal implicitly  
assigns an unexported field of an imported type.  



```haxe
final unexportedName:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnexportedName occurs when a selector refers to an unexported identifier  
of an imported package.  



Example:  
import "reflect"  



type \_ reflect.flag  



```haxe
final unsupportedFeature:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnsupportedFeature occurs when a language feature is used that is not  
supported at this Go version.  



```haxe
final untypedLit:stdgo.internal.types.errors.Code = ((148 : Code))
```


UntypedLit occurs when a composite literal omits a required type  
identifier.  



Example:  
type outer struct\{  



inner struct \{ i int \}  
\}  



var \_ = outer\{inner: \{1\}\}  



```haxe
final untypedNilUse:stdgo.internal.types.errors.Code = ((148 : Code))
```


UntypedNilUse occurs when the predeclared \(untyped\) value nil is used to  
initialize a variable declared without an explicit type.  



Example:  
var x = nil  



```haxe
final unusedExpr:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnusedExpr occurs when a side\-effect free expression is used as a  
statement. Such a statement has no effect.  



Example:  
func f\(i int\) \{  



i\*i  
\}  



```haxe
final unusedImport:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnusedImport occurs when an import is unused.  



Example:  
import "fmt"  



func main\(\) \{\}  



```haxe
final unusedLabel:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnusedLabel occurs when a label is declared and not used.  



Example:  
func f\(\) \{  
L:  
\}  



```haxe
final unusedResults:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnusedResults occurs when a restricted expression\-only built\-in function  
is suspended via go or defer. Such a suspension discards the results of  
these side\-effect free built\-in functions, and therefore is ineffectual.  



Example:  
func f\(a \[\]int\) int \{  



defer len\(a\)  



return i  
\}  



```haxe
final unusedVar:stdgo.internal.types.errors.Code = ((148 : Code))
```


UnusedVar occurs when a variable is declared but unused.  



Example:  
func f\(\) \{  



x := 1  
\}  



```haxe
final wrongArgCount:stdgo.internal.types.errors.Code = ((148 : Code))
```


WrongArgCount occurs when too few or too many arguments are passed by a  
function call.  



Example:  
func f\(i int\) \{\}  
var x = f\(\)  



```haxe
final wrongAssignCount:stdgo.internal.types.errors.Code = ((148 : Code))
```


WrongAssignCount occurs when the number of values on the right\-hand side  
of an assignment or initialization expression does not match the number  
of variables on the left\-hand side.  



Example:  
var x = 1, 2  



```haxe
final wrongResultCount:stdgo.internal.types.errors.Code = ((148 : Code))
```


WrongResultCount occurs when a return statement returns an incorrect  
number of values.  



Example:  
func ReturnOne\(\) int \{  



return 1, 2  
\}  



```haxe
final wrongTypeArgCount:stdgo.internal.types.errors.Code = ((148 : Code))
```


WrongTypeArgCount occurs when a type or function is instantiated with an  
incorrent number of type arguments, including when a generic type or  
function is used without instantiation.  



Errors inolving failed type inference are assigned other error codes.  



Example:  
type T\[p any\] int  



var \_ T\[int, string\]  



Example:  
func f\[T any\]\(\) \{\}  



var x = f  



# Typedefs


```haxe
import stdgo.internal.types.errors.*
```


## typedef Code


```haxe
typedef Code = var t:{<>}
```





