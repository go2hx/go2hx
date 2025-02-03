package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.ChanType_static_extension) abstract ChanType(stdgo._internal.internal.abi.Abi_ChanType.ChanType) from stdgo._internal.internal.abi.Abi_ChanType.ChanType to stdgo._internal.internal.abi.Abi_ChanType.ChanType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var elem(get, set) : Type_;
    function get_elem():Type_ return this.elem;
    function set_elem(v:Type_):Type_ {
        this.elem = (v : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return v;
    }
    public var dir(get, set) : ChanDir;
    function get_dir():ChanDir return this.dir;
    function set_dir(v:ChanDir):ChanDir {
        this.dir = v;
        return v;
    }
    public function new(?type:Type_, ?elem:Type_, ?dir:ChanDir) this = new stdgo._internal.internal.abi.Abi_ChanType.ChanType(type, (elem : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>), dir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
