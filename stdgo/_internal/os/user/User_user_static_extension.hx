package stdgo._internal.os.user;
@:keep @:allow(stdgo._internal.os.user.User.User_asInterface) class User_static_extension {
    @:keep
    @:tdfield
    static public function groupIds( _u:stdgo.Ref<stdgo._internal.os.user.User_user.User>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.os.user.User_user.User> = _u;
        return stdgo._internal.os.user.User__listgroups._listGroups(_u);
    }
}
