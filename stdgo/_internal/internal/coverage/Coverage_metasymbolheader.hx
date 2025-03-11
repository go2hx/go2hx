package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_metasymbolheader_static_extension.MetaSymbolHeader_static_extension) class MetaSymbolHeader {
    public var length_ : stdgo.GoUInt32 = 0;
    public var pkgName : stdgo.GoUInt32 = 0;
    public var pkgPath : stdgo.GoUInt32 = 0;
    public var modulePath : stdgo.GoUInt32 = 0;
    public var metaHash : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    @:optional
    public var __4 : stdgo.GoUInt8 = 0;
    @:optional
    public var __5 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3).__setNumber32__();
    public var numFiles : stdgo.GoUInt32 = 0;
    public var numFuncs : stdgo.GoUInt32 = 0;
    public function new(?length_:stdgo.GoUInt32, ?pkgName:stdgo.GoUInt32, ?pkgPath:stdgo.GoUInt32, ?modulePath:stdgo.GoUInt32, ?metaHash:stdgo.GoArray<stdgo.GoUInt8>, ?__4:stdgo.GoUInt8, ?__5:stdgo.GoArray<stdgo.GoUInt8>, ?numFiles:stdgo.GoUInt32, ?numFuncs:stdgo.GoUInt32) {
        if (length_ != null) this.length_ = length_;
        if (pkgName != null) this.pkgName = pkgName;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (modulePath != null) this.modulePath = modulePath;
        if (metaHash != null) this.metaHash = metaHash;
        if (__4 != null) this.__4 = __4;
        if (__5 != null) this.__5 = __5;
        if (numFiles != null) this.numFiles = numFiles;
        if (numFuncs != null) this.numFuncs = numFuncs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MetaSymbolHeader(length_, pkgName, pkgPath, modulePath, metaHash, __4, __5, numFiles, numFuncs);
    }
}
