package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.T_testRecursive___localname___R_8108_static_extension) abstract T_testRecursive___localname___R_8108(stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108) from stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108 to stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108 {
    public var ptr(get, set) : T_testRecursive___localname___R_8108;
    function get_ptr():T_testRecursive___localname___R_8108 return this.ptr;
    function set_ptr(v:T_testRecursive___localname___R_8108):T_testRecursive___localname___R_8108 {
        this.ptr = (v : stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var sliceP(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_sliceP():Array<T_testRecursive___localname___R_8108> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.sliceP = ([for (i in v) (i : stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public var slice(get, set) : Array<T_testRecursive___localname___R_8108>;
    function get_slice():Array<T_testRecursive___localname___R_8108> return [for (i in this.slice) i];
    function set_slice(v:Array<T_testRecursive___localname___R_8108>):Array<T_testRecursive___localname___R_8108> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>;
    function get_map_():stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>):stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108> {
        this.map_ = (v : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>);
        return v;
    }
    public var mapP(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_mapP():stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return this.mapP;
    function set_mapP(v:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.mapP = (v : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public var mapR(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_mapR():stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return this.mapR;
    function set_mapR(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.mapR = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public var sliceMap(get, set) : Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>;
    function get_sliceMap():Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> return [for (i in this.sliceMap) i];
    function set_sliceMap(v:Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>):Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>> {
        this.sliceMap = ([for (i in v) (i : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>);
        return v;
    }
    public function new(?ptr:T_testRecursive___localname___R_8108, ?sliceP:Array<T_testRecursive___localname___R_8108>, ?slice:Array<T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>, ?sliceMap:Array<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>) this = new stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108((ptr : stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>), ([for (i in sliceP) (i : stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>), ([for (i in slice) i] : stdgo.Slice<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>), (map_ : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>), (mapP : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>), (mapR : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>), ([for (i in sliceMap) (i : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>)] : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_T_testRecursive___localname___R_8108.T_testRecursive___localname___R_8108>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
