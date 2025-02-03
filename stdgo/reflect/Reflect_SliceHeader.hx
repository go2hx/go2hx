package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.SliceHeader_static_extension) abstract SliceHeader(stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader) from stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader to stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader {
    public var data(get, set) : stdgo.GoUIntptr;
    function get_data():stdgo.GoUIntptr return this.data;
    function set_data(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.data = (v : stdgo.GoUIntptr);
        return v;
    }
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = (v : stdgo.GoInt);
        return v;
    }
    public function new(?data:stdgo.GoUIntptr, ?len:StdTypes.Int, ?cap:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader((data : stdgo.GoUIntptr), (len : stdgo.GoInt), (cap : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
