package stdgo._internal.net.smtp;
@:keep @:allow(stdgo._internal.net.smtp.Smtp.T_plainAuth_asInterface) class T_plainAuth_static_extension {
    @:keep
    @:tdfield
    static public function next( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth>, _fromServer:stdgo.Slice<stdgo.GoUInt8>, _more:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth> = _a;
        if (_more) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("unexpected server challenge" : stdgo.GoString)) };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function start( _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth>, _server:stdgo.Ref<stdgo._internal.net.smtp.Smtp_serverinfo.ServerInfo>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.smtp.Smtp_t_plainauth.T_plainAuth> = _a;
        if ((!(@:checkr _server ?? throw "null pointer dereference").tLS && !stdgo._internal.net.smtp.Smtp__islocalhost._isLocalhost((@:checkr _server ?? throw "null pointer dereference").name?.__copy__()) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("unencrypted connection" : stdgo.GoString)) };
        };
        if ((@:checkr _server ?? throw "null pointer dereference").name != ((@:checkr _a ?? throw "null pointer dereference")._host)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("wrong host name" : stdgo.GoString)) };
        };
        var _resp = ((((((@:checkr _a ?? throw "null pointer dereference")._identity + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _a ?? throw "null pointer dereference")._username?.__copy__() : stdgo.GoString) + (stdgo.Go.str(0) : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _a ?? throw "null pointer dereference")._password?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : ("PLAIN" : stdgo.GoString), _1 : _resp, _2 : (null : stdgo.Error) };
    }
}
