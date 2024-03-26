package stdgo.go.types;
/**
    // Package types declares the data types and implements
    // the algorithms for type-checking of Go packages. Use
    // Config.Check to invoke the type checker for a package.
    // Alternatively, create a new type checker with NewChecker
    // and invoke it incrementally by calling Checker.Files.
    //
    // Type-checking consists of several interdependent phases:
    //
    // Name resolution maps each identifier (ast.Ident) in the program to the
    // language object (Object) it denotes.
    // Use Info.{Defs,Uses,Implicits} for the results of name resolution.
    //
    // Constant folding computes the exact constant value (constant.Value)
    // for every expression (ast.Expr) that is a compile-time constant.
    // Use Info.Types[expr].Value for the results of constant folding.
    //
    // Type inference computes the type (Type) of every expression (ast.Expr)
    // and checks for compliance with the language specification.
    // Use Info.Types[expr].Type for the results of type inference.
    //
    // For a tutorial, see https://golang.org/s/types-tutorial.
**/
private var __go2hxdoc__package : Bool;
var typ(get, set) : Array<stdgo._internal.go.types.Types.Basic>;
function get_typ():Array<stdgo._internal.go.types.Types.Basic> return stdgo._internal.go.types.Types.typ;
function set_typ(v:Array<stdgo._internal.go.types.Types.Basic>):Array<stdgo._internal.go.types.Types.Basic> return stdgo._internal.go.types.Types.typ = v;
final invalid : stdgo._internal.go.types.Types.BasicKind = stdgo._internal.go.types.Types.invalid;
final bool_ = stdgo._internal.go.types.Types.bool_;
final int_ = stdgo._internal.go.types.Types.int_;
final int8 = stdgo._internal.go.types.Types.int8;
final int16 = stdgo._internal.go.types.Types.int16;
final int32 = stdgo._internal.go.types.Types.int32;
final int64 = stdgo._internal.go.types.Types.int64;
final uint = stdgo._internal.go.types.Types.uint;
final uint8 = stdgo._internal.go.types.Types.uint8;
final uint16 = stdgo._internal.go.types.Types.uint16;
final uint32 = stdgo._internal.go.types.Types.uint32;
final uint64 = stdgo._internal.go.types.Types.uint64;
final uintptr = stdgo._internal.go.types.Types.uintptr;
final float32 = stdgo._internal.go.types.Types.float32;
final float64 = stdgo._internal.go.types.Types.float64;
final complex64 = stdgo._internal.go.types.Types.complex64;
final complex128 = stdgo._internal.go.types.Types.complex128;
final string = stdgo._internal.go.types.Types.string;
final unsafePointer = stdgo._internal.go.types.Types.unsafePointer;
final untypedBool = stdgo._internal.go.types.Types.untypedBool;
final untypedInt = stdgo._internal.go.types.Types.untypedInt;
final untypedRune = stdgo._internal.go.types.Types.untypedRune;
final untypedFloat = stdgo._internal.go.types.Types.untypedFloat;
final untypedComplex = stdgo._internal.go.types.Types.untypedComplex;
final untypedString = stdgo._internal.go.types.Types.untypedString;
final untypedNil = stdgo._internal.go.types.Types.untypedNil;
final byte : stdgo._internal.go.types.Types.BasicKind = stdgo._internal.go.types.Types.byte;
final rune : stdgo._internal.go.types.Types.BasicKind = stdgo._internal.go.types.Types.rune;
final isBoolean : stdgo._internal.go.types.Types.BasicInfo = stdgo._internal.go.types.Types.isBoolean;
final isInteger = stdgo._internal.go.types.Types.isInteger;
final isUnsigned = stdgo._internal.go.types.Types.isUnsigned;
final isFloat = stdgo._internal.go.types.Types.isFloat;
final isComplex = stdgo._internal.go.types.Types.isComplex;
final isString = stdgo._internal.go.types.Types.isString;
final isUntyped = stdgo._internal.go.types.Types.isUntyped;
final isOrdered : stdgo._internal.go.types.Types.BasicInfo = stdgo._internal.go.types.Types.isOrdered;
final isNumeric : stdgo._internal.go.types.Types.BasicInfo = stdgo._internal.go.types.Types.isNumeric;
final isConstType : stdgo._internal.go.types.Types.BasicInfo = stdgo._internal.go.types.Types.isConstType;
final sendRecv : stdgo._internal.go.types.Types.ChanDir = stdgo._internal.go.types.Types.sendRecv;
final sendOnly = stdgo._internal.go.types.Types.sendOnly;
final recvOnly = stdgo._internal.go.types.Types.recvOnly;
final fieldVal : stdgo._internal.go.types.Types.SelectionKind = stdgo._internal.go.types.Types.fieldVal;
final methodVal = stdgo._internal.go.types.Types.methodVal;
final methodExpr = stdgo._internal.go.types.Types.methodExpr;
var universe(get, set) : Scope;
function get_universe():Scope return stdgo._internal.go.types.Types.universe;
function set_universe(v:Scope):Scope return stdgo._internal.go.types.Types.universe = v;
var unsafe(get, set) : Package;
function get_unsafe():Package return stdgo._internal.go.types.Types.unsafe;
function set_unsafe(v:Package):Package return stdgo._internal.go.types.Types.unsafe = v;
typedef Importer = stdgo._internal.go.types.Types.Importer;
typedef ImporterFrom = stdgo._internal.go.types.Types.ImporterFrom;
typedef T_cleaner = stdgo._internal.go.types.Types.T_cleaner;
typedef T_decl = stdgo._internal.go.types.Types.T_decl;
typedef T_positioner = stdgo._internal.go.types.Types.T_positioner;
typedef T_dependency = stdgo._internal.go.types.Types.T_dependency;
typedef Object = stdgo._internal.go.types.Types.Object;
typedef Sizes = stdgo._internal.go.types.Types.Sizes;
typedef Type_ = stdgo._internal.go.types.Types.Type_;
@:invalid typedef Error = Dynamic;
@:invalid typedef ArgumentError = Dynamic;
@:invalid typedef Config = Dynamic;
@:invalid typedef Info = Dynamic;
@:invalid typedef TypeAndValue = Dynamic;
@:invalid typedef Instance = Dynamic;
@:invalid typedef Initializer = Dynamic;
@:invalid typedef Array_ = Dynamic;
@:invalid typedef Basic = Dynamic;
@:invalid typedef Chan = Dynamic;
@:invalid typedef T_exprInfo = Dynamic;
@:invalid typedef T_environment = Dynamic;
@:invalid typedef T_importKey = Dynamic;
@:invalid typedef T_dotImportKey = Dynamic;
@:invalid typedef T_action = Dynamic;
@:invalid typedef T_actionDesc = Dynamic;
@:invalid typedef Checker = Dynamic;
@:invalid typedef T_posVers = Dynamic;
@:invalid typedef T_bailout = Dynamic;
@:invalid typedef Context = Dynamic;
@:invalid typedef T_ctxtEntry = Dynamic;
@:invalid typedef T_importDecl = Dynamic;
@:invalid typedef T_constDecl = Dynamic;
@:invalid typedef T_varDecl = Dynamic;
@:invalid typedef T_typeDecl = Dynamic;
@:invalid typedef T_funcDecl = Dynamic;
@:invalid typedef T_error_ = Dynamic;
@:invalid typedef T_errorDesc = Dynamic;
@:invalid typedef T_posSpan = Dynamic;
@:invalid typedef T_tpWalker = Dynamic;
@:invalid typedef T_cycleFinder = Dynamic;
@:invalid typedef T_graphNode = Dynamic;
@:invalid typedef Interface = Dynamic;
@:invalid typedef T_block = Dynamic;
@:invalid typedef T_embeddedType = Dynamic;
@:invalid typedef T_instanceLookup = Dynamic;
@:invalid typedef Map_ = Dynamic;
@:invalid typedef MethodSet = Dynamic;
@:invalid typedef T_monoGraph = Dynamic;
@:invalid typedef T_monoVertex = Dynamic;
@:invalid typedef T_monoEdge = Dynamic;
@:invalid typedef Named = Dynamic;
@:invalid typedef T_instance = Dynamic;
@:invalid typedef T_object = Dynamic;
@:invalid typedef PkgName = Dynamic;
@:invalid typedef Const = Dynamic;
@:invalid typedef TypeName = Dynamic;
@:invalid typedef Var = Dynamic;
@:invalid typedef Func = Dynamic;
@:invalid typedef Label = Dynamic;
@:invalid typedef Builtin = Dynamic;
@:invalid typedef Nil = Dynamic;
@:invalid typedef T_operand = Dynamic;
@:invalid typedef Package = Dynamic;
@:invalid typedef Pointer_ = Dynamic;
@:invalid typedef T_ifacePair = Dynamic;
@:invalid typedef T_comparer = Dynamic;
@:invalid typedef T_declInfo = Dynamic;
@:invalid typedef Scope = Dynamic;
@:invalid typedef T_lazyObject = Dynamic;
@:invalid typedef Selection = Dynamic;
@:invalid typedef Signature = Dynamic;
@:invalid typedef StdSizes = Dynamic;
@:invalid typedef Slice_ = Dynamic;
@:invalid typedef T_valueType = Dynamic;
@:invalid typedef Struct = Dynamic;
@:invalid typedef T_subster = Dynamic;
@:invalid typedef Tuple = Dynamic;
@:invalid typedef TypeParamList = Dynamic;
@:invalid typedef TypeList = Dynamic;
@:invalid typedef TypeParam = Dynamic;
@:invalid typedef T__TypeSet = Dynamic;
@:invalid typedef T_typeWriter = Dynamic;
@:invalid typedef T_term = Dynamic;
@:invalid typedef T_unifier = Dynamic;
@:invalid typedef Union = Dynamic;
@:invalid typedef T_version = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.types.Types.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.types.Types.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.types.Types.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.go.types.Types.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.go.types.Types.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.go.types.Types.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.go.types.Types.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.go.types.Types.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.go.types.Types.T__struct_8;
typedef ImportMode = stdgo._internal.go.types.Types.ImportMode;
typedef BasicKind = stdgo._internal.go.types.Types.BasicKind;
typedef BasicInfo = stdgo._internal.go.types.Types.BasicInfo;
typedef ChanDir = stdgo._internal.go.types.Types.ChanDir;
typedef T_atPos = stdgo._internal.go.types.Types.T_atPos;
typedef T_opPredicates = stdgo._internal.go.types.Types.T_opPredicates;
typedef T_exprKind = stdgo._internal.go.types.Types.T_exprKind;
typedef T_nodeSet = stdgo._internal.go.types.Types.T_nodeSet;
typedef T_nodeQueue = stdgo._internal.go.types.Types.T_nodeQueue;
typedef T_methodSet = stdgo._internal.go.types.Types.T_methodSet;
typedef T_namedState = stdgo._internal.go.types.Types.T_namedState;
typedef T_color = stdgo._internal.go.types.Types.T_color;
typedef T_objset = stdgo._internal.go.types.Types.T_objset;
typedef T_operandMode = stdgo._internal.go.types.Types.T_operandMode;
typedef T_inSourceOrder = stdgo._internal.go.types.Types.T_inSourceOrder;
typedef SelectionKind = stdgo._internal.go.types.Types.SelectionKind;
typedef T_stmtContext = stdgo._internal.go.types.Types.T_stmtContext;
typedef T_valueMap = stdgo._internal.go.types.Types.T_valueMap;
typedef T_substMap = stdgo._internal.go.types.Types.T_substMap;
typedef T_termlist = stdgo._internal.go.types.Types.T_termlist;
typedef T_byUniqueMethodName = stdgo._internal.go.types.Types.T_byUniqueMethodName;
typedef Qualifier = stdgo._internal.go.types.Types.Qualifier;
typedef T_unifyMode = stdgo._internal.go.types.Types.T_unifyMode;
typedef T_typeParamsById = stdgo._internal.go.types.Types.T_typeParamsById;
typedef Term = stdgo._internal.go.types.Types.Term;
typedef T_builtinId = stdgo._internal.go.types.Types.T_builtinId;
/**
    // AssertableTo reports whether a value of type V can be asserted to have type T.
    //
    // The behavior of AssertableTo is unspecified in three cases:
    //   - if T is Typ[Invalid]
    //   - if V is a generalized interface; i.e., an interface that may only be used
    //     as a type constraint in Go code
    //   - if T is an uninstantiated generic type
**/
inline function assertableTo(v:Interface, t:Type_):Bool throw "not implemented";
/**
    // AssignableTo reports whether a value of type V is assignable to a variable
    // of type T.
    //
    // The behavior of AssignableTo is unspecified if V or T is Typ[Invalid] or an
    // uninstantiated generic type.
**/
inline function assignableTo(v:Type_, t:Type_):Bool throw "not implemented";
/**
    // ConvertibleTo reports whether a value of type V is convertible to a value of
    // type T.
    //
    // The behavior of ConvertibleTo is unspecified if V or T is Typ[Invalid] or an
    // uninstantiated generic type.
**/
inline function convertibleTo(v:Type_, t:Type_):Bool throw "not implemented";
/**
    // Implements reports whether type V implements interface T.
    //
    // The behavior of Implements is unspecified if V is Typ[Invalid] or an uninstantiated
    // generic type.
**/
inline function implements_(v:Type_, t:Interface):Bool throw "not implemented";
/**
    // Satisfies reports whether type V satisfies the constraint T.
    //
    // The behavior of Satisfies is unspecified if V is Typ[Invalid] or an uninstantiated
    // generic type.
**/
inline function satisfies(v:Type_, t:Interface):Bool throw "not implemented";
/**
    // Identical reports whether x and y are identical types.
    // Receivers of Signature types are ignored.
**/
inline function identical(x:Type_, y:Type_):Bool throw "not implemented";
/**
    // IdenticalIgnoreTags reports whether x and y are identical types if tags are ignored.
    // Receivers of Signature types are ignored.
**/
inline function identicalIgnoreTags(x:Type_, y:Type_):Bool throw "not implemented";
/**
    // NewArray returns a new array type for the given element type and length.
    // A negative length indicates an unknown length.
**/
inline function newArray(elem:Type_, len:haxe.Int64):Array_ throw "not implemented";
/**
    // NewChan returns a new channel type for the given direction and element type.
**/
inline function newChan(dir:ChanDir, elem:Type_):Chan throw "not implemented";
/**
    // NewChecker returns a new Checker instance for a given package.
    // Package files may be added incrementally via checker.Files.
**/
inline function newChecker(conf:Config, fset:stdgo._internal.go.token.Token.FileSet, pkg:Package, info:Info):Checker throw "not implemented";
/**
    // NewContext creates a new Context.
**/
inline function newContext():Context throw "not implemented";
inline function testContextHashCollisions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testStripAnnotations(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Eval returns the type and, if constant, the value for the
    // expression expr, evaluated at position pos of package pkg,
    // which must have been derived from type-checking an AST with
    // complete position information relative to the provided file
    // set.
    //
    // The meaning of the parameters fset, pkg, and pos is the
    // same as in CheckExpr. An error is returned if expr cannot
    // be parsed successfully, or the resulting expr AST cannot be
    // type-checked.
**/
inline function eval(fset:stdgo._internal.go.token.Token.FileSet, pkg:Package, pos:stdgo._internal.go.token.Token.Pos, expr:String):stdgo.Tuple<TypeAndValue, stdgo.Error> throw "not implemented";
/**
    // CheckExpr type checks the expression expr as if it had appeared at position
    // pos of package pkg. Type information about the expression is recorded in
    // info. The expression may be an identifier denoting an uninstantiated generic
    // function or type.
    //
    // If pkg == nil, the Universe scope is used and the provided
    // position pos is ignored. If pkg != nil, and pos is invalid,
    // the package scope is used. Otherwise, pos must belong to the
    // package.
    //
    // An error is returned if pos is not within the package or
    // if the node cannot be type-checked.
    //
    // Note: Eval and CheckExpr should not be used instead of running Check
    // to compute types and values, but in addition to Check, as these
    // functions ignore the context in which an expression is used (e.g., an
    // assignment). Thus, top-level untyped constants will return an
    // untyped type rather than the respective context-specific type.
**/
inline function checkExpr(fset:stdgo._internal.go.token.Token.FileSet, pkg:Package, pos:stdgo._internal.go.token.Token.Pos, expr:stdgo._internal.go.ast.Ast.Expr, info:Info):stdgo.Error throw "not implemented";
/**
    // ExprString returns the (possibly shortened) string representation for x.
    // Shortened representations are suitable for user interfaces but may not
    // necessarily follow Go syntax.
**/
inline function exprString(x:stdgo._internal.go.ast.Ast.Expr):String throw "not implemented";
/**
    // WriteExpr writes the (possibly shortened) string representation for x to buf.
    // Shortened representations are suitable for user interfaces but may not
    // necessarily follow Go syntax.
**/
inline function writeExpr(buf:stdgo._internal.bytes.Bytes.Buffer, x:stdgo._internal.go.ast.Ast.Expr):Void throw "not implemented";
/**
    // Instantiate instantiates the type orig with the given type arguments targs.
    // orig must be a *Named or a *Signature type. If there is no error, the
    // resulting Type is an instantiated type of the same kind (either a *Named or
    // a *Signature). Methods attached to a *Named type are also instantiated, and
    // associated with a new *Func that has the same position as the original
    // method, but nil function scope.
    //
    // If ctxt is non-nil, it may be used to de-duplicate the instance against
    // previous instances with the same identity. As a special case, generic
    // *Signature origin types are only considered identical if they are pointer
    // equivalent, so that instantiating distinct (but possibly identical)
    // signatures will yield different instances. The use of a shared context does
    // not guarantee that identical instances are deduplicated in all cases.
    //
    // If validate is set, Instantiate verifies that the number of type arguments
    // and parameters match, and that the type arguments satisfy their
    // corresponding type constraints. If verification fails, the resulting error
    // may wrap an *ArgumentError indicating which type argument did not satisfy
    // its corresponding type parameter constraint, and why.
    //
    // If validate is not set, Instantiate does not verify the type argument count
    // or whether the type arguments satisfy their constraints. Instantiate is
    // guaranteed to not return an error, but may panic. Specifically, for
    // *Signature types, Instantiate will panic immediately if the type argument
    // count is incorrect; for *Named types, a panic may occur later inside the
    // *Named API.
**/
inline function instantiate(ctxt:Context, orig:Type_, targs:Array<Type_>, validate:Bool):stdgo.Tuple<Type_, stdgo.Error> throw "not implemented";
/**
    // NewInterface returns a new interface for the given methods and embedded types.
    // NewInterface takes ownership of the provided methods and may modify their types
    // by setting missing receivers.
    //
    // Deprecated: Use NewInterfaceType instead which allows arbitrary embedded types.
**/
inline function newInterface(methods:Array<Func>, embeddeds:Array<Named>):Interface throw "not implemented";
/**
    // NewInterfaceType returns a new interface for the given methods and embedded
    // types. NewInterfaceType takes ownership of the provided methods and may
    // modify their types by setting missing receivers.
    //
    // To avoid race conditions, the interface's type set should be computed before
    // concurrent use of the interface, by explicitly calling Complete.
**/
inline function newInterfaceType(methods:Array<Func>, embeddeds:Array<Type_>):Interface throw "not implemented";
/**
    // LookupFieldOrMethod looks up a field or method with given package and name
    // in T and returns the corresponding *Var or *Func, an index sequence, and a
    // bool indicating if there were any pointer indirections on the path to the
    // field or method. If addressable is set, T is the type of an addressable
    // variable (only matters for method lookups). T must not be nil.
    //
    // The last index entry is the field or method index in the (possibly embedded)
    // type where the entry was found, either:
    //
    //  1. the list of declared methods of a named type; or
    //  2. the list of all methods (method set) of an interface type; or
    //  3. the list of fields of a struct type.
    //
    // The earlier index entries are the indices of the embedded struct fields
    // traversed to get to the found entry, starting at depth 0.
    //
    // If no entry is found, a nil object is returned. In this case, the returned
    // index and indirect values have the following meaning:
    //
    //   - If index != nil, the index sequence points to an ambiguous entry
    //     (the same name appeared more than once at the same embedding level).
    //
    //   - If indirect is set, a method with a pointer receiver type was found
    //     but there was no pointer on the path from the actual receiver type to
    //     the method's formal receiver base type, nor was the receiver addressable.
**/
inline function lookupFieldOrMethod(t:Type_, addressable:Bool, pkg:Package, name:String):stdgo.Tuple.Tuple3<Object, Array<Int>, Bool> throw "not implemented";
/**
    // MissingMethod returns (nil, false) if V implements T, otherwise it
    // returns a missing method required by T and whether it is missing or
    // just has the wrong type: either a pointer receiver or wrong signature.
    //
    // For non-interface types V, or if static is set, V implements T if all
    // methods of T are present in V. Otherwise (V is an interface and static
    // is not set), MissingMethod only checks that methods of T which are also
    // present in V have matching types (e.g., for a type assertion x.(T) where
    // x is of interface type V).
**/
inline function missingMethod(v:Type_, t:Interface, _static:Bool):stdgo.Tuple<Func, Bool> throw "not implemented";
/**
    // NewMap returns a new map for the given key and element types.
**/
inline function newMap(key:Type_, elem:Type_):Map_ throw "not implemented";
/**
    // NewMethodSet returns the method set for the given type T.
    // It always returns a non-nil method set, even if it is empty.
**/
inline function newMethodSet(t:Type_):MethodSet throw "not implemented";
/**
    // NewNamed returns a new named type for the given type name, underlying type, and associated methods.
    // If the given type name obj doesn't have a type yet, its type is set to the returned named type.
    // The underlying type must not be a *Named.
**/
inline function newNamed(obj:TypeName, underlying:Type_, methods:Array<Func>):Named throw "not implemented";
/**
    // Id returns name if it is exported, otherwise it
    // returns the name qualified with the package path.
**/
inline function id(pkg:Package, name:String):String throw "not implemented";
/**
    // NewPkgName returns a new PkgName object representing an imported package.
    // The remaining arguments set the attributes found with all Objects.
**/
inline function newPkgName(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, imported:Package):PkgName throw "not implemented";
/**
    // NewConst returns a new constant with value val.
    // The remaining arguments set the attributes found with all Objects.
**/
inline function newConst(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, typ:Type_, val:stdgo._internal.go.constant.Constant.Value):Const throw "not implemented";
/**
    // NewTypeName returns a new type name denoting the given typ.
    // The remaining arguments set the attributes found with all Objects.
    //
    // The typ argument may be a defined (Named) type or an alias type.
    // It may also be nil such that the returned TypeName can be used as
    // argument for NewNamed, which will set the TypeName's type as a side-
    // effect.
**/
inline function newTypeName(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, typ:Type_):TypeName throw "not implemented";
/**
    // NewVar returns a new variable.
    // The arguments set the attributes found with all Objects.
**/
inline function newVar(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, typ:Type_):Var throw "not implemented";
/**
    // NewParam returns a new variable representing a function parameter.
**/
inline function newParam(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, typ:Type_):Var throw "not implemented";
/**
    // NewField returns a new variable representing a struct field.
    // For embedded fields, the name is the unqualified type name
    // under which the field is accessible.
**/
inline function newField(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, typ:Type_, embedded:Bool):Var throw "not implemented";
/**
    // NewFunc returns a new function with the given signature, representing
    // the function's type.
**/
inline function newFunc(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String, sig:Signature):Func throw "not implemented";
/**
    // NewLabel returns a new label.
**/
inline function newLabel(pos:stdgo._internal.go.token.Token.Pos, pkg:Package, name:String):Label throw "not implemented";
/**
    // ObjectString returns the string form of obj.
    // The Qualifier controls the printing of
    // package-level objects, and may be nil.
**/
inline function objectString(obj:Object, qf:Qualifier):String throw "not implemented";
/**
    // NewPackage returns a new Package for the given package path and name.
    // The package is not complete and contains no explicit imports.
**/
inline function newPackage(path:String, name:String):Package throw "not implemented";
/**
    // NewPointer returns a new pointer type for the given element (base) type.
**/
inline function newPointer(elem:Type_):Pointer_ throw "not implemented";
/**
    // IsInterface reports whether t is an interface type.
**/
inline function isInterface(t:Type_):Bool throw "not implemented";
/**
    // Comparable reports whether values of type T are comparable.
**/
inline function comparable_(t:Type_):Bool throw "not implemented";
/**
    // Default returns the default "typed" type for an "untyped" type;
    // it returns the incoming type for all other types. The default type
    // for untyped nil is untyped nil.
**/
inline function default_(t:Type_):Type_ throw "not implemented";
/**
    // NewScope returns a new, empty scope contained in the given parent
    // scope, if any. The comment is for debugging only.
**/
inline function newScope(parent:Scope, pos:stdgo._internal.go.token.Token.Pos, end:stdgo._internal.go.token.Token.Pos, comment:String):Scope throw "not implemented";
/**
    // SelectionString returns the string form of s.
    // The Qualifier controls the printing of
    // package-level objects, and may be nil.
    //
    // Examples:
    //
    //	"field (T) f int"
    //	"method (T) f(X) Y"
    //	"method expr (T) f(X) Y"
**/
inline function selectionString(s:Selection, qf:Qualifier):String throw "not implemented";
/**
    // NewSignature returns a new function type for the given receiver, parameters,
    // and results, either of which may be nil. If variadic is set, the function
    // is variadic, it must have at least one parameter, and the last parameter
    // must be of unnamed slice type.
    //
    // Deprecated: Use NewSignatureType instead which allows for type parameters.
**/
inline function newSignature(recv:Var, params:Tuple, results:Tuple, variadic:Bool):Signature throw "not implemented";
/**
    // NewSignatureType creates a new function type for the given receiver,
    // receiver type parameters, type parameters, parameters, and results. If
    // variadic is set, params must hold at least one parameter and the last
    // parameter's core type must be of unnamed slice or bytestring type.
    // If recv is non-nil, typeParams must be empty. If recvTypeParams is
    // non-empty, recv must be non-nil.
**/
inline function newSignatureType(recv:Var, recvTypeParams:Array<TypeParam>, typeParams:Array<TypeParam>, params:Tuple, results:Tuple, variadic:Bool):Signature throw "not implemented";
/**
    // Signal size changes of important structures.
**/
inline function testSizeof(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // SizesFor returns the Sizes used by a compiler for an architecture.
    // The result is nil if a compiler/architecture pair is not known.
    //
    // Supported architectures for compiler "gc":
    // "386", "amd64", "amd64p32", "arm", "arm64", "loong64", "mips", "mipsle",
    // "mips64", "mips64le", "ppc64", "ppc64le", "riscv64", "s390x", "sparc64", "wasm".
**/
inline function sizesFor(compiler:String, arch:String):Sizes throw "not implemented";
/**
    // NewSlice returns a new slice type for the given element type.
**/
inline function newSlice(elem:Type_):Slice_ throw "not implemented";
/**
    // NewStruct returns a new struct with the given fields and corresponding field tags.
    // If a field with index i has a tag, tags[i] must be that tag, but len(tags) may be
    // only as long as required to hold the tag with the largest index i. Consequently,
    // if no field has a tag, tags may be nil.
**/
inline function newStruct(fields:Array<Var>, tags:Array<String>):Struct throw "not implemented";
inline function testTermlistAll(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistIsEmpty(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistIsAll(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistNorm(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistUnion(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistIntersect(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistEqual(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistIncludes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistSupersetOf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermlistSubsetOf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testZeroTok(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testAssignOp(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewTuple returns a new tuple for the given variables.
**/
inline function newTuple(x:haxe.Rest<stdgo.Ref<Var>>):Tuple throw "not implemented";
/**
    // NewTypeParam returns a new TypeParam. Type parameters may be set on a Named
    // or Signature type by calling SetTypeParams. Setting a type parameter on more
    // than one type will result in a panic.
    //
    // The constraint argument can be nil, and set later via SetConstraint. If the
    // constraint is non-nil, it must be fully defined.
**/
inline function newTypeParam(obj:TypeName, constraint:Type_):TypeParam throw "not implemented";
inline function testInvalidTypeSet(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTypeSetString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // RelativeTo returns a Qualifier that fully qualifies members of
    // all packages other than pkg.
**/
inline function relativeTo(pkg:Package):Qualifier throw "not implemented";
/**
    // TypeString returns the string representation of typ.
    // The Qualifier controls the printing of
    // package-level objects, and may be nil.
**/
inline function typeString(typ:Type_, qf:Qualifier):String throw "not implemented";
/**
    // WriteType writes the string representation of typ to buf.
    // The Qualifier controls the printing of
    // package-level objects, and may be nil.
**/
inline function writeType(buf:stdgo._internal.bytes.Bytes.Buffer, typ:Type_, qf:Qualifier):Void throw "not implemented";
/**
    // WriteSignature writes the representation of the signature sig to buf,
    // without a leading "func" keyword. The Qualifier controls the printing
    // of package-level objects, and may be nil.
**/
inline function writeSignature(buf:stdgo._internal.bytes.Bytes.Buffer, sig:Signature, qf:Qualifier):Void throw "not implemented";
inline function testTermString(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermEqual(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermUnion(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermIntersection(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermIncludes(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermSubsetOf(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testTermDisjoint(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // NewUnion returns a new Union type with the given terms.
    // It is an error to create an empty union; they are syntactically not possible.
**/
inline function newUnion(terms:Array<Term>):Union throw "not implemented";
/**
    // NewTerm returns a new union term.
**/
inline function newTerm(tilde:Bool, typ:Type_):Term throw "not implemented";
/**
    // DefPredeclaredTestFuncs defines the assert and trace built-ins.
    // These built-ins are intended for debugging and testing of this
    // package only.
**/
inline function defPredeclaredTestFuncs():Void throw "not implemented";
inline function cmpPos(p:stdgo._internal.go.token.Token.Pos, q:stdgo._internal.go.token.Token.Pos):Int throw "not implemented";
inline function testParseGoVersion(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef ArgumentError_asInterface = Dynamic;
@:invalid typedef ArgumentError_static_extension = Dynamic;
@:invalid typedef Config_asInterface = Dynamic;
@:invalid typedef Config_static_extension = Dynamic;
@:invalid typedef Info_asInterface = Dynamic;
@:invalid typedef Info_static_extension = Dynamic;
@:invalid typedef TypeAndValue_asInterface = Dynamic;
@:invalid typedef TypeAndValue_static_extension = Dynamic;
@:invalid typedef Initializer_asInterface = Dynamic;
@:invalid typedef Initializer_static_extension = Dynamic;
@:invalid typedef Array__asInterface = Dynamic;
@:invalid typedef Array__static_extension = Dynamic;
@:invalid typedef Basic_asInterface = Dynamic;
@:invalid typedef Basic_static_extension = Dynamic;
@:invalid typedef Chan_asInterface = Dynamic;
@:invalid typedef Chan_static_extension = Dynamic;
@:invalid typedef T_environment_asInterface = Dynamic;
@:invalid typedef T_environment_static_extension = Dynamic;
@:invalid typedef T_action_asInterface = Dynamic;
@:invalid typedef T_action_static_extension = Dynamic;
@:invalid typedef Checker_asInterface = Dynamic;
@:invalid typedef Checker_static_extension = Dynamic;
@:invalid typedef T__collectObjects_40___localname___methodInfo = Dynamic;
@:invalid typedef Context_asInterface = Dynamic;
@:invalid typedef Context_static_extension = Dynamic;
@:invalid typedef T_importDecl_asInterface = Dynamic;
@:invalid typedef T_importDecl_static_extension = Dynamic;
@:invalid typedef T_constDecl_asInterface = Dynamic;
@:invalid typedef T_constDecl_static_extension = Dynamic;
@:invalid typedef T_varDecl_asInterface = Dynamic;
@:invalid typedef T_varDecl_static_extension = Dynamic;
@:invalid typedef T_typeDecl_asInterface = Dynamic;
@:invalid typedef T_typeDecl_static_extension = Dynamic;
@:invalid typedef T_funcDecl_asInterface = Dynamic;
@:invalid typedef T_funcDecl_static_extension = Dynamic;
@:invalid typedef T_error__asInterface = Dynamic;
@:invalid typedef T_error__static_extension = Dynamic;
@:invalid typedef T_posSpan_asInterface = Dynamic;
@:invalid typedef T_posSpan_static_extension = Dynamic;
@:invalid typedef T_tpWalker_asInterface = Dynamic;
@:invalid typedef T_tpWalker_static_extension = Dynamic;
@:invalid typedef T_cycleFinder_asInterface = Dynamic;
@:invalid typedef T_cycleFinder_static_extension = Dynamic;
@:invalid typedef T_graphNode_asInterface = Dynamic;
@:invalid typedef T_graphNode_static_extension = Dynamic;
@:invalid typedef Interface_asInterface = Dynamic;
@:invalid typedef Interface_static_extension = Dynamic;
@:invalid typedef T_block_asInterface = Dynamic;
@:invalid typedef T_block_static_extension = Dynamic;
@:invalid typedef T_instanceLookup_asInterface = Dynamic;
@:invalid typedef T_instanceLookup_static_extension = Dynamic;
@:invalid typedef Map__asInterface = Dynamic;
@:invalid typedef Map__static_extension = Dynamic;
@:invalid typedef MethodSet_asInterface = Dynamic;
@:invalid typedef MethodSet_static_extension = Dynamic;
@:invalid typedef T_monoGraph_asInterface = Dynamic;
@:invalid typedef T_monoGraph_static_extension = Dynamic;
@:invalid typedef Named_asInterface = Dynamic;
@:invalid typedef Named_static_extension = Dynamic;
@:invalid typedef T_object_asInterface = Dynamic;
@:invalid typedef T_object_static_extension = Dynamic;
@:invalid typedef PkgName_asInterface = Dynamic;
@:invalid typedef PkgName_static_extension = Dynamic;
@:invalid typedef Const_asInterface = Dynamic;
@:invalid typedef Const_static_extension = Dynamic;
@:invalid typedef TypeName_asInterface = Dynamic;
@:invalid typedef TypeName_static_extension = Dynamic;
@:invalid typedef Var_asInterface = Dynamic;
@:invalid typedef Var_static_extension = Dynamic;
@:invalid typedef Func_asInterface = Dynamic;
@:invalid typedef Func_static_extension = Dynamic;
@:invalid typedef Label_asInterface = Dynamic;
@:invalid typedef Label_static_extension = Dynamic;
@:invalid typedef Builtin_asInterface = Dynamic;
@:invalid typedef Builtin_static_extension = Dynamic;
@:invalid typedef Nil_asInterface = Dynamic;
@:invalid typedef Nil_static_extension = Dynamic;
@:invalid typedef T_operand_asInterface = Dynamic;
@:invalid typedef T_operand_static_extension = Dynamic;
@:invalid typedef Package_asInterface = Dynamic;
@:invalid typedef Package_static_extension = Dynamic;
@:invalid typedef Pointer__asInterface = Dynamic;
@:invalid typedef Pointer__static_extension = Dynamic;
@:invalid typedef T_ifacePair_asInterface = Dynamic;
@:invalid typedef T_ifacePair_static_extension = Dynamic;
@:invalid typedef T_comparer_asInterface = Dynamic;
@:invalid typedef T_comparer_static_extension = Dynamic;
@:invalid typedef T_declInfo_asInterface = Dynamic;
@:invalid typedef T_declInfo_static_extension = Dynamic;
@:invalid typedef Scope_asInterface = Dynamic;
@:invalid typedef Scope_static_extension = Dynamic;
@:invalid typedef T_lazyObject_asInterface = Dynamic;
@:invalid typedef T_lazyObject_static_extension = Dynamic;
@:invalid typedef Selection_asInterface = Dynamic;
@:invalid typedef Selection_static_extension = Dynamic;
@:invalid typedef Signature_asInterface = Dynamic;
@:invalid typedef Signature_static_extension = Dynamic;
@:invalid typedef StdSizes_asInterface = Dynamic;
@:invalid typedef StdSizes_static_extension = Dynamic;
@:invalid typedef Slice__asInterface = Dynamic;
@:invalid typedef Slice__static_extension = Dynamic;
@:invalid typedef Struct_asInterface = Dynamic;
@:invalid typedef Struct_static_extension = Dynamic;
@:invalid typedef T_subster_asInterface = Dynamic;
@:invalid typedef T_subster_static_extension = Dynamic;
@:invalid typedef Tuple_asInterface = Dynamic;
@:invalid typedef Tuple_static_extension = Dynamic;
@:invalid typedef TypeParamList_asInterface = Dynamic;
@:invalid typedef TypeParamList_static_extension = Dynamic;
@:invalid typedef TypeList_asInterface = Dynamic;
@:invalid typedef TypeList_static_extension = Dynamic;
@:invalid typedef TypeParam_asInterface = Dynamic;
@:invalid typedef TypeParam_static_extension = Dynamic;
@:invalid typedef T__TypeSet_asInterface = Dynamic;
@:invalid typedef T__TypeSet_static_extension = Dynamic;
@:invalid typedef T_typeWriter_asInterface = Dynamic;
@:invalid typedef T_typeWriter_static_extension = Dynamic;
@:invalid typedef T_term_asInterface = Dynamic;
@:invalid typedef T_term_static_extension = Dynamic;
@:invalid typedef T_unifier_asInterface = Dynamic;
@:invalid typedef T_unifier_static_extension = Dynamic;
@:invalid typedef Union_asInterface = Dynamic;
@:invalid typedef Union_static_extension = Dynamic;
@:invalid typedef T_version_asInterface = Dynamic;
@:invalid typedef T_version_static_extension = Dynamic;
@:invalid typedef T_atPos_asInterface = Dynamic;
@:invalid typedef T_atPos_static_extension = Dynamic;
@:invalid typedef T_nodeSet_asInterface = Dynamic;
@:invalid typedef T_nodeSet_static_extension = Dynamic;
@:invalid typedef T_nodeQueue_asInterface = Dynamic;
@:invalid typedef T_nodeQueue_static_extension = Dynamic;
@:invalid typedef T_methodSet_asInterface = Dynamic;
@:invalid typedef T_methodSet_static_extension = Dynamic;
@:invalid typedef T_color_asInterface = Dynamic;
@:invalid typedef T_color_static_extension = Dynamic;
@:invalid typedef T_objset_asInterface = Dynamic;
@:invalid typedef T_objset_static_extension = Dynamic;
@:invalid typedef T_inSourceOrder_asInterface = Dynamic;
@:invalid typedef T_inSourceOrder_static_extension = Dynamic;
@:invalid typedef T_substMap_asInterface = Dynamic;
@:invalid typedef T_substMap_static_extension = Dynamic;
@:invalid typedef T_termlist_asInterface = Dynamic;
@:invalid typedef T_termlist_static_extension = Dynamic;
@:invalid typedef T_byUniqueMethodName_asInterface = Dynamic;
@:invalid typedef T_byUniqueMethodName_static_extension = Dynamic;
@:invalid typedef T_unifyMode_asInterface = Dynamic;
@:invalid typedef T_unifyMode_static_extension = Dynamic;
@:invalid typedef T_typeParamsById_asInterface = Dynamic;
@:invalid typedef T_typeParamsById_static_extension = Dynamic;
@:invalid typedef Term_asInterface = Dynamic;
@:invalid typedef Term_static_extension = Dynamic;
