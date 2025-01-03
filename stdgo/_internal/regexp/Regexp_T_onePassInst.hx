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
    public var matchEmptyWidth(get, never) : (stdgo.GoInt32, stdgo.GoInt32) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchEmptyWidth():(stdgo.GoInt32, stdgo.GoInt32) -> Bool return @:check3 (this.inst ?? throw "null pointer derefrence").matchEmptyWidth;
    public var matchRune(get, never) : stdgo.GoInt32 -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchRune():stdgo.GoInt32 -> Bool return @:check3 (this.inst ?? throw "null pointer derefrence").matchRune;
    public var matchRunePos(get, never) : stdgo.GoInt32 -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get_matchRunePos():stdgo.GoInt32 -> stdgo.GoInt return @:check3 (this.inst ?? throw "null pointer derefrence").matchRunePos;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.inst ?? throw "null pointer derefrence").string;
    public var _op(get, never) : () -> stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp;
    @:embedded
    @:embeddededffieldsffun
    public function get__op():() -> stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return @:check3 (this.inst ?? throw "null pointer derefrence")._op;
    public function __copy__() {
        return new T_onePassInst(inst, next);
    }
}
