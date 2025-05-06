package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_checker_static_extension.Checker_static_extension) class Checker {
    public var _conf : stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = (null : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
    public var _ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    @:embedded
    public var info : stdgo.Ref<stdgo._internal.go.types.Types_info.Info> = (null : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
    public var _version : stdgo._internal.go.types.Types_t_version.T_version = ({} : stdgo._internal.go.types.Types_t_version.T_version);
    public var _nextID : stdgo.GoUInt64 = 0;
    public var _objMap : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>);
    public var _impMap : stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>));
    public var _valids : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup = ({} : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup);
    public var _pkgPathMap : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>);
    public var _seenPkgMap : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, Bool> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, Bool>);
    public var _files : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
    public var _posVers : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.token.Token_file.File>, stdgo._internal.go.types.Types_t_version.T_version> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.token.Token_file.File>, stdgo._internal.go.types.Types_t_version.T_version>);
    public var _imports : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>);
    public var _dotImportMap : stdgo.GoMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>));
    public var _recvTParamMap : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
    public var _brokenAliases : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, Bool> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, Bool>);
    public var _unionTypeSets : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
    public var _mono : stdgo._internal.go.types.Types_t_monograph.T_monoGraph = ({} : stdgo._internal.go.types.Types_t_monograph.T_monoGraph);
    public var _firstErr : stdgo.Error = (null : stdgo.Error);
    public var _methods : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>>);
    public var _untyped : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo> = (null : stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo>);
    public var _delayed : stdgo.Slice<stdgo._internal.go.types.Types_t_action.T_action> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_action.T_action>);
    public var _objPath : stdgo.Slice<stdgo._internal.go.types.Types_object.Object> = (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
    public var _cleaners : stdgo.Slice<stdgo._internal.go.types.Types_t_cleaner.T_cleaner> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_cleaner.T_cleaner>);
    @:embedded
    public var _environment : stdgo._internal.go.types.Types_t_environment.T_environment = ({} : stdgo._internal.go.types.Types_t_environment.T_environment);
    public var _indent : stdgo.GoInt = 0;
    public function new(?_conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, ?_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, ?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, ?info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>, ?_version:stdgo._internal.go.types.Types_t_version.T_version, ?_nextID:stdgo.GoUInt64, ?_objMap:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>, ?_impMap:stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_valids:stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup, ?_pkgPathMap:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, Bool>>, ?_seenPkgMap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, Bool>, ?_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, ?_posVers:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.token.Token_file.File>, stdgo._internal.go.types.Types_t_version.T_version>, ?_imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>, ?_dotImportMap:stdgo.GoMap<stdgo._internal.go.types.Types_t_dotimportkey.T_dotImportKey, stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>>, ?_recvTParamMap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_brokenAliases:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, Bool>, ?_unionTypeSets:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>, ?_mono:stdgo._internal.go.types.Types_t_monograph.T_monoGraph, ?_firstErr:stdgo.Error, ?_methods:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>>, ?_untyped:stdgo.GoMap<stdgo._internal.go.ast.Ast_expr.Expr, stdgo._internal.go.types.Types_t_exprinfo.T_exprInfo>, ?_delayed:stdgo.Slice<stdgo._internal.go.types.Types_t_action.T_action>, ?_objPath:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>, ?_cleaners:stdgo.Slice<stdgo._internal.go.types.Types_t_cleaner.T_cleaner>, ?_environment:stdgo._internal.go.types.Types_t_environment.T_environment, ?_indent:stdgo.GoInt) {
        if (_conf != null) this._conf = _conf;
        if (_ctxt != null) this._ctxt = _ctxt;
        if (_fset != null) this._fset = _fset;
        if (_pkg != null) this._pkg = _pkg;
        if (info != null) this.info = info;
        if (_version != null) this._version = _version;
        if (_nextID != null) this._nextID = _nextID;
        if (_objMap != null) this._objMap = _objMap;
        if (_impMap != null) this._impMap = _impMap;
        if (_valids != null) this._valids = _valids;
        if (_pkgPathMap != null) this._pkgPathMap = _pkgPathMap;
        if (_seenPkgMap != null) this._seenPkgMap = _seenPkgMap;
        if (_files != null) this._files = _files;
        if (_posVers != null) this._posVers = _posVers;
        if (_imports != null) this._imports = _imports;
        if (_dotImportMap != null) this._dotImportMap = _dotImportMap;
        if (_recvTParamMap != null) this._recvTParamMap = _recvTParamMap;
        if (_brokenAliases != null) this._brokenAliases = _brokenAliases;
        if (_unionTypeSets != null) this._unionTypeSets = _unionTypeSets;
        if (_mono != null) this._mono = _mono;
        if (_firstErr != null) this._firstErr = _firstErr;
        if (_methods != null) this._methods = _methods;
        if (_untyped != null) this._untyped = _untyped;
        if (_delayed != null) this._delayed = _delayed;
        if (_objPath != null) this._objPath = _objPath;
        if (_cleaners != null) this._cleaners = _cleaners;
        if (_environment != null) this._environment = _environment;
        if (_indent != null) this._indent = _indent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var objectOf(get, never) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> -> stdgo._internal.go.types.Types_object.Object;
    @:embedded
    @:embeddededffieldsffun
    public function get_objectOf():stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> -> stdgo._internal.go.types.Types_object.Object return @:check32 this.info.objectOf;
    public var typeOf(get, never) : stdgo._internal.go.ast.Ast_expr.Expr -> stdgo._internal.go.types.Types_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    public function get_typeOf():stdgo._internal.go.ast.Ast_expr.Expr -> stdgo._internal.go.types.Types_type_.Type_ return @:check32 this.info.typeOf;
    public var _lookup(get, never) : stdgo.GoString -> stdgo._internal.go.types.Types_object.Object;
    @:embedded
    @:embeddededffieldsffun
    public function get__lookup():stdgo.GoString -> stdgo._internal.go.types.Types_object.Object return @:check32 this._environment._lookup;
    public var _recordTypes(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__recordTypes():() -> Bool return @:check32 this.info._recordTypes;
    public function __copy__() {
        return new Checker(
_conf,
_ctxt,
_fset,
_pkg,
info,
_version,
_nextID,
_objMap,
_impMap,
_valids,
_pkgPathMap,
_seenPkgMap,
_files,
_posVers,
_imports,
_dotImportMap,
_recvTParamMap,
_brokenAliases,
_unionTypeSets,
_mono,
_firstErr,
_methods,
_untyped,
_delayed,
_objPath,
_cleaners,
_environment,
_indent);
    }
}
