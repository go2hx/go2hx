package stdgo._internal.os.user;
@:local @:using(stdgo._internal.os.user.User_T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var once : stdgo._internal.sync.Sync_Once.Once;
    public var _u : stdgo.Ref<stdgo._internal.os.user.User_User.User>;
    public var _err : stdgo.Error;
};
