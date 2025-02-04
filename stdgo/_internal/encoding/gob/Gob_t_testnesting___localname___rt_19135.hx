package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135_static_extension.T_testNesting___localname___RT_19135_static_extension) class T_testNesting___localname___RT_19135 {
    public var a : stdgo.GoString = "";
    public var next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>);
    public function new(?a:stdgo.GoString, ?next:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testnesting___localname___rt_19135.T_testNesting___localname___RT_19135>) {
        if (a != null) this.a = a;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNesting___localname___RT_19135(a, next);
    }
}
