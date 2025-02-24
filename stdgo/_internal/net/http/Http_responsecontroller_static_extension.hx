package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ResponseController_asInterface) class ResponseController_static_extension {
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t__interface_3.T__interface_3))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_3.T__interface_3 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_3.T__interface_3) : cast __type__;
                    return _t.enableFullDuplex();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t__interface_2.T__interface_2))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_2.T__interface_2) : cast __type__;
                    return _t.setWriteDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t__interface_1.T__interface_1))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_1.T__interface_1 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_1.T__interface_1) : cast __type__;
                    return _t.setReadDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function hijack( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_hijacker.Hijacker))) {
                    var _t:stdgo._internal.net.http.Http_hijacker.Hijacker = __type__ == null ? (null : stdgo._internal.net.http.Http_hijacker.Hijacker) : cast __type__;
                    return _t.hijack();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http__errnotsupported._errNotSupported() };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function flush( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t__interface_0.T__interface_0))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_0.T__interface_0 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_0.T__interface_0) : cast __type__;
                    return _t.flushError();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_flusher.Flusher))) {
                    var _t:stdgo._internal.net.http.Http_flusher.Flusher = __type__ == null ? (null : stdgo._internal.net.http.Http_flusher.Flusher) : cast __type__;
                    _t.flush();
                    return (null : stdgo.Error);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
}
