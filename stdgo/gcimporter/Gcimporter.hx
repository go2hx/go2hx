package stdgo.gcimporter;
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_intReader_static_extension) @:dox(hide) abstract T_intReader(stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader to stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader {
    public var reader(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get_reader():stdgo._internal.bufio.Bufio_reader.Reader return this.reader;
    function set_reader(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this.reader = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public function new(?reader:stdgo._internal.bufio.Bufio_reader.Reader, ?_path:String) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader((reader : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), (_path : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_ident_static_extension) @:dox(hide) abstract T_ident(stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident to stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident {
    public var _pkg(get, set) : stdgo._internal.go.types.Types_package.Package;
    function get__pkg():stdgo._internal.go.types.Types_package.Package return this._pkg;
    function set__pkg(v:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_package.Package {
        this._pkg = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public function new(?_pkg:stdgo._internal.go.types.Types_package.Package, ?_name:String) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident((_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), (_name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_setConstraintArgs_static_extension) @:dox(hide) abstract T_setConstraintArgs(stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs to stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs {
    public var _t(get, set) : stdgo._internal.go.types.Types_typeparam.TypeParam;
    function get__t():stdgo._internal.go.types.Types_typeparam.TypeParam return this._t;
    function set__t(v:stdgo._internal.go.types.Types_typeparam.TypeParam):stdgo._internal.go.types.Types_typeparam.TypeParam {
        this._t = (v : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        return v;
    }
    public var _constraint(get, set) : stdgo._internal.go.types.Types_type_.Type_;
    function get__constraint():stdgo._internal.go.types.Types_type_.Type_ return this._constraint;
    function set__constraint(v:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        this._constraint = v;
        return v;
    }
    public function new(?_t:stdgo._internal.go.types.Types_typeparam.TypeParam, ?_constraint:stdgo._internal.go.types.Types_type_.Type_) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs((_t : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _constraint);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_iimporter_static_extension) @:dox(hide) abstract T_iimporter(stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter to stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter {
    public var _exportVersion(get, set) : haxe.Int64;
    function get__exportVersion():haxe.Int64 return this._exportVersion;
    function set__exportVersion(v:haxe.Int64):haxe.Int64 {
        this._exportVersion = (v : stdgo.GoInt64);
        return v;
    }
    public var _ipath(get, set) : String;
    function get__ipath():String return this._ipath;
    function set__ipath(v:String):String {
        this._ipath = (v : stdgo.GoString);
        return v;
    }
    public var _version(get, set) : StdTypes.Int;
    function get__version():StdTypes.Int return this._version;
    function set__version(v:StdTypes.Int):StdTypes.Int {
        this._version = (v : stdgo.GoInt);
        return v;
    }
    public var _stringData(get, set) : Array<std.UInt>;
    function get__stringData():Array<std.UInt> return [for (i in this._stringData) i];
    function set__stringData(v:Array<std.UInt>):Array<std.UInt> {
        this._stringData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _stringCache(get, set) : Map<haxe.UInt64, String>;
    function get__stringCache():Map<haxe.UInt64, String> return {
        final __obj__:Map<haxe.UInt64, String> = [];
        for (key => value in this._stringCache) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__stringCache(v:Map<haxe.UInt64, String>):Map<haxe.UInt64, String> {
        this._stringCache = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var _pkgCache(get, set) : Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package>;
    function get__pkgCache():Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package> return {
        final __obj__:Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package> = [];
        for (key => value in this._pkgCache) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__pkgCache(v:Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package>):Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package> {
        this._pkgCache = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        return v;
    }
    public var _declData(get, set) : Array<std.UInt>;
    function get__declData():Array<std.UInt> return [for (i in this._declData) i];
    function set__declData(v:Array<std.UInt>):Array<std.UInt> {
        this._declData = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pkgIndex(get, set) : Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>>;
    function get__pkgIndex():Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>> return {
        final __obj__:Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>> = [];
        for (key => value in this._pkgIndex) {
            __obj__[key] = {
                final __obj__:Map<String, haxe.UInt64> = [];
                for (key => value in value) {
                    __obj__[key] = value;
                };
                __obj__;
            };
        };
        __obj__;
    };
    function set__pkgIndex(v:Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>>):Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>> {
        this._pkgIndex = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>();
            for (key => value in v) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = {
                    final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>();
                    for (key => value in value) {
                        __obj__[(key : stdgo.GoString)] = (value : stdgo.GoUInt64);
                    };
                    __obj__;
                };
            };
            __obj__;
        };
        return v;
    }
    public var _typCache(get, set) : Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_>;
    function get__typCache():Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_> return {
        final __obj__:Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_> = [];
        for (key => value in this._typCache) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__typCache(v:Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_>):Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_> {
        this._typCache = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _tparamIndex(get, set) : Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam>;
    function get__tparamIndex():Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam> return {
        final __obj__:Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam> = [];
        for (key => value in this._tparamIndex) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__tparamIndex(v:Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam>):Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam> {
        this._tparamIndex = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
            };
            __obj__;
        };
        return v;
    }
    public var _fake(get, set) : T_fakeFileSet;
    function get__fake():T_fakeFileSet return this._fake;
    function set__fake(v:T_fakeFileSet):T_fakeFileSet {
        this._fake = v;
        return v;
    }
    public var _interfaceList(get, set) : Array<stdgo._internal.go.types.Types_interface.Interface>;
    function get__interfaceList():Array<stdgo._internal.go.types.Types_interface.Interface> return [for (i in this._interfaceList) i];
    function set__interfaceList(v:Array<stdgo._internal.go.types.Types_interface.Interface>):Array<stdgo._internal.go.types.Types_interface.Interface> {
        this._interfaceList = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
        return v;
    }
    public var _later(get, set) : Array<T_setConstraintArgs>;
    function get__later():Array<T_setConstraintArgs> return [for (i in this._later) i];
    function set__later(v:Array<T_setConstraintArgs>):Array<T_setConstraintArgs> {
        this._later = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs>);
        return v;
    }
    public function new(?_exportVersion:haxe.Int64, ?_ipath:String, ?_version:StdTypes.Int, ?_stringData:Array<std.UInt>, ?_stringCache:Map<haxe.UInt64, String>, ?_pkgCache:Map<haxe.UInt64, stdgo._internal.go.types.Types_package.Package>, ?_declData:Array<std.UInt>, ?_pkgIndex:Map<stdgo._internal.go.types.Types_package.Package, Map<String, haxe.UInt64>>, ?_typCache:Map<haxe.UInt64, stdgo._internal.go.types.Types_type_.Type_>, ?_tparamIndex:Map<T_ident, stdgo._internal.go.types.Types_typeparam.TypeParam>, ?_fake:T_fakeFileSet, ?_interfaceList:Array<stdgo._internal.go.types.Types_interface.Interface>, ?_later:Array<T_setConstraintArgs>) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter(
(_exportVersion : stdgo.GoInt64),
(_ipath : stdgo.GoString),
(_version : stdgo.GoInt),
([for (i in _stringData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>();
        for (key => value in _stringCache) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.GoString);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _pkgCache) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    },
([for (i in _declData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
{
        final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>>();
        for (key => value in _pkgIndex) {
            __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = {
                final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>();
                for (key => value in value) {
                    __obj__[(key : stdgo.GoString)] = (value : stdgo.GoUInt64);
                };
                __obj__;
            };
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.go.types.Types_type_.Type_>();
        for (key => value in _typCache) {
            __obj__[(key : stdgo.GoUInt64)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident.T_ident, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
        for (key => value in _tparamIndex) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>);
        };
        __obj__;
    },
_fake,
([for (i in _interfaceList) (i : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>),
([for (i in _later) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargs.T_setConstraintArgs>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_importReader_static_extension) @:dox(hide) abstract T_importReader(stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader to stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader {
    public var _p(get, set) : T_iimporter;
    function get__p():T_iimporter return this._p;
    function set__p(v:T_iimporter):T_iimporter {
        this._p = (v : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
        return v;
    }
    public var _declReader(get, set) : stdgo._internal.bytes.Bytes_reader.Reader;
    function get__declReader():stdgo._internal.bytes.Bytes_reader.Reader return this._declReader;
    function set__declReader(v:stdgo._internal.bytes.Bytes_reader.Reader):stdgo._internal.bytes.Bytes_reader.Reader {
        this._declReader = v;
        return v;
    }
    public var _currPkg(get, set) : stdgo._internal.go.types.Types_package.Package;
    function get__currPkg():stdgo._internal.go.types.Types_package.Package return this._currPkg;
    function set__currPkg(v:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_package.Package {
        this._currPkg = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return v;
    }
    public var _prevFile(get, set) : String;
    function get__prevFile():String return this._prevFile;
    function set__prevFile(v:String):String {
        this._prevFile = (v : stdgo.GoString);
        return v;
    }
    public var _prevLine(get, set) : haxe.Int64;
    function get__prevLine():haxe.Int64 return this._prevLine;
    function set__prevLine(v:haxe.Int64):haxe.Int64 {
        this._prevLine = (v : stdgo.GoInt64);
        return v;
    }
    public var _prevColumn(get, set) : haxe.Int64;
    function get__prevColumn():haxe.Int64 return this._prevColumn;
    function set__prevColumn(v:haxe.Int64):haxe.Int64 {
        this._prevColumn = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_p:T_iimporter, ?_declReader:stdgo._internal.bytes.Bytes_reader.Reader, ?_currPkg:stdgo._internal.go.types.Types_package.Package, ?_prevFile:String, ?_prevLine:haxe.Int64, ?_prevColumn:haxe.Int64) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader((_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>), _declReader, (_currPkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), (_prevFile : stdgo.GoString), (_prevLine : stdgo.GoInt64), (_prevColumn : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_fakeFileSet_static_extension) @:dox(hide) abstract T_fakeFileSet(stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet to stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet {
    public var _fset(get, set) : stdgo._internal.go.token.Token_fileset.FileSet;
    function get__fset():stdgo._internal.go.token.Token_fileset.FileSet return this._fset;
    function set__fset(v:stdgo._internal.go.token.Token_fileset.FileSet):stdgo._internal.go.token.Token_fileset.FileSet {
        this._fset = (v : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        return v;
    }
    public var _files(get, set) : Map<String, T_fileInfo>;
    function get__files():Map<String, T_fileInfo> return {
        final __obj__:Map<String, T_fileInfo> = [];
        for (key => value in this._files) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__files(v:Map<String, T_fileInfo>):Map<String, T_fileInfo> {
        this._files = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_fset:stdgo._internal.go.token.Token_fileset.FileSet, ?_files:Map<String, T_fileInfo>) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet((_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>>();
        for (key => value in _files) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_fileInfo_static_extension) @:dox(hide) abstract T_fileInfo(stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo to stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo {
    public var _file(get, set) : stdgo._internal.go.token.Token_file.File;
    function get__file():stdgo._internal.go.token.Token_file.File return this._file;
    function set__file(v:stdgo._internal.go.token.Token_file.File):stdgo._internal.go.token.Token_file.File {
        this._file = (v : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
        return v;
    }
    public var _lastline(get, set) : StdTypes.Int;
    function get__lastline():StdTypes.Int return this._lastline;
    function set__lastline(v:StdTypes.Int):StdTypes.Int {
        this._lastline = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_file:stdgo._internal.go.token.Token_file.File, ?_lastline:StdTypes.Int) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfo.T_fileInfo((_file : stdgo.Ref<stdgo._internal.go.token.Token_file.File>), (_lastline : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_anyType_static_extension) @:dox(hide) abstract T_anyType(stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType to stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType {
    public function new() this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype.T_anyType();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_derivedInfo_static_extension) @:dox(hide) abstract T_derivedInfo(stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo to stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo {
    public var _idx(get, set) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index;
    function get__idx():stdgo._internal.internal.pkgbits.Pkgbits_index.Index return this._idx;
    function set__idx(v:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        this._idx = v;
        return v;
    }
    public var _needed(get, set) : Bool;
    function get__needed():Bool return this._needed;
    function set__needed(v:Bool):Bool {
        this._needed = v;
        return v;
    }
    public function new(?_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, ?_needed:Bool) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo(_idx, _needed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_typeInfo_static_extension) @:dox(hide) abstract T_typeInfo(stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo to stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo {
    public var _idx(get, set) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index;
    function get__idx():stdgo._internal.internal.pkgbits.Pkgbits_index.Index return this._idx;
    function set__idx(v:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        this._idx = v;
        return v;
    }
    public var _derived(get, set) : Bool;
    function get__derived():Bool return this._derived;
    function set__derived(v:Bool):Bool {
        this._derived = v;
        return v;
    }
    public function new(?_idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, ?_derived:Bool) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo(_idx, _derived);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_pkgReader_static_extension) @:dox(hide) abstract T_pkgReader(stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader to stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader {
    public var pkgDecoder(get, set) : stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder;
    function get_pkgDecoder():stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder return this.pkgDecoder;
    function set_pkgDecoder(v:stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder):stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder {
        this.pkgDecoder = v;
        return v;
    }
    public var _fake(get, set) : T_fakeFileSet;
    function get__fake():T_fakeFileSet return this._fake;
    function set__fake(v:T_fakeFileSet):T_fakeFileSet {
        this._fake = v;
        return v;
    }
    public var _ctxt(get, set) : stdgo._internal.go.types.Types_context.Context;
    function get__ctxt():stdgo._internal.go.types.Types_context.Context return this._ctxt;
    function set__ctxt(v:stdgo._internal.go.types.Types_context.Context):stdgo._internal.go.types.Types_context.Context {
        this._ctxt = (v : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
        return v;
    }
    public var _imports(get, set) : Map<String, stdgo._internal.go.types.Types_package.Package>;
    function get__imports():Map<String, stdgo._internal.go.types.Types_package.Package> return {
        final __obj__:Map<String, stdgo._internal.go.types.Types_package.Package> = [];
        for (key => value in this._imports) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__imports(v:Map<String, stdgo._internal.go.types.Types_package.Package>):Map<String, stdgo._internal.go.types.Types_package.Package> {
        this._imports = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        return v;
    }
    public var _posBases(get, set) : Array<String>;
    function get__posBases():Array<String> return [for (i in this._posBases) i];
    function set__posBases(v:Array<String>):Array<String> {
        this._posBases = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _pkgs(get, set) : Array<stdgo._internal.go.types.Types_package.Package>;
    function get__pkgs():Array<stdgo._internal.go.types.Types_package.Package> return [for (i in this._pkgs) i];
    function set__pkgs(v:Array<stdgo._internal.go.types.Types_package.Package>):Array<stdgo._internal.go.types.Types_package.Package> {
        this._pkgs = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
        return v;
    }
    public var _typs(get, set) : Array<stdgo._internal.go.types.Types_type_.Type_>;
    function get__typs():Array<stdgo._internal.go.types.Types_type_.Type_> return [for (i in this._typs) i];
    function set__typs(v:Array<stdgo._internal.go.types.Types_type_.Type_>):Array<stdgo._internal.go.types.Types_type_.Type_> {
        this._typs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public var _laterFns(get, set) : Array<() -> Void>;
    function get__laterFns():Array<() -> Void> return [for (i in this._laterFns) () -> i()];
    function set__laterFns(v:Array<() -> Void>):Array<() -> Void> {
        this._laterFns = ([for (i in v) i] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _ifaces(get, set) : Array<stdgo._internal.go.types.Types_interface.Interface>;
    function get__ifaces():Array<stdgo._internal.go.types.Types_interface.Interface> return [for (i in this._ifaces) i];
    function set__ifaces(v:Array<stdgo._internal.go.types.Types_interface.Interface>):Array<stdgo._internal.go.types.Types_interface.Interface> {
        this._ifaces = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>);
        return v;
    }
    public function new(?pkgDecoder:stdgo._internal.internal.pkgbits.Pkgbits_pkgdecoder.PkgDecoder, ?_fake:T_fakeFileSet, ?_ctxt:stdgo._internal.go.types.Types_context.Context, ?_imports:Map<String, stdgo._internal.go.types.Types_package.Package>, ?_posBases:Array<String>, ?_pkgs:Array<stdgo._internal.go.types.Types_package.Package>, ?_typs:Array<stdgo._internal.go.types.Types_type_.Type_>, ?_laterFns:Array<() -> Void>, ?_ifaces:Array<stdgo._internal.go.types.Types_interface.Interface>) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader(pkgDecoder, _fake, (_ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _imports) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    }, ([for (i in _posBases) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _pkgs) (i : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>), ([for (i in _typs) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), ([for (i in _laterFns) i] : stdgo.Slice<() -> Void>), ([for (i in _ifaces) (i : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_reader_static_extension) @:dox(hide) abstract T_reader(stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader to stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader {
    public var decoder(get, set) : stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder;
    function get_decoder():stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder return this.decoder;
    function set_decoder(v:stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        this.decoder = v;
        return v;
    }
    public var _p(get, set) : T_pkgReader;
    function get__p():T_pkgReader return this._p;
    function set__p(v:T_pkgReader):T_pkgReader {
        this._p = (v : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return v;
    }
    public var _dict(get, set) : T_readerDict;
    function get__dict():T_readerDict return this._dict;
    function set__dict(v:T_readerDict):T_readerDict {
        this._dict = (v : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>);
        return v;
    }
    public function new(?decoder:stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder, ?_p:T_pkgReader, ?_dict:T_readerDict) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader(decoder, (_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>), (_dict : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gcimporter.Gcimporter.T_readerDict_static_extension) @:dox(hide) abstract T_readerDict(stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict) from stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict to stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict {
    public var _bounds(get, set) : Array<T_typeInfo>;
    function get__bounds():Array<T_typeInfo> return [for (i in this._bounds) i];
    function set__bounds(v:Array<T_typeInfo>):Array<T_typeInfo> {
        this._bounds = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>);
        return v;
    }
    public var _tparams(get, set) : Array<stdgo._internal.go.types.Types_typeparam.TypeParam>;
    function get__tparams():Array<stdgo._internal.go.types.Types_typeparam.TypeParam> return [for (i in this._tparams) i];
    function set__tparams(v:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>):Array<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        this._tparams = ([for (i in v) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return v;
    }
    public var _derived(get, set) : Array<T_derivedInfo>;
    function get__derived():Array<T_derivedInfo> return [for (i in this._derived) i];
    function set__derived(v:Array<T_derivedInfo>):Array<T_derivedInfo> {
        this._derived = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>);
        return v;
    }
    public var _derivedTypes(get, set) : Array<stdgo._internal.go.types.Types_type_.Type_>;
    function get__derivedTypes():Array<stdgo._internal.go.types.Types_type_.Type_> return [for (i in this._derivedTypes) i];
    function set__derivedTypes(v:Array<stdgo._internal.go.types.Types_type_.Type_>):Array<stdgo._internal.go.types.Types_type_.Type_> {
        this._derivedTypes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public function new(?_bounds:Array<T_typeInfo>, ?_tparams:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>, ?_derived:Array<T_derivedInfo>, ?_derivedTypes:Array<stdgo._internal.go.types.Types_type_.Type_>) this = new stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict(([for (i in _bounds) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo>), ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), ([for (i in _derived) i] : stdgo.Slice<stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfo.T_derivedInfo>), ([for (i in _derivedTypes) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_byPath = stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath.T_byPath;
@:dox(hide) typedef T_itag = stdgo._internal.go.internal.gcimporter.Gcimporter_t_itag.T_itag;
@:dox(hide) typedef T_intReaderPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreaderpointer.T_intReaderPointer;
@:dox(hide) class T_intReader_static_extension {
    static public function _uint64(_r:T_intReader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._uint64(_r);
    }
    static public function _int64(_r:T_intReader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._int64(_r);
    }
    public static function _writeBuf(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._writeBuf(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _reset(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:Array<std.UInt>, _1:stdgo._internal.io.Io_reader.Reader):Void {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._reset(__self__, _0, _1);
    }
    public static function _readErr(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._readErr(__self__);
    }
    public static function _fill(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):Void {
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._fill(__self__);
    }
    public static function _collectFragments(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:std.UInt):stdgo.Tuple.Tuple4<Array<Array<std.UInt>>, Array<std.UInt>, StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension._collectFragments(__self__, _0);
            { _0 : [for (i in obj._0) [for (i in i) i]], _1 : [for (i in obj._1) i], _2 : obj._2, _3 : obj._3 };
        };
    }
    public static function writeTo(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.unreadByte(__self__);
    }
    public static function size(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.size(__self__);
    }
    public static function reset(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_reader.Reader):Void {
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.reset(__self__, _0);
    }
    public static function readString(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readSlice(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readLine(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Tuple.Tuple3<Array<std.UInt>, Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readLine(__self__);
            { _0 : [for (i in obj._0) i], _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function peek(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:StdTypes.Int):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.peek(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function discard(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.discard(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function buffered(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader_static_extension.T_intReader_static_extension.buffered(__self__);
    }
}
@:dox(hide) typedef T_identPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_identpointer.T_identPointer;
@:dox(hide) class T_ident_static_extension {

}
@:dox(hide) typedef T_setConstraintArgsPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_setconstraintargspointer.T_setConstraintArgsPointer;
@:dox(hide) class T_setConstraintArgs_static_extension {

}
@:dox(hide) typedef T_iimporterPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporterpointer.T_iimporterPointer;
@:dox(hide) class T_iimporter_static_extension {
    static public function _typAt(_p:T_iimporter, _off:haxe.UInt64, _base:stdgo._internal.go.types.Types_named.Named):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
        final _off = (_off : stdgo.GoUInt64);
        final _base = (_base : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter_static_extension.T_iimporter_static_extension._typAt(_p, _off, _base);
    }
    static public function _pkgAt(_p:T_iimporter, _off:haxe.UInt64):stdgo._internal.go.types.Types_package.Package {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
        final _off = (_off : stdgo.GoUInt64);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter_static_extension.T_iimporter_static_extension._pkgAt(_p, _off);
    }
    static public function _stringAt(_p:T_iimporter, _off:haxe.UInt64):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
        final _off = (_off : stdgo.GoUInt64);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter_static_extension.T_iimporter_static_extension._stringAt(_p, _off);
    }
    static public function _doDecl(_p:T_iimporter, _pkg:stdgo._internal.go.types.Types_package.Package, _name:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter.T_iimporter>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporter_static_extension.T_iimporter_static_extension._doDecl(_p, _pkg, _name);
    }
}
@:dox(hide) typedef T_importReaderPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreaderpointer.T_importReaderPointer;
@:dox(hide) class T_importReader_static_extension {
    static public function _byte(_r:T_importReader):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._byte(_r);
    }
    static public function _uint64(_r:T_importReader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._uint64(_r);
    }
    static public function _int64(_r:T_importReader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._int64(_r);
    }
    static public function _bool(_r:T_importReader):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._bool(_r);
    }
    static public function _param(_r:T_importReader):stdgo._internal.go.types.Types_var.Var {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._param(_r);
    }
    static public function _paramList(_r:T_importReader):stdgo._internal.go.types.Types_tuple.Tuple {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._paramList(_r);
    }
    static public function _tparamList(_r:T_importReader):Array<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return [for (i in stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._tparamList(_r)) i];
    }
    static public function _signature(_r:T_importReader, _recv:stdgo._internal.go.types.Types_var.Var, _rparams:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>, _tparams:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_signature.Signature {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        final _recv = (_recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _rparams = ([for (i in _rparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._signature(_r, _recv, _rparams, _tparams);
    }
    static public function _kind(_r:T_importReader):T_itag {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._kind(_r);
    }
    static public function _doType(_r:T_importReader, _base:stdgo._internal.go.types.Types_named.Named):stdgo._internal.go.types.Types_type_.Type_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        final _base = (_base : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._doType(_r, _base);
    }
    static public function _string(_r:T_importReader):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._string(_r);
    }
    static public function _pkg(_r:T_importReader):stdgo._internal.go.types.Types_package.Package {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._pkg(_r);
    }
    static public function _typ(_r:T_importReader):stdgo._internal.go.types.Types_type_.Type_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._typ(_r);
    }
    static public function _posv1(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._posv1(_r);
    }
    static public function _posv0(_r:T_importReader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._posv0(_r);
    }
    static public function _pos(_r:T_importReader):stdgo._internal.go.token.Token_pos.Pos {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._pos(_r);
    }
    static public function _qualifiedIdent(_r:T_importReader):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._qualifiedIdent(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _ident(_r:T_importReader):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._ident(_r);
    }
    static public function _mpfloat(_r:T_importReader, _typ:stdgo._internal.go.types.Types_basic.Basic):stdgo._internal.go.constant.Constant_value.Value {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._mpfloat(_r, _typ);
    }
    static public function _mpint(_r:T_importReader, _x:stdgo._internal.math.big.Big_int_.Int_, _typ:stdgo._internal.go.types.Types_basic.Basic):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        final _typ = (_typ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._mpint(_r, _x, _typ);
    }
    static public function _value(_r:T_importReader):stdgo.Tuple<stdgo._internal.go.types.Types_type_.Type_, stdgo._internal.go.constant.Constant_value.Value> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._value(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _declare(_r:T_importReader, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._declare(_r, _obj);
    }
    static public function _obj(_r:T_importReader, _name:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader.T_importReader>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_importreader_static_extension.T_importReader_static_extension._obj(_r, _name);
    }
}
@:dox(hide) typedef T_fakeFileSetPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefilesetpointer.T_fakeFileSetPointer;
@:dox(hide) class T_fakeFileSet_static_extension {
    static public function _setLines(_s:T_fakeFileSet):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset_static_extension.T_fakeFileSet_static_extension._setLines(_s);
    }
    static public function _pos(_s:T_fakeFileSet, _file:String, _line:StdTypes.Int, _column:StdTypes.Int):stdgo._internal.go.token.Token_pos.Pos {
        final _s = (_s : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset.T_fakeFileSet>);
        final _file = (_file : stdgo.GoString);
        final _line = (_line : stdgo.GoInt);
        final _column = (_column : stdgo.GoInt);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefileset_static_extension.T_fakeFileSet_static_extension._pos(_s, _file, _line, _column);
    }
}
@:dox(hide) typedef T_fileInfoPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_fileinfopointer.T_fileInfoPointer;
@:dox(hide) class T_fileInfo_static_extension {

}
@:dox(hide) typedef T_anyTypePointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytypepointer.T_anyTypePointer;
@:dox(hide) class T_anyType_static_extension {
    static public function string(_t:T_anyType):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype_static_extension.T_anyType_static_extension.string(_t);
    }
    static public function underlying(_t:T_anyType):stdgo._internal.go.types.Types_type_.Type_ {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_anytype_static_extension.T_anyType_static_extension.underlying(_t);
    }
}
@:dox(hide) typedef T_derivedInfoPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_derivedinfopointer.T_derivedInfoPointer;
@:dox(hide) class T_derivedInfo_static_extension {

}
@:dox(hide) typedef T_typeInfoPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfopointer.T_typeInfoPointer;
@:dox(hide) class T_typeInfo_static_extension {

}
@:dox(hide) typedef T_pkgReaderPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreaderpointer.T_pkgReaderPointer;
@:dox(hide) class T_pkgReader_static_extension {
    static public function _objDictIdx(_pr:T_pkgReader, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):T_readerDict {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._objDictIdx(_pr, _idx);
    }
    static public function _objIdx(_pr:T_pkgReader, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._objIdx(_pr, _idx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _typIdx(_pr:T_pkgReader, _info:T_typeInfo, _dict:T_readerDict):stdgo._internal.go.types.Types_type_.Type_ {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        final _dict = (_dict : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdict.T_readerDict>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._typIdx(_pr, _info, _dict);
    }
    static public function _pkgIdx(_pr:T_pkgReader, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.go.types.Types_package.Package {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._pkgIdx(_pr, _idx);
    }
    static public function _posBaseIdx(_pr:T_pkgReader, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):String {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._posBaseIdx(_pr, _idx);
    }
    static public function _retireReader(_pr:T_pkgReader, _r:T_reader):Void {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._retireReader(_pr, _r);
    }
    static public function _tempReader(_pr:T_pkgReader, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):T_reader {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._tempReader(_pr, _k, _idx, _marker);
    }
    static public function _newReader(_pr:T_pkgReader, _k:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):T_reader {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._newReader(_pr, _k, _idx, _marker);
    }
    static public function _later(_pr:T_pkgReader, _fn:() -> Void):Void {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader>);
        final _fn = _fn;
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension._later(_pr, _fn);
    }
    public static function totalElems(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.totalElems(__self__);
    }
    public static function tempDecoderRaw(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.tempDecoderRaw(__self__, _0, _1);
    }
    public static function tempDecoder(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.tempDecoder(__self__, _0, _1, _2);
    }
    public static function syncMarkers(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):Bool {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.syncMarkers(__self__);
    }
    public static function stringIdx(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.stringIdx(__self__, _0);
    }
    public static function retireDecoder(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder>);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.retireDecoder(__self__, _0);
    }
    public static function pkgPath(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.pkgPath(__self__);
    }
    public static function peekPkgPath(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.peekPkgPath(__self__, _0);
    }
    public static function peekObj(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo.Tuple.Tuple3<String, String, stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj> {
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.peekObj(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function numElems(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.numElems(__self__, _0);
    }
    public static function newDecoderRaw(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.newDecoderRaw(__self__, _0, _1);
    }
    public static function newDecoder(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index, _2:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo._internal.internal.pkgbits.Pkgbits_decoder.Decoder {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.newDecoder(__self__, _0, _1, _2);
    }
    public static function fingerprint(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader):haxe.ds.Vector<std.UInt> {
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.fingerprint(__self__)) i]);
    }
    public static function dataIdx(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.dataIdx(__self__, _0, _1);
    }
    public static function absIdx(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader.T_pkgReader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo._internal.internal.pkgbits.Pkgbits_index.Index):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_pkgreader_static_extension.T_pkgReader_static_extension.absIdx(__self__, _0, _1);
    }
}
@:dox(hide) typedef T_readerPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerpointer.T_readerPointer;
@:dox(hide) class T_reader_static_extension {
    static public function _ident(_r:T_reader, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._ident(_r, _marker);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _selector(_r:T_reader):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._selector(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _localIdent(_r:T_reader):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._localIdent(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _qualifiedIdent(_r:T_reader):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._qualifiedIdent(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _method(_r:T_reader):stdgo._internal.go.types.Types_func.Func {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._method(_r);
    }
    static public function _typeParamNames(_r:T_reader):Array<stdgo._internal.go.types.Types_typeparam.TypeParam> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return [for (i in stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._typeParamNames(_r)) i];
    }
    static public function _obj(_r:T_reader):stdgo.Tuple<stdgo._internal.go.types.Types_object.Object, Array<stdgo._internal.go.types.Types_type_.Type_>> {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._obj(_r);
            { _0 : obj._0, _1 : [for (i in obj._1) i] };
        };
    }
    static public function _param(_r:T_reader):stdgo._internal.go.types.Types_var.Var {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._param(_r);
    }
    static public function _params(_r:T_reader):stdgo._internal.go.types.Types_tuple.Tuple {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._params(_r);
    }
    static public function _signature(_r:T_reader, _recv:stdgo._internal.go.types.Types_var.Var, _rtparams:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>, _tparams:Array<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_signature.Signature {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        final _recv = (_recv : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>);
        final _rtparams = ([for (i in _rtparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        final _tparams = ([for (i in _tparams) (i : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._signature(_r, _recv, _rtparams, _tparams);
    }
    static public function _interfaceType(_r:T_reader):stdgo._internal.go.types.Types_interface.Interface {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._interfaceType(_r);
    }
    static public function _unionType(_r:T_reader):stdgo._internal.go.types.Types_union.Union {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._unionType(_r);
    }
    static public function _structType(_r:T_reader):stdgo._internal.go.types.Types_struct.Struct {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._structType(_r);
    }
    static public function _doTyp(_r:T_reader):stdgo._internal.go.types.Types_type_.Type_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._doTyp(_r);
    }
    static public function _typInfo(_r:T_reader):T_typeInfo {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._typInfo(_r);
    }
    static public function _typ(_r:T_reader):stdgo._internal.go.types.Types_type_.Type_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._typ(_r);
    }
    static public function _doPkg(_r:T_reader):stdgo._internal.go.types.Types_package.Package {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._doPkg(_r);
    }
    static public function _pkg(_r:T_reader):stdgo._internal.go.types.Types_package.Package {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._pkg(_r);
    }
    static public function _posBase(_r:T_reader):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._posBase(_r);
    }
    static public function _pos(_r:T_reader):stdgo._internal.go.token.Token_pos.Pos {
        final _r = (_r : stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._pos(_r);
    }
    public static function _scalar(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._scalar(__self__);
    }
    public static function _rawVarint(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):haxe.Int64 {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._rawVarint(__self__);
    }
    public static function _rawUvarint(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):haxe.UInt64 {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._rawUvarint(__self__);
    }
    public static function _rawReloc(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:StdTypes.Int):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._rawReloc(__self__, _0, _1);
    }
    public static function _checkErr(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo.Error):Void {
        final _0 = (_0 : stdgo.Error);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._checkErr(__self__, _0);
    }
    public static function _bigInt(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.math.big.Big_int_.Int_ {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._bigInt(__self__);
    }
    public static function _bigFloat(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.math.big.Big_float_.Float_ {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension._bigFloat(__self__);
    }
    public static function value(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.value(__self__);
    }
    public static function uint64(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):haxe.UInt64 {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.uint64(__self__);
    }
    public static function uint(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):std.UInt {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.uint(__self__);
    }
    public static function sync(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void {
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.sync(__self__, _0);
    }
    public static function strings(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):Array<String> {
        return [for (i in stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.strings(__self__)) i];
    }
    public static function string(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):String {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.string(__self__);
    }
    public static function reloc(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.reloc(__self__, _0);
    }
    public static function len(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.len(__self__);
    }
    public static function int64(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):haxe.Int64 {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.int64(__self__);
    }
    public static function int_(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.int_(__self__);
    }
    public static function code(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.code(__self__, _0);
    }
    public static function bool_(__self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):Bool {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader_static_extension.T_reader_static_extension.bool_(__self__);
    }
}
@:dox(hide) typedef T_readerDictPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_readerdictpointer.T_readerDictPointer;
@:dox(hide) class T_readerDict_static_extension {

}
@:dox(hide) typedef T_byPathPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypathpointer.T_byPathPointer;
@:dox(hide) class T_byPath_static_extension {
    static public function less(_a:T_byPath, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath_static_extension.T_byPath_static_extension.less(_a, _i, _j);
    }
    static public function swap(_a:T_byPath, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath_static_extension.T_byPath_static_extension.swap(_a, _i, _j);
    }
    static public function len(_a:T_byPath):StdTypes.Int {
        return stdgo._internal.go.internal.gcimporter.Gcimporter_t_bypath_static_extension.T_byPath_static_extension.len(_a);
    }
}
@:dox(hide) typedef T_itagPointer = stdgo._internal.go.internal.gcimporter.Gcimporter_t_itagpointer.T_itagPointer;
@:dox(hide) class T_itag_static_extension {

}
/**
    * Package gcimporter implements Import for gc-generated object files.
**/
class Gcimporter {
    /**
        * FindExportData positions the reader r at the beginning of the
        * export data section of an underlying GC-created object/archive
        * file by reading from it. The reader must be positioned at the
        * start of the file before calling this function. The hdr result
        * is the string before the export data, either "$$" or "$$B".
    **/
    static public inline function findExportData(_r:stdgo._internal.bufio.Bufio_reader.Reader):stdgo.Tuple.Tuple3<String, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_findexportdata.findExportData(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * FindPkg returns the filename and unique package id for an import
        * path based on package information provided by build.Import (using
        * the build.Default build.Context). A relative srcDir is interpreted
        * relative to the current working directory.
        * If no file was found, an empty filename is returned.
    **/
    static public inline function findPkg(_path:String, _srcDir:String):stdgo.Tuple<String, String> {
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_findpkg.findPkg(_path, _srcDir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Import imports a gc-generated package given its import path and srcDir, adds
        * the corresponding package object to the packages map, and returns the object.
        * The packages map must contain all packages already imported.
    **/
    static public inline function import_(_fset:stdgo._internal.go.token.Token_fileset.FileSet, _packages:Map<String, stdgo._internal.go.types.Types_package.Package>, _path:String, _srcDir:String, _lookup:String -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, stdgo.Error> {
        final _fset = (_fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        final _packages = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in _packages) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        final _path = (_path : stdgo.GoString);
        final _srcDir = (_srcDir : stdgo.GoString);
        final _lookup = _lookup;
        return {
            final obj = stdgo._internal.go.internal.gcimporter.Gcimporter_import_.import_(_fset, _packages, _path, _srcDir, _lookup);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
