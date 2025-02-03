package stdgo.net.internal.socktest;
class Switch_static_extension {
    static public function getsockoptInt(_sw:Switch, _s:StdTypes.Int, _level:StdTypes.Int, _opt:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _level = (_level : stdgo.GoInt);
        final _opt = (_opt : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.getsockoptInt(_sw, _s, _level, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function accept(_sw:Switch, _s:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.accept(_sw, _s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function listen(_sw:Switch, _s:StdTypes.Int, _backlog:StdTypes.Int):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _backlog = (_backlog : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.listen(_sw, _s, _backlog);
    }
    static public function connect(_sw:Switch, _s:StdTypes.Int, _sa:stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.connect(_sw, _s, _sa);
    }
    static public function close(_sw:Switch, _s:StdTypes.Int):stdgo.Error {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.close(_sw, _s);
    }
    static public function socket(_sw:Switch, _family:StdTypes.Int, _sotype:StdTypes.Int, _proto:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _family = (_family : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _proto = (_proto : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.socket(_sw, _family, _sotype, _proto);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _addLocked(_sw:Switch, _s:StdTypes.Int, _family:StdTypes.Int, _sotype:StdTypes.Int, _proto:StdTypes.Int):Status {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        final _family = (_family : stdgo.GoInt);
        final _sotype = (_sotype : stdgo.GoInt);
        final _proto = (_proto : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension._addLocked(_sw, _s, _family, _sotype, _proto);
    }
    static public function _sockso(_sw:Switch, _s:StdTypes.Int):Status {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        final _s = (_s : stdgo.GoInt);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension._sockso(_sw, _s);
    }
    static public function set(_sw:Switch, _t:FilterType, _f:Filter):Void {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.set(_sw, _t, _f);
    }
    static public function sockets(_sw:Switch):Sockets {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        return stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.sockets(_sw);
    }
    static public function stats(_sw:Switch):Array<Stat> {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        return [for (i in stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension.stats(_sw)) i];
    }
    static public function _init(_sw:Switch):Void {
        final _sw = (_sw : stdgo.Ref<stdgo._internal.net.internal.socktest.Socktest_Switch.Switch>);
        stdgo._internal.net.internal.socktest.Socktest_Switch_static_extension.Switch_static_extension._init(_sw);
    }
}
