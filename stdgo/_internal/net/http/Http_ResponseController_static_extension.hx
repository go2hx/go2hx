package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ResponseController_asInterface) class ResponseController_static_extension {
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T__interface_4.T__interface_4))) {
                    var _t:stdgo._internal.net.http.Http_T__interface_4.T__interface_4 = __type__ == null ? (null : stdgo._internal.net.http.Http_T__interface_4.T__interface_4) : cast __type__;
                    return _t.enableFullDuplex();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errNotSupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T__interface_3.T__interface_3))) {
                    var _t:stdgo._internal.net.http.Http_T__interface_3.T__interface_3 = __type__ == null ? (null : stdgo._internal.net.http.Http_T__interface_3.T__interface_3) : cast __type__;
                    return _t.setWriteDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errNotSupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T__interface_2.T__interface_2))) {
                    var _t:stdgo._internal.net.http.Http_T__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.net.http.Http_T__interface_2.T__interface_2) : cast __type__;
                    return _t.setReadDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errNotSupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function hijack( _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_Hijacker.Hijacker))) {
                    var _t:stdgo._internal.net.http.Http_Hijacker.Hijacker = __type__ == null ? (null : stdgo._internal.net.http.Http_Hijacker.Hijacker) : cast __type__;
                    return _t.hijack();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) : cast __type__;
                    return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http__errNotSupported._errNotSupported() };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function flush( _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_ResponseController.ResponseController> = _c;
        var _rw = ((@:checkr _c ?? throw "null pointer dereference")._rw : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
        while (true) {
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T__interface_1.T__interface_1))) {
                    var _t:stdgo._internal.net.http.Http_T__interface_1.T__interface_1 = __type__ == null ? (null : stdgo._internal.net.http.Http_T__interface_1.T__interface_1) : cast __type__;
                    return _t.flushError();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_Flusher.Flusher))) {
                    var _t:stdgo._internal.net.http.Http_Flusher.Flusher = __type__ == null ? (null : stdgo._internal.net.http.Http_Flusher.Flusher) : cast __type__;
                    _t.flush();
                    return (null : stdgo.Error);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper))) {
                    var _t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter) : cast __type__;
                    return stdgo._internal.net.http.Http__errNotSupported._errNotSupported();
                };
            };
        };
    }
}
