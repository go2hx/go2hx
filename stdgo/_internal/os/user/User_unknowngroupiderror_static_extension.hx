package stdgo._internal.os.user;
@:keep @:allow(stdgo._internal.os.user.User.UnknownGroupIdError_asInterface) class UnknownGroupIdError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_unknowngroupiderror.UnknownGroupIdError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_unknowngroupiderror.UnknownGroupIdError = _e;
        return (("group: unknown groupid " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
