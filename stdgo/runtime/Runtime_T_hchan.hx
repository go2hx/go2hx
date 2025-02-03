package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_hchan_static_extension) abstract T_hchan(stdgo._internal.runtime.Runtime_T_hchan.T_hchan) from stdgo._internal.runtime.Runtime_T_hchan.T_hchan to stdgo._internal.runtime.Runtime_T_hchan.T_hchan {
    public function new() this = new stdgo._internal.runtime.Runtime_T_hchan.T_hchan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
