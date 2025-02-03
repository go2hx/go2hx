package stdgo.internal.singleflight;
@:structInit @:using(stdgo.internal.singleflight.Singleflight.Result_static_extension) abstract Result(stdgo._internal.internal.singleflight.Singleflight_Result.Result) from stdgo._internal.internal.singleflight.Singleflight_Result.Result to stdgo._internal.internal.singleflight.Singleflight_Result.Result {
    public var val(get, set) : stdgo.AnyInterface;
    function get_val():stdgo.AnyInterface return this.val;
    function set_val(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.val = (v : stdgo.AnyInterface);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var shared(get, set) : Bool;
    function get_shared():Bool return this.shared;
    function set_shared(v:Bool):Bool {
        this.shared = v;
        return v;
    }
    public function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool) this = new stdgo._internal.internal.singleflight.Singleflight_Result.Result((val : stdgo.AnyInterface), (err : stdgo.Error), shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
