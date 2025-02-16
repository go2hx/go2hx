package stdgo;
final arenas : Bool = stdgo._internal.internal.goexperiment.Goexperiment_arenas.arenas;
final arenasInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_arenasint.arenasInt;
final boringCrypto : Bool = stdgo._internal.internal.goexperiment.Goexperiment_boringcrypto.boringCrypto;
final boringCryptoInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_boringcryptoint.boringCryptoInt;
final cacheProg : Bool = stdgo._internal.internal.goexperiment.Goexperiment_cacheprog.cacheProg;
final cacheProgInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_cacheprogint.cacheProgInt;
final cgoCheck2 : Bool = stdgo._internal.internal.goexperiment.Goexperiment_cgocheck2.cgoCheck2;
final cgoCheck2Int : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_cgocheck2int.cgoCheck2Int;
final coverageRedesign : Bool = stdgo._internal.internal.goexperiment.Goexperiment_coverageredesign.coverageRedesign;
final coverageRedesignInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_coverageredesignint.coverageRedesignInt;
final fieldTrack : Bool = stdgo._internal.internal.goexperiment.Goexperiment_fieldtrack.fieldTrack;
final fieldTrackInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_fieldtrackint.fieldTrackInt;
final heapMinimum512KiB : Bool = stdgo._internal.internal.goexperiment.Goexperiment_heapminimum512kib.heapMinimum512KiB;
final heapMinimum512KiBInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_heapminimum512kibint.heapMinimum512KiBInt;
final loopVar : Bool = stdgo._internal.internal.goexperiment.Goexperiment_loopvar.loopVar;
final loopVarInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_loopvarint.loopVarInt;
final pageTrace : Bool = stdgo._internal.internal.goexperiment.Goexperiment_pagetrace.pageTrace;
final pageTraceInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_pagetraceint.pageTraceInt;
final preemptibleLoops : Bool = stdgo._internal.internal.goexperiment.Goexperiment_preemptibleloops.preemptibleLoops;
final preemptibleLoopsInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_preemptibleloopsint.preemptibleLoopsInt;
final regabiArgs : Bool = stdgo._internal.internal.goexperiment.Goexperiment_regabiargs.regabiArgs;
final regabiArgsInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_regabiargsint.regabiArgsInt;
final regabiWrappers : Bool = stdgo._internal.internal.goexperiment.Goexperiment_regabiwrappers.regabiWrappers;
final regabiWrappersInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_regabiwrappersint.regabiWrappersInt;
final staticLockRanking : Bool = stdgo._internal.internal.goexperiment.Goexperiment_staticlockranking.staticLockRanking;
final staticLockRankingInt : haxe.UInt64 = stdgo._internal.internal.goexperiment.Goexperiment_staticlockrankingint.staticLockRankingInt;
@:structInit @:using(stdgo.internal.goexperiment.Goexperiment.Flags_static_extension) abstract Flags(stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags) from stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags to stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags {
    public var fieldTrack(get, set) : Bool;
    function get_fieldTrack():Bool return this.fieldTrack;
    function set_fieldTrack(v:Bool):Bool {
        this.fieldTrack = v;
        return v;
    }
    public var preemptibleLoops(get, set) : Bool;
    function get_preemptibleLoops():Bool return this.preemptibleLoops;
    function set_preemptibleLoops(v:Bool):Bool {
        this.preemptibleLoops = v;
        return v;
    }
    public var staticLockRanking(get, set) : Bool;
    function get_staticLockRanking():Bool return this.staticLockRanking;
    function set_staticLockRanking(v:Bool):Bool {
        this.staticLockRanking = v;
        return v;
    }
    public var boringCrypto(get, set) : Bool;
    function get_boringCrypto():Bool return this.boringCrypto;
    function set_boringCrypto(v:Bool):Bool {
        this.boringCrypto = v;
        return v;
    }
    public var regabiWrappers(get, set) : Bool;
    function get_regabiWrappers():Bool return this.regabiWrappers;
    function set_regabiWrappers(v:Bool):Bool {
        this.regabiWrappers = v;
        return v;
    }
    public var regabiArgs(get, set) : Bool;
    function get_regabiArgs():Bool return this.regabiArgs;
    function set_regabiArgs(v:Bool):Bool {
        this.regabiArgs = v;
        return v;
    }
    public var heapMinimum512KiB(get, set) : Bool;
    function get_heapMinimum512KiB():Bool return this.heapMinimum512KiB;
    function set_heapMinimum512KiB(v:Bool):Bool {
        this.heapMinimum512KiB = v;
        return v;
    }
    public var coverageRedesign(get, set) : Bool;
    function get_coverageRedesign():Bool return this.coverageRedesign;
    function set_coverageRedesign(v:Bool):Bool {
        this.coverageRedesign = v;
        return v;
    }
    public var arenas(get, set) : Bool;
    function get_arenas():Bool return this.arenas;
    function set_arenas(v:Bool):Bool {
        this.arenas = v;
        return v;
    }
    public var pageTrace(get, set) : Bool;
    function get_pageTrace():Bool return this.pageTrace;
    function set_pageTrace(v:Bool):Bool {
        this.pageTrace = v;
        return v;
    }
    public var cgoCheck2(get, set) : Bool;
    function get_cgoCheck2():Bool return this.cgoCheck2;
    function set_cgoCheck2(v:Bool):Bool {
        this.cgoCheck2 = v;
        return v;
    }
    public var loopVar(get, set) : Bool;
    function get_loopVar():Bool return this.loopVar;
    function set_loopVar(v:Bool):Bool {
        this.loopVar = v;
        return v;
    }
    public var cacheProg(get, set) : Bool;
    function get_cacheProg():Bool return this.cacheProg;
    function set_cacheProg(v:Bool):Bool {
        this.cacheProg = v;
        return v;
    }
    public function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?regabiWrappers:Bool, ?regabiArgs:Bool, ?heapMinimum512KiB:Bool, ?coverageRedesign:Bool, ?arenas:Bool, ?pageTrace:Bool, ?cgoCheck2:Bool, ?loopVar:Bool, ?cacheProg:Bool) this = new stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags(
fieldTrack,
preemptibleLoops,
staticLockRanking,
boringCrypto,
regabiWrappers,
regabiArgs,
heapMinimum512KiB,
coverageRedesign,
arenas,
pageTrace,
cgoCheck2,
loopVar,
cacheProg);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef FlagsPointer = stdgo._internal.internal.goexperiment.Goexperiment_flagspointer.FlagsPointer;
class Flags_static_extension {

}
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
