package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.T_testNonZeroSliceAndMap___localname___Q_8763_static_extension) abstract T_testNonZeroSliceAndMap___localname___Q_8763(stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763) from stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 to stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763 {
    public var m(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get_m():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this.m;
    function set_m(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this.m = (v : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:Array<StdTypes.Int>) this = new stdgo._internal.testing.quick.Quick_T_testNonZeroSliceAndMap___localname___Q_8763.T_testNonZeroSliceAndMap___localname___Q_8763((m : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), ([for (i in s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
