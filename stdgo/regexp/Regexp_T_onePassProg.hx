package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_onePassProg_static_extension) abstract T_onePassProg(stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg) from stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg to stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg {
    public var inst(get, set) : Array<T_onePassInst>;
    function get_inst():Array<T_onePassInst> return [for (i in this.inst) i];
    function set_inst(v:Array<T_onePassInst>):Array<T_onePassInst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
        return v;
    }
    public var start(get, set) : StdTypes.Int;
    function get_start():StdTypes.Int return this.start;
    function set_start(v:StdTypes.Int):StdTypes.Int {
        this.start = (v : stdgo.GoInt);
        return v;
    }
    public var numCap(get, set) : StdTypes.Int;
    function get_numCap():StdTypes.Int return this.numCap;
    function set_numCap(v:StdTypes.Int):StdTypes.Int {
        this.numCap = (v : stdgo.GoInt);
        return v;
    }
    public function new(?inst:Array<T_onePassInst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>), (start : stdgo.GoInt), (numCap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
