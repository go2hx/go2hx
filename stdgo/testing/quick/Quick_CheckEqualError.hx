package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.CheckEqualError_static_extension) abstract CheckEqualError(stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError) from stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError to stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError {
    public var checkError(get, set) : CheckError;
    function get_checkError():CheckError return this.checkError;
    function set_checkError(v:CheckError):CheckError {
        this.checkError = v;
        return v;
    }
    public var out1(get, set) : Array<stdgo.AnyInterface>;
    function get_out1():Array<stdgo.AnyInterface> return [for (i in this.out1) i];
    function set_out1(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out1 = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public var out2(get, set) : Array<stdgo.AnyInterface>;
    function get_out2():Array<stdgo.AnyInterface> return [for (i in this.out2) i];
    function set_out2(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.out2 = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?checkError:CheckError, ?out1:Array<stdgo.AnyInterface>, ?out2:Array<stdgo.AnyInterface>) this = new stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError(checkError, ([for (i in out1) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>), ([for (i in out2) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
