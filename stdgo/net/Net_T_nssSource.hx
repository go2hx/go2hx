package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_nssSource_static_extension) abstract T_nssSource(stdgo._internal.net.Net_T_nssSource.T_nssSource) from stdgo._internal.net.Net_T_nssSource.T_nssSource to stdgo._internal.net.Net_T_nssSource.T_nssSource {
    public function new() this = new stdgo._internal.net.Net_T_nssSource.T_nssSource();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
