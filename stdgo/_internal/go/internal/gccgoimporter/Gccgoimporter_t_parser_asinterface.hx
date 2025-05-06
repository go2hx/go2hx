package stdgo._internal.go.internal.gccgoimporter;
class T_parser_asInterface {
    @:keep
    @:tdfield
    public dynamic function _parsePackage():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._parsePackage();
    @:keep
    @:tdfield
    public dynamic function _parseDirective():Void @:_0 __self__.value._parseDirective();
    @:keep
    @:tdfield
    public dynamic function _parseInitDataDirective():Void @:_0 __self__.value._parseInitDataDirective();
    @:keep
    @:tdfield
    public dynamic function _maybeCreatePackage():Void @:_0 __self__.value._maybeCreatePackage();
    @:keep
    @:tdfield
    public dynamic function _parsePackageInit():stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit return @:_0 __self__.value._parsePackageInit();
    @:keep
    @:tdfield
    public dynamic function _parseSavedType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _i:stdgo.GoInt, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void @:_0 __self__.value._parseSavedType(_pkg, _i, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseTypes(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):Void @:_0 __self__.value._parseTypes(_pkg);
    @:keep
    @:tdfield
    public dynamic function _skipInlineBody():Void @:_0 __self__.value._skipInlineBody();
    @:keep
    @:tdfield
    public dynamic function _parseTypeExtended(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt; } return @:_0 __self__.value._parseTypeExtended(_pkg, ..._n);
    @:keep
    @:tdfield
    public dynamic function _parseTypeAfterAngle(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt; } return @:_0 __self__.value._parseTypeAfterAngle(_pkg, ..._n);
    @:keep
    @:tdfield
    public dynamic function _parseType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseType(_pkg, ..._n);
    @:keep
    @:tdfield
    public dynamic function _parseTypeSpec(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseTypeSpec(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parsePointerType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parsePointerType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseInterfaceType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseInterfaceType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseFunc(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value._parseFunc(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseFunctionType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return @:_0 __self__.value._parseFunctionType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseResultList(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value._parseResultList(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseParamList(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>; var _1 : Bool; } return @:_0 __self__.value._parseParamList(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseStructType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseStructType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseChanType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseChanType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseMapType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseMapType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseArrayOrSliceType(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseArrayOrSliceType(_pkg, _nlist);
    @:keep
    @:tdfield
    public dynamic function _parseInt():stdgo.GoInt return @:_0 __self__.value._parseInt();
    @:keep
    @:tdfield
    public dynamic function _parseInt64():stdgo.GoInt64 return @:_0 __self__.value._parseInt64();
    @:keep
    @:tdfield
    public dynamic function _parseNamedType(_nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._parseNamedType(_nlist);
    @:keep
    @:tdfield
    public dynamic function _update(_t:stdgo._internal.go.types.Types_type_.Type_, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void @:_0 __self__.value._update(_t, _nlist);
    @:keep
    @:tdfield
    public dynamic function _reserve(_n:stdgo.GoInt):Void @:_0 __self__.value._reserve(_n);
    @:keep
    @:tdfield
    public dynamic function _parseConst(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_const.Const> return @:_0 __self__.value._parseConst(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseConstValue(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.types.Types_type_.Type_; } return @:_0 __self__.value._parseConstValue(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseConversion(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.types.Types_type_.Type_; } return @:_0 __self__.value._parseConversion(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseVar(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value._parseVar(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseParam(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>; var _1 : Bool; } return @:_0 __self__.value._parseParam(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseField(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>; var _1 : stdgo.GoString; } return @:_0 __self__.value._parseField(_pkg);
    @:keep
    @:tdfield
    public dynamic function _parseName():stdgo.GoString return @:_0 __self__.value._parseName();
    @:keep
    @:tdfield
    public dynamic function _parseExportedName():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._parseExportedName();
    @:keep
    @:tdfield
    public dynamic function _getPkg(_pkgpath:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._getPkg(_pkgpath, _name);
    @:keep
    @:tdfield
    public dynamic function _parseQualifiedNameStr(_unquotedName:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value._parseQualifiedNameStr(_unquotedName);
    @:keep
    @:tdfield
    public dynamic function _parseUnquotedQualifiedName():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value._parseUnquotedQualifiedName();
    @:keep
    @:tdfield
    public dynamic function _parseQualifiedName():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value._parseQualifiedName();
    @:keep
    @:tdfield
    public dynamic function _next():Void @:_0 __self__.value._next();
    @:keep
    @:tdfield
    public dynamic function _parseUnquotedString():stdgo.GoString return @:_0 __self__.value._parseUnquotedString();
    @:keep
    @:tdfield
    public dynamic function _parseString():stdgo.GoString return @:_0 __self__.value._parseString();
    @:keep
    @:tdfield
    public dynamic function _expectKeyword(_keyword:stdgo.GoString):Void @:_0 __self__.value._expectKeyword(_keyword);
    @:keep
    @:tdfield
    public dynamic function _expectEOL():Void @:_0 __self__.value._expectEOL();
    @:keep
    @:tdfield
    public dynamic function _expect(_tok:stdgo.GoInt32):stdgo.GoString return @:_0 __self__.value._expect(_tok);
    @:keep
    @:tdfield
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._errorf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _error(_err:stdgo.AnyInterface):Void @:_0 __self__.value._error(_err);
    @:keep
    @:tdfield
    public dynamic function _initScanner(_filename:stdgo.GoString, _src:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value._initScanner(_filename, _src);
    @:keep
    @:tdfield
    public dynamic function _init(_filename:stdgo.GoString, _src:stdgo._internal.io.Io_reader.Reader, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>):Void @:_0 __self__.value._init(_filename, _src, _imports);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parserpointer.T_parserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
