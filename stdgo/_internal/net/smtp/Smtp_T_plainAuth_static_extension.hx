package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.T_plainAuth_asInterface) class T_plainAuth_static_extension {
    @:keep
    static public function next( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth> = _a;
        if (_more) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("unexpected server challenge" : stdgo.GoString)) };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function start( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth>, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_ServerInfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_T_plainAuth.T_plainAuth> = _a;
        if ((!_server.tls && !stdgo._internal.net.smtp.Smtp__isLocalhost._isLocalhost(_server.name?.__copy__()) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("unencrypted connection" : stdgo.GoString)) };
        };
        if (_server.name != (_a._host)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("wrong host name" : stdgo.GoString)) };
        };
        var _resp = (((((_a._identity + stdgo.Go.str(0)?.__copy__() : stdgo.GoString) + _a._username?.__copy__() : stdgo.GoString) + stdgo.Go.str(0)?.__copy__() : stdgo.GoString) + _a._password?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : ("PLAIN" : stdgo.GoString), _1 : _resp, _2 : (null : stdgo.Error) };
    }
}
