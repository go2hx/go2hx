package stdgo.gccgoimporter;
@:dox(hide) class T__interface_0_static_extension {
    static public function name(t:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0):String {
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0_static_extension.T__interface_0_static_extension.name(t);
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0 to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function name():String; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { name : () -> x.name(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_static_extension) @:dox(hide) abstract T_seekerReadAt(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt {
    public var _seeker(get, set) : stdgo._internal.io.Io_readseeker.ReadSeeker;
    function get__seeker():stdgo._internal.io.Io_readseeker.ReadSeeker return this._seeker;
    function set__seeker(v:stdgo._internal.io.Io_readseeker.ReadSeeker):stdgo._internal.io.Io_readseeker.ReadSeeker {
        this._seeker = v;
        return v;
    }
    public function new(?_seeker:stdgo._internal.io.Io_readseeker.ReadSeeker) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt(_seeker);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_static_extension) abstract GccgoInstallation(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation {
    public var gccVersion(get, set) : String;
    function get_gccVersion():String return this.gccVersion;
    function set_gccVersion(v:String):String {
        this.gccVersion = (v : stdgo.GoString);
        return v;
    }
    public var targetTriple(get, set) : String;
    function get_targetTriple():String return this.targetTriple;
    function set_targetTriple(v:String):String {
        this.targetTriple = (v : stdgo.GoString);
        return v;
    }
    public var libPaths(get, set) : Array<String>;
    function get_libPaths():Array<String> return [for (i in this.libPaths) i];
    function set_libPaths(v:Array<String>):Array<String> {
        this.libPaths = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?gccVersion:String, ?targetTriple:String, ?libPaths:Array<String>) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation((gccVersion : stdgo.GoString), (targetTriple : stdgo.GoString), ([for (i in libPaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.PackageInit_static_extension) abstract PackageInit(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var initFunc(get, set) : String;
    function get_initFunc():String return this.initFunc;
    function set_initFunc(v:String):String {
        this.initFunc = (v : stdgo.GoString);
        return v;
    }
    public var priority(get, set) : StdTypes.Int;
    function get_priority():StdTypes.Int return this.priority;
    function set_priority(v:StdTypes.Int):StdTypes.Int {
        this.priority = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?initFunc:String, ?priority:StdTypes.Int) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit((name : stdgo.GoString), (initFunc : stdgo.GoString), (priority : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.InitData_static_extension) abstract InitData(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData {
    public var priority(get, set) : StdTypes.Int;
    function get_priority():StdTypes.Int return this.priority;
    function set_priority(v:StdTypes.Int):StdTypes.Int {
        this.priority = (v : stdgo.GoInt);
        return v;
    }
    public var inits(get, set) : Array<PackageInit>;
    function get_inits():Array<PackageInit> return [for (i in this.inits) i];
    function set_inits(v:Array<PackageInit>):Array<PackageInit> {
        this.inits = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit>);
        return v;
    }
    public function new(?priority:StdTypes.Int, ?inits:Array<PackageInit>) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData((priority : stdgo.GoInt), ([for (i in inits) i] : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.T_importerTest_static_extension) @:dox(hide) abstract T_importerTest(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest {
    public var _pkgpath(get, set) : String;
    function get__pkgpath():String return this._pkgpath;
    function set__pkgpath(v:String):String {
        this._pkgpath = (v : stdgo.GoString);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _want(get, set) : String;
    function get__want():String return this._want;
    function set__want(v:String):String {
        this._want = (v : stdgo.GoString);
        return v;
    }
    public var _wantval(get, set) : String;
    function get__wantval():String return this._wantval;
    function set__wantval(v:String):String {
        this._wantval = (v : stdgo.GoString);
        return v;
    }
    public var _wantinits(get, set) : Array<String>;
    function get__wantinits():Array<String> return [for (i in this._wantinits) i];
    function set__wantinits(v:Array<String>):Array<String> {
        this._wantinits = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _gccgoVersion(get, set) : StdTypes.Int;
    function get__gccgoVersion():StdTypes.Int return this._gccgoVersion;
    function set__gccgoVersion(v:StdTypes.Int):StdTypes.Int {
        this._gccgoVersion = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_pkgpath:String, ?_name:String, ?_want:String, ?_wantval:String, ?_wantinits:Array<String>, ?_gccgoVersion:StdTypes.Int) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest((_pkgpath : stdgo.GoString), (_name : stdgo.GoString), (_want : stdgo.GoString), (_wantval : stdgo.GoString), ([for (i in _wantinits) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_gccgoVersion : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.T_parser_static_extension) @:dox(hide) abstract T_parser(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser {
    public var _scanner(get, set) : stdgo._internal.text.scanner.Scanner_scanner.Scanner;
    function get__scanner():stdgo._internal.text.scanner.Scanner_scanner.Scanner return this._scanner;
    function set__scanner(v:stdgo._internal.text.scanner.Scanner_scanner.Scanner):stdgo._internal.text.scanner.Scanner_scanner.Scanner {
        this._scanner = (v : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        return v;
    }
    public var _version(get, set) : String;
    function get__version():String return this._version;
    function set__version(v:String):String {
        this._version = (v : stdgo.GoString);
        return v;
    }
    public var _tok(get, set) : StdTypes.Int;
    function get__tok():StdTypes.Int return this._tok;
    function set__tok(v:StdTypes.Int):StdTypes.Int {
        this._tok = (v : stdgo.GoInt32);
        return v;
    }
    public var _lit(get, set) : String;
    function get__lit():String return this._lit;
    function set__lit(v:String):String {
        this._lit = (v : stdgo.GoString);
        return v;
    }
    public var _pkgpath(get, set) : String;
    function get__pkgpath():String return this._pkgpath;
    function set__pkgpath(v:String):String {
        this._pkgpath = (v : stdgo.GoString);
        return v;
    }
    public var _pkgname(get, set) : String;
    function get__pkgname():String return this._pkgname;
    function set__pkgname(v:String):String {
        this._pkgname = (v : stdgo.GoString);
        return v;
    }
    public var _pkg(get, set) : stdgo._internal.go.types.Types_package.Package;
    function get__pkg():stdgo._internal.go.types.Types_package.Package return this._pkg;
    function set__pkg(v:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_package.Package {
        this._pkg = (v : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
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
    public var _typeList(get, set) : Array<stdgo._internal.go.types.Types_type_.Type_>;
    function get__typeList():Array<stdgo._internal.go.types.Types_type_.Type_> return [for (i in this._typeList) i];
    function set__typeList(v:Array<stdgo._internal.go.types.Types_type_.Type_>):Array<stdgo._internal.go.types.Types_type_.Type_> {
        this._typeList = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        return v;
    }
    public var _typeData(get, set) : Array<String>;
    function get__typeData():Array<String> return [for (i in this._typeData) i];
    function set__typeData(v:Array<String>):Array<String> {
        this._typeData = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _fixups(get, set) : Array<T_fixupRecord>;
    function get__fixups():Array<T_fixupRecord> return [for (i in this._fixups) i];
    function set__fixups(v:Array<T_fixupRecord>):Array<T_fixupRecord> {
        this._fixups = ([for (i in v) i] : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>);
        return v;
    }
    public var _initdata(get, set) : InitData;
    function get__initdata():InitData return this._initdata;
    function set__initdata(v:InitData):InitData {
        this._initdata = v;
        return v;
    }
    public var _aliases(get, set) : Map<StdTypes.Int, String>;
    function get__aliases():Map<StdTypes.Int, String> return {
        final __obj__:Map<StdTypes.Int, String> = [];
        for (key => value in this._aliases) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__aliases(v:Map<StdTypes.Int, String>):Map<StdTypes.Int, String> {
        this._aliases = {
            final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_scanner:stdgo._internal.text.scanner.Scanner_scanner.Scanner, ?_version:String, ?_tok:StdTypes.Int, ?_lit:String, ?_pkgpath:String, ?_pkgname:String, ?_pkg:stdgo._internal.go.types.Types_package.Package, ?_imports:Map<String, stdgo._internal.go.types.Types_package.Package>, ?_typeList:Array<stdgo._internal.go.types.Types_type_.Type_>, ?_typeData:Array<String>, ?_fixups:Array<T_fixupRecord>, ?_initdata:InitData, ?_aliases:Map<StdTypes.Int, String>) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser(
(_scanner : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>),
(_version : stdgo.GoString),
(_tok : stdgo.GoInt32),
(_lit : stdgo.GoString),
(_pkgpath : stdgo.GoString),
(_pkgname : stdgo.GoString),
(_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
        for (key => value in _imports) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        };
        __obj__;
    },
([for (i in _typeList) i] : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>),
([for (i in _typeData) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in _fixups) i] : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>),
_initdata,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoInt, stdgo.GoString>();
        for (key => value in _aliases) {
            __obj__[(key : stdgo.GoInt)] = (value : stdgo.GoString);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.T_fixupRecord_static_extension) @:dox(hide) abstract T_fixupRecord(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord {
    public var _toUpdate(get, set) : stdgo._internal.go.types.Types_named.Named;
    function get__toUpdate():stdgo._internal.go.types.Types_named.Named return this._toUpdate;
    function set__toUpdate(v:stdgo._internal.go.types.Types_named.Named):stdgo._internal.go.types.Types_named.Named {
        this._toUpdate = (v : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        return v;
    }
    public var _target(get, set) : stdgo._internal.go.types.Types_type_.Type_;
    function get__target():stdgo._internal.go.types.Types_type_.Type_ return this._target;
    function set__target(v:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        this._target = v;
        return v;
    }
    public function new(?_toUpdate:stdgo._internal.go.types.Types_named.Named, ?_target:stdgo._internal.go.types.Types_type_.Type_) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord((_toUpdate : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _target);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.go.internal.gccgoimporter.Gccgoimporter.T_importError_static_extension) @:dox(hide) abstract T_importError(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError {
    public var _pos(get, set) : stdgo._internal.text.scanner.Scanner_position.Position;
    function get__pos():stdgo._internal.text.scanner.Scanner_position.Position return this._pos;
    function set__pos(v:stdgo._internal.text.scanner.Scanner_position.Position):stdgo._internal.text.scanner.Scanner_position.Position {
        this._pos = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_pos:stdgo._internal.text.scanner.Scanner_position.Position, ?_err:stdgo.Error) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError(_pos, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {
    public static function underlying(__self__:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0.T__struct_0):stdgo._internal.go.types.Types_type_.Type_ {
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0_static_extension.T__struct_0_static_extension.underlying(__self__);
    }
    public static function string(__self__:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0.T__struct_0):String {
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0_static_extension.T__struct_0_static_extension.string(__self__);
    }
}
@:dox(hide) typedef T__struct_0 = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_1.T__struct_1;
typedef Importer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer;
@:dox(hide) typedef T_seekerReadAtPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadatpointer.T_seekerReadAtPointer;
@:dox(hide) class T_seekerReadAt_static_extension {
    static public function readAt(_sra:T_seekerReadAt, _p:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat_static_extension.T_seekerReadAt_static_extension.readAt(_sra, _p, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef GccgoInstallationPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallationpointer.GccgoInstallationPointer;
class GccgoInstallation_static_extension {
    static public function getImporter(_inst:GccgoInstallation, _incpaths:Array<String>, _initmap:Map<stdgo._internal.go.types.Types_package.Package, InitData>):Importer {
        final _inst = (_inst : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>);
        final _incpaths = ([for (i in _incpaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _initmap = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            for (key => value in _initmap) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation_static_extension.GccgoInstallation_static_extension.getImporter(_inst, _incpaths, _initmap);
    }
    static public function searchPaths(_inst:GccgoInstallation):Array<String> {
        final _inst = (_inst : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>);
        return [for (i in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation_static_extension.GccgoInstallation_static_extension.searchPaths(_inst)) i];
    }
    static public function initFromDriver(_inst:GccgoInstallation, _gccgoPath:String, _args:haxe.Rest<String>):stdgo.Error {
        final _inst = (_inst : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation.GccgoInstallation>);
        final _gccgoPath = (_gccgoPath : stdgo.GoString);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_gccgoinstallation_static_extension.GccgoInstallation_static_extension.initFromDriver(_inst, _gccgoPath, ...[for (i in _args) i]);
    }
}
typedef PackageInitPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinitpointer.PackageInitPointer;
class PackageInit_static_extension {

}
typedef InitDataPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdatapointer.InitDataPointer;
class InitData_static_extension {

}
@:dox(hide) typedef T_importerTestPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertestpointer.T_importerTestPointer;
@:dox(hide) class T_importerTest_static_extension {

}
@:dox(hide) typedef T_parserPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parserpointer.T_parserPointer;
@:dox(hide) class T_parser_static_extension {
    static public function _parsePackage(_p:T_parser):stdgo._internal.go.types.Types_package.Package {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parsePackage(_p);
    }
    static public function _parseDirective(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseDirective(_p);
    }
    static public function _parseInitDataDirective(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseInitDataDirective(_p);
    }
    static public function _maybeCreatePackage(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._maybeCreatePackage(_p);
    }
    static public function _parsePackageInit(_p:T_parser):PackageInit {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parsePackageInit(_p);
    }
    static public function _parseSavedType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _i:StdTypes.Int, _nlist:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _i = (_i : stdgo.GoInt);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseSavedType(_p, _pkg, _i, _nlist);
    }
    static public function _parseTypes(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseTypes(_p, _pkg);
    }
    static public function _skipInlineBody(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._skipInlineBody(_p);
    }
    static public function _parseTypeExtended(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _n:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<stdgo._internal.go.types.Types_type_.Type_, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseTypeExtended(_p, _pkg, ...[for (i in _n) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseTypeAfterAngle(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _n:haxe.Rest<stdgo.AnyInterface>):stdgo.Tuple<stdgo._internal.go.types.Types_type_.Type_, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseTypeAfterAngle(_p, _pkg, ...[for (i in _n) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _n:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseType(_p, _pkg, ...[for (i in _n) i]);
    }
    static public function _parseTypeSpec(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseTypeSpec(_p, _pkg, _nlist);
    }
    static public function _parsePointerType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parsePointerType(_p, _pkg, _nlist);
    }
    static public function _parseInterfaceType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseInterfaceType(_p, _pkg, _nlist);
    }
    static public function _parseFunc(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_func.Func {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseFunc(_p, _pkg);
    }
    static public function _parseFunctionType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_signature.Signature {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseFunctionType(_p, _pkg, _nlist);
    }
    static public function _parseResultList(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_tuple.Tuple {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseResultList(_p, _pkg);
    }
    static public function _parseParamList(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo.Tuple<stdgo._internal.go.types.Types_tuple.Tuple, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseParamList(_p, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseStructType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseStructType(_p, _pkg, _nlist);
    }
    static public function _parseChanType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseChanType(_p, _pkg, _nlist);
    }
    static public function _parseMapType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseMapType(_p, _pkg, _nlist);
    }
    static public function _parseArrayOrSliceType(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseArrayOrSliceType(_p, _pkg, _nlist);
    }
    static public function _parseInt(_p:T_parser):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseInt(_p);
    }
    static public function _parseInt64(_p:T_parser):haxe.Int64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseInt64(_p);
    }
    static public function _parseNamedType(_p:T_parser, _nlist:Array<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseNamedType(_p, _nlist);
    }
    static public function _update(_p:T_parser, _t:stdgo._internal.go.types.Types_type_.Type_, _nlist:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _nlist = ([for (i in _nlist) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._update(_p, _t, _nlist);
    }
    static public function _reserve(_p:T_parser, _n:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._reserve(_p, _n);
    }
    static public function _parseConst(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_const.Const {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseConst(_p, _pkg);
    }
    static public function _parseConstValue(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo.Tuple<stdgo._internal.go.constant.Constant_value.Value, stdgo._internal.go.types.Types_type_.Type_> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseConstValue(_p, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseConversion(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo.Tuple<stdgo._internal.go.constant.Constant_value.Value, stdgo._internal.go.types.Types_type_.Type_> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseConversion(_p, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseVar(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo._internal.go.types.Types_var.Var {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseVar(_p, _pkg);
    }
    static public function _parseParam(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo.Tuple<stdgo._internal.go.types.Types_var.Var, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseParam(_p, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseField(_p:T_parser, _pkg:stdgo._internal.go.types.Types_package.Package):stdgo.Tuple<stdgo._internal.go.types.Types_var.Var, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkg = (_pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseField(_p, _pkg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseName(_p:T_parser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseName(_p);
    }
    static public function _parseExportedName(_p:T_parser):stdgo.Tuple<stdgo._internal.go.types.Types_package.Package, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseExportedName(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getPkg(_p:T_parser, _pkgpath:String, _name:String):stdgo._internal.go.types.Types_package.Package {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _pkgpath = (_pkgpath : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._getPkg(_p, _pkgpath, _name);
    }
    static public function _parseQualifiedNameStr(_p:T_parser, _unquotedName:String):stdgo.Tuple<String, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _unquotedName = (_unquotedName : stdgo.GoString);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseQualifiedNameStr(_p, _unquotedName);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseUnquotedQualifiedName(_p:T_parser):stdgo.Tuple<String, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseUnquotedQualifiedName(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _parseQualifiedName(_p:T_parser):stdgo.Tuple<String, String> {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return {
            final obj = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseQualifiedName(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _next(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._next(_p);
    }
    static public function _parseUnquotedString(_p:T_parser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseUnquotedString(_p);
    }
    static public function _parseString(_p:T_parser):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._parseString(_p);
    }
    static public function _expectKeyword(_p:T_parser, _keyword:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _keyword = (_keyword : stdgo.GoString);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._expectKeyword(_p, _keyword);
    }
    static public function _expectEOL(_p:T_parser):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._expectEOL(_p);
    }
    static public function _expect(_p:T_parser, _tok:StdTypes.Int):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _tok = (_tok : stdgo.GoInt32);
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._expect(_p, _tok);
    }
    static public function _errorf(_p:T_parser, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._errorf(_p, _format, ...[for (i in _args) i]);
    }
    static public function _error(_p:T_parser, _err:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _err = (_err : stdgo.AnyInterface);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._error(_p, _err);
    }
    static public function _initScanner(_p:T_parser, _filename:String, _src:stdgo._internal.io.Io_reader.Reader):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _filename = (_filename : stdgo.GoString);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._initScanner(_p, _filename, _src);
    }
    static public function _init(_p:T_parser, _filename:String, _src:stdgo._internal.io.Io_reader.Reader, _imports:Map<String, stdgo._internal.go.types.Types_package.Package>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>);
        final _filename = (_filename : stdgo.GoString);
        final _imports = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            for (key => value in _imports) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            };
            __obj__;
        };
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser_static_extension.T_parser_static_extension._init(_p, _filename, _src, _imports);
    }
}
@:structInit @:dox(hide) abstract T__parseTypes___localname___typeOffset_26108(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108) from stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108 to stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108 {
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt);
        return v;
    }
    public var _length(get, set) : StdTypes.Int;
    function get__length():StdTypes.Int return this._length;
    function set__length(v:StdTypes.Int):StdTypes.Int {
        this._length = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_offset:StdTypes.Int, ?_length:StdTypes.Int) this = new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108((_offset : stdgo.GoInt), (_length : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_fixupRecordPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecordpointer.T_fixupRecordPointer;
@:dox(hide) class T_fixupRecord_static_extension {

}
@:dox(hide) typedef T_importErrorPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerrorpointer.T_importErrorPointer;
@:dox(hide) class T_importError_static_extension {
    static public function error(_e:T_importError):String {
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror_static_extension.T_importError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
typedef ImporterPointer = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importerpointer.ImporterPointer;
class Importer_static_extension {

}
/**
    * Package gccgoimporter implements Import for gccgo-generated object files.
**/
class Gccgoimporter {
    static public inline function testInstallationImporter(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testinstallationimporter.testInstallationImporter(_t);
    }
    static public inline function getImporter(_searchpaths:Array<String>, _initmap:Map<stdgo._internal.go.types.Types_package.Package, InitData>):Importer {
        final _searchpaths = ([for (i in _searchpaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _initmap = {
            final __obj__ = new stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            for (key => value in _initmap) {
                __obj__[(key : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)] = value;
            };
            __obj__;
        };
        return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter(_searchpaths, _initmap);
    }
    static public inline function testGoxImporter(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testgoximporter.testGoxImporter(_t);
    }
    static public inline function testObjImporter(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testobjimporter.testObjImporter(_t);
    }
    static public inline function testTypeParser(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_testtypeparser.testTypeParser(_t);
    }
}
