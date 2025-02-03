package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_sysDialer_static_extension) abstract T_sysDialer(stdgo._internal.net.Net_T_sysDialer.T_sysDialer) from stdgo._internal.net.Net_T_sysDialer.T_sysDialer to stdgo._internal.net.Net_T_sysDialer.T_sysDialer {
    public var dialer(get, set) : Dialer;
    function get_dialer():Dialer return this.dialer;
    function set_dialer(v:Dialer):Dialer {
        this.dialer = v;
        return v;
    }
    public function new(?dialer:Dialer) this = new stdgo._internal.net.Net_T_sysDialer.T_sysDialer(dialer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
