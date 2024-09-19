package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksUsernamePassword_asInterface) class T_socksUsernamePassword_static_extension {
    @:keep
    static public function authenticate( _up:stdgo.Ref<stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword>, _ctx:stdgo._internal.context.Context_Context.Context, _rw:stdgo._internal.io.Io_ReadWriter.ReadWriter, _auth:stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod):stdgo.Error {
        @:recv var _up:stdgo.Ref<stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword> = _up;
        {
            final __value__ = _auth;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod))) {
                return (null : stdgo.Error);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod))) {
                if ((((_up.username.length) == ((0 : stdgo.GoInt)) || ((_up.username.length) > (255 : stdgo.GoInt) : Bool) : Bool) || ((_up.password.length) > (255 : stdgo.GoInt) : Bool) : Bool)) {
                    return stdgo._internal.errors.Errors_new_.new_(("invalid username/password" : stdgo.GoString));
                };
                var _b = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__append__((_up.username.length : stdgo.GoUInt8)));
                _b = (_b.__append__(...(_up.username : Array<stdgo.GoUInt8>)));
                _b = (_b.__append__((_up.password.length : stdgo.GoUInt8)));
                _b = (_b.__append__(...(_up.password : Array<stdgo.GoUInt8>)));
                {
                    var __tmp__ = _rw.write(_b), __35223:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rw, (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __35224:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                if (_b[(0 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8))) {
                    return stdgo._internal.errors.Errors_new_.new_(("invalid username/password version" : stdgo.GoString));
                };
                if (_b[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                    return stdgo._internal.errors.Errors_new_.new_(("username/password authentication failed" : stdgo.GoString));
                };
                return (null : stdgo.Error);
            };
        };
        return stdgo._internal.errors.Errors_new_.new_((("unsupported authentication method " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_auth : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
