package stdgo;
var error(get, set) : stdgo.Error;
private function get_error():stdgo.Error return stdgo._internal.internal.buildcfg.Buildcfg_error.error;
private function set_error(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = (v : stdgo.Error);
        return v;
    }
final defaultGOEXPERIMENT : String = stdgo._internal.internal.buildcfg.Buildcfg_defaultgoexperiment.defaultGOEXPERIMENT;
var gOROOT(get, set) : String;
private function get_gOROOT():String return stdgo._internal.internal.buildcfg.Buildcfg_goroot.gOROOT;
private function set_gOROOT(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goroot.gOROOT = (v : stdgo.GoString);
        return v;
    }
var gOWASM(get, set) : T_gowasmFeatures;
private function get_gOWASM():T_gowasmFeatures return stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gOWASM;
private function set_gOWASM(v:T_gowasmFeatures):T_gowasmFeatures {
        stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gOWASM = v;
        return v;
    }
var gO386(get, set) : String;
private function get_gO386():String return stdgo._internal.internal.buildcfg.Buildcfg_go386.gO386;
private function set_gO386(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_go386.gO386 = (v : stdgo.GoString);
        return v;
    }
var gOAMD64(get, set) : StdTypes.Int;
private function get_gOAMD64():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goamd64.gOAMD64;
private function set_gOAMD64(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goamd64.gOAMD64 = (v : stdgo.GoInt);
        return v;
    }
var gOMIPS(get, set) : String;
private function get_gOMIPS():String return stdgo._internal.internal.buildcfg.Buildcfg_gomips.gOMIPS;
private function set_gOMIPS(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips.gOMIPS = (v : stdgo.GoString);
        return v;
    }
var gOMIPS64(get, set) : String;
private function get_gOMIPS64():String return stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gOMIPS64;
private function set_gOMIPS64(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gOMIPS64 = (v : stdgo.GoString);
        return v;
    }
var gOPPC64(get, set) : StdTypes.Int;
private function get_gOPPC64():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goppc64.gOPPC64;
private function set_gOPPC64(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goppc64.gOPPC64 = (v : stdgo.GoInt);
        return v;
    }
var gO_LDSO(get, set) : String;
private function get_gO_LDSO():String return stdgo._internal.internal.buildcfg.Buildcfg_go_ldso.gO_LDSO;
private function set_gO_LDSO(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_go_ldso.gO_LDSO = (v : stdgo.GoString);
        return v;
    }
var version(get, set) : String;
private function get_version():String return stdgo._internal.internal.buildcfg.Buildcfg_version.version;
private function set_version(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_version.version = (v : stdgo.GoString);
        return v;
    }
var gOOS(get, set) : String;
private function get_gOOS():String return stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS;
private function set_gOOS(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS = (v : stdgo.GoString);
        return v;
    }
var gOARCH(get, set) : String;
private function get_gOARCH():String return stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH;
private function set_gOARCH(v:String):String {
        stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH = (v : stdgo.GoString);
        return v;
    }
var gOARM(get, set) : StdTypes.Int;
private function get_gOARM():StdTypes.Int return stdgo._internal.internal.buildcfg.Buildcfg_goarm.gOARM;
private function set_gOARM(v:StdTypes.Int):StdTypes.Int {
        stdgo._internal.internal.buildcfg.Buildcfg_goarm.gOARM = (v : stdgo.GoInt);
        return v;
    }
var experiment(get, set) : ExperimentFlags;
private function get_experiment():ExperimentFlags return stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment;
private function set_experiment(v:ExperimentFlags):ExperimentFlags {
        stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment = v;
        return v;
    }
var toolTags(get, set) : Array<String>;
private function get_toolTags():Array<String> return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_tooltags.toolTags) i];
private function set_toolTags(v:Array<String>):Array<String> {
        stdgo._internal.internal.buildcfg.Buildcfg_tooltags.toolTags = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
var framePointerEnabled(get, set) : Bool;
private function get_framePointerEnabled():Bool return stdgo._internal.internal.buildcfg.Buildcfg_framepointerenabled.framePointerEnabled;
private function set_framePointerEnabled(v:Bool):Bool {
        stdgo._internal.internal.buildcfg.Buildcfg_framepointerenabled.framePointerEnabled = v;
        return v;
    }
@:structInit @:using(stdgo.internal.buildcfg.Buildcfg.T_gowasmFeatures_static_extension) @:dox(hide) abstract T_gowasmFeatures(stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures) from stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures to stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures {
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
    public function new(?satConv:Bool, ?signExt:Bool) this = new stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures(satConv, signExt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.buildcfg.Buildcfg.ExperimentFlags_static_extension) abstract ExperimentFlags(stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags) from stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags to stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags {
    public var flags(get, set) : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags;
    function get_flags():stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags return this.flags;
    function set_flags(v:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags):stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags {
        this.flags = v;
        return v;
    }
    public var _baseline(get, set) : stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags;
    function get__baseline():stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags return this._baseline;
    function set__baseline(v:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags):stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags {
        this._baseline = v;
        return v;
    }
    public function new(?flags:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags, ?_baseline:stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags) this = new stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags(flags, _baseline);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_gowasmFeaturesPointer = stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeaturespointer.T_gowasmFeaturesPointer;
@:dox(hide) class T_gowasmFeatures_static_extension {
    static public function string(_f:T_gowasmFeatures):String {
        return stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures_static_extension.T_gowasmFeatures_static_extension.string(_f);
    }
}
typedef ExperimentFlagsPointer = stdgo._internal.internal.buildcfg.Buildcfg_experimentflagspointer.ExperimentFlagsPointer;
class ExperimentFlags_static_extension {
    static public function all(_exp:ExperimentFlags):Array<String> {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>);
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_experimentflags_static_extension.ExperimentFlags_static_extension.all(_exp)) i];
    }
    static public function enabled(_exp:ExperimentFlags):Array<String> {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>);
        return [for (i in stdgo._internal.internal.buildcfg.Buildcfg_experimentflags_static_extension.ExperimentFlags_static_extension.enabled(_exp)) i];
    }
    static public function string(_exp:ExperimentFlags):String {
        final _exp = (_exp : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>);
        return stdgo._internal.internal.buildcfg.Buildcfg_experimentflags_static_extension.ExperimentFlags_static_extension.string(_exp);
    }
}
/**
    * Package buildcfg provides access to the build configuration
    * described by the current environment. It is for use by build tools
    * such as cmd/go or cmd/compile and for setting up go/build's Default context.
    * 
    * Note that it does NOT provide access to the build configuration used to
    * build the currently-running binary. For that, use runtime.GOOS etc
    * as well as internal/goexperiment.
**/
class Buildcfg {
    /**
        * Check exits the program with a fatal error if Error is non-nil.
    **/
    static public inline function check():Void {
        stdgo._internal.internal.buildcfg.Buildcfg_check.check();
    }
    static public inline function getgoextlinkenabled():String {
        return stdgo._internal.internal.buildcfg.Buildcfg_getgoextlinkenabled.getgoextlinkenabled();
    }
    /**
        * GOGOARCH returns the name and value of the GO$GOARCH setting.
        * For example, if GOARCH is "amd64" it might return "GOAMD64", "v2".
    **/
    static public inline function gOGOARCH():stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_gogoarch.gOGOARCH();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ParseGOEXPERIMENT parses a (GOOS, GOARCH, GOEXPERIMENT)
        * configuration tuple and returns the enabled and baseline experiment
        * flag sets.
        * 
        * TODO(mdempsky): Move to internal/goexperiment.
    **/
    static public inline function parseGOEXPERIMENT(_goos:String, _goarch:String, _goexp:String):stdgo.Tuple<ExperimentFlags, stdgo.Error> {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        final _goexp = (_goexp : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.buildcfg.Buildcfg_parsegoexperiment.parseGOEXPERIMENT(_goos, _goarch, _goexp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
