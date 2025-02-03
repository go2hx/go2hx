package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.PtrInterfaceItem_static_extension) abstract PtrInterfaceItem(stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem) from stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem to stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem {
    public var str1(get, set) : stdgo.AnyInterface;
    function get_str1():stdgo.AnyInterface return this.str1;
    function set_str1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var str2(get, set) : stdgo.AnyInterface;
    function get_str2():stdgo.AnyInterface return this.str2;
    function set_str2(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.str2 = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?str1:stdgo.AnyInterface, ?str2:stdgo.AnyInterface) this = new stdgo._internal.encoding.gob.Gob_PtrInterfaceItem.PtrInterfaceItem((str1 : stdgo.AnyInterface), (str2 : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
