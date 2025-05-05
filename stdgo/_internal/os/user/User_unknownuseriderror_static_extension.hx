package stdgo._internal.os.user;
@:keep @:allow(stdgo._internal.os.user.User.UnknownUserIdError_asInterface) class UnknownUserIdError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_unknownuseriderror.UnknownUserIdError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_unknownuseriderror.UnknownUserIdError = _e;
        //"file:///home/runner/.go/go1.21.3/src/os/user/user.go#L70"
        return (("user: unknown userid " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_e : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
