package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.ProcInst_static_extension) abstract ProcInst(stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) from stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst to stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst {
    public var target(get, set) : String;
    function get_target():String return this.target;
    function set_target(v:String):String {
        this.target = (v : stdgo.GoString);
        return v;
    }
    public var inst(get, set) : Array<std.UInt>;
    function get_inst():Array<std.UInt> return [for (i in this.inst) i];
    function set_inst(v:Array<std.UInt>):Array<std.UInt> {
        this.inst = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?target:String, ?inst:Array<std.UInt>) this = new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst((target : stdgo.GoString), ([for (i in inst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
