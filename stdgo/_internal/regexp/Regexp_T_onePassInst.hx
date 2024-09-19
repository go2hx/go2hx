package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_T_onePassInst_static_extension.T_onePassInst_static_extension) class T_onePassInst {
    @:embedded
    public var inst : stdgo._internal.regexp.syntax.Syntax_Inst.Inst = ({} : stdgo._internal.regexp.syntax.Syntax_Inst.Inst);
    public var next : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?inst:stdgo._internal.regexp.syntax.Syntax_Inst.Inst, ?next:stdgo.Slice<stdgo.GoUInt32>) {
        if (inst != null) this.inst = inst;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function matchEmptyWidth(_old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return this.inst.matchEmptyWidth(_old, _new);
    @:embedded
    public function matchRune(_nameOff:stdgo.GoInt32):Bool return this.inst.matchRune(_nameOff);
    @:embedded
    public function matchRunePos(_nameOff:stdgo.GoInt32):stdgo.GoInt return this.inst.matchRunePos(_nameOff);
    @:embedded
    public function string():stdgo.GoString return this.inst.string();
    @:embedded
    public function _op():stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return this.inst._op();
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
