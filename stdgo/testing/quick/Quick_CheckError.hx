package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.CheckError_static_extension) abstract CheckError(stdgo._internal.testing.quick.Quick_CheckError.CheckError) from stdgo._internal.testing.quick.Quick_CheckError.CheckError to stdgo._internal.testing.quick.Quick_CheckError.CheckError {
    public var count(get, set) : StdTypes.Int;
    function get_count():StdTypes.Int return this.count;
    function set_count(v:StdTypes.Int):StdTypes.Int {
        this.count = (v : stdgo.GoInt);
        return v;
    }
    public var in_(get, set) : Array<stdgo.AnyInterface>;
    function get_in_():Array<stdgo.AnyInterface> return [for (i in this.in_) i];
    function set_in_(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.in_ = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?count:StdTypes.Int, ?in_:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_CheckError.CheckError((count : stdgo.GoInt), ([for (i in in_) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
