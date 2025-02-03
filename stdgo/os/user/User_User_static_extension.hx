package stdgo.os.user;
class User_static_extension {
    static public function groupIds(_u:User_):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.os.user.User_User.User>);
        return {
            final obj = stdgo._internal.os.user.User_User_static_extension.User_static_extension.groupIds(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
