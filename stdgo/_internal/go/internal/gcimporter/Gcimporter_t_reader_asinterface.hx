package stdgo._internal.go.internal.gcimporter;
class T_reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function _ident(_marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._ident(_marker);
    @:keep
    @:tdfield
    public dynamic function _selector():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._selector();
    @:keep
    @:tdfield
    public dynamic function _localIdent():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._localIdent();
    @:keep
    @:tdfield
    public dynamic function _qualifiedIdent():{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } return @:_0 __self__.value._qualifiedIdent();
    @:keep
    @:tdfield
    public dynamic function _method():stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value._method();
    @:keep
    @:tdfield
    public dynamic function _typeParamNames():stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> return @:_0 __self__.value._typeParamNames();
    @:keep
    @:tdfield
    public dynamic function _obj():{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; } return @:_0 __self__.value._obj();
    @:keep
    @:tdfield
    public dynamic function _param():stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value._param();
    @:keep
    @:tdfield
    public dynamic function _params():stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> return @:_0 __self__.value._params();
    @:keep
    @:tdfield
    public dynamic function _signature(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _rtparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> return @:_0 __self__.value._signature(_recv, _rtparams, _tparams);
    @:keep
    @:tdfield
    public dynamic function _interfaceType():stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return @:_0 __self__.value._interfaceType();
    @:keep
    @:tdfield
    public dynamic function _unionType():stdgo.Ref<stdgo._internal.go.types.Types_union.Union> return @:_0 __self__.value._unionType();
    @:keep
    @:tdfield
    public dynamic function _structType():stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> return @:_0 __self__.value._structType();
    @:keep
    @:tdfield
    public dynamic function _doTyp():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._doTyp();
    @:keep
    @:tdfield
    public dynamic function _typInfo():stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo return @:_0 __self__.value._typInfo();
    @:keep
    @:tdfield
    public dynamic function _typ():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typ();
    @:keep
    @:tdfield
    public dynamic function _doPkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._doPkg();
    @:keep
    @:tdfield
    public dynamic function _pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._pkg();
    @:keep
    @:tdfield
    public dynamic function _posBase():stdgo.GoString return @:_0 __self__.value._posBase();
    @:keep
    @:tdfield
    public dynamic function _pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._pos();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _scalar():stdgo._internal.go.constant.Constant_value.Value return @:_0 __self__.value._scalar();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rawVarint():stdgo.GoInt64 return @:_0 __self__.value._rawVarint();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rawUvarint():stdgo.GoUInt64 return @:_0 __self__.value._rawUvarint();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _rawReloc(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value._rawReloc(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _checkErr(_0:stdgo.Error):Void @:_0 __self__.value._checkErr(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _bigInt():stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_0 __self__.value._bigInt();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _bigFloat():stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_0 __self__.value._bigFloat();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function value():stdgo._internal.go.constant.Constant_value.Value return @:_0 __self__.value.value();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uint64():stdgo.GoUInt64 return @:_0 __self__.value.uint64();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function uint():stdgo.GoUInt return @:_0 __self__.value.uint();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function sync(_0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void @:_0 __self__.value.sync(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function strings():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.strings();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function reloc(_0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_0 __self__.value.reloc(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function int64():stdgo.GoInt64 return @:_0 __self__.value.int64();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function int_():stdgo.GoInt return @:_0 __self__.value.int_();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function code(_0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoInt return @:_0 __self__.value.code(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function bool_():Bool return @:_0 __self__.value.bool_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerpointer.T_readerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
