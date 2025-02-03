package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_byName_static_extension) abstract T_byName(stdgo._internal.net.Net_T_byName.T_byName) from stdgo._internal.net.Net_T_byName.T_byName to stdgo._internal.net.Net_T_byName.T_byName {
    public function new() this = new stdgo._internal.net.Net_T_byName.T_byName();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
