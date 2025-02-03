package stdgo.net;
@:structInit @:using(stdgo.net.Net.IPNet_static_extension) abstract IPNet(stdgo._internal.net.Net_IPNet.IPNet) from stdgo._internal.net.Net_IPNet.IPNet to stdgo._internal.net.Net_IPNet.IPNet {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var mask(get, set) : IPMask;
    function get_mask():IPMask return this.mask;
    function set_mask(v:IPMask):IPMask {
        this.mask = v;
        return v;
    }
    public function new(?iP:IP, ?mask:IPMask) this = new stdgo._internal.net.Net_IPNet.IPNet(iP, mask);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
