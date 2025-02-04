package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_inst_static_extension.Inst_static_extension) class Inst {
    public var op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
    public var out : stdgo.GoUInt32 = 0;
    public var arg : stdgo.GoUInt32 = 0;
    public var rune : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public function new(?op:stdgo._internal.regexp.syntax.Syntax_instop.InstOp, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>) {
        if (op != null) this.op = op;
        if (out != null) this.out = out;
        if (arg != null) this.arg = arg;
        if (rune != null) this.rune = rune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Inst(op, out, arg, rune);
    }
}
