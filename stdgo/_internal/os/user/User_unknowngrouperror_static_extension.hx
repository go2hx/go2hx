package stdgo._internal.os.user;
@:keep @:allow(stdgo._internal.os.user.User.UnknownGroupError_asInterface) class UnknownGroupError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.os.user.User_unknowngrouperror.UnknownGroupError):stdgo.GoString {
        @:recv var _e:stdgo._internal.os.user.User_unknowngrouperror.UnknownGroupError = _e;
        return (("group: unknown group " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
