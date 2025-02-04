package stdgo._internal.net.internal.socktest;
@:structInit @:using(stdgo._internal.net.internal.socktest.Socktest_stat_static_extension.Stat_static_extension) class Stat {
    public var family : stdgo.GoInt = 0;
    public var type : stdgo.GoInt = 0;
    public var protocol : stdgo.GoInt = 0;
    public var opened : stdgo.GoUInt64 = 0;
    public var connected : stdgo.GoUInt64 = 0;
    public var listened : stdgo.GoUInt64 = 0;
    public var accepted : stdgo.GoUInt64 = 0;
    public var closed : stdgo.GoUInt64 = 0;
    public var openFailed : stdgo.GoUInt64 = 0;
    public var connectFailed : stdgo.GoUInt64 = 0;
    public var listenFailed : stdgo.GoUInt64 = 0;
    public var acceptFailed : stdgo.GoUInt64 = 0;
    public var closeFailed : stdgo.GoUInt64 = 0;
    public function new(?family:stdgo.GoInt, ?type:stdgo.GoInt, ?protocol:stdgo.GoInt, ?opened:stdgo.GoUInt64, ?connected:stdgo.GoUInt64, ?listened:stdgo.GoUInt64, ?accepted:stdgo.GoUInt64, ?closed:stdgo.GoUInt64, ?openFailed:stdgo.GoUInt64, ?connectFailed:stdgo.GoUInt64, ?listenFailed:stdgo.GoUInt64, ?acceptFailed:stdgo.GoUInt64, ?closeFailed:stdgo.GoUInt64) {
        if (family != null) this.family = family;
        if (type != null) this.type = type;
        if (protocol != null) this.protocol = protocol;
        if (opened != null) this.opened = opened;
        if (connected != null) this.connected = connected;
        if (listened != null) this.listened = listened;
        if (accepted != null) this.accepted = accepted;
        if (closed != null) this.closed = closed;
        if (openFailed != null) this.openFailed = openFailed;
        if (connectFailed != null) this.connectFailed = connectFailed;
        if (listenFailed != null) this.listenFailed = listenFailed;
        if (acceptFailed != null) this.acceptFailed = acceptFailed;
        if (closeFailed != null) this.closeFailed = closeFailed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Stat(
family,
type,
protocol,
opened,
connected,
listened,
accepted,
closed,
openFailed,
connectFailed,
listenFailed,
acceptFailed,
closeFailed);
    }
}
