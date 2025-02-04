package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_coverpkgconfig_static_extension.CoverPkgConfig_static_extension) class CoverPkgConfig {
    public var outConfig : stdgo.GoString = "";
    public var pkgPath : stdgo.GoString = "";
    public var pkgName : stdgo.GoString = "";
    public var granularity : stdgo.GoString = "";
    public var modulePath : stdgo.GoString = "";
    public var local : Bool = false;
    public function new(?outConfig:stdgo.GoString, ?pkgPath:stdgo.GoString, ?pkgName:stdgo.GoString, ?granularity:stdgo.GoString, ?modulePath:stdgo.GoString, ?local:Bool) {
        if (outConfig != null) this.outConfig = outConfig;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (pkgName != null) this.pkgName = pkgName;
        if (granularity != null) this.granularity = granularity;
        if (modulePath != null) this.modulePath = modulePath;
        if (local != null) this.local = local;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverPkgConfig(outConfig, pkgPath, pkgName, granularity, modulePath, local);
    }
}
