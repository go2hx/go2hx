package stdgo.strconv;
@:structInit @:using(stdgo.strconv.Strconv.NumError_static_extension) abstract NumError(stdgo._internal.strconv.Strconv_NumError.NumError) from stdgo._internal.strconv.Strconv_NumError.NumError to stdgo._internal.strconv.Strconv_NumError.NumError {
    public var func(get, set) : String;
    function get_func():String return this.func;
    function set_func(v:String):String {
        this.func = (v : stdgo.GoString);
        return v;
    }
    public var num(get, set) : String;
    function get_num():String return this.num;
    function set_num(v:String):String {
        this.num = (v : stdgo.GoString);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?func:String, ?num:String, ?err:stdgo.Error) this = new stdgo._internal.strconv.Strconv_NumError.NumError((func : stdgo.GoString), (num : stdgo.GoString), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
