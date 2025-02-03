package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.Prog_static_extension) abstract Prog(stdgo._internal.regexp.syntax.Syntax_Prog.Prog) from stdgo._internal.regexp.syntax.Syntax_Prog.Prog to stdgo._internal.regexp.syntax.Syntax_Prog.Prog {
    public var inst(get, set) : Array<Inst>;
    function get_inst():Array<Inst> return [for (i in this.inst) i];
    function set_inst(v:Array<Inst>):Array<Inst> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
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
    public function new(?inst:Array<Inst>, ?start:StdTypes.Int, ?numCap:StdTypes.Int) this = new stdgo._internal.regexp.syntax.Syntax_Prog.Prog(([for (i in inst) i] : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>), (start : stdgo.GoInt), (numCap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
