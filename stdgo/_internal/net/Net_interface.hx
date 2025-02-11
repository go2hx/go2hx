package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_interface_static_extension.Interface_static_extension) class Interface {
    public var index : stdgo.GoInt = 0;
    public var mTU : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public var hardwareAddr : stdgo._internal.net.Net_hardwareaddr.HardwareAddr = (new stdgo._internal.net.Net_hardwareaddr.HardwareAddr(0, 0) : stdgo._internal.net.Net_hardwareaddr.HardwareAddr);
    public var flags : stdgo._internal.net.Net_flags.Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
    public function new(?index:stdgo.GoInt, ?mTU:stdgo.GoInt, ?name:stdgo.GoString, ?hardwareAddr:stdgo._internal.net.Net_hardwareaddr.HardwareAddr, ?flags:stdgo._internal.net.Net_flags.Flags) {
        if (index != null) this.index = index;
        if (mTU != null) this.mTU = mTU;
        if (name != null) this.name = name;
        if (hardwareAddr != null) this.hardwareAddr = hardwareAddr;
        if (flags != null) this.flags = flags;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Interface(index, mTU, name, hardwareAddr, flags);
    }
}
