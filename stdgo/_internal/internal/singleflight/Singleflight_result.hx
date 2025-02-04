package stdgo._internal.internal.singleflight;
@:structInit @:using(stdgo._internal.internal.singleflight.Singleflight_result_static_extension.Result_static_extension) class Result {
    public var val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var shared : Bool = false;
    public function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool) {
        if (val != null) this.val = val;
        if (err != null) this.err = err;
        if (shared != null) this.shared = shared;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Result(val, err, shared);
    }
}
