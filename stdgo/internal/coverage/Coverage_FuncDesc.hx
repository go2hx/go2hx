package stdgo.internal.coverage;
@:structInit @:using(stdgo.internal.coverage.Coverage.FuncDesc_static_extension) abstract FuncDesc(stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc) from stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc to stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc {
    public var funcname(get, set) : String;
    function get_funcname():String return this.funcname;
    function set_funcname(v:String):String {
        this.funcname = (v : stdgo.GoString);
        return v;
    }
    public var srcfile(get, set) : String;
    function get_srcfile():String return this.srcfile;
    function set_srcfile(v:String):String {
        this.srcfile = (v : stdgo.GoString);
        return v;
    }
    public var units(get, set) : Array<CoverableUnit>;
    function get_units():Array<CoverableUnit> return [for (i in this.units) i];
    function set_units(v:Array<CoverableUnit>):Array<CoverableUnit> {
        this.units = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit>);
        return v;
    }
    public var lit(get, set) : Bool;
    function get_lit():Bool return this.lit;
    function set_lit(v:Bool):Bool {
        this.lit = v;
        return v;
    }
    public function new(?funcname:String, ?srcfile:String, ?units:Array<CoverableUnit>, ?lit:Bool) this = new stdgo._internal.internal.coverage.Coverage_FuncDesc.FuncDesc((funcname : stdgo.GoString), (srcfile : stdgo.GoString), ([for (i in units) i] : stdgo.Slice<stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit>), lit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
