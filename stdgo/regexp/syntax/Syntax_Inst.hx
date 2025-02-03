package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.Inst_static_extension) abstract Inst(stdgo._internal.regexp.syntax.Syntax_Inst.Inst) from stdgo._internal.regexp.syntax.Syntax_Inst.Inst to stdgo._internal.regexp.syntax.Syntax_Inst.Inst {
    public var op(get, set) : InstOp;
    function get_op():InstOp return this.op;
    function set_op(v:InstOp):InstOp {
        this.op = v;
        return v;
    }
    public var out(get, set) : std.UInt;
    function get_out():std.UInt return this.out;
    function set_out(v:std.UInt):std.UInt {
        this.out = (v : stdgo.GoUInt32);
        return v;
    }
    public var arg(get, set) : std.UInt;
    function get_arg():std.UInt return this.arg;
    function set_arg(v:std.UInt):std.UInt {
        this.arg = (v : stdgo.GoUInt32);
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public function new(?op:InstOp, ?out:std.UInt, ?arg:std.UInt, ?rune:Array<StdTypes.Int>) this = new stdgo._internal.regexp.syntax.Syntax_Inst.Inst(op, (out : stdgo.GoUInt32), (arg : stdgo.GoUInt32), ([for (i in rune) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
