package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension) class T_parser {
    public var _scanner : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner> = (null : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
    public var _version : stdgo.GoString = "";
    public var _tok : stdgo.GoInt32 = 0;
    public var _lit : stdgo.GoString = "";
    public var _pkgpath : stdgo.GoString = "";
    public var _pkgname : stdgo.GoString = "";
    public var _pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    public var _imports : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _typeList : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    public var _typeData : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _fixups : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>);
    public var _initdata : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData);
    public var _aliases : stdgo.GoMap<stdgo.GoInt, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
    public function new(?_scanner:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, ?_version:stdgo.GoString, ?_tok:stdgo.GoInt32, ?_lit:stdgo.GoString, ?_pkgpath:stdgo.GoString, ?_pkgname:stdgo.GoString, ?_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, ?_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_typeList:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, ?_typeData:stdgo.Slice<stdgo.GoString>, ?_fixups:stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>, ?_initdata:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData, ?_aliases:stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) {
        if (_scanner != null) this._scanner = _scanner;
        if (_version != null) this._version = _version;
        if (_tok != null) this._tok = _tok;
        if (_lit != null) this._lit = _lit;
        if (_pkgpath != null) this._pkgpath = _pkgpath;
        if (_pkgname != null) this._pkgname = _pkgname;
        if (_pkg != null) this._pkg = _pkg;
        if (_imports != null) this._imports = _imports;
        if (_typeList != null) this._typeList = _typeList;
        if (_typeData != null) this._typeData = _typeData;
        if (_fixups != null) this._fixups = _fixups;
        if (_initdata != null) this._initdata = _initdata;
        if (_aliases != null) this._aliases = _aliases;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parser(
_scanner,
_version,
_tok,
_lit,
_pkgpath,
_pkgname,
_pkg,
_imports,
_typeList,
_typeData,
_fixups,
_initdata,
_aliases);
    }
}
