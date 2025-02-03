package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testNesting___localname___RT_19135_static_extension) abstract T_testNesting___localname___RT_19135(stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135) from stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135 to stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testNesting___localname___RT_19135;
    function get_next():T_testNesting___localname___RT_19135 return this.next;
    function set_next(v:T_testNesting___localname___RT_19135):T_testNesting___localname___RT_19135 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>);
        return v;
    }
    public function new(?a:String, ?next:T_testNesting___localname___RT_19135) this = new stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135((a : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
