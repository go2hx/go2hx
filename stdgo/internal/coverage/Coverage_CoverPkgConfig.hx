package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.CoverPkgConfig_static_extension) abstract CoverPkgConfig(stdgo._internal.internal.coverage.Coverage_CoverPkgConfig.CoverPkgConfig) from stdgo._internal.internal.coverage.Coverage_CoverPkgConfig.CoverPkgConfig to stdgo._internal.internal.coverage.Coverage_CoverPkgConfig.CoverPkgConfig {
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
    public function new(?outConfig:String, ?pkgPath:String, ?pkgName:String, ?granularity:String, ?modulePath:String, ?local:Bool) this = new stdgo._internal.internal.coverage.Coverage_CoverPkgConfig.CoverPkgConfig((outConfig : stdgo.GoString), (pkgPath : stdgo.GoString), (pkgName : stdgo.GoString), (granularity : stdgo.GoString), (modulePath : stdgo.GoString), local);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
