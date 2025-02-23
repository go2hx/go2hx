package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksUsernamePassword_asInterface) class T_socksUsernamePassword_static_extension {
    @:keep
    @:tdfield
    static public function authenticate( _up:stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword>, _ctx:stdgo._internal.context.Context_context.Context, _rw:stdgo._internal.io.Io_readwriter.ReadWriter, _auth:stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod):stdgo.Error {
        @:recv var _up:stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword> = _up;
        {
            final __value__ = _auth;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod))) {
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod))) {
                if (((((@:checkr _up ?? throw "null pointer dereference").username.length) == ((0 : stdgo.GoInt)) || (((@:checkr _up ?? throw "null pointer dereference").username.length) > (255 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _up ?? throw "null pointer dereference").password.length) > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    return stdgo._internal.net.http.Http__errors._errors.new_(("invalid username/password" : stdgo.GoString));
                };
                var _b = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__(((@:checkr _up ?? throw "null pointer dereference").username.length : stdgo.GoUInt8)));
                _b = (_b.__append__(...((@:checkr _up ?? throw "null pointer dereference").username : Array<stdgo.GoUInt8>)));
                _b = (_b.__append__(((@:checkr _up ?? throw "null pointer dereference").password.length : stdgo.GoUInt8)));
                _b = (_b.__append__(...((@:checkr _up ?? throw "null pointer dereference").password : Array<stdgo.GoUInt8>)));
                {
                    var __tmp__ = _rw.write(_b), __3657:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.net.http.Http__io._io.readFull(_rw, (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __3658:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                if (_b[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
                    return stdgo._internal.net.http.Http__errors._errors.new_(("invalid username/password version" : stdgo.GoString));
                };
                if (_b[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    return stdgo._internal.net.http.Http__errors._errors.new_(("username/password authentication failed" : stdgo.GoString));
                };
                return (null : stdgo.Error);
            };
        };
        return stdgo._internal.net.http.Http__errors._errors.new_((("unsupported authentication method " : stdgo.GoString) + stdgo._internal.net.http.Http__strconv._strconv.itoa((_auth : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
