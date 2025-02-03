package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverFixupConfig_static_extension) abstract CoverFixupConfig(stdgo._internal.internal.coverage.Coverage_CoverFixupConfig.CoverFixupConfig) from stdgo._internal.internal.coverage.Coverage_CoverFixupConfig.CoverFixupConfig to stdgo._internal.internal.coverage.Coverage_CoverFixupConfig.CoverFixupConfig {
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
    public function new(?metaVar:String, ?metaLen:StdTypes.Int, ?metaHash:String, ?strategy:String, ?counterPrefix:String, ?pkgIdVar:String, ?counterMode:String, ?counterGranularity:String) this = new stdgo._internal.internal.coverage.Coverage_CoverFixupConfig.CoverFixupConfig((metaVar : stdgo.GoString), (metaLen : stdgo.GoInt), (metaHash : stdgo.GoString), (strategy : stdgo.GoString), (counterPrefix : stdgo.GoString), (pkgIdVar : stdgo.GoString), (counterMode : stdgo.GoString), (counterGranularity : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
