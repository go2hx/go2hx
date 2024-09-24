package stdgo.internal.buildcfg;
var error(get, set) : stdgo.Error;
private function get_error():stdgo.Error return stdgo._internal.internal.buildcfg.Buildcfg_error.error;
private function set_error(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = v;
        return v;
    }
final defaultGOEXPERIMENT : String = stdgo._internal.internal.buildcfg.Buildcfg_defaultGOEXPERIMENT.defaultGOEXPERIMENT;
var goroot(get, set) : String;
private function get_goroot():String return stdgo._internal.internal.buildcfg.Buildcfg_goroot.goroot;
private function set_goroot(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goroot.goroot = v;
        return v;
    }
var gowasm(get, set) : T_gowasmFeatures;
private function get_gowasm():T_gowasmFeatures return stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gowasm;
private function set_gowasm(v:T_gowasmFeatures):T_gowasmFeatures {
        stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gowasm = v;
        return v;
    }
var go386(get, set) : String;
private function get_go386():String return stdgo._internal.internal.buildcfg.Buildcfg_go386.go386;
private function set_go386(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_go386.go386 = v;
        return v;
    }
var goamd64(get, set) : StdTypes.Int;
private function get_goamd64():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goamd64.goamd64;
private function set_goamd64(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goamd64.goamd64 = v;
        return v;
    }
var gomips(get, set) : String;
private function get_gomips():String return stdgo._internal.internal.buildcfg.Buildcfg_gomips.gomips;
private function set_gomips(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips.gomips = v;
        return v;
    }
var gomips64(get, set) : String;
private function get_gomips64():String return stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gomips64;
private function set_gomips64(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gomips64 = v;
        return v;
    }
var goppc64(get, set) : StdTypes.Int;
private function get_goppc64():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goppc64.goppc64;
private function set_goppc64(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goppc64.goppc64 = v;
        return v;
    }
var go_LDSO(get, set) : String;
private function get_go_LDSO():String return stdgo._internal.internal.buildcfg.Buildcfg_go_LDSO.go_LDSO;
private function set_go_LDSO(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_go_LDSO.go_LDSO = v;
        return v;
    }
var version(get, set) : String;
private function get_version():String return stdgo._internal.internal.buildcfg.Buildcfg_version.version;
private function set_version(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_version.version = v;
        return v;
    }
var goos(get, set) : String;
private function get_goos():String return stdgo._internal.internal.buildcfg.Buildcfg_goos.goos;
private function set_goos(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goos.goos = v;
        return v;
    }
var goarch(get, set) : String;
private function get_goarch():String return stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch;
private function set_goarch(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goarch.goarch = v;
        return v;
    }
var goarm(get, set) : StdTypes.Int;
private function get_goarm():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goarm.goarm;
private function set_goarm(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goarm.goarm = v;
        return v;
    }
var experiment(get, set) : ExperimentFlags;
private function get_experiment():ExperimentFlags return stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment;
private function set_experiment(v:ExperimentFlags):ExperimentFlags {
        stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment = v;
        return v;
    }
var toolTags(get, set) : Array<String>;
private function get_toolTags():Array<String> return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_toolTags.toolTags) i];
private function set_toolTags(v:Array<String>):Array<String> {
        stdgo._internal.internal.buildcfg.Buildcfg_toolTags.toolTags = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
var framePointerEnabled(get, set) : Bool;
private function get_framePointerEnabled():Bool return stdgo._internal.internal.buildcfg.Buildcfg_framePointerEnabled.framePointerEnabled;
private function set_framePointerEnabled(v:Bool):Bool {
        stdgo._internal.internal.buildcfg.Buildcfg_framePointerEnabled.framePointerEnabled = v;
        return v;
    }
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
@:structInit @:using(stdgo.internal.buildcfg.Buildcfg.ExperimentFlags_static_extension) abstract ExperimentFlags(stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags) from stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags to stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags {
    public var flags(get, set) : _internal.internal.goexperiment.Goexperiment_Flags.Flags;
    function get_flags():_internal.internal.goexperiment.Goexperiment_Flags.Flags return this.flags;
    function set_flags(v:_internal.internal.goexperiment.Goexperiment_Flags.Flags):_internal.internal.goexperiment.Goexperiment_Flags.Flags {
        this.flags = v;
        return v;
    }
    public var _baseline(get, set) : _internal.internal.goexperiment.Goexperiment_Flags.Flags;
    function get__baseline():_internal.internal.goexperiment.Goexperiment_Flags.Flags return this._baseline;
    function set__baseline(v:_internal.internal.goexperiment.Goexperiment_Flags.Flags):_internal.internal.goexperiment.Goexperiment_Flags.Flags {
        this._baseline = v;
        return v;
    }
    public function new(?flags:_internal.internal.goexperiment.Goexperiment_Flags.Flags, ?_baseline:_internal.internal.goexperiment.Goexperiment_Flags.Flags) this = new stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags(flags, _baseline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_gowasmFeatures_static_extension {
    static public function string(_f:T_gowasmFeatures):String {
        return stdgo._internal.internal.buildcfg.Buildcfg_T_gowasmFeatures_static_extension.T_gowasmFeatures_static_extension.string(_f);
    }
}
class ExperimentFlags_static_extension {
    static public function all(_exp:ExperimentFlags):Array<String> {
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.all(_exp)) i];
    }
    static public function enabled(_exp:ExperimentFlags):Array<String> {
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.enabled(_exp)) i];
    }
    static public function string(_exp:ExperimentFlags):String {
        return stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags_static_extension.ExperimentFlags_static_extension.string(_exp);
    }
}
/**
    Package buildcfg provides access to the build configuration
    described by the current environment. It is for use by build tools
    such as cmd/go or cmd/compile and for setting up go/build's Default context.
    
    Note that it does NOT provide access to the build configuration used to
    build the currently-running binary. For that, use runtime.GOOS etc
    as well as internal/goexperiment.
**/
class Buildcfg {
    /**
        Check exits the program with a fatal error if Error is non-nil.
    **/
    static public function check():Void {
        stdgo._internal.internal.buildcfg.Buildcfg_check.check();
    }
    static public function getgoextlinkenabled():String {
        return stdgo._internal.internal.buildcfg.Buildcfg_getgoextlinkenabled.getgoextlinkenabled();
    }
    /**
        GOGOARCH returns the name and value of the GO$GOARCH setting.
        For example, if GOARCH is "amd64" it might return "GOAMD64", "v2".
    **/
    static public function gogoarch():stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_gogoarch.gogoarch();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseGOEXPERIMENT parses a (GOOS, GOARCH, GOEXPERIMENT)
        configuration tuple and returns the enabled and baseline experiment
        flag sets.
        
        TODO(mdempsky): Move to internal/goexperiment.
    **/
    static public function parseGOEXPERIMENT(_goos:String, _goarch:String, _goexp:String):stdgo.Tuple<ExperimentFlags, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_parseGOEXPERIMENT.parseGOEXPERIMENT(_goos, _goarch, _goexp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
