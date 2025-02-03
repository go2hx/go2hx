package stdgo.net.internal.socktest;
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Stat_static_extension) abstract Stat(stdgo._internal.net.internal.socktest.Socktest_Stat.Stat) from stdgo._internal.net.internal.socktest.Socktest_Stat.Stat to stdgo._internal.net.internal.socktest.Socktest_Stat.Stat {
    public var family(get, set) : StdTypes.Int;
    function get_family():StdTypes.Int return this.family;
    function set_family(v:StdTypes.Int):StdTypes.Int {
        this.family = (v : stdgo.GoInt);
        return v;
    }
    public var type(get, set) : StdTypes.Int;
    function get_type():StdTypes.Int return this.type;
    function set_type(v:StdTypes.Int):StdTypes.Int {
        this.type = (v : stdgo.GoInt);
        return v;
    }
    public var protocol(get, set) : StdTypes.Int;
    function get_protocol():StdTypes.Int return this.protocol;
    function set_protocol(v:StdTypes.Int):StdTypes.Int {
        this.protocol = (v : stdgo.GoInt);
        return v;
    }
    public var opened(get, set) : haxe.UInt64;
    function get_opened():haxe.UInt64 return this.opened;
    function set_opened(v:haxe.UInt64):haxe.UInt64 {
        this.opened = (v : stdgo.GoUInt64);
        return v;
    }
    public var connected(get, set) : haxe.UInt64;
    function get_connected():haxe.UInt64 return this.connected;
    function set_connected(v:haxe.UInt64):haxe.UInt64 {
        this.connected = (v : stdgo.GoUInt64);
        return v;
    }
    public var listened(get, set) : haxe.UInt64;
    function get_listened():haxe.UInt64 return this.listened;
    function set_listened(v:haxe.UInt64):haxe.UInt64 {
        this.listened = (v : stdgo.GoUInt64);
        return v;
    }
    public var accepted(get, set) : haxe.UInt64;
    function get_accepted():haxe.UInt64 return this.accepted;
    function set_accepted(v:haxe.UInt64):haxe.UInt64 {
        this.accepted = (v : stdgo.GoUInt64);
        return v;
    }
    public var closed(get, set) : haxe.UInt64;
    function get_closed():haxe.UInt64 return this.closed;
    function set_closed(v:haxe.UInt64):haxe.UInt64 {
        this.closed = (v : stdgo.GoUInt64);
        return v;
    }
    public var openFailed(get, set) : haxe.UInt64;
    function get_openFailed():haxe.UInt64 return this.openFailed;
    function set_openFailed(v:haxe.UInt64):haxe.UInt64 {
        this.openFailed = (v : stdgo.GoUInt64);
        return v;
    }
    public var connectFailed(get, set) : haxe.UInt64;
    function get_connectFailed():haxe.UInt64 return this.connectFailed;
    function set_connectFailed(v:haxe.UInt64):haxe.UInt64 {
        this.connectFailed = (v : stdgo.GoUInt64);
        return v;
    }
    public var listenFailed(get, set) : haxe.UInt64;
    function get_listenFailed():haxe.UInt64 return this.listenFailed;
    function set_listenFailed(v:haxe.UInt64):haxe.UInt64 {
        this.listenFailed = (v : stdgo.GoUInt64);
        return v;
    }
    public var acceptFailed(get, set) : haxe.UInt64;
    function get_acceptFailed():haxe.UInt64 return this.acceptFailed;
    function set_acceptFailed(v:haxe.UInt64):haxe.UInt64 {
        this.acceptFailed = (v : stdgo.GoUInt64);
        return v;
    }
    public var closeFailed(get, set) : haxe.UInt64;
    function get_closeFailed():haxe.UInt64 return this.closeFailed;
    function set_closeFailed(v:haxe.UInt64):haxe.UInt64 {
        this.closeFailed = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?family:StdTypes.Int, ?type:StdTypes.Int, ?protocol:StdTypes.Int, ?opened:haxe.UInt64, ?connected:haxe.UInt64, ?listened:haxe.UInt64, ?accepted:haxe.UInt64, ?closed:haxe.UInt64, ?openFailed:haxe.UInt64, ?connectFailed:haxe.UInt64, ?listenFailed:haxe.UInt64, ?acceptFailed:haxe.UInt64, ?closeFailed:haxe.UInt64) this = new stdgo._internal.net.internal.socktest.Socktest_Stat.Stat(
(family : stdgo.GoInt),
(type : stdgo.GoInt),
(protocol : stdgo.GoInt),
(opened : stdgo.GoUInt64),
(connected : stdgo.GoUInt64),
(listened : stdgo.GoUInt64),
(accepted : stdgo.GoUInt64),
(closed : stdgo.GoUInt64),
(openFailed : stdgo.GoUInt64),
(connectFailed : stdgo.GoUInt64),
(listenFailed : stdgo.GoUInt64),
(acceptFailed : stdgo.GoUInt64),
(closeFailed : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
