package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.MetaSymbolHeader_static_extension) abstract MetaSymbolHeader(stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader) from stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader to stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader {
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
    public function new(?length_:std.UInt, ?pkgName:std.UInt, ?pkgPath:std.UInt, ?modulePath:std.UInt, ?metaHash:haxe.ds.Vector<std.UInt>, ?__4:std.UInt, ?__5:haxe.ds.Vector<std.UInt>, ?numFiles:std.UInt, ?numFuncs:std.UInt) this = new stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader((length_ : stdgo.GoUInt32), (pkgName : stdgo.GoUInt32), (pkgPath : stdgo.GoUInt32), (modulePath : stdgo.GoUInt32), ([for (i in metaHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (__4 : stdgo.GoUInt8), ([for (i in __5) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (numFiles : stdgo.GoUInt32), (numFuncs : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
