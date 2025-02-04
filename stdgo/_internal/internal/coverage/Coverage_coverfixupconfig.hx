package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_coverfixupconfig_static_extension.CoverFixupConfig_static_extension) class CoverFixupConfig {
    public var metaVar : stdgo.GoString = "";
    public var metaLen : stdgo.GoInt = 0;
    public var metaHash : stdgo.GoString = "";
    public var strategy : stdgo.GoString = "";
    public var counterPrefix : stdgo.GoString = "";
    public var pkgIdVar : stdgo.GoString = "";
    public var counterMode : stdgo.GoString = "";
    public var counterGranularity : stdgo.GoString = "";
    public function new(?metaVar:stdgo.GoString, ?metaLen:stdgo.GoInt, ?metaHash:stdgo.GoString, ?strategy:stdgo.GoString, ?counterPrefix:stdgo.GoString, ?pkgIdVar:stdgo.GoString, ?counterMode:stdgo.GoString, ?counterGranularity:stdgo.GoString) {
        if (metaVar != null) this.metaVar = metaVar;
        if (metaLen != null) this.metaLen = metaLen;
        if (metaHash != null) this.metaHash = metaHash;
        if (strategy != null) this.strategy = strategy;
        if (counterPrefix != null) this.counterPrefix = counterPrefix;
        if (pkgIdVar != null) this.pkgIdVar = pkgIdVar;
        if (counterMode != null) this.counterMode = counterMode;
        if (counterGranularity != null) this.counterGranularity = counterGranularity;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverFixupConfig(metaVar, metaLen, metaHash, strategy, counterPrefix, pkgIdVar, counterMode, counterGranularity);
    }
}
