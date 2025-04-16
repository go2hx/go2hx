package stdgo.internal.buildcfg;
var error(get, set) : stdgo.Error;
private function get_error():stdgo.Error return stdgo._internal.internal.buildcfg.Buildcfg_error.error;
private function set_error(v:stdgo.Error):stdgo.Error {
        stdgo._internal.internal.buildcfg.Buildcfg_error.error = v;
        return v;
    }
var defaultGOEXPERIMENT : stdgo.GoString = stdgo.Go.str();
var gOROOT(get, set) : stdgo.GoString;
private function get_gOROOT():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_goroot.gOROOT;
private function set_gOROOT(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_goroot.gOROOT = v;
        return v;
    }
var gOWASM(get, set) : stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures;
private function get_gOWASM():stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures return stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gOWASM;
private function set_gOWASM(v:stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures):stdgo._internal.internal.buildcfg.Buildcfg_t_gowasmfeatures.T_gowasmFeatures {
        stdgo._internal.internal.buildcfg.Buildcfg_gowasm.gOWASM = v;
        return v;
    }
var gO386(get, set) : stdgo.GoString;
private function get_gO386():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_go386.gO386;
private function set_gO386(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_go386.gO386 = v;
        return v;
    }
var gOAMD64(get, set) : stdgo.GoInt;
private function get_gOAMD64():stdgo.GoInt return stdgo._internal.internal.buildcfg.Buildcfg_goamd64.gOAMD64;
private function set_gOAMD64(v:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.buildcfg.Buildcfg_goamd64.gOAMD64 = v;
        return v;
    }
var gOMIPS(get, set) : stdgo.GoString;
private function get_gOMIPS():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_gomips.gOMIPS;
private function set_gOMIPS(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips.gOMIPS = v;
        return v;
    }
var gOMIPS64(get, set) : stdgo.GoString;
private function get_gOMIPS64():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gOMIPS64;
private function set_gOMIPS64(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_gomips64.gOMIPS64 = v;
        return v;
    }
var gOPPC64(get, set) : stdgo.GoInt;
private function get_gOPPC64():stdgo.GoInt return stdgo._internal.internal.buildcfg.Buildcfg_goppc64.gOPPC64;
private function set_gOPPC64(v:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.buildcfg.Buildcfg_goppc64.gOPPC64 = v;
        return v;
    }
var gO_LDSO(get, set) : stdgo.GoString;
private function get_gO_LDSO():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_go_ldso.gO_LDSO;
private function set_gO_LDSO(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_go_ldso.gO_LDSO = v;
        return v;
    }
var version(get, set) : stdgo.GoString;
private function get_version():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_version.version;
private function set_version(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_version.version = v;
        return v;
    }
var gOOS(get, set) : stdgo.GoString;
private function get_gOOS():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS;
private function set_gOOS(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS = v;
        return v;
    }
var gOARCH(get, set) : stdgo.GoString;
private function get_gOARCH():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH;
private function set_gOARCH(v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH = v;
        return v;
    }
var gOARM(get, set) : stdgo.GoInt;
private function get_gOARM():stdgo.GoInt return stdgo._internal.internal.buildcfg.Buildcfg_goarm.gOARM;
private function set_gOARM(v:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.buildcfg.Buildcfg_goarm.gOARM = v;
        return v;
    }
var experiment(get, set) : ExperimentFlags;
private function get_experiment():ExperimentFlags return stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment;
private function set_experiment(v:ExperimentFlags):stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags {
        stdgo._internal.internal.buildcfg.Buildcfg_experiment.experiment = v;
        return v;
    }
var toolTags(get, set) : stdgo.Slice<stdgo.GoString>;
private function get_toolTags():stdgo.Slice<stdgo.GoString> return stdgo._internal.internal.buildcfg.Buildcfg_tooltags.toolTags;
private function set_toolTags(v:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.internal.buildcfg.Buildcfg_tooltags.toolTags = v;
        return v;
    }
var framePointerEnabled(get, set) : Bool;
private function get_framePointerEnabled():Bool return stdgo._internal.internal.buildcfg.Buildcfg_framepointerenabled.framePointerEnabled;
private function set_framePointerEnabled(v:Bool):Bool {
        stdgo._internal.internal.buildcfg.Buildcfg_framepointerenabled.framePointerEnabled = v;
        return v;
    }
typedef ExperimentFlags = stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags;
typedef ExperimentFlagsPointer = stdgo._internal.internal.buildcfg.Buildcfg_experimentflagspointer.ExperimentFlagsPointer;
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
    static public inline function check():Void stdgo._internal.internal.buildcfg.Buildcfg_check.check();
    static public inline function getgoextlinkenabled():stdgo.GoString return stdgo._internal.internal.buildcfg.Buildcfg_getgoextlinkenabled.getgoextlinkenabled();
    /**
        * GOGOARCH returns the name and value of the GO$GOARCH setting.
        * For example, if GOARCH is "amd64" it might return "GOAMD64", "v2".
    **/
    static public inline function gOGOARCH():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return stdgo._internal.internal.buildcfg.Buildcfg_gogoarch.gOGOARCH();
    /**
        * ParseGOEXPERIMENT parses a (GOOS, GOARCH, GOEXPERIMENT)
        * configuration tuple and returns the enabled and baseline experiment
        * flag sets.
        * 
        * TODO(mdempsky): Move to internal/goexperiment.
    **/
    static public inline function parseGOEXPERIMENT(_goos:stdgo.GoString, _goarch:stdgo.GoString, _goexp:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.buildcfg.Buildcfg_experimentflags.ExperimentFlags>; var _1 : stdgo.Error; } return stdgo._internal.internal.buildcfg.Buildcfg_parsegoexperiment.parseGOEXPERIMENT(_goos, _goarch, _goexp);
}
