package stdgo._internal.internal.coverage;
@:structInit @:using(stdgo._internal.internal.coverage.Coverage_funcdesc_static_extension.FuncDesc_static_extension) class FuncDesc {
    public var funcname : stdgo.GoString = "";
    public var srcfile : stdgo.GoString = "";
    public var units : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit> = (null : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>);
    public var lit : Bool = false;
    public function new(?funcname:stdgo.GoString, ?srcfile:stdgo.GoString, ?units:stdgo.Slice<stdgo._internal.internal.coverage.Coverage_coverableunit.CoverableUnit>, ?lit:Bool) {
        if (funcname != null) this.funcname = funcname;
        if (srcfile != null) this.srcfile = srcfile;
        if (units != null) this.units = units;
        if (lit != null) this.lit = lit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FuncDesc(funcname, srcfile, units, lit);
    }
}
