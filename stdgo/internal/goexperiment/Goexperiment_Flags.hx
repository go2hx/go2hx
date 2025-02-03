package stdgo.internal.goexperiment;
@:structInit @:using(stdgo.internal.goexperiment.Goexperiment.Flags_static_extension) abstract Flags(stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags) from stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags to stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags {
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
    public function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?regabiWrappers:Bool, ?regabiArgs:Bool, ?heapMinimum512KiB:Bool, ?coverageRedesign:Bool, ?arenas:Bool, ?pageTrace:Bool, ?cgoCheck2:Bool, ?loopVar:Bool, ?cacheProg:Bool) this = new stdgo._internal.internal.goexperiment.Goexperiment_Flags.Flags(
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
