package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_ipStackCapabilities_static_extension) abstract T_ipStackCapabilities(stdgo._internal.net.Net_T_ipStackCapabilities.T_ipStackCapabilities) from stdgo._internal.net.Net_T_ipStackCapabilities.T_ipStackCapabilities to stdgo._internal.net.Net_T_ipStackCapabilities.T_ipStackCapabilities {
    public var once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get_once():stdgo._internal.sync.Sync_Once.Once return this.once;
    function set_once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this.once = v;
        return v;
    }
    public function new(?once:stdgo._internal.sync.Sync_Once.Once) this = new stdgo._internal.net.Net_T_ipStackCapabilities.T_ipStackCapabilities(once);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
