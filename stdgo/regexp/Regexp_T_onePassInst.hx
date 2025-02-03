package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_onePassInst_static_extension) abstract T_onePassInst(stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst) from stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst to stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst {
    public var inst(get, set) : Inst;
    function get_inst():Inst return this.inst;
    function set_inst(v:Inst):Inst {
        this.inst = v;
        return v;
    }
    public var next(get, set) : Array<std.UInt>;
    function get_next():Array<std.UInt> return [for (i in this.next) i];
    function set_next(v:Array<std.UInt>):Array<std.UInt> {
        this.next = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?inst:Inst, ?next:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst(inst, ([for (i in next) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
