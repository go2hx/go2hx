package stdgo._internal.go.doc;
class T_reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _cleanupTypes():Void @:_0 __self__.value._cleanupTypes();
    @:keep
    @:tdfield
    public dynamic function _computeMethodSets():Void @:_0 __self__.value._computeMethodSets();
    @:keep
    @:tdfield
    public dynamic function _collectEmbeddedMethods(_mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _recvTypeName:stdgo.GoString, _embeddedIsPtr:Bool, _level:stdgo.GoInt, _visited:stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet):Void @:_0 __self__.value._collectEmbeddedMethods(_mset, _typ, _recvTypeName, _embeddedIsPtr, _level, _visited);
    @:keep
    @:tdfield
    public dynamic function _readPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:stdgo._internal.go.doc.Doc_mode.Mode):Void @:_0 __self__.value._readPackage(_pkg, _mode);
    @:keep
    @:tdfield
    public dynamic function _readFile(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void @:_0 __self__.value._readFile(_src);
    @:keep
    @:tdfield
    public dynamic function _readNotes(_comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void @:_0 __self__.value._readNotes(_comments);
    @:keep
    @:tdfield
    public dynamic function _readNote(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Void @:_0 __self__.value._readNote(_list);
    @:keep
    @:tdfield
    public dynamic function _readFunc(_fun:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void @:_0 __self__.value._readFunc(_fun);
    @:keep
    @:tdfield
    public dynamic function _isPredeclared(_n:stdgo.GoString):Bool return @:_0 __self__.value._isPredeclared(_n);
    @:keep
    @:tdfield
    public dynamic function _readType(_decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):Void @:_0 __self__.value._readType(_decl, _spec);
    @:keep
    @:tdfield
    public dynamic function _readValue(_decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void @:_0 __self__.value._readValue(_decl);
    @:keep
    @:tdfield
    public dynamic function _remember(_predecl:stdgo.GoString, _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Void @:_0 __self__.value._remember(_predecl, _typ);
    @:keep
    @:tdfield
    public dynamic function _readDoc(_comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void @:_0 __self__.value._readDoc(_comment);
    @:keep
    @:tdfield
    public dynamic function _recordAnonymousField(_parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fieldType:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString return @:_0 __self__.value._recordAnonymousField(_parent, _fieldType);
    @:keep
    @:tdfield
    public dynamic function _lookupType(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> return @:_0 __self__.value._lookupType(_name);
    @:keep
    @:tdfield
    public dynamic function _isVisible(_name:stdgo.GoString):Bool return @:_0 __self__.value._isVisible(_name);
    @:keep
    @:tdfield
    public dynamic function _fileExports(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void @:_0 __self__.value._fileExports(_src);
    @:keep
    @:tdfield
    public dynamic function _filterDecl(_decl:stdgo._internal.go.ast.Ast_decl.Decl):Bool return @:_0 __self__.value._filterDecl(_decl);
    @:keep
    @:tdfield
    public dynamic function _filterSpecList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> return @:_0 __self__.value._filterSpecList(_list, _tok);
    @:keep
    @:tdfield
    public dynamic function _filterSpec(_spec:stdgo._internal.go.ast.Ast_spec.Spec):Bool return @:_0 __self__.value._filterSpec(_spec);
    @:keep
    @:tdfield
    public dynamic function _filterType(_parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):Void @:_0 __self__.value._filterType(_parent, _typ);
    @:keep
    @:tdfield
    public dynamic function _filterParamList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void @:_0 __self__.value._filterParamList(_fields);
    @:keep
    @:tdfield
    public dynamic function _filterFieldList(_parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _ityp:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Bool return @:_0 __self__.value._filterFieldList(_parent, _fields, _ityp);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.Doc_t_readerpointer.T_readerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
