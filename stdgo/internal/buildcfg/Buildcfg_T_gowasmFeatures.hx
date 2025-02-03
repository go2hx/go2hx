package stdgo.internal.buildcfg;
@:structInit @:using(stdgo.internal.buildcfg.Buildcfg.T_gowasmFeatures_static_extension) abstract T_gowasmFeatures(stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures.T_gowasmFeatures) from stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures.T_gowasmFeatures to stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures.T_gowasmFeatures {
    public var satConv(get, set) : Bool;
    function get_satConv():Bool return this.satConv;
    function set_satConv(v:Bool):Bool {
        this.satConv = v;
        return v;
    }
    public var signExt(get, set) : Bool;
    function get_signExt():Bool return this.signExt;
    function set_signExt(v:Bool):Bool {
        this.signExt = v;
        return v;
    }
    public function new(?satConv:Bool, ?signExt:Bool) this = new stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures.T_gowasmFeatures(satConv, signExt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
