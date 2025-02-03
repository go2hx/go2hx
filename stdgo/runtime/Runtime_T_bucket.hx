package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_bucket_static_extension) abstract T_bucket(stdgo._internal.runtime.Runtime_T_bucket.T_bucket) from stdgo._internal.runtime.Runtime_T_bucket.T_bucket to stdgo._internal.runtime.Runtime_T_bucket.T_bucket {
    public function new() this = new stdgo._internal.runtime.Runtime_T_bucket.T_bucket();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
