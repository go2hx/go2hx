package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_Interface_static_extension.Interface_static_extension) class Interface {
    public var index : stdgo.GoInt = 0;
    public var mtu : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public var hardwareAddr : stdgo._internal.net.Net_HardwareAddr.HardwareAddr = new stdgo._internal.net.Net_HardwareAddr.HardwareAddr(0, 0);
    public var flags : stdgo._internal.net.Net_Flags.Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_Flags.Flags);
    public function new(?index:stdgo.GoInt, ?mtu:stdgo.GoInt, ?name:stdgo.GoString, ?hardwareAddr:stdgo._internal.net.Net_HardwareAddr.HardwareAddr, ?flags:stdgo._internal.net.Net_Flags.Flags) {
        if (index != null) this.index = index;
        if (mtu != null) this.mtu = mtu;
        if (name != null) this.name = name;
        if (hardwareAddr != null) this.hardwareAddr = hardwareAddr;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Interface(index, mtu, name, hardwareAddr, flags);
    }
}
