package stdgo.internal.goexperiment;
var arenas : Bool = false;
var arenasInt : stdgo.GoUInt64 = 0i32;
var boringCrypto : Bool = false;
var boringCryptoInt : stdgo.GoUInt64 = 0i32;
var cacheProg : Bool = false;
var cacheProgInt : stdgo.GoUInt64 = 0i32;
var cgoCheck2 : Bool = false;
var cgoCheck2Int : stdgo.GoUInt64 = 0i32;
var coverageRedesign : Bool = true;
var coverageRedesignInt : stdgo.GoUInt64 = 1i32;
var fieldTrack : Bool = false;
var fieldTrackInt : stdgo.GoUInt64 = 0i32;
var heapMinimum512KiB : Bool = false;
var heapMinimum512KiBInt : stdgo.GoUInt64 = 0i32;
var loopVar : Bool = false;
var loopVarInt : stdgo.GoUInt64 = 0i32;
var pageTrace : Bool = false;
var pageTraceInt : stdgo.GoUInt64 = 0i32;
var preemptibleLoops : Bool = false;
var preemptibleLoopsInt : stdgo.GoUInt64 = 0i32;
var regabiArgs : Bool = false;
var regabiArgsInt : stdgo.GoUInt64 = 0i32;
var regabiWrappers : Bool = false;
var regabiWrappersInt : stdgo.GoUInt64 = 0i32;
var staticLockRanking : Bool = false;
var staticLockRankingInt : stdgo.GoUInt64 = 0i32;
typedef Flags = stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags;
typedef FlagsPointer = stdgo._internal.internal.goexperiment.Goexperiment_flagspointer.FlagsPointer;
/**
    * Package goexperiment implements support for toolchain experiments.
    * 
    * Toolchain experiments are controlled by the GOEXPERIMENT
    * environment variable. GOEXPERIMENT is a comma-separated list of
    * experiment names. GOEXPERIMENT can be set at make.bash time, which
    * sets the default experiments for binaries built with the tool
    * chain; or it can be set at build time. GOEXPERIMENT can also be set
    * to "none", which disables any experiments that were enabled at
    * make.bash time.
    * 
    * Experiments are exposed to the build in the following ways:
    * 
    * - Build tag goexperiment.x is set if experiment x (lower case) is
    * enabled.
    * 
    * - For each experiment x (in camel case), this package contains a
    * boolean constant x and an integer constant xInt.
    * 
    * - In runtime assembly, the macro GOEXPERIMENT_x is defined if
    * experiment x (lower case) is enabled.
    * 
    * In the toolchain, the set of experiments enabled for the current
    * build should be accessed via objabi.Experiment.
    * 
    * The set of experiments is included in the output of runtime.Version()
    * and "go version <binary>" if it differs from the default experiments.
    * 
    * For the set of experiments supported by the current toolchain, see
    * "go doc goexperiment.Flags".
    * 
    * Note that this package defines the set of experiments (in Flags)
    * and records the experiments that were enabled when the package
    * was compiled (as boolean and integer constants).
    * 
    * Note especially that this package does not itself change behavior
    * at run time based on the GOEXPERIMENT variable.
    * The code used in builds to interpret the GOEXPERIMENT variable
    * is in the separate package internal/buildcfg.
**/
class Goexperiment {

}
