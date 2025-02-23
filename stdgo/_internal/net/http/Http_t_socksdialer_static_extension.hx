package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksDialer_asInterface) class T_socksDialer_static_extension {
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        {
            var _err = (@:check2r _d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
        if ((@:checkr _d ?? throw "null pointer dereference").proxyDial != null) {
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").proxyDial(stdgo._internal.net.http.Http__context._context.background(), (@:checkr _d ?? throw "null pointer dereference")._proxyNetwork?.__copy__(), (@:checkr _d ?? throw "null pointer dereference")._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo._internal.net.http.Http__net._net.dial((@:checkr _d ?? throw "null pointer dereference")._proxyNetwork?.__copy__(), (@:checkr _d ?? throw "null pointer dereference")._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        {
            var __tmp__ = @:check2r _d.dialWithConn(stdgo._internal.net.http.Http__context._context.background(), _c, _network?.__copy__(), _address?.__copy__()), __3644:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _c.close();
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
            };
        };
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dialWithConn( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.net.Net_conn.Conn, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        {
            var _err = (@:check2r _d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
            };
        };
        if (_ctx == null) {
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.net.http.Http__errors._errors.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        var __tmp__ = @:check2r _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_addr.Addr), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        return { _0 : _a, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer> = _d;
        {
            var _err = (@:check2r _d._validateTarget(_network?.__copy__(), _address?.__copy__()) : stdgo.Error);
            if (_err != null) {
                var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
            };
        };
        if (_ctx == null) {
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : stdgo._internal.net.http.Http__errors._errors.new_(("nil context" : stdgo.GoString)) } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        var _c:stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
        if ((@:checkr _d ?? throw "null pointer dereference").proxyDial != null) {
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").proxyDial(_ctx, (@:checkr _d ?? throw "null pointer dereference")._proxyNetwork?.__copy__(), (@:checkr _d ?? throw "null pointer dereference")._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            var _dd:stdgo._internal.net.Net_dialer.Dialer = ({} : stdgo._internal.net.Net_dialer.Dialer);
            {
                var __tmp__ = @:check2 _dd.dialContext(_ctx, (@:checkr _d ?? throw "null pointer dereference")._proxyNetwork?.__copy__(), (@:checkr _d ?? throw "null pointer dereference")._proxyAddress?.__copy__());
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        var __tmp__ = @:check2r _d._connect(_ctx, _c, _address?.__copy__()), _a:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _c.close();
            var __tmp__ = @:check2r _d._pathAddrs(_address?.__copy__()), _proxy:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _dst:stdgo._internal.net.Net_addr.Addr = __tmp__._1, __3644:stdgo.Error = __tmp__._2;
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ((@:checkr _d ?? throw "null pointer dereference")._cmd.string() : stdgo.GoString)?.__copy__(), net : _network?.__copy__(), source : _proxy, addr : _dst, err : _err } : stdgo._internal.net.Net_operror.OpError)) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>)) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ conn : _c, _boundAddr : _a } : stdgo._internal.net.http.Http_t_socksconn.T_socksConn)) : stdgo.Ref<stdgo._internal.net.http.Http_t_socksconn.T_socksConn>)), _1 : (null : stdgo.Error) };
    }
}
