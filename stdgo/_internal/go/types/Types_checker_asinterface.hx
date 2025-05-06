package stdgo._internal.go.types;
class Checker_asInterface {
    @:keep
    @:tdfield
    public dynamic function _verifyVersionf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _v:stdgo._internal.go.types.Types_t_version.T_version, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool return @:_0 __self__.value._verifyVersionf(_at, _v, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _allowVersion(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _v:stdgo._internal.go.types.Types_t_version.T_version):Bool return @:_0 __self__.value._allowVersion(_pkg, _at, _v);
    @:keep
    @:tdfield
    public dynamic function _langCompat(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):Void @:_0 __self__.value._langCompat(_lit);
    @:keep
    @:tdfield
    public dynamic function _validType0(_typ:stdgo._internal.go.types.Types_type_.Type_, _nest:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>, _path:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>):Bool return @:_0 __self__.value._validType0(_typ, _nest, _path);
    @:keep
    @:tdfield
    public dynamic function _validType(_typ:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._validType(_typ);
    @:keep
    @:tdfield
    public dynamic function _typeList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> return @:_0 __self__.value._typeList(_list);
    @:keep
    @:tdfield
    public dynamic function _arrayLength(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoInt64 return @:_0 __self__.value._arrayLength(_e);
    @:keep
    @:tdfield
    public dynamic function _instantiatedType(_ix:stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._instantiatedType(_ix, _def);
    @:keep
    @:tdfield
    public dynamic function _typInternal(_e0:stdgo._internal.go.ast.Ast_expr.Expr, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typInternal(_e0, _def);
    @:keep
    @:tdfield
    public dynamic function _genericType(_e:stdgo._internal.go.ast.Ast_expr.Expr, _cause:stdgo.Pointer<stdgo.GoString>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._genericType(_e, _cause);
    @:keep
    @:tdfield
    public dynamic function _definedType(_e:stdgo._internal.go.ast.Ast_expr.Expr, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._definedType(_e, _def);
    @:keep
    @:tdfield
    public dynamic function _validVarType(_e:stdgo._internal.go.ast.Ast_expr.Expr, _typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._validVarType(_e, _typ);
    @:keep
    @:tdfield
    public dynamic function _varType(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._varType(_e);
    @:keep
    @:tdfield
    public dynamic function _typ(_e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typ(_e);
    @:keep
    @:tdfield
    public dynamic function _ident(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _wantType:Bool):Void @:_0 __self__.value._ident(_x, _e, _def, _wantType);
    @:keep
    @:tdfield
    public dynamic function _newTypeParam(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _constraint:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> return @:_0 __self__.value._newTypeParam(_obj, _constraint);
    @:keep
    @:tdfield
    public dynamic function _subst(_pos:stdgo._internal.go.token.Token_pos.Pos, _typ:stdgo._internal.go.types.Types_type_.Type_, _smap:stdgo._internal.go.types.Types_t_substmap.T_substMap, _expanding:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._subst(_pos, _typ, _smap, _expanding, _ctxt);
    @:keep
    @:tdfield
    public dynamic function _tag(_t:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo.GoString return @:_0 __self__.value._tag(_t);
    @:keep
    @:tdfield
    public dynamic function _declareInSet(_oset:stdgo.Ref<stdgo._internal.go.types.Types_t_objset.T_objset>, _pos:stdgo._internal.go.token.Token_pos.Pos, _obj:stdgo._internal.go.types.Types_object.Object):Bool return @:_0 __self__.value._declareInSet(_oset, _pos, _obj);
    @:keep
    @:tdfield
    public dynamic function _structType(_styp:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>, _e:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>):Void @:_0 __self__.value._structType(_styp, _e);
    @:keep
    @:tdfield
    public dynamic function _stmt(_ctxt:stdgo._internal.go.types.Types_t_stmtcontext.T_stmtContext, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Void @:_0 __self__.value._stmt(_ctxt, _s);
    @:keep
    @:tdfield
    public dynamic function _caseTypes(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _types:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, stdgo._internal.go.ast.Ast_expr.Expr>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._caseTypes(_x, _types, _seen);
    @:keep
    @:tdfield
    public dynamic function _isNil(_e:stdgo._internal.go.ast.Ast_expr.Expr):Bool return @:_0 __self__.value._isNil(_e);
    @:keep
    @:tdfield
    public dynamic function _caseValues(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _values:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _seen:stdgo._internal.go.types.Types_t_valuemap.T_valueMap):Void @:_0 __self__.value._caseValues(_x, _values, _seen);
    @:keep
    @:tdfield
    public dynamic function _suspendedCall(_keyword:stdgo.GoString, _call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>):Void @:_0 __self__.value._suspendedCall(_keyword, _call);
    @:keep
    @:tdfield
    public dynamic function _closeScope():Void @:_0 __self__.value._closeScope();
    @:keep
    @:tdfield
    public dynamic function _openScope(_node:stdgo._internal.go.ast.Ast_node.Node, _comment:stdgo.GoString):Void @:_0 __self__.value._openScope(_node, _comment);
    @:keep
    @:tdfield
    public dynamic function _multipleDefaults(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void @:_0 __self__.value._multipleDefaults(_list);
    @:keep
    @:tdfield
    public dynamic function _stmtList(_ctxt:stdgo._internal.go.types.Types_t_stmtcontext.T_stmtContext, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void @:_0 __self__.value._stmtList(_ctxt, _list);
    @:keep
    @:tdfield
    public dynamic function _simpleStmt(_s:stdgo._internal.go.ast.Ast_stmt.Stmt):Void @:_0 __self__.value._simpleStmt(_s);
    @:keep
    @:tdfield
    public dynamic function _usage(_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void @:_0 __self__.value._usage(_scope);
    @:keep
    @:tdfield
    public dynamic function _funcBody(_decl:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>, _name:stdgo.GoString, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _iota:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value._funcBody(_decl, _name, _sig, _body, _iota);
    @:keep
    @:tdfield
    public dynamic function _collectParams(_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _variadicOk:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>; var _1 : Bool; } return @:_0 __self__.value._collectParams(_scope, _list, _variadicOk);
    @:keep
    @:tdfield
    public dynamic function _funcType(_sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _recvPar:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _ftyp:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void @:_0 __self__.value._funcType(_sig, _recvPar, _ftyp);
    @:keep
    @:tdfield
    public dynamic function _isTerminatingSwitch(_body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _label:stdgo.GoString):Bool return @:_0 __self__.value._isTerminatingSwitch(_body, _label);
    @:keep
    @:tdfield
    public dynamic function _isTerminatingList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _label:stdgo.GoString):Bool return @:_0 __self__.value._isTerminatingList(_list, _label);
    @:keep
    @:tdfield
    public dynamic function _isTerminating(_s:stdgo._internal.go.ast.Ast_stmt.Stmt, _label:stdgo.GoString):Bool return @:_0 __self__.value._isTerminating(_s, _label);
    @:keep
    @:tdfield
    public dynamic function _errorUnusedPkg(_obj:stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>):Void @:_0 __self__.value._errorUnusedPkg(_obj);
    @:keep
    @:tdfield
    public dynamic function _unusedImports():Void @:_0 __self__.value._unusedImports();
    @:keep
    @:tdfield
    public dynamic function _packageObjects():Void @:_0 __self__.value._packageObjects();
    @:keep
    @:tdfield
    public dynamic function _resolveBaseTypeName(_seenPtr:Bool, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _fileScopes:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>):{ var _0 : Bool; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>; } return @:_0 __self__.value._resolveBaseTypeName(_seenPtr, _typ, _fileScopes);
    @:keep
    @:tdfield
    public dynamic function _unpackRecv(_rtyp:stdgo._internal.go.ast.Ast_expr.Expr, _unpackParams:Bool):{ var _0 : Bool; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _2 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>; } return @:_0 __self__.value._unpackRecv(_rtyp, _unpackParams);
    @:keep
    @:tdfield
    public dynamic function _collectObjects():Void @:_0 __self__.value._collectObjects();
    @:keep
    @:tdfield
    public dynamic function _importPackage(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _path:stdgo.GoString, _dir:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._importPackage(_at, _path, _dir);
    @:keep
    @:tdfield
    public dynamic function _filename(_fileNo:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._filename(_fileNo);
    @:keep
    @:tdfield
    public dynamic function _declarePkgObj(_ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _obj:stdgo._internal.go.types.Types_object.Object, _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>):Void @:_0 __self__.value._declarePkgObj(_ident, _obj, _d);
    @:keep
    @:tdfield
    public dynamic function _arityMatch(_s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>, _init:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):Void @:_0 __self__.value._arityMatch(_s, _init);
    @:keep
    @:tdfield
    public dynamic function _context():stdgo.Ref<stdgo._internal.go.types.Types_context.Context> return @:_0 __self__.value._context();
    @:keep
    @:tdfield
    public dynamic function _newNamedInstance(_pos:stdgo._internal.go.token.Token_pos.Pos, _orig:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _expanding:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value._newNamedInstance(_pos, _orig, _targs, _expanding);
    @:keep
    @:tdfield
    public dynamic function _newNamed(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _underlying:stdgo._internal.go.types.Types_type_.Type_, _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value._newNamed(_obj, _underlying, _methods);
    @:keep
    @:tdfield
    public dynamic function _reportInstanceLoop(_v:stdgo.GoInt):Void @:_0 __self__.value._reportInstanceLoop(_v);
    @:keep
    @:tdfield
    public dynamic function _monomorph():Void @:_0 __self__.value._monomorph();
    @:keep
    @:tdfield
    public dynamic function _newAssertableTo(_pos:stdgo._internal.go.token.Token_pos.Pos, v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):Bool return @:_0 __self__.value._newAssertableTo(_pos, v, t, _cause);
    @:keep
    @:tdfield
    public dynamic function _assertableTo(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):Bool return @:_0 __self__.value._assertableTo(v, t, _cause);
    @:keep
    @:tdfield
    public dynamic function _funcString(_f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _pkgInfo:Bool):stdgo.GoString return @:_0 __self__.value._funcString(_f, _pkgInfo);
    @:keep
    @:tdfield
    public dynamic function _interfacePtrError(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoString return @:_0 __self__.value._interfacePtrError(t);
    @:keep
    @:tdfield
    public dynamic function _missingMethod(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_, _static:Bool, _equivalent:(stdgo._internal.go.types.Types_type_.Type_, stdgo._internal.go.types.Types_type_.Type_) -> Bool, _cause:stdgo.Pointer<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; var _1 : Bool; } return @:_0 __self__.value._missingMethod(v, t, _static, _equivalent, _cause);
    @:keep
    @:tdfield
    public dynamic function _blockBranches(_all:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _parent:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _lstmt:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>> return @:_0 __self__.value._blockBranches(_all, _parent, _lstmt, _list);
    @:keep
    @:tdfield
    public dynamic function _labels(_body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void @:_0 __self__.value._labels(_body);
    @:keep
    @:tdfield
    public dynamic function _interfaceType(_ityp:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>, _iface:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._interfaceType(_ityp, _iface, _def);
    @:keep
    @:tdfield
    public dynamic function _newInterface():stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return @:_0 __self__.value._newInterface();
    @:keep
    @:tdfield
    public dynamic function _implements(_pos:stdgo._internal.go.token.Token_pos.Pos, v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_, _constraint:Bool, _cause:stdgo.Pointer<stdgo.GoString>):Bool return @:_0 __self__.value._implements(_pos, v, t, _constraint, _cause);
    @:keep
    @:tdfield
    public dynamic function _verify(_pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._verify(_pos, _tparams, _targs, _ctxt);
    @:keep
    @:tdfield
    public dynamic function _validateTArgLen(_pos:stdgo._internal.go.token.Token_pos.Pos, _ntparams:stdgo.GoInt, _ntargs:stdgo.GoInt):Bool return @:_0 __self__.value._validateTArgLen(_pos, _ntparams, _ntargs);
    @:keep
    @:tdfield
    public dynamic function _instance(_pos:stdgo._internal.go.token.Token_pos.Pos, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _expanding:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._instance(_pos, _orig, _targs, _expanding, _ctxt);
    @:keep
    @:tdfield
    public dynamic function _reportCycle(_cycle:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>):Void @:_0 __self__.value._reportCycle(_cycle);
    @:keep
    @:tdfield
    public dynamic function _initOrder():Void @:_0 __self__.value._initOrder();
    @:keep
    @:tdfield
    public dynamic function _renameTParams(_pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>; var _1 : stdgo._internal.go.types.Types_type_.Type_; } return @:_0 __self__.value._renameTParams(_pos, _tparams, _typ);
    @:keep
    @:tdfield
    public dynamic function _infer(_posn:stdgo._internal.go.types.Types_t_positioner.T_positioner, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _args:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>):stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> return @:_0 __self__.value._infer(_posn, _tparams, _targs, _params, _args);
    @:keep
    @:tdfield
    public dynamic function _indexedElts(_elts:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _typ:stdgo._internal.go.types.Types_type_.Type_, _length:stdgo.GoInt64):stdgo.GoInt64 return @:_0 __self__.value._indexedElts(_elts, _typ, _length);
    @:keep
    @:tdfield
    public dynamic function _isValidIndex(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _what:stdgo.GoString, _allowNegative:Bool):Bool return @:_0 __self__.value._isValidIndex(_x, _code, _what, _allowNegative);
    @:keep
    @:tdfield
    public dynamic function _index(_index:stdgo._internal.go.ast.Ast_expr.Expr, _max:stdgo.GoInt64):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt64; } return @:_0 __self__.value._index(_index, _max);
    @:keep
    @:tdfield
    public dynamic function _singleIndex(_expr:stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>):stdgo._internal.go.ast.Ast_expr.Expr return @:_0 __self__.value._singleIndex(_expr);
    @:keep
    @:tdfield
    public dynamic function _sliceExpr(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>):Void @:_0 __self__.value._sliceExpr(_x, _e);
    @:keep
    @:tdfield
    public dynamic function _indexExpr(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>):Bool return @:_0 __self__.value._indexExpr(_x, _e);
    @:keep
    @:tdfield
    public dynamic function _singleValue(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._singleValue(_x);
    @:keep
    @:tdfield
    public dynamic function _exclude(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _modeset:stdgo.GoUInt):Void @:_0 __self__.value._exclude(_x, _modeset);
    @:keep
    @:tdfield
    public dynamic function _exprOrType(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _allowGeneric:Bool):Void @:_0 __self__.value._exprOrType(_x, _e, _allowGeneric);
    @:keep
    @:tdfield
    public dynamic function _exprWithHint(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._exprWithHint(_x, _e, _hint);
    @:keep
    @:tdfield
    public dynamic function _multiExpr(_e:stdgo._internal.go.ast.Ast_expr.Expr, _allowCommaOk:Bool):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>; var _1 : Bool; } return @:_0 __self__.value._multiExpr(_e, _allowCommaOk);
    @:keep
    @:tdfield
    public dynamic function _genericExpr(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._genericExpr(_x, _e);
    @:keep
    @:tdfield
    public dynamic function _expr(t:stdgo._internal.go.types.Types_type_.Type_, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._expr(t, _x, _e);
    @:keep
    @:tdfield
    public dynamic function _typeAssertion(_e:stdgo._internal.go.ast.Ast_expr.Expr, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, t:stdgo._internal.go.types.Types_type_.Type_, _typeSwitch:Bool):Void @:_0 __self__.value._typeAssertion(_e, _x, t, _typeSwitch);
    @:keep
    @:tdfield
    public dynamic function _exprInternal(t:stdgo._internal.go.types.Types_type_.Type_, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_t_exprkind.T_exprKind return @:_0 __self__.value._exprInternal(t, _x, _e, _hint);
    @:keep
    @:tdfield
    public dynamic function _nonGeneric(t:stdgo._internal.go.types.Types_type_.Type_, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._nonGeneric(t, _x);
    @:keep
    @:tdfield
    public dynamic function _rawExpr(t:stdgo._internal.go.types.Types_type_.Type_, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _hint:stdgo._internal.go.types.Types_type_.Type_, _allowGeneric:Bool):stdgo._internal.go.types.Types_t_exprkind.T_exprKind return @:_0 __self__.value._rawExpr(t, _x, _e, _hint, _allowGeneric);
    @:keep
    @:tdfield
    public dynamic function _matchTypes(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._matchTypes(_x, _y);
    @:keep
    @:tdfield
    public dynamic function _binary(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:stdgo._internal.go.ast.Ast_expr.Expr, _rhs:stdgo._internal.go.ast.Ast_expr.Expr, _op:stdgo._internal.go.token.Token_token.Token, _opPos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._binary(_x, _e, _lhs, _rhs, _op, _opPos);
    @:keep
    @:tdfield
    public dynamic function _shift(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo._internal.go.ast.Ast_expr.Expr, _op:stdgo._internal.go.token.Token_token.Token):Void @:_0 __self__.value._shift(_x, _y, _e, _op);
    @:keep
    @:tdfield
    public dynamic function _kindString(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoString return @:_0 __self__.value._kindString(_typ);
    @:keep
    @:tdfield
    public dynamic function _incomparableCause(_typ:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoString return @:_0 __self__.value._incomparableCause(_typ);
    @:keep
    @:tdfield
    public dynamic function _comparison(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _op:stdgo._internal.go.token.Token_token.Token, _switchCase:Bool):Void @:_0 __self__.value._comparison(_x, _y, _op, _switchCase);
    @:keep
    @:tdfield
    public dynamic function _implicitTypeAndValue(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _target:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.constant.Constant_value.Value; var _2 : stdgo._internal.internal.types.errors.Errors_code.Code; } return @:_0 __self__.value._implicitTypeAndValue(_x, _target);
    @:keep
    @:tdfield
    public dynamic function _updateExprVal(_x:stdgo._internal.go.ast.Ast_expr.Expr, _val:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value._updateExprVal(_x, _val);
    @:keep
    @:tdfield
    public dynamic function _updateExprType0(_parent:stdgo._internal.go.ast.Ast_expr.Expr, _x:stdgo._internal.go.ast.Ast_expr.Expr, _typ:stdgo._internal.go.types.Types_type_.Type_, _final:Bool):Void @:_0 __self__.value._updateExprType0(_parent, _x, _typ, _final);
    @:keep
    @:tdfield
    public dynamic function _updateExprType(_x:stdgo._internal.go.ast.Ast_expr.Expr, _typ:stdgo._internal.go.types.Types_type_.Type_, _final:Bool):Void @:_0 __self__.value._updateExprType(_x, _typ, _final);
    @:keep
    @:tdfield
    public dynamic function _unary(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>):Void @:_0 __self__.value._unary(_x, _e);
    @:keep
    @:tdfield
    public dynamic function _op(_m:stdgo._internal.go.types.Types_t_oppredicates.T_opPredicates, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _op:stdgo._internal.go.token.Token_token.Token):Bool return @:_0 __self__.value._op(_m, _x, _op);
    @:keep
    @:tdfield
    public dynamic function _versionErrorf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _v:stdgo._internal.go.types.Types_t_version.T_version, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._versionErrorf(_at, _v, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _softErrorf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._softErrorf(_at, _code, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _errorf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_at, _code, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _error(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _code:stdgo._internal.internal.types.errors.Errors_code.Code, _msg:stdgo.GoString):Void @:_0 __self__.value._error(_at, _code, _msg);
    @:keep
    @:tdfield
    public dynamic function _report(_errp:stdgo.Ref<stdgo._internal.go.types.Types_t_error_.T_error_>):Void @:_0 __self__.value._report(_errp);
    @:keep
    @:tdfield
    public dynamic function _dump(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._dump(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _trace(_pos:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._trace(_pos, _format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _sprintf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return @:_0 __self__.value._sprintf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _markImports(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):Void @:_0 __self__.value._markImports(_pkg);
    @:keep
    @:tdfield
    public dynamic function _qualifier(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString return @:_0 __self__.value._qualifier(_pkg);
    @:keep
    @:tdfield
    public dynamic function _declStmt(_d:stdgo._internal.go.ast.Ast_decl.Decl):Void @:_0 __self__.value._declStmt(_d);
    @:keep
    @:tdfield
    public dynamic function _funcDecl(_obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _decl:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>):Void @:_0 __self__.value._funcDecl(_obj, _decl);
    @:keep
    @:tdfield
    public dynamic function _checkFieldUniqueness(_base:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._checkFieldUniqueness(_base);
    @:keep
    @:tdfield
    public dynamic function _collectMethods(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Void @:_0 __self__.value._collectMethods(_obj);
    @:keep
    @:tdfield
    public dynamic function _declareTypeParams(_tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> return @:_0 __self__.value._declareTypeParams(_tparams, _names);
    @:keep
    @:tdfield
    public dynamic function _bound(_x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._bound(_x);
    @:keep
    @:tdfield
    public dynamic function _collectTypeParams(_dst:stdgo.Pointer<stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void @:_0 __self__.value._collectTypeParams(_dst, _list);
    @:keep
    @:tdfield
    public dynamic function _typeDecl(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _tdecl:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._typeDecl(_obj, _tdecl, _def);
    @:keep
    @:tdfield
    public dynamic function _isImportedConstraint(_typ:stdgo._internal.go.types.Types_type_.Type_):Bool return @:_0 __self__.value._isImportedConstraint(_typ);
    @:keep
    @:tdfield
    public dynamic function _varDecl(_obj:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _lhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _init:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._varDecl(_obj, _lhs, _typ, _init);
    @:keep
    @:tdfield
    public dynamic function _constDecl(_obj:stdgo.Ref<stdgo._internal.go.types.Types_const.Const>, _typ:stdgo._internal.go.ast.Ast_expr.Expr, _init:stdgo._internal.go.ast.Ast_expr.Expr, _inherited:Bool):Void @:_0 __self__.value._constDecl(_obj, _typ, _init, _inherited);
    @:keep
    @:tdfield
    public dynamic function _walkDecl(_d:stdgo._internal.go.ast.Ast_decl.Decl, _f:stdgo._internal.go.types.Types_t_decl.T_decl -> Void):Void @:_0 __self__.value._walkDecl(_d, _f);
    @:keep
    @:tdfield
    public dynamic function _walkDecls(_decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>, _f:stdgo._internal.go.types.Types_t_decl.T_decl -> Void):Void @:_0 __self__.value._walkDecls(_decls, _f);
    @:keep
    @:tdfield
    public dynamic function _cycleError(_cycle:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>):Void @:_0 __self__.value._cycleError(_cycle);
    @:keep
    @:tdfield
    public dynamic function _validCycle(_obj:stdgo._internal.go.types.Types_object.Object):Bool return @:_0 __self__.value._validCycle(_obj);
    @:keep
    @:tdfield
    public dynamic function _objDecl(_obj:stdgo._internal.go.types.Types_object.Object, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._objDecl(_obj, _def);
    @:keep
    @:tdfield
    public dynamic function _declare(_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _obj:stdgo._internal.go.types.Types_object.Object, _pos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._declare(_scope, _id, _obj, _pos);
    @:keep
    @:tdfield
    public dynamic function _reportAltDecl(_obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._reportAltDecl(_obj);
    @:keep
    @:tdfield
    public dynamic function _conversion(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, t:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._conversion(_x, t);
    @:keep
    @:tdfield
    public dynamic function _convertUntyped(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _target:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._convertUntyped(_x, _target);
    @:keep
    @:tdfield
    public dynamic function _invalidConversion(_code:stdgo._internal.internal.types.errors.Errors_code.Code, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _target:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._invalidConversion(_code, _x, _target);
    @:keep
    @:tdfield
    public dynamic function _representation(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.internal.types.errors.Errors_code.Code; } return @:_0 __self__.value._representation(_x, _typ);
    @:keep
    @:tdfield
    public dynamic function _representable(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):Void @:_0 __self__.value._representable(_x, _typ);
    @:keep
    @:tdfield
    public dynamic function _overflow(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _opPos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._overflow(_x, _opPos);
    @:keep
    @:tdfield
    public dynamic function _recordScope(_node:stdgo._internal.go.ast.Ast_node.Node, _scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void @:_0 __self__.value._recordScope(_node, _scope);
    @:keep
    @:tdfield
    public dynamic function _recordSelection(_x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, _kind:stdgo._internal.go.types.Types_selectionkind.SelectionKind, _recv:stdgo._internal.go.types.Types_type_.Type_, _obj:stdgo._internal.go.types.Types_object.Object, _index:stdgo.Slice<stdgo.GoInt>, _indirect:Bool):Void @:_0 __self__.value._recordSelection(_x, _kind, _recv, _obj, _index, _indirect);
    @:keep
    @:tdfield
    public dynamic function _recordImplicit(_node:stdgo._internal.go.ast.Ast_node.Node, _obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._recordImplicit(_node, _obj);
    @:keep
    @:tdfield
    public dynamic function _recordUse(_id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._recordUse(_id, _obj);
    @:keep
    @:tdfield
    public dynamic function _recordDef(_id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _obj:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._recordDef(_id, _obj);
    @:keep
    @:tdfield
    public dynamic function _recordInstance(_expr:stdgo._internal.go.ast.Ast_expr.Expr, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._recordInstance(_expr, _targs, _typ);
    @:keep
    @:tdfield
    public dynamic function _recordCommaOkTypes(_x:stdgo._internal.go.ast.Ast_expr.Expr, _a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>):Void @:_0 __self__.value._recordCommaOkTypes(_x, _a);
    @:keep
    @:tdfield
    public dynamic function _recordBuiltinType(_f:stdgo._internal.go.ast.Ast_expr.Expr, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):Void @:_0 __self__.value._recordBuiltinType(_f, _sig);
    @:keep
    @:tdfield
    public dynamic function _recordTypeAndValue(_x:stdgo._internal.go.ast.Ast_expr.Expr, _mode:stdgo._internal.go.types.Types_t_operandmode.T_operandMode, _typ:stdgo._internal.go.types.Types_type_.Type_, _val:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value._recordTypeAndValue(_x, _mode, _typ, _val);
    @:keep
    @:tdfield
    public dynamic function _recordUntyped():Void @:_0 __self__.value._recordUntyped();
    @:keep
    @:tdfield
    public dynamic function _record(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._record(_x);
    @:keep
    @:tdfield
    public dynamic function _cleanup():Void @:_0 __self__.value._cleanup();
    @:keep
    @:tdfield
    public dynamic function _processDelayed(_top:stdgo.GoInt):Void @:_0 __self__.value._processDelayed(_top);
    @:keep
    @:tdfield
    public dynamic function _checkFiles(_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):stdgo.Error return @:_0 __self__.value._checkFiles(_files);
    @:keep
    @:tdfield
    public dynamic function files(_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):stdgo.Error return @:_0 __self__.value.files(_files);
    @:keep
    @:tdfield
    public dynamic function _handleBailout(_err:stdgo.Ref<stdgo.Error>):Void @:_0 __self__.value._handleBailout(_err);
    @:keep
    @:tdfield
    public dynamic function _initFiles(_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):Void @:_0 __self__.value._initFiles(_files);
    @:keep
    @:tdfield
    public dynamic function _needsCleanup(_c:stdgo._internal.go.types.Types_t_cleaner.T_cleaner):Void @:_0 __self__.value._needsCleanup(_c);
    @:keep
    @:tdfield
    public dynamic function _pop():stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value._pop();
    @:keep
    @:tdfield
    public dynamic function _push(_obj:stdgo._internal.go.types.Types_object.Object):stdgo.GoInt return @:_0 __self__.value._push(_obj);
    @:keep
    @:tdfield
    public dynamic function _later(_f:() -> Void):stdgo.Ref<stdgo._internal.go.types.Types_t_action.T_action> return @:_0 __self__.value._later(_f);
    @:keep
    @:tdfield
    public dynamic function _rememberUntyped(_e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:Bool, _mode:stdgo._internal.go.types.Types_t_operandmode.T_operandMode, _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>, _val:stdgo._internal.go.constant.Constant_value.Value):Void @:_0 __self__.value._rememberUntyped(_e, _lhs, _mode, _typ, _val);
    @:keep
    @:tdfield
    public dynamic function _isBrokenAlias(_alias:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Bool return @:_0 __self__.value._isBrokenAlias(_alias);
    @:keep
    @:tdfield
    public dynamic function _validAlias(_alias:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void @:_0 __self__.value._validAlias(_alias, _typ);
    @:keep
    @:tdfield
    public dynamic function _brokenAlias(_alias:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Void @:_0 __self__.value._brokenAlias(_alias);
    @:keep
    @:tdfield
    public dynamic function _addDeclDep(_to:stdgo._internal.go.types.Types_object.Object):Void @:_0 __self__.value._addDeclDep(_to);
    @:keep
    @:tdfield
    public dynamic function _use1(_e:stdgo._internal.go.ast.Ast_expr.Expr, _lhs:Bool):Bool return @:_0 __self__.value._use1(_e, _lhs);
    @:keep
    @:tdfield
    public dynamic function _useN(_args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _lhs:Bool):Bool return @:_0 __self__.value._useN(_args, _lhs);
    @:keep
    @:tdfield
    public dynamic function _useLHS(_args:haxe.Rest<stdgo._internal.go.ast.Ast_expr.Expr>):Bool return @:_0 __self__.value._useLHS(..._args);
    @:keep
    @:tdfield
    public dynamic function _use(_args:haxe.Rest<stdgo._internal.go.ast.Ast_expr.Expr>):Bool return @:_0 __self__.value._use(..._args);
    @:keep
    @:tdfield
    public dynamic function _selector(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _e:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, _def:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _wantType:Bool):Void @:_0 __self__.value._selector(_x, _e, _def, _wantType);
    @:keep
    @:tdfield
    public dynamic function _arguments(_call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _xlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _args:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>, _atargs:stdgo.Slice<stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>>, _atxlist:stdgo.Slice<stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return @:_0 __self__.value._arguments(_call, _sig, _targs, _xlist, _args, _atargs, _atxlist);
    @:keep
    @:tdfield
    public dynamic function _genericExprList(_elist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>; var _1 : stdgo.Slice<stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>>; var _2 : stdgo.Slice<stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>>; } return @:_0 __self__.value._genericExprList(_elist);
    @:keep
    @:tdfield
    public dynamic function _exprList(_elist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>> return @:_0 __self__.value._exprList(_elist);
    @:keep
    @:tdfield
    public dynamic function _callExpr(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>):stdgo._internal.go.types.Types_t_exprkind.T_exprKind return @:_0 __self__.value._callExpr(_x, _call);
    @:keep
    @:tdfield
    public dynamic function _instantiateSignature(_pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _typ:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _xlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return @:_0 __self__.value._instantiateSignature(_pos, _expr, _typ, _targs, _xlist);
    @:keep
    @:tdfield
    public dynamic function _funcInst(_tsig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>, _pos:stdgo._internal.go.token.Token_pos.Pos, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _ix:stdgo.Ref<stdgo._internal.go.internal.typeparams.Typeparams_indexexpr.IndexExpr>, _infer:Bool):{ var _0 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; var _1 : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>; } return @:_0 __self__.value._funcInst(_tsig, _pos, _x, _ix, _infer);
    @:keep
    @:tdfield
    public dynamic function _applyTypeFunc(_f:stdgo._internal.go.types.Types_type_.Type_ -> stdgo._internal.go.types.Types_type_.Type_, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _id:stdgo._internal.go.types.Types_t_builtinid.T_builtinId):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._applyTypeFunc(_f, _x, _id);
    @:keep
    @:tdfield
    public dynamic function _builtin(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _call:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>, _id:stdgo._internal.go.types.Types_t_builtinid.T_builtinId):Bool return @:_0 __self__.value._builtin(_x, _call, _id);
    @:keep
    @:tdfield
    public dynamic function _shortVarDecl(_pos:stdgo._internal.go.types.Types_t_positioner.T_positioner, _lhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _rhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void @:_0 __self__.value._shortVarDecl(_pos, _lhs, _rhs);
    @:keep
    @:tdfield
    public dynamic function _assignVars(_lhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _orig_rhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void @:_0 __self__.value._assignVars(_lhs, _orig_rhs);
    @:keep
    @:tdfield
    public dynamic function _initVars(_lhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _orig_rhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _returnStmt:stdgo._internal.go.ast.Ast_stmt.Stmt):Void @:_0 __self__.value._initVars(_lhs, _orig_rhs, _returnStmt);
    @:keep
    @:tdfield
    public dynamic function _returnError(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner, _lhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _rhs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>>):Void @:_0 __self__.value._returnError(_at, _lhs, _rhs);
    @:keep
    @:tdfield
    public dynamic function _assignError(_rhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _l:stdgo.GoInt, _r:stdgo.GoInt):Void @:_0 __self__.value._assignError(_rhs, _l, _r);
    @:keep
    @:tdfield
    public dynamic function _typesSummary(_list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _variadic:Bool):stdgo.GoString return @:_0 __self__.value._typesSummary(_list, _variadic);
    @:keep
    @:tdfield
    public dynamic function _assignVar(_lhs:stdgo._internal.go.ast.Ast_expr.Expr, _rhs:stdgo._internal.go.ast.Ast_expr.Expr, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._assignVar(_lhs, _rhs, _x);
    @:keep
    @:tdfield
    public dynamic function _lhsVar(_lhs:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._lhsVar(_lhs);
    @:keep
    @:tdfield
    public dynamic function _initVar(_lhs:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _context:stdgo.GoString):Void @:_0 __self__.value._initVar(_lhs, _x, _context);
    @:keep
    @:tdfield
    public dynamic function _initConst(_lhs:stdgo.Ref<stdgo._internal.go.types.Types_const.Const>, _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Void @:_0 __self__.value._initConst(_lhs, _x);
    @:keep
    @:tdfield
    public dynamic function _assignment(_x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, t:stdgo._internal.go.types.Types_type_.Type_, _context:stdgo.GoString):Void @:_0 __self__.value._assignment(_x, t, _context);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _recordTypes():Bool return @:_0 __self__.value._recordTypes();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookup(_0:stdgo.GoString):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value._lookup(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function typeOf(_0:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.typeOf(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function objectOf(_0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value.objectOf(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_checkerpointer.CheckerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
