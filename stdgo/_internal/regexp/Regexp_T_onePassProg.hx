package stdgo._internal.regexp;
@:structInit class T_onePassProg {
    public var inst : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>);
    public var start : stdgo.GoInt = 0;
    public var numCap : stdgo.GoInt = 0;
    public function new(?inst:stdgo.Slice<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt) {
        if (inst != null) this.inst = inst;
        if (start != null) this.start = start;
        if (numCap != null) this.numCap = numCap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_onePassProg(inst, start, numCap);
    }
}
