package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108_static_extension.T_testRecursive___localname___R_8108_static_extension) class T_testRecursive___localname___R_8108 {
    public var ptr : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
    public var sliceP : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
    public var slice : stdgo.Slice<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108> = (null : stdgo.Slice<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
    public var map_ : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108> = (null : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>);
    public var mapP : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
    public var mapR : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
    public var sliceMap : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>);
    public function new(?ptr:stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>, ?slice:stdgo.Slice<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick_t_testrecursive___localname___r_8108.T_testRecursive___localname___R_8108>>) {
        if (ptr != null) this.ptr = ptr;
        if (sliceP != null) this.sliceP = sliceP;
        if (slice != null) this.slice = slice;
        if (map_ != null) this.map_ = map_;
        if (mapP != null) this.mapP = mapP;
        if (mapR != null) this.mapR = mapR;
        if (sliceMap != null) this.sliceMap = sliceMap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRecursive___localname___R_8108(ptr, sliceP, slice, map_, mapP, mapR, sliceMap);
    }
}
