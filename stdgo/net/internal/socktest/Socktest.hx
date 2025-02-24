package stdgo.net.internal.socktest;
final filterSocket : FilterType = stdgo._internal.net.internal.socktest.Socktest_filtersocket.filterSocket;
final filterConnect = stdgo._internal.net.internal.socktest.Socktest_filterconnect.filterConnect;
final filterListen = stdgo._internal.net.internal.socktest.Socktest_filterlisten.filterListen;
final filterAccept = stdgo._internal.net.internal.socktest.Socktest_filteraccept.filterAccept;
final filterGetsockoptInt = stdgo._internal.net.internal.socktest.Socktest_filtergetsockoptint.filterGetsockoptInt;
final filterClose = stdgo._internal.net.internal.socktest.Socktest_filterclose.filterClose;
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Switch_static_extension) abstract Switch(stdgo._internal.net.internal.socktest.Socktest_switch.Switch) from stdgo._internal.net.internal.socktest.Socktest_switch.Switch to stdgo._internal.net.internal.socktest.Socktest_switch.Switch {
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _fmu(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__fmu():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._fmu;
    function set__fmu(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._fmu = v;
        return v;
    }
    public var _fltab(get, set) : Map<FilterType, Filter>;
    function get__fltab():Map<FilterType, Filter> return {
        final __obj__:Map<FilterType, Filter> = [];
        for (key => value in this._fltab) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__fltab(v:Map<FilterType, Filter>):Map<FilterType, Filter> {
        this._fltab = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _smu(get, set) : stdgo._internal.sync.Sync_rwmutex.RWMutex;
    function get__smu():stdgo._internal.sync.Sync_rwmutex.RWMutex return this._smu;
    function set__smu(v:stdgo._internal.sync.Sync_rwmutex.RWMutex):stdgo._internal.sync.Sync_rwmutex.RWMutex {
        this._smu = v;
        return v;
    }
    public var _sotab(get, set) : Sockets;
    function get__sotab():Sockets return this._sotab;
    function set__sotab(v:Sockets):Sockets {
        this._sotab = v;
        return v;
    }
    public var _stats(get, set) : T_stats;
    function get__stats():T_stats return this._stats;
    function set__stats(v:T_stats):T_stats {
        this._stats = v;
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_fmu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_fltab:Map<FilterType, Filter>, ?_smu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_sotab:Sockets, ?_stats:T_stats) this = new stdgo._internal.net.internal.socktest.Socktest_switch.Switch(_once, _fmu, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType, stdgo._internal.net.internal.socktest.Socktest_filter.Filter>();
        for (key => value in _fltab) {
            __obj__[key] = value;
        };
        __obj__;
    }, _smu, _sotab, _stats);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Status_static_extension) abstract Status(stdgo._internal.net.internal.socktest.Socktest_status.Status) from stdgo._internal.net.internal.socktest.Socktest_status.Status to stdgo._internal.net.internal.socktest.Socktest_status.Status {
    public var cookie(get, set) : Cookie;
    function get_cookie():Cookie return this.cookie;
    function set_cookie(v:Cookie):Cookie {
        this.cookie = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var socketErr(get, set) : stdgo.Error;
    function get_socketErr():stdgo.Error return this.socketErr;
    function set_socketErr(v:stdgo.Error):stdgo.Error {
        this.socketErr = (v : stdgo.Error);
        return v;
    }
    public function new(?cookie:Cookie, ?err:stdgo.Error, ?socketErr:stdgo.Error) this = new stdgo._internal.net.internal.socktest.Socktest_status.Status(cookie, (err : stdgo.Error), (socketErr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.internal.socktest.Socktest.Stat_static_extension) abstract Stat(stdgo._internal.net.internal.socktest.Socktest_stat.Stat) from stdgo._internal.net.internal.socktest.Socktest_stat.Stat to stdgo._internal.net.internal.socktest.Socktest_stat.Stat {
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
    public function new(?family:StdTypes.Int, ?type:StdTypes.Int, ?protocol:StdTypes.Int, ?opened:haxe.UInt64, ?connected:haxe.UInt64, ?listened:haxe.UInt64, ?accepted:haxe.UInt64, ?closed:haxe.UInt64, ?openFailed:haxe.UInt64, ?connectFailed:haxe.UInt64, ?listenFailed:haxe.UInt64, ?acceptFailed:haxe.UInt64, ?closeFailed:haxe.UInt64) this = new stdgo._internal.net.internal.socktest.Socktest_stat.Stat(
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
typedef Cookie = stdgo._internal.net.internal.socktest.Socktest_cookie.Cookie;
@:dox(hide) typedef T_stats = stdgo._internal.net.internal.socktest.Socktest_t_stats.T_stats;
typedef FilterType = stdgo._internal.net.internal.socktest.Socktest_filtertype.FilterType;
typedef Filter = stdgo._internal.net.internal.socktest.Socktest_filter.Filter;
typedef AfterFilter = stdgo._internal.net.internal.socktest.Socktest_afterfilter.AfterFilter;
typedef Sockets = stdgo._internal.net.internal.socktest.Socktest_sockets.Sockets;
typedef SwitchPointer = stdgo._internal.net.internal.socktest.Socktest_switchpointer.SwitchPointer;
class Switch_static_extension {
    static public function getsockoptInt(_sw:Switch, _s:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.getsockoptInt(_sw, _s, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function accept(_sw:Switch, _s:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.accept(_sw, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function listen(_sw:Switch, _s:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _backlog = (_backlog : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.listen(_sw, _s, _backlog);
    }
    static public function connect(_sw:Switch, _s:StdTypes.Int, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.connect(_sw, _s, _sa);
    }
    static public function close(_sw:Switch, _s:StdTypes.Int):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.close(_sw, _s);
    }
    static public function socket(_sw:Switch, _family:StdTypes.Int, _sotype:StdTypes.Int, _proto:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _family = (_family : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _proto = (_proto : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.socket(_sw, _family, _sotype, _proto);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _addLocked(_sw:Switch, _s:StdTypes.Int, _family:StdTypes.Int, _sotype:StdTypes.Int, _proto:StdTypes.Int):Status {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _family = (_family : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _proto = (_proto : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension._addLocked(_sw, _s, _family, _sotype, _proto);
    }
    static public function _sockso(_sw:Switch, _s:StdTypes.Int):Status {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension._sockso(_sw, _s);
    }
    static public function set(_sw:Switch, _t:FilterType, _f:Filter):Void {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.set(_sw, _t, _f);
    }
    static public function sockets(_sw:Switch):Sockets {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        return stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.sockets(_sw);
    }
    static public function stats(_sw:Switch):Array<Stat> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        return [for (i in stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension.stats(_sw)) i];
    }
    static public function _init(_sw:Switch):Void {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_switch.Switch>);
        stdgo._internal.net.internal.socktest.Socktest_switch_static_extension.Switch_static_extension._init(_sw);
    }
}
typedef StatusPointer = stdgo._internal.net.internal.socktest.Socktest_statuspointer.StatusPointer;
class Status_static_extension {
    static public function string(_so:Status):String {
        return stdgo._internal.net.internal.socktest.Socktest_status_static_extension.Status_static_extension.string(_so);
    }
}
typedef StatPointer = stdgo._internal.net.internal.socktest.Socktest_statpointer.StatPointer;
class Stat_static_extension {
    static public function string(_st:Stat):String {
        return stdgo._internal.net.internal.socktest.Socktest_stat_static_extension.Stat_static_extension.string(_st);
    }
}
typedef CookiePointer = stdgo._internal.net.internal.socktest.Socktest_cookiepointer.CookiePointer;
class Cookie_static_extension {
    static public function protocol(_c:Cookie):StdTypes.Int {
        return stdgo._internal.net.internal.socktest.Socktest_cookie_static_extension.Cookie_static_extension.protocol(_c);
    }
    static public function type(_c:Cookie):StdTypes.Int {
        return stdgo._internal.net.internal.socktest.Socktest_cookie_static_extension.Cookie_static_extension.type(_c);
    }
    static public function family(_c:Cookie):StdTypes.Int {
        return stdgo._internal.net.internal.socktest.Socktest_cookie_static_extension.Cookie_static_extension.family(_c);
    }
}
@:dox(hide) typedef T_statsPointer = stdgo._internal.net.internal.socktest.Socktest_t_statspointer.T_statsPointer;
@:dox(hide) class T_stats_static_extension {
    static public function _getLocked(_st:T_stats, _c:Cookie):Stat {
        return stdgo._internal.net.internal.socktest.Socktest_t_stats_static_extension.T_stats_static_extension._getLocked(_st, _c);
    }
}
typedef FilterTypePointer = stdgo._internal.net.internal.socktest.Socktest_filtertypepointer.FilterTypePointer;
class FilterType_static_extension {

}
typedef FilterPointer = stdgo._internal.net.internal.socktest.Socktest_filterpointer.FilterPointer;
class Filter_static_extension {
    static public function _apply(_f:Filter, _st:Status):stdgo.Tuple<AfterFilter, stdgo.Error> {
        final _st = (_st : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_filter_static_extension.Filter_static_extension._apply(_f, _st);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef AfterFilterPointer = stdgo._internal.net.internal.socktest.Socktest_afterfilterpointer.AfterFilterPointer;
class AfterFilter_static_extension {
    static public function _apply(_f:AfterFilter, _st:Status):stdgo.Error {
        final _st = (_st : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_status.Status>);
        return stdgo._internal.net.internal.socktest.Socktest_afterfilter_static_extension.AfterFilter_static_extension._apply(_f, _st);
    }
}
typedef SocketsPointer = stdgo._internal.net.internal.socktest.Socktest_socketspointer.SocketsPointer;
class Sockets_static_extension {

}
/**
    * Package socktest provides utilities for socket testing.
**/
class Socktest {

}
