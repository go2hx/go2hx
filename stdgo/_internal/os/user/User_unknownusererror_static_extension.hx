package stdgo._internal.os.user;
@:keep @:allow(stdgo._internal.os.user.User.UnknownUserError_asInterface) class UnknownUserError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_unknownusererror.UnknownUserError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_unknownusererror.UnknownUserError = _e;
        return (("user: unknown user " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
