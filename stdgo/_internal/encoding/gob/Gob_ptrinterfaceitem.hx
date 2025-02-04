package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_ptrinterfaceitem_static_extension.PtrInterfaceItem_static_extension) class PtrInterfaceItem {
    public var str1 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var str2 : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?str1:stdgo.AnyInterface, ?str2:stdgo.AnyInterface) {
        if (str1 != null) this.str1 = str1;
        if (str2 != null) this.str2 = str2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PtrInterfaceItem(str1, str2);
    }
}
