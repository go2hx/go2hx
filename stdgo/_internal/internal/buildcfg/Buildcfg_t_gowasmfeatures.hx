package stdgo._internal.internal.buildcfg;
@:structInit @:using(stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures_static_extension.T_gowasmFeatures_static_extension) class T_gowasmFeatures {
    public var satConv : Bool = false;
    public var signExt : Bool = false;
    public function new(?satConv:Bool, ?signExt:Bool) {
        if (satConv != null) this.satConv = satConv;
        if (signExt != null) this.signExt = signExt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gowasmFeatures(satConv, signExt);
    }
}
