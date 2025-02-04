package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_procinst_static_extension.ProcInst_static_extension) class ProcInst {
    public var target : stdgo.GoString = "";
    public var inst : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?target:stdgo.GoString, ?inst:stdgo.Slice<stdgo.GoUInt8>) {
        if (target != null) this.target = target;
        if (inst != null) this.inst = inst;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProcInst(target, inst);
    }
}
