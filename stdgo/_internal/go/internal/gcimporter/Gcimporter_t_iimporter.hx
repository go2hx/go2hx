package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter_static_extension.T_iimporter_static_extension) class T_iimporter {
    public var _exportVersion : stdgo.GoInt64 = 0;
    public var _ipath : stdgo.GoString = "";
    public var _version : stdgo.GoInt = 0;
    public var _stringData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _stringCache : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>);
    public var _pkgCache : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _declData : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pkgIndex : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>);
    public var _typCache : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>);
    public var _tparamIndex : stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
    public var _fake : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet = ({} : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet);
    public var _interfaceList : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
    public var _later : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs> = (null : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs>);
    public function new(?_exportVersion:stdgo.GoInt64, ?_ipath:stdgo.GoString, ?_version:stdgo.GoInt, ?_stringData:stdgo.Slice<stdgo.GoUInt8>, ?_stringCache:stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>, ?_pkgCache:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_declData:stdgo.Slice<stdgo.GoUInt8>, ?_pkgIndex:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>, ?_typCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>, ?_tparamIndex:stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, ?_fake:stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet, ?_interfaceList:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>, ?_later:stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs>) {
        if (_exportVersion != null) this._exportVersion = _exportVersion;
        if (_ipath != null) this._ipath = _ipath;
        if (_version != null) this._version = _version;
        if (_stringData != null) this._stringData = _stringData;
        if (_stringCache != null) this._stringCache = _stringCache;
        if (_pkgCache != null) this._pkgCache = _pkgCache;
        if (_declData != null) this._declData = _declData;
        if (_pkgIndex != null) this._pkgIndex = _pkgIndex;
        if (_typCache != null) this._typCache = _typCache;
        if (_tparamIndex != null) this._tparamIndex = _tparamIndex;
        if (_fake != null) this._fake = _fake;
        if (_interfaceList != null) this._interfaceList = _interfaceList;
        if (_later != null) this._later = _later;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_iimporter(
_exportVersion,
_ipath,
_version,
_stringData,
_stringCache,
_pkgCache,
_declData,
_pkgIndex,
_typCache,
_tparamIndex,
_fake,
_interfaceList,
_later);
    }
}
