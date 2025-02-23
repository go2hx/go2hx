package stdgo.internal.coverage;
final metaFilesFileName : String = stdgo._internal.internal.coverage.Coverage_metafilesfilename.metaFilesFileName;
final metaFilePref : String = stdgo._internal.internal.coverage.Coverage_metafilepref.metaFilePref;
final metaFileVersion : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_metafileversion.metaFileVersion;
final covMetaHeaderSize : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_covmetaheadersize.covMetaHeaderSize;
final ctrModeInvalid : CounterMode = stdgo._internal.internal.coverage.Coverage_ctrmodeinvalid.ctrModeInvalid;
final ctrModeSet = stdgo._internal.internal.coverage.Coverage_ctrmodeset.ctrModeSet;
final ctrModeCount = stdgo._internal.internal.coverage.Coverage_ctrmodecount.ctrModeCount;
final ctrModeAtomic = stdgo._internal.internal.coverage.Coverage_ctrmodeatomic.ctrModeAtomic;
final ctrModeRegOnly = stdgo._internal.internal.coverage.Coverage_ctrmoderegonly.ctrModeRegOnly;
final ctrModeTestMain = stdgo._internal.internal.coverage.Coverage_ctrmodetestmain.ctrModeTestMain;
final ctrGranularityInvalid : CounterGranularity = stdgo._internal.internal.coverage.Coverage_ctrgranularityinvalid.ctrGranularityInvalid;
final ctrGranularityPerBlock = stdgo._internal.internal.coverage.Coverage_ctrgranularityperblock.ctrGranularityPerBlock;
final ctrGranularityPerFunc = stdgo._internal.internal.coverage.Coverage_ctrgranularityperfunc.ctrGranularityPerFunc;
final counterFileVersion : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_counterfileversion.counterFileVersion;
final counterFilePref : String = stdgo._internal.internal.coverage.Coverage_counterfilepref.counterFilePref;
final counterFileTempl : String = stdgo._internal.internal.coverage.Coverage_counterfiletempl.counterFileTempl;
final counterFileRegexp : String = stdgo._internal.internal.coverage.Coverage_counterfileregexp.counterFileRegexp;
final ctrRaw : CounterFlavor = stdgo._internal.internal.coverage.Coverage_ctrraw.ctrRaw;
final ctrULeb128 = stdgo._internal.internal.coverage.Coverage_ctruleb128.ctrULeb128;
final numCtrsOffset : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_numctrsoffset.numCtrsOffset;
final pkgIdOffset : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_pkgidoffset.pkgIdOffset;
final funcIdOffset : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_funcidoffset.funcIdOffset;
final firstCtrOffset : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_firstctroffset.firstCtrOffset;
final notHardCoded : haxe.UInt64 = stdgo._internal.internal.coverage.Coverage_nothardcoded.notHardCoded;
var covMetaMagic(get, set) : haxe.ds.Vector<std.UInt>;
private function get_covMetaMagic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic) i]);
private function set_covMetaMagic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        stdgo._internal.internal.coverage.Coverage_covmetamagic.covMetaMagic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
var covCounterMagic(get, set) : haxe.ds.Vector<std.UInt>;
private function get_covCounterMagic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic) i]);
private function set_covCounterMagic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        stdgo._internal.internal.coverage.Coverage_covcountermagic.covCounterMagic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverPkgConfig_static_extension) abstract CoverPkgConfig(stdgo._internal.internal.coverage.Coverage_coverpkgconfig.CoverPkgConfig) from stdgo._internal.internal.coverage.Coverage_coverpkgconfig.CoverPkgConfig to stdgo._internal.internal.coverage.Coverage_coverpkgconfig.CoverPkgConfig {
    public var outConfig(get, set) : String;
    function get_outConfig():String return this.outConfig;
    function set_outConfig(v:String):String {
        this.outConfig = (v : stdgo.GoString);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
        return v;
    }
    public var pkgName(get, set) : String;
    function get_pkgName():String return this.pkgName;
    function set_pkgName(v:String):String {
        this.pkgName = (v : stdgo.GoString);
        return v;
    }
    public var granularity(get, set) : String;
    function get_granularity():String return this.granularity;
    function set_granularity(v:String):String {
        this.granularity = (v : stdgo.GoString);
        return v;
    }
    public var modulePath(get, set) : String;
    function get_modulePath():String return this.modulePath;
    function set_modulePath(v:String):String {
        this.modulePath = (v : stdgo.GoString);
        return v;
    }
    public var local(get, set) : Bool;
    function get_local():Bool return this.local;
    function set_local(v:Bool):Bool {
        this.local = v;
        return v;
    }
    public function new(?outConfig:String, ?pkgPath:String, ?pkgName:String, ?granularity:String, ?modulePath:String, ?local:Bool) this = new stdgo._internal.internal.coverage.Coverage_coverpkgconfig.CoverPkgConfig((outConfig : stdgo.GoString), (pkgPath : stdgo.GoString), (pkgName : stdgo.GoString), (granularity : stdgo.GoString), (modulePath : stdgo.GoString), local);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverFixupConfig_static_extension) abstract CoverFixupConfig(stdgo._internal.internal.coverage.Coverage_coverfixupconfig.CoverFixupConfig) from stdgo._internal.internal.coverage.Coverage_coverfixupconfig.CoverFixupConfig to stdgo._internal.internal.coverage.Coverage_coverfixupconfig.CoverFixupConfig {
    public var metaVar(get, set) : String;
    function get_metaVar():String return this.metaVar;
    function set_metaVar(v:String):String {
        this.metaVar = (v : stdgo.GoString);
        return v;
    }
    public var metaLen(get, set) : StdTypes.Int;
    function get_metaLen():StdTypes.Int return this.metaLen;
    function set_metaLen(v:StdTypes.Int):StdTypes.Int {
        this.metaLen = (v : stdgo.GoInt);
        return v;
    }
    public var metaHash(get, set) : String;
    function get_metaHash():String return this.metaHash;
    function set_metaHash(v:String):String {
        this.metaHash = (v : stdgo.GoString);
        return v;
    }
    public var strategy(get, set) : String;
    function get_strategy():String return this.strategy;
    function set_strategy(v:String):String {
        this.strategy = (v : stdgo.GoString);
        return v;
    }
    public var counterPrefix(get, set) : String;
    function get_counterPrefix():String return this.counterPrefix;
    function set_counterPrefix(v:String):String {
        this.counterPrefix = (v : stdgo.GoString);
        return v;
    }
    public var pkgIdVar(get, set) : String;
    function get_pkgIdVar():String return this.pkgIdVar;
    function set_pkgIdVar(v:String):String {
        this.pkgIdVar = (v : stdgo.GoString);
        return v;
    }
    public var counterMode(get, set) : String;
    function get_counterMode():String return this.counterMode;
    function set_counterMode(v:String):String {
        this.counterMode = (v : stdgo.GoString);
        return v;
    }
    public var counterGranularity(get, set) : String;
    function get_counterGranularity():String return this.counterGranularity;
    function set_counterGranularity(v:String):String {
        this.counterGranularity = (v : stdgo.GoString);
        return v;
    }
    public function new(?metaVar:String, ?metaLen:StdTypes.Int, ?metaHash:String, ?strategy:String, ?counterPrefix:String, ?pkgIdVar:String, ?counterMode:String, ?counterGranularity:String) this = new stdgo._internal.internal.coverage.Coverage_coverfixupconfig.CoverFixupConfig((metaVar : stdgo.GoString), (metaLen : stdgo.GoInt), (metaHash : stdgo.GoString), (strategy : stdgo.GoString), (counterPrefix : stdgo.GoString), (pkgIdVar : stdgo.GoString), (counterMode : stdgo.GoString), (counterGranularity : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaFileCollection_static_extension) abstract MetaFileCollection(stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection) from stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection to stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection {
    public var importPaths(get, set) : Array<String>;
    function get_importPaths():Array<String> return [for (i in this.importPaths) i];
    function set_importPaths(v:Array<String>):Array<String> {
        this.importPaths = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var metaFileFragments(get, set) : Array<String>;
    function get_metaFileFragments():Array<String> return [for (i in this.metaFileFragments) i];
    function set_metaFileFragments(v:Array<String>):Array<String> {
        this.metaFileFragments = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?importPaths:Array<String>, ?metaFileFragments:Array<String>) this = new stdgo._internal.internal.coverage.Coverage_metafilecollection.MetaFileCollection(([for (i in importPaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in metaFileFragments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaFileHeader_static_extension) abstract MetaFileHeader(stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader) from stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader to stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader {
    public var magic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_magic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.magic) i]);
    function set_magic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.magic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var totalLength(get, set) : haxe.UInt64;
    function get_totalLength():haxe.UInt64 return this.totalLength;
    function set_totalLength(v:haxe.UInt64):haxe.UInt64 {
        this.totalLength = (v : stdgo.GoUInt64);
        return v;
    }
    public var entries(get, set) : haxe.UInt64;
    function get_entries():haxe.UInt64 return this.entries;
    function set_entries(v:haxe.UInt64):haxe.UInt64 {
        this.entries = (v : stdgo.GoUInt64);
        return v;
    }
    public var metaFileHash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_metaFileHash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.metaFileHash) i]);
    function set_metaFileHash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.metaFileHash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var strTabOffset(get, set) : std.UInt;
    function get_strTabOffset():std.UInt return this.strTabOffset;
    function set_strTabOffset(v:std.UInt):std.UInt {
        this.strTabOffset = (v : stdgo.GoUInt32);
        return v;
    }
    public var strTabLength(get, set) : std.UInt;
    function get_strTabLength():std.UInt return this.strTabLength;
    function set_strTabLength(v:std.UInt):std.UInt {
        this.strTabLength = (v : stdgo.GoUInt32);
        return v;
    }
    public var cMode(get, set) : CounterMode;
    function get_cMode():CounterMode return this.cMode;
    function set_cMode(v:CounterMode):CounterMode {
        this.cMode = v;
        return v;
    }
    public var cGranularity(get, set) : CounterGranularity;
    function get_cGranularity():CounterGranularity return this.cGranularity;
    function set_cGranularity(v:CounterGranularity):CounterGranularity {
        this.cGranularity = v;
        return v;
    }
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?version:std.UInt, ?totalLength:haxe.UInt64, ?entries:haxe.UInt64, ?metaFileHash:haxe.ds.Vector<std.UInt>, ?strTabOffset:std.UInt, ?strTabLength:std.UInt, ?cMode:CounterMode, ?cGranularity:CounterGranularity, ?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (version : stdgo.GoUInt32), (totalLength : stdgo.GoUInt64), (entries : stdgo.GoUInt64), ([for (i in metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (strTabOffset : stdgo.GoUInt32), (strTabLength : stdgo.GoUInt32), cMode, cGranularity, ([for (i in __1) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaSymbolHeader_static_extension) abstract MetaSymbolHeader(stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader) from stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader to stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader {
    public var length_(get, set) : std.UInt;
    function get_length_():std.UInt return this.length_;
    function set_length_(v:std.UInt):std.UInt {
        this.length_ = (v : stdgo.GoUInt32);
        return v;
    }
    public var pkgName(get, set) : std.UInt;
    function get_pkgName():std.UInt return this.pkgName;
    function set_pkgName(v:std.UInt):std.UInt {
        this.pkgName = (v : stdgo.GoUInt32);
        return v;
    }
    public var pkgPath(get, set) : std.UInt;
    function get_pkgPath():std.UInt return this.pkgPath;
    function set_pkgPath(v:std.UInt):std.UInt {
        this.pkgPath = (v : stdgo.GoUInt32);
        return v;
    }
    public var modulePath(get, set) : std.UInt;
    function get_modulePath():std.UInt return this.modulePath;
    function set_modulePath(v:std.UInt):std.UInt {
        this.modulePath = (v : stdgo.GoUInt32);
        return v;
    }
    public var metaHash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_metaHash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.metaHash) i]);
    function set_metaHash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.metaHash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var __4(get, set) : std.UInt;
    function get___4():std.UInt return this.__4;
    function set___4(v:std.UInt):std.UInt {
        this.__4 = (v : stdgo.GoUInt8);
        return v;
    }
    public var __5(get, set) : haxe.ds.Vector<std.UInt>;
    function get___5():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__5) i]);
    function set___5(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__5 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var numFiles(get, set) : std.UInt;
    function get_numFiles():std.UInt return this.numFiles;
    function set_numFiles(v:std.UInt):std.UInt {
        this.numFiles = (v : stdgo.GoUInt32);
        return v;
    }
    public var numFuncs(get, set) : std.UInt;
    function get_numFuncs():std.UInt return this.numFuncs;
    function set_numFuncs(v:std.UInt):std.UInt {
        this.numFuncs = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?length_:std.UInt, ?pkgName:std.UInt, ?pkgPath:std.UInt, ?modulePath:std.UInt, ?metaHash:haxe.ds.Vector<std.UInt>, ?__4:std.UInt, ?__5:haxe.ds.Vector<std.UInt>, ?numFiles:std.UInt, ?numFuncs:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader((length_ : stdgo.GoUInt32), (pkgName : stdgo.GoUInt32), (pkgPath : stdgo.GoUInt32), (modulePath : stdgo.GoUInt32), ([for (i in metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (__4 : stdgo.GoUInt8), ([for (i in __5) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (numFiles : stdgo.GoUInt32), (numFuncs : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.FuncDesc_static_extension) abstract FuncDesc(stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc) from stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc to stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc {
    public var funcname(get, set) : String;
    function get_funcname():String return this.funcname;
    function set_funcname(v:String):String {
        this.funcname = (v : stdgo.GoString);
        return v;
    }
    public var srcfile(get, set) : String;
    function get_srcfile():String return this.srcfile;
    function set_srcfile(v:String):String {
        this.srcfile = (v : stdgo.GoString);
        return v;
    }
    public var units(get, set) : Array<CoverableUnit>;
    function get_units():Array<CoverableUnit> return [for (i in this.units) i];
    function set_units(v:Array<CoverableUnit>):Array<CoverableUnit> {
        this.units = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>);
        return v;
    }
    public var lit(get, set) : Bool;
    function get_lit():Bool return this.lit;
    function set_lit(v:Bool):Bool {
        this.lit = v;
        return v;
    }
    public function new(?funcname:String, ?srcfile:String, ?units:Array<CoverableUnit>, ?lit:Bool) this = new stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc((funcname : stdgo.GoString), (srcfile : stdgo.GoString), ([for (i in units) i] : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>), lit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverableUnit_static_extension) abstract CoverableUnit(stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit) from stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit to stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit {
    public var stLine(get, set) : std.UInt;
    function get_stLine():std.UInt return this.stLine;
    function set_stLine(v:std.UInt):std.UInt {
        this.stLine = (v : stdgo.GoUInt32);
        return v;
    }
    public var stCol(get, set) : std.UInt;
    function get_stCol():std.UInt return this.stCol;
    function set_stCol(v:std.UInt):std.UInt {
        this.stCol = (v : stdgo.GoUInt32);
        return v;
    }
    public var enLine(get, set) : std.UInt;
    function get_enLine():std.UInt return this.enLine;
    function set_enLine(v:std.UInt):std.UInt {
        this.enLine = (v : stdgo.GoUInt32);
        return v;
    }
    public var enCol(get, set) : std.UInt;
    function get_enCol():std.UInt return this.enCol;
    function set_enCol(v:std.UInt):std.UInt {
        this.enCol = (v : stdgo.GoUInt32);
        return v;
    }
    public var nxStmts(get, set) : std.UInt;
    function get_nxStmts():std.UInt return this.nxStmts;
    function set_nxStmts(v:std.UInt):std.UInt {
        this.nxStmts = (v : stdgo.GoUInt32);
        return v;
    }
    public var parent(get, set) : std.UInt;
    function get_parent():std.UInt return this.parent;
    function set_parent(v:std.UInt):std.UInt {
        this.parent = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?stLine:std.UInt, ?stCol:std.UInt, ?enLine:std.UInt, ?enCol:std.UInt, ?nxStmts:std.UInt, ?parent:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit((stLine : stdgo.GoUInt32), (stCol : stdgo.GoUInt32), (enLine : stdgo.GoUInt32), (enCol : stdgo.GoUInt32), (nxStmts : stdgo.GoUInt32), (parent : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterFileHeader_static_extension) abstract CounterFileHeader(stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader) from stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader to stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader {
    public var magic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_magic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.magic) i]);
    function set_magic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.magic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var metaHash(get, set) : haxe.ds.Vector<std.UInt>;
    function get_metaHash():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.metaHash) i]);
    function set_metaHash(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.metaHash = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var cFlavor(get, set) : CounterFlavor;
    function get_cFlavor():CounterFlavor return this.cFlavor;
    function set_cFlavor(v:CounterFlavor):CounterFlavor {
        this.cFlavor = v;
        return v;
    }
    public var bigEndian(get, set) : Bool;
    function get_bigEndian():Bool return this.bigEndian;
    function set_bigEndian(v:Bool):Bool {
        this.bigEndian = v;
        return v;
    }
    public var __7(get, set) : haxe.ds.Vector<std.UInt>;
    function get___7():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__7) i]);
    function set___7(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__7 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?version:std.UInt, ?metaHash:haxe.ds.Vector<std.UInt>, ?cFlavor:CounterFlavor, ?bigEndian:Bool, ?__7:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (version : stdgo.GoUInt32), ([for (i in metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), cFlavor, bigEndian, ([for (i in __7) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterSegmentHeader_static_extension) abstract CounterSegmentHeader(stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader) from stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader to stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader {
    public var fcnEntries(get, set) : haxe.UInt64;
    function get_fcnEntries():haxe.UInt64 return this.fcnEntries;
    function set_fcnEntries(v:haxe.UInt64):haxe.UInt64 {
        this.fcnEntries = (v : stdgo.GoUInt64);
        return v;
    }
    public var strTabLen(get, set) : std.UInt;
    function get_strTabLen():std.UInt return this.strTabLen;
    function set_strTabLen(v:std.UInt):std.UInt {
        this.strTabLen = (v : stdgo.GoUInt32);
        return v;
    }
    public var argsLen(get, set) : std.UInt;
    function get_argsLen():std.UInt return this.argsLen;
    function set_argsLen(v:std.UInt):std.UInt {
        this.argsLen = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?fcnEntries:haxe.UInt64, ?strTabLen:std.UInt, ?argsLen:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader((fcnEntries : stdgo.GoUInt64), (strTabLen : stdgo.GoUInt32), (argsLen : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.Coverage.CounterFileFooter_static_extension) abstract CounterFileFooter(stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter) from stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter to stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter {
    public var magic(get, set) : haxe.ds.Vector<std.UInt>;
    function get_magic():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.magic) i]);
    function set_magic(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.magic = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var __10(get, set) : haxe.ds.Vector<std.UInt>;
    function get___10():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__10) i]);
    function set___10(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__10 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var numSegments(get, set) : std.UInt;
    function get_numSegments():std.UInt return this.numSegments;
    function set_numSegments(v:std.UInt):std.UInt {
        this.numSegments = (v : stdgo.GoUInt32);
        return v;
    }
    public var __11(get, set) : haxe.ds.Vector<std.UInt>;
    function get___11():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__11) i]);
    function set___11(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__11 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?magic:haxe.ds.Vector<std.UInt>, ?__10:haxe.ds.Vector<std.UInt>, ?numSegments:std.UInt, ?__11:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter(([for (i in magic) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in __10) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (numSegments : stdgo.GoUInt32), ([for (i in __11) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CounterMode = stdgo._internal.internal.coverage.Coverage_countermode.CounterMode;
typedef CounterGranularity = stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity;
typedef CounterFlavor = stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor;
typedef CoverPkgConfigPointer = stdgo._internal.internal.coverage.Coverage_coverpkgconfigpointer.CoverPkgConfigPointer;
class CoverPkgConfig_static_extension {

}
typedef CoverFixupConfigPointer = stdgo._internal.internal.coverage.Coverage_coverfixupconfigpointer.CoverFixupConfigPointer;
class CoverFixupConfig_static_extension {

}
typedef MetaFileCollectionPointer = stdgo._internal.internal.coverage.Coverage_metafilecollectionpointer.MetaFileCollectionPointer;
class MetaFileCollection_static_extension {

}
typedef MetaFileHeaderPointer = stdgo._internal.internal.coverage.Coverage_metafileheaderpointer.MetaFileHeaderPointer;
class MetaFileHeader_static_extension {

}
typedef MetaSymbolHeaderPointer = stdgo._internal.internal.coverage.Coverage_metasymbolheaderpointer.MetaSymbolHeaderPointer;
class MetaSymbolHeader_static_extension {

}
typedef FuncDescPointer = stdgo._internal.internal.coverage.Coverage_funcdescpointer.FuncDescPointer;
class FuncDesc_static_extension {

}
typedef CoverableUnitPointer = stdgo._internal.internal.coverage.Coverage_coverableunitpointer.CoverableUnitPointer;
class CoverableUnit_static_extension {

}
typedef CounterFileHeaderPointer = stdgo._internal.internal.coverage.Coverage_counterfileheaderpointer.CounterFileHeaderPointer;
class CounterFileHeader_static_extension {

}
typedef CounterSegmentHeaderPointer = stdgo._internal.internal.coverage.Coverage_countersegmentheaderpointer.CounterSegmentHeaderPointer;
class CounterSegmentHeader_static_extension {

}
typedef CounterFileFooterPointer = stdgo._internal.internal.coverage.Coverage_counterfilefooterpointer.CounterFileFooterPointer;
class CounterFileFooter_static_extension {

}
typedef CounterModePointer = stdgo._internal.internal.coverage.Coverage_countermodepointer.CounterModePointer;
class CounterMode_static_extension {
    static public function string(_cm:CounterMode):String {
        return stdgo._internal.internal.coverage.Coverage_countermode_static_extension.CounterMode_static_extension.string(_cm);
    }
}
typedef CounterGranularityPointer = stdgo._internal.internal.coverage.Coverage_countergranularitypointer.CounterGranularityPointer;
class CounterGranularity_static_extension {
    static public function string(_cm:CounterGranularity):String {
        return stdgo._internal.internal.coverage.Coverage_countergranularity_static_extension.CounterGranularity_static_extension.string(_cm);
    }
}
typedef CounterFlavorPointer = stdgo._internal.internal.coverage.Coverage_counterflavorpointer.CounterFlavorPointer;
class CounterFlavor_static_extension {

}
class Coverage {
    static public inline function parseCounterMode(_mode:String):CounterMode {
        final _mode = (_mode : stdgo.GoString);
        return stdgo._internal.internal.coverage.Coverage_parsecountermode.parseCounterMode(_mode);
    }
    static public inline function round4(_x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.internal.coverage.Coverage_round4.round4(_x);
    }
    /**
        * HardCodedPkgID returns the hard-coded ID for the specified package
        * path, or -1 if we don't use a hard-coded ID. Hard-coded IDs start
        * at -2 and decrease as we go down the list.
    **/
    static public inline function hardCodedPkgID(_pkgpath:String):StdTypes.Int {
        final _pkgpath = (_pkgpath : stdgo.GoString);
        return stdgo._internal.internal.coverage.Coverage_hardcodedpkgid.hardCodedPkgID(_pkgpath);
    }
}
