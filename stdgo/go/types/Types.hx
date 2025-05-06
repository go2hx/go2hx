package stdgo.go.types;
var invalid : BasicKind = 0i64;
var bool_ : BasicKind = 1i64;
var int_ : BasicKind = 2i64;
var int8 : BasicKind = 3i64;
var int16 : BasicKind = 4i64;
var int32 : BasicKind = 5i64;
var int64 : BasicKind = 6i64;
var uint : BasicKind = 7i64;
var uint8 : BasicKind = 8i64;
var uint16 : BasicKind = 9i64;
var uint32 : BasicKind = 10i64;
var uint64 : BasicKind = 11i64;
var uintptr : BasicKind = 12i64;
var float32 : BasicKind = 13i64;
var float64 : BasicKind = 14i64;
var complex64 : BasicKind = 15i64;
var complex128 : BasicKind = 16i64;
var string : BasicKind = 17i64;
var unsafePointer : BasicKind = 18i64;
var untypedBool : BasicKind = 19i64;
var untypedInt : BasicKind = 20i64;
var untypedRune : BasicKind = 21i64;
var untypedFloat : BasicKind = 22i64;
var untypedComplex : BasicKind = 23i64;
var untypedString : BasicKind = 24i64;
var untypedNil : BasicKind = 25i64;
var byte : BasicKind = 8i64;
var rune : BasicKind = 5i64;
var isBoolean : BasicInfo = 1i64;
var isInteger : BasicInfo = 2i64;
var isUnsigned : BasicInfo = 4i64;
var isFloat : BasicInfo = 8i64;
var isComplex : BasicInfo = 16i64;
var isString : BasicInfo = 32i64;
var isUntyped : BasicInfo = 64i64;
var isOrdered : BasicInfo = 42i64;
var isNumeric : BasicInfo = 26i64;
var isConstType : BasicInfo = 59i64;
var sendRecv : ChanDir = 0i64;
var sendOnly : ChanDir = 1i64;
var recvOnly : ChanDir = 2i64;
var fieldVal : SelectionKind = 0i64;
var methodVal : SelectionKind = 1i64;
var methodExpr : SelectionKind = 2i64;
var universe(get, set) : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
private function get_universe():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return stdgo._internal.go.types.Types_universe.universe;
private function set_universe(v:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        stdgo._internal.go.types.Types_universe.universe = v;
        return v;
    }
var unsafe(get, set) : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
private function get_unsafe():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return stdgo._internal.go.types.Types_unsafe.unsafe;
private function set_unsafe(v:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        stdgo._internal.go.types.Types_unsafe.unsafe = v;
        return v;
    }
var typ(get, set) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>>;
private function get_typ():stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>> return stdgo._internal.go.types.Types_typ.typ;
private function set_typ(v:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>> {
        stdgo._internal.go.types.Types_typ.typ = v;
        return v;
    }
typedef Importer = stdgo._internal.go.types.Types_importer.Importer;
typedef ImporterFrom = stdgo._internal.go.types.Types_importerfrom.ImporterFrom;
typedef Object = stdgo._internal.go.types.Types_object.Object;
typedef Sizes = stdgo._internal.go.types.Types_sizes.Sizes;
typedef Type_ = stdgo._internal.go.types.Types_type_.Type_;
typedef Error = stdgo._internal.go.types.Types_error.Error;
typedef ArgumentError = stdgo._internal.go.types.Types_argumenterror.ArgumentError;
typedef Config = stdgo._internal.go.types.Types_config.Config;
typedef Info = stdgo._internal.go.types.Types_info.Info;
typedef TypeAndValue = stdgo._internal.go.types.Types_typeandvalue.TypeAndValue;
typedef Instance = stdgo._internal.go.types.Types_instance.Instance;
typedef Initializer = stdgo._internal.go.types.Types_initializer.Initializer;
typedef Array_ = stdgo._internal.go.types.Types_array_.Array_;
typedef Basic = stdgo._internal.go.types.Types_basic.Basic;
typedef Chan = stdgo._internal.go.types.Types_chan.Chan;
typedef Checker = stdgo._internal.go.types.Types_checker.Checker;
typedef Context = stdgo._internal.go.types.Types_context.Context;
typedef Interface = stdgo._internal.go.types.Types_interface.Interface;
typedef Map_ = stdgo._internal.go.types.Types_map_.Map_;
typedef MethodSet = stdgo._internal.go.types.Types_methodset.MethodSet;
typedef Named = stdgo._internal.go.types.Types_named.Named;
typedef PkgName = stdgo._internal.go.types.Types_pkgname.PkgName;
typedef Const = stdgo._internal.go.types.Types_const.Const;
typedef TypeName = stdgo._internal.go.types.Types_typename.TypeName;
typedef Var = stdgo._internal.go.types.Types_var.Var;
typedef Func = stdgo._internal.go.types.Types_func.Func;
typedef Label = stdgo._internal.go.types.Types_label.Label;
typedef Builtin = stdgo._internal.go.types.Types_builtin.Builtin;
typedef Nil = stdgo._internal.go.types.Types_nil.Nil;
typedef Package = stdgo._internal.go.types.Types_package.Package;
typedef Pointer_ = stdgo._internal.go.types.Types_pointer_.Pointer_;
typedef Scope = stdgo._internal.go.types.Types_scope.Scope;
typedef Selection = stdgo._internal.go.types.Types_selection.Selection;
typedef Signature = stdgo._internal.go.types.Types_signature.Signature;
typedef StdSizes = stdgo._internal.go.types.Types_stdsizes.StdSizes;
typedef Slice_ = stdgo._internal.go.types.Types_slice_.Slice_;
typedef Struct = stdgo._internal.go.types.Types_struct.Struct;
typedef Tuple = stdgo._internal.go.types.Types_tuple.Tuple;
typedef TypeParamList = stdgo._internal.go.types.Types_typeparamlist.TypeParamList;
typedef TypeList = stdgo._internal.go.types.Types_typelist.TypeList;
typedef TypeParam = stdgo._internal.go.types.Types_typeparam.TypeParam;
typedef Union = stdgo._internal.go.types.Types_union.Union;
typedef ImportMode = stdgo._internal.go.types.Types_importmode.ImportMode;
typedef BasicKind = stdgo._internal.go.types.Types_basickind.BasicKind;
typedef BasicInfo = stdgo._internal.go.types.Types_basicinfo.BasicInfo;
typedef ChanDir = stdgo._internal.go.types.Types_chandir.ChanDir;
typedef SelectionKind = stdgo._internal.go.types.Types_selectionkind.SelectionKind;
typedef Qualifier = stdgo._internal.go.types.Types_qualifier.Qualifier;
typedef Term = stdgo._internal.go.types.Types_term.Term;
typedef ErrorPointer = stdgo._internal.go.types.Types_errorpointer.ErrorPointer;
typedef ArgumentErrorPointer = stdgo._internal.go.types.Types_argumenterrorpointer.ArgumentErrorPointer;
typedef ConfigPointer = stdgo._internal.go.types.Types_configpointer.ConfigPointer;
typedef InfoPointer = stdgo._internal.go.types.Types_infopointer.InfoPointer;
typedef TypeAndValuePointer = stdgo._internal.go.types.Types_typeandvaluepointer.TypeAndValuePointer;
typedef InstancePointer = stdgo._internal.go.types.Types_instancepointer.InstancePointer;
typedef InitializerPointer = stdgo._internal.go.types.Types_initializerpointer.InitializerPointer;
typedef Array_Pointer = stdgo._internal.go.types.Types_array_pointer.Array_Pointer;
typedef BasicPointer = stdgo._internal.go.types.Types_basicpointer.BasicPointer;
typedef ChanPointer = stdgo._internal.go.types.Types_chanpointer.ChanPointer;
typedef CheckerPointer = stdgo._internal.go.types.Types_checkerpointer.CheckerPointer;
typedef ContextPointer = stdgo._internal.go.types.Types_contextpointer.ContextPointer;
typedef InterfacePointer = stdgo._internal.go.types.Types_interfacepointer.InterfacePointer;
typedef Map_Pointer = stdgo._internal.go.types.Types_map_pointer.Map_Pointer;
typedef MethodSetPointer = stdgo._internal.go.types.Types_methodsetpointer.MethodSetPointer;
typedef NamedPointer = stdgo._internal.go.types.Types_namedpointer.NamedPointer;
typedef PkgNamePointer = stdgo._internal.go.types.Types_pkgnamepointer.PkgNamePointer;
typedef ConstPointer = stdgo._internal.go.types.Types_constpointer.ConstPointer;
typedef TypeNamePointer = stdgo._internal.go.types.Types_typenamepointer.TypeNamePointer;
typedef VarPointer = stdgo._internal.go.types.Types_varpointer.VarPointer;
typedef FuncPointer = stdgo._internal.go.types.Types_funcpointer.FuncPointer;
typedef LabelPointer = stdgo._internal.go.types.Types_labelpointer.LabelPointer;
typedef BuiltinPointer = stdgo._internal.go.types.Types_builtinpointer.BuiltinPointer;
typedef NilPointer = stdgo._internal.go.types.Types_nilpointer.NilPointer;
typedef PackagePointer = stdgo._internal.go.types.Types_packagepointer.PackagePointer;
typedef Pointer_Pointer = stdgo._internal.go.types.Types_pointer_pointer.Pointer_Pointer;
typedef ScopePointer = stdgo._internal.go.types.Types_scopepointer.ScopePointer;
typedef SelectionPointer = stdgo._internal.go.types.Types_selectionpointer.SelectionPointer;
typedef SignaturePointer = stdgo._internal.go.types.Types_signaturepointer.SignaturePointer;
typedef StdSizesPointer = stdgo._internal.go.types.Types_stdsizespointer.StdSizesPointer;
typedef Slice_Pointer = stdgo._internal.go.types.Types_slice_pointer.Slice_Pointer;
typedef StructPointer = stdgo._internal.go.types.Types_structpointer.StructPointer;
typedef TuplePointer = stdgo._internal.go.types.Types_tuplepointer.TuplePointer;
typedef TypeParamListPointer = stdgo._internal.go.types.Types_typeparamlistpointer.TypeParamListPointer;
typedef TypeListPointer = stdgo._internal.go.types.Types_typelistpointer.TypeListPointer;
typedef TypeParamPointer = stdgo._internal.go.types.Types_typeparampointer.TypeParamPointer;
typedef UnionPointer = stdgo._internal.go.types.Types_unionpointer.UnionPointer;
typedef ImportModePointer = stdgo._internal.go.types.Types_importmodepointer.ImportModePointer;
typedef BasicKindPointer = stdgo._internal.go.types.Types_basickindpointer.BasicKindPointer;
typedef BasicInfoPointer = stdgo._internal.go.types.Types_basicinfopointer.BasicInfoPointer;
typedef ChanDirPointer = stdgo._internal.go.types.Types_chandirpointer.ChanDirPointer;
typedef SelectionKindPointer = stdgo._internal.go.types.Types_selectionkindpointer.SelectionKindPointer;
typedef QualifierPointer = stdgo._internal.go.types.Types_qualifierpointer.QualifierPointer;
typedef TermPointer = stdgo._internal.go.types.Types_termpointer.TermPointer;
/**
    * Package types declares the data types and implements
    * the algorithms for type-checking of Go packages. Use
    * Config.Check to invoke the type checker for a package.
    * Alternatively, create a new type checker with NewChecker
    * and invoke it incrementally by calling Checker.Files.
    * 
    * Type-checking consists of several interdependent phases:
    * 
    * Name resolution maps each identifier (ast.Ident) in the program to the
    * language object (Object) it denotes.
    * Use Info.{Defs,Uses,Implicits} for the results of name resolution.
    * 
    * Constant folding computes the exact constant value (constant.Value)
    * for every expression (ast.Expr) that is a compile-time constant.
    * Use Info.Types[expr].Value for the results of constant folding.
    * 
    * Type inference computes the type (Type) of every expression (ast.Expr)
    * and checks for compliance with the language specification.
    * Use Info.Types[expr].Type for the results of type inference.
    * 
    * For a tutorial, see https://golang.org/s/types-tutorial.
**/
class Types {
    /**
        * AssertableTo reports whether a value of type V can be asserted to have type T.
        * 
        * The behavior of AssertableTo is unspecified in three cases:
        *   - if T is Typ[Invalid]
        *   - if V is a generalized interface; i.e., an interface that may only be used
        *     as a type constraint in Go code
        *   - if T is an uninstantiated generic type
    **/
    static public inline function assertableTo(v:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, t:Type_):Bool return stdgo._internal.go.types.Types_assertableto.assertableTo(v, t);
    /**
        * AssignableTo reports whether a value of type V is assignable to a variable
        * of type T.
        * 
        * The behavior of AssignableTo is unspecified if V or T is Typ[Invalid] or an
        * uninstantiated generic type.
    **/
    static public inline function assignableTo(v:Type_, t:Type_):Bool return stdgo._internal.go.types.Types_assignableto.assignableTo(v, t);
    /**
        * ConvertibleTo reports whether a value of type V is convertible to a value of
        * type T.
        * 
        * The behavior of ConvertibleTo is unspecified if V or T is Typ[Invalid] or an
        * uninstantiated generic type.
    **/
    static public inline function convertibleTo(v:Type_, t:Type_):Bool return stdgo._internal.go.types.Types_convertibleto.convertibleTo(v, t);
    /**
        * Implements reports whether type V implements interface T.
        * 
        * The behavior of Implements is unspecified if V is Typ[Invalid] or an uninstantiated
        * generic type.
    **/
    static public inline function implements_(v:Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool return stdgo._internal.go.types.Types_implements_.implements_(v, t);
    /**
        * Satisfies reports whether type V satisfies the constraint T.
        * 
        * The behavior of Satisfies is unspecified if V is Typ[Invalid] or an uninstantiated
        * generic type.
    **/
    static public inline function satisfies(v:Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):Bool return stdgo._internal.go.types.Types_satisfies.satisfies(v, t);
    /**
        * Identical reports whether x and y are identical types.
        * Receivers of Signature types are ignored.
    **/
    static public inline function identical(_x:Type_, _y:Type_):Bool return stdgo._internal.go.types.Types_identical.identical(_x, _y);
    /**
        * IdenticalIgnoreTags reports whether x and y are identical types if tags are ignored.
        * Receivers of Signature types are ignored.
    **/
    static public inline function identicalIgnoreTags(_x:Type_, _y:Type_):Bool return stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(_x, _y);
    /**
        * NewArray returns a new array type for the given element type and length.
        * A negative length indicates an unknown length.
    **/
    static public inline function newArray(_elem:Type_, _len:stdgo.GoInt64):stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> return stdgo._internal.go.types.Types_newarray.newArray(_elem, _len);
    /**
        * NewChan returns a new channel type for the given direction and element type.
    **/
    static public inline function newChan(_dir:ChanDir, _elem:Type_):stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> return stdgo._internal.go.types.Types_newchan.newChan(_dir, _elem);
    /**
        * NewChecker returns a new Checker instance for a given package.
        * Package files may be added incrementally via checker.Files.
    **/
    static public inline function newChecker(_conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> return stdgo._internal.go.types.Types_newchecker.newChecker(_conf, _fset, _pkg, _info);
    /**
        * NewContext creates a new Context.
    **/
    static public inline function newContext():stdgo.Ref<stdgo._internal.go.types.Types_context.Context> return stdgo._internal.go.types.Types_newcontext.newContext();
    static public inline function testContextHashCollisions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testcontexthashcollisions.testContextHashCollisions(_t);
    static public inline function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testerror.testError(_t);
    static public inline function testStripAnnotations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_teststripannotations.testStripAnnotations(_t);
    /**
        * Eval returns the type and, if constant, the value for the
        * expression expr, evaluated at position pos of package pkg,
        * which must have been derived from type-checking an AST with
        * complete position information relative to the provided file
        * set.
        * 
        * The meaning of the parameters fset, pkg, and pos is the
        * same as in CheckExpr. An error is returned if expr cannot
        * be parsed successfully, or the resulting expr AST cannot be
        * type-checked.
    **/
    static public inline function eval(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue; var _1 : stdgo.Error; } return stdgo._internal.go.types.Types_eval.eval(_fset, _pkg, _pos, _expr);
    /**
        * CheckExpr type checks the expression expr as if it had appeared at position
        * pos of package pkg. Type information about the expression is recorded in
        * info. The expression may be an identifier denoting an uninstantiated generic
        * function or type.
        * 
        * If pkg == nil, the Universe scope is used and the provided
        * position pos is ignored. If pkg != nil, and pos is invalid,
        * the package scope is used. Otherwise, pos must belong to the
        * package.
        * 
        * An error is returned if pos is not within the package or
        * if the node cannot be type-checked.
        * 
        * Note: Eval and CheckExpr should not be used instead of running Check
        * to compute types and values, but in addition to Check, as these
        * functions ignore the context in which an expression is used (e.g., an
        * assignment). Thus, top-level untyped constants will return an
        * untyped type rather than the respective context-specific type.
    **/
    static public inline function checkExpr(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):stdgo.Error return stdgo._internal.go.types.Types_checkexpr.checkExpr(_fset, _pkg, _pos, _expr, _info);
    /**
        * ExprString returns the (possibly shortened) string representation for x.
        * Shortened representations are suitable for user interfaces but may not
        * necessarily follow Go syntax.
    **/
    static public inline function exprString(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString return stdgo._internal.go.types.Types_exprstring.exprString(_x);
    /**
        * WriteExpr writes the (possibly shortened) string representation for x to buf.
        * Shortened representations are suitable for user interfaces but may not
        * necessarily follow Go syntax.
    **/
    static public inline function writeExpr(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, _x);
    /**
        * Instantiate instantiates the type orig with the given type arguments targs.
        * orig must be a *Named or a *Signature type. If there is no error, the
        * resulting Type is an instantiated type of the same kind (either a *Named or
        * a *Signature). Methods attached to a *Named type are also instantiated, and
        * associated with a new *Func that has the same position as the original
        * method, but nil function scope.
        * 
        * If ctxt is non-nil, it may be used to de-duplicate the instance against
        * previous instances with the same identity. As a special case, generic
        * *Signature origin types are only considered identical if they are pointer
        * equivalent, so that instantiating distinct (but possibly identical)
        * signatures will yield different instances. The use of a shared context does
        * not guarantee that identical instances are deduplicated in all cases.
        * 
        * If validate is set, Instantiate verifies that the number of type arguments
        * and parameters match, and that the type arguments satisfy their
        * corresponding type constraints. If verification fails, the resulting error
        * may wrap an *ArgumentError indicating which type argument did not satisfy
        * its corresponding type parameter constraint, and why.
        * 
        * If validate is not set, Instantiate does not verify the type argument count
        * or whether the type arguments satisfy their constraints. Instantiate is
        * guaranteed to not return an error, but may panic. Specifically, for
        * *Signature types, Instantiate will panic immediately if the type argument
        * count is incorrect; for *Named types, a panic may occur later inside the
        * *Named API.
    **/
    static public inline function instantiate(_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _orig:Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _validate:Bool):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.Error; } return stdgo._internal.go.types.Types_instantiate.instantiate(_ctxt, _orig, _targs, _validate);
    /**
        * NewInterface returns a new interface for the given methods and embedded types.
        * NewInterface takes ownership of the provided methods and may modify their types
        * by setting missing receivers.
        * 
        * Deprecated: Use NewInterfaceType instead which allows arbitrary embedded types.
    **/
    static public inline function newInterface(_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _embeddeds:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return stdgo._internal.go.types.Types_newinterface.newInterface(_methods, _embeddeds);
    /**
        * NewInterfaceType returns a new interface for the given methods and embedded
        * types. NewInterfaceType takes ownership of the provided methods and may
        * modify their types by setting missing receivers.
        * 
        * To avoid race conditions, the interface's type set should be computed before
        * concurrent use of the interface, by explicitly calling Complete.
    **/
    static public inline function newInterfaceType(_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _embeddeds:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds);
    /**
        * LookupFieldOrMethod looks up a field or method with given package and name
        * in T and returns the corresponding *Var or *Func, an index sequence, and a
        * bool indicating if there were any pointer indirections on the path to the
        * field or method. If addressable is set, T is the type of an addressable
        * variable (only matters for method lookups). T must not be nil.
        * 
        * The last index entry is the field or method index in the (possibly embedded)
        * type where the entry was found, either:
        * 
        *  1. the list of declared methods of a named type; or
        *  2. the list of all methods (method set) of an interface type; or
        *  3. the list of fields of a struct type.
        * 
        * The earlier index entries are the indices of the embedded struct fields
        * traversed to get to the found entry, starting at depth 0.
        * 
        * If no entry is found, a nil object is returned. In this case, the returned
        * index and indirect values have the following meaning:
        * 
        *   - If index != nil, the index sequence points to an ambiguous entry
        *     (the same name appeared more than once at the same embedding level).
        * 
        *   - If indirect is set, a method with a pointer receiver type was found
        *     but there was no pointer on the path from the actual receiver type to
        *     the method's formal receiver base type, nor was the receiver addressable.
    **/
    static public inline function lookupFieldOrMethod(t:Type_, _addressable:Bool, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } return stdgo._internal.go.types.Types_lookupfieldormethod.lookupFieldOrMethod(t, _addressable, _pkg, _name);
    /**
        * MissingMethod returns (nil, false) if V implements T, otherwise it
        * returns a missing method required by T and whether it is missing or
        * just has the wrong type: either a pointer receiver or wrong signature.
        * 
        * For non-interface types V, or if static is set, V implements T if all
        * methods of T are present in V. Otherwise (V is an interface and static
        * is not set), MissingMethod only checks that methods of T which are also
        * present in V have matching types (e.g., for a type assertion x.(T) where
        * x is of interface type V).
    **/
    static public inline function missingMethod(v:Type_, t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _static:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; var _1 : Bool; } return stdgo._internal.go.types.Types_missingmethod.missingMethod(v, t, _static);
    /**
        * NewMap returns a new map for the given key and element types.
    **/
    static public inline function newMap(_key:Type_, _elem:Type_):stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> return stdgo._internal.go.types.Types_newmap.newMap(_key, _elem);
    /**
        * NewMethodSet returns the method set for the given type T.
        * It always returns a non-nil method set, even if it is empty.
    **/
    static public inline function newMethodSet(t:Type_):stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> return stdgo._internal.go.types.Types_newmethodset.newMethodSet(t);
    /**
        * NewNamed returns a new named type for the given type name, underlying type, and associated methods.
        * If the given type name obj doesn't have a type yet, its type is set to the returned named type.
        * The underlying type must not be a *Named.
    **/
    static public inline function newNamed(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _underlying:Type_, _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return stdgo._internal.go.types.Types_newnamed.newNamed(_obj, _underlying, _methods);
    /**
        * Id returns name if it is exported, otherwise it
        * returns the name qualified with the package path.
    **/
    static public inline function id(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.GoString return stdgo._internal.go.types.Types_id.id(_pkg, _name);
    /**
        * NewPkgName returns a new PkgName object representing an imported package.
        * The remaining arguments set the attributes found with all Objects.
    **/
    static public inline function newPkgName(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _imported:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName> return stdgo._internal.go.types.Types_newpkgname.newPkgName(_pos, _pkg, _name, _imported);
    /**
        * NewConst returns a new constant with value val.
        * The remaining arguments set the attributes found with all Objects.
    **/
    static public inline function newConst(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:Type_, _val:stdgo._internal.go.constant.Constant_value.Value):stdgo.Ref<stdgo._internal.go.types.Types_const.Const> return stdgo._internal.go.types.Types_newconst.newConst(_pos, _pkg, _name, _typ, _val);
    /**
        * NewTypeName returns a new type name denoting the given typ.
        * The remaining arguments set the attributes found with all Objects.
        * 
        * The typ argument may be a defined (Named) type or an alias type.
        * It may also be nil such that the returned TypeName can be used as
        * argument for NewNamed, which will set the TypeName's type as a side-
        * effect.
    **/
    static public inline function newTypeName(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:Type_):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> return stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _pkg, _name, _typ);
    /**
        * NewVar returns a new variable.
        * The arguments set the attributes found with all Objects.
    **/
    static public inline function newVar(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:Type_):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return stdgo._internal.go.types.Types_newvar.newVar(_pos, _pkg, _name, _typ);
    /**
        * NewParam returns a new variable representing a function parameter.
    **/
    static public inline function newParam(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:Type_):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return stdgo._internal.go.types.Types_newparam.newParam(_pos, _pkg, _name, _typ);
    /**
        * NewField returns a new variable representing a struct field.
        * For embedded fields, the name is the unqualified type name
        * under which the field is accessible.
    **/
    static public inline function newField(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _typ:Type_, _embedded:Bool):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return stdgo._internal.go.types.Types_newfield.newField(_pos, _pkg, _name, _typ, _embedded);
    /**
        * NewFunc returns a new function with the given signature, representing
        * the function's type.
    **/
    static public inline function newFunc(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name, _sig);
    /**
        * NewLabel returns a new label.
    **/
    static public inline function newLabel(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_label.Label> return stdgo._internal.go.types.Types_newlabel.newLabel(_pos, _pkg, _name);
    /**
        * ObjectString returns the string form of obj.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function objectString(_obj:Object, _qf:Qualifier):stdgo.GoString return stdgo._internal.go.types.Types_objectstring.objectString(_obj, _qf);
    /**
        * NewPackage returns a new Package for the given package path and name.
        * The package is not complete and contains no explicit imports.
    **/
    static public inline function newPackage(_path:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return stdgo._internal.go.types.Types_newpackage.newPackage(_path, _name);
    /**
        * NewPointer returns a new pointer type for the given element (base) type.
    **/
    static public inline function newPointer(_elem:Type_):stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> return stdgo._internal.go.types.Types_newpointer.newPointer(_elem);
    /**
        * IsInterface reports whether t is an interface type.
    **/
    static public inline function isInterface(_t:Type_):Bool return stdgo._internal.go.types.Types_isinterface.isInterface(_t);
    /**
        * Comparable reports whether values of type T are comparable.
    **/
    static public inline function comparable_(t:Type_):Bool return stdgo._internal.go.types.Types_comparable_.comparable_(t);
    /**
        * Default returns the default "typed" type for an "untyped" type;
        * it returns the incoming type for all other types. The default type
        * for untyped nil is untyped nil.
    **/
    static public inline function default_(_t:Type_):stdgo._internal.go.types.Types_type_.Type_ return stdgo._internal.go.types.Types_default_.default_(_t);
    /**
        * NewScope returns a new, empty scope contained in the given parent
        * scope, if any. The comment is for debugging only.
    **/
    static public inline function newScope(_parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos, _end:stdgo._internal.go.token.Token_pos.Pos, _comment:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return stdgo._internal.go.types.Types_newscope.newScope(_parent, _pos, _end, _comment);
    /**
        * SelectionString returns the string form of s.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
        * 
        * Examples:
        * 
        * 	"field (T) f int"
        * 	"method (T) f(X) Y"
        * 	"method expr (T) f(X) Y"
    **/
    static public inline function selectionString(_s:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>, _qf:Qualifier):stdgo.GoString return stdgo._internal.go.types.Types_selectionstring.selectionString(_s, _qf);
    /**
        * NewSignature returns a new function type for the given receiver, parameters,
        * and results, either of which may be nil. If variadic is set, the function
        * is variadic, it must have at least one parameter, and the last parameter
        * must be of unnamed slice type.
        * 
        * Deprecated: Use NewSignatureType instead which allows for type parameters.
    **/
    static public inline function newSignature(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _results:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return stdgo._internal.go.types.Types_newsignature.newSignature(_recv, _params, _results, _variadic);
    /**
        * NewSignatureType creates a new function type for the given receiver,
        * receiver type parameters, type parameters, parameters, and results. If
        * variadic is set, params must hold at least one parameter and the last
        * parameter's core type must be of unnamed slice or bytestring type.
        * If recv is non-nil, typeParams must be empty. If recvTypeParams is
        * non-empty, recv must be non-nil.
    **/
    static public inline function newSignatureType(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _recvTypeParams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _typeParams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _results:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, _recvTypeParams, _typeParams, _params, _results, _variadic);
    /**
        * Signal size changes of important structures.
    **/
    static public inline function testSizeof(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testsizeof.testSizeof(_t);
    /**
        * SizesFor returns the Sizes used by a compiler for an architecture.
        * The result is nil if a compiler/architecture pair is not known.
        * 
        * Supported architectures for compiler "gc":
        * "386", "amd64", "amd64p32", "arm", "arm64", "loong64", "mips", "mipsle",
        * "mips64", "mips64le", "ppc64", "ppc64le", "riscv64", "s390x", "sparc64", "wasm".
    **/
    static public inline function sizesFor(_compiler:stdgo.GoString, _arch:stdgo.GoString):stdgo._internal.go.types.Types_sizes.Sizes return stdgo._internal.go.types.Types_sizesfor.sizesFor(_compiler, _arch);
    /**
        * NewSlice returns a new slice type for the given element type.
    **/
    static public inline function newSlice(_elem:Type_):stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> return stdgo._internal.go.types.Types_newslice.newSlice(_elem);
    /**
        * NewStruct returns a new struct with the given fields and corresponding field tags.
        * If a field with index i has a tag, tags[i] must be that tag, but len(tags) may be
        * only as long as required to hold the tag with the largest index i. Consequently,
        * if no field has a tag, tags may be nil.
    **/
    static public inline function newStruct(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _tags:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> return stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags);
    static public inline function testTermlistAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistall.testTermlistAll(_t);
    static public inline function testTermlistString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermliststring.testTermlistString(_t);
    static public inline function testTermlistIsEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistisempty.testTermlistIsEmpty(_t);
    static public inline function testTermlistIsAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistisall.testTermlistIsAll(_t);
    static public inline function testTermlistNorm(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistnorm.testTermlistNorm(_t);
    static public inline function testTermlistUnion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistunion.testTermlistUnion(_t);
    static public inline function testTermlistIntersect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistintersect.testTermlistIntersect(_t);
    static public inline function testTermlistEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistequal.testTermlistEqual(_t);
    static public inline function testTermlistIncludes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistincludes.testTermlistIncludes(_t);
    static public inline function testTermlistSupersetOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistsupersetof.testTermlistSupersetOf(_t);
    static public inline function testTermlistSubsetOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermlistsubsetof.testTermlistSubsetOf(_t);
    static public inline function testZeroTok(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testzerotok.testZeroTok(_t);
    static public inline function testAssignOp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testassignop.testAssignOp(_t);
    /**
        * NewTuple returns a new tuple for the given variables.
    **/
    static public inline function newTuple(_x:haxe.Rest<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return stdgo._internal.go.types.Types_newtuple.newTuple(...[for (i in _x) i]);
    /**
        * NewTypeParam returns a new TypeParam. Type parameters may be set on a Named
        * or Signature type by calling SetTypeParams. Setting a type parameter on more
        * than one type will result in a panic.
        * 
        * The constraint argument can be nil, and set later via SetConstraint. If the
        * constraint is non-nil, it must be fully defined.
    **/
    static public inline function newTypeParam(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _constraint:Type_):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> return stdgo._internal.go.types.Types_newtypeparam.newTypeParam(_obj, _constraint);
    static public inline function testInvalidTypeSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testinvalidtypeset.testInvalidTypeSet(_t);
    static public inline function testTypeSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtypesetstring.testTypeSetString(_t);
    /**
        * RelativeTo returns a Qualifier that fully qualifies members of
        * all packages other than pkg.
    **/
    static public inline function relativeTo(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo._internal.go.types.Types_qualifier.Qualifier return stdgo._internal.go.types.Types_relativeto.relativeTo(_pkg);
    /**
        * TypeString returns the string representation of typ.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function typeString(_typ:Type_, _qf:Qualifier):stdgo.GoString return stdgo._internal.go.types.Types_typestring.typeString(_typ, _qf);
    /**
        * WriteType writes the string representation of typ to buf.
        * The Qualifier controls the printing of
        * package-level objects, and may be nil.
    **/
    static public inline function writeType(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _typ:Type_, _qf:Qualifier):Void stdgo._internal.go.types.Types_writetype.writeType(_buf, _typ, _qf);
    /**
        * WriteSignature writes the representation of the signature sig to buf,
        * without a leading "func" keyword. The Qualifier controls the printing
        * of package-level objects, and may be nil.
    **/
    static public inline function writeSignature(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _qf:Qualifier):Void stdgo._internal.go.types.Types_writesignature.writeSignature(_buf, _sig, _qf);
    static public inline function testTermString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermstring.testTermString(_t);
    static public inline function testTermEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermequal.testTermEqual(_t);
    static public inline function testTermUnion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermunion.testTermUnion(_t);
    static public inline function testTermIntersection(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermintersection.testTermIntersection(_t);
    static public inline function testTermIncludes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermincludes.testTermIncludes(_t);
    static public inline function testTermSubsetOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermsubsetof.testTermSubsetOf(_t);
    static public inline function testTermDisjoint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testtermdisjoint.testTermDisjoint(_t);
    /**
        * NewUnion returns a new Union type with the given terms.
        * It is an error to create an empty union; they are syntactically not possible.
    **/
    static public inline function newUnion(_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>):stdgo.Ref<stdgo._internal.go.types.Types_union.Union> return stdgo._internal.go.types.Types_newunion.newUnion(_terms);
    /**
        * NewTerm returns a new union term.
    **/
    static public inline function newTerm(_tilde:Bool, _typ:Type_):stdgo.Ref<stdgo._internal.go.types.Types_term.Term> return stdgo._internal.go.types.Types_newterm.newTerm(_tilde, _typ);
    /**
        * DefPredeclaredTestFuncs defines the assert and trace built-ins.
        * These built-ins are intended for debugging and testing of this
        * package only.
    **/
    static public inline function defPredeclaredTestFuncs():Void stdgo._internal.go.types.Types_defpredeclaredtestfuncs.defPredeclaredTestFuncs();
    static public inline function cmpPos(_p:stdgo._internal.go.token.Token_pos.Pos, _q:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt return stdgo._internal.go.types.Types_cmppos.cmpPos(_p, _q);
    static public inline function testParseGoVersion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.types.Types_testparsegoversion.testParseGoVersion(_t);
}
