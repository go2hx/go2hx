package stdgo.os.user;
@:structInit @:using(stdgo.os.user.User.User_static_extension) abstract User_(stdgo._internal.os.user.User_User.User) from stdgo._internal.os.user.User_User.User to stdgo._internal.os.user.User_User.User {
    public var uid(get, set) : String;
    function get_uid():String return this.uid;
    function set_uid(v:String):String {
        this.uid = v;
        return v;
    }
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = v;
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var homeDir(get, set) : String;
    function get_homeDir():String return this.homeDir;
    function set_homeDir(v:String):String {
        this.homeDir = v;
        return v;
    }
    public function new(?uid:String, ?gid:String, ?username:String, ?name:String, ?homeDir:String) this = new stdgo._internal.os.user.User_User.User(uid, gid, username, name, homeDir);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Group(stdgo._internal.os.user.User_Group.Group) from stdgo._internal.os.user.User_Group.Group to stdgo._internal.os.user.User_Group.Group {
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public function new(?gid:String, ?name:String) this = new stdgo._internal.os.user.User_Group.Group(gid, name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {
    public static function _doSlow(__self__:stdgo._internal.os.user.User_T__struct_0.T__struct_0, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.os.user.User_T__struct_0_static_extension.T__struct_0_static_extension._doSlow(__self__, _f);
    }
    public static function do_(__self__:stdgo._internal.os.user.User_T__struct_0.T__struct_0, _f:() -> Void) {
        final _f = _f;
        stdgo._internal.os.user.User_T__struct_0_static_extension.T__struct_0_static_extension.do_(__self__, _f);
    }
}
typedef T__struct_0 = stdgo._internal.os.user.User_T__struct_0.T__struct_0;
typedef T_lineFunc = stdgo._internal.os.user.User_T_lineFunc.T_lineFunc;
typedef UnknownUserIdError = stdgo._internal.os.user.User_UnknownUserIdError.UnknownUserIdError;
typedef UnknownUserError = stdgo._internal.os.user.User_UnknownUserError.UnknownUserError;
typedef UnknownGroupIdError = stdgo._internal.os.user.User_UnknownGroupIdError.UnknownGroupIdError;
typedef UnknownGroupError = stdgo._internal.os.user.User_UnknownGroupError.UnknownGroupError;
class User_static_extension {
    static public function groupIds(_u:User_):stdgo.Tuple<Array<String>, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_User_static_extension.User_static_extension.groupIds(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
class UnknownUserIdError_static_extension {
    static public function error(_e:UnknownUserIdError):String {
        return stdgo._internal.os.user.User_UnknownUserIdError_static_extension.UnknownUserIdError_static_extension.error(_e);
    }
}
class UnknownUserError_static_extension {
    static public function error(_e:UnknownUserError):String {
        return stdgo._internal.os.user.User_UnknownUserError_static_extension.UnknownUserError_static_extension.error(_e);
    }
}
class UnknownGroupIdError_static_extension {
    static public function error(_e:UnknownGroupIdError):String {
        return stdgo._internal.os.user.User_UnknownGroupIdError_static_extension.UnknownGroupIdError_static_extension.error(_e);
    }
}
class UnknownGroupError_static_extension {
    static public function error(_e:UnknownGroupError):String {
        return stdgo._internal.os.user.User_UnknownGroupError_static_extension.UnknownGroupError_static_extension.error(_e);
    }
}
/**
    /|*
    Package user allows user account lookups by name or id.
    
    For most Unix systems, this package has two internal implementations of
    resolving user and group ids to names, and listing supplementary group IDs.
    One is written in pure Go and parses /etc/passwd and /etc/group. The other
    is cgo-based and relies on the standard C library (libc) routines such as
    getpwuid_r, getgrnam_r, and getgrouplist.
    
    When cgo is available, and the required routines are implemented in libc
    for a particular platform, cgo-based (libc-backed) code is used.
    This can be overridden by using osusergo build tag, which enforces
    the pure Go implementation.
    *|/
**/
class User {
    /**
        Current returns the current user.
        
        The first call will cache the current user information.
        Subsequent calls will return the cached value and will not reflect
        changes to the current user.
    **/
    static public function current():stdgo.Tuple<User_, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_current.current();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Lookup looks up a user by username. If the user cannot be found, the
        returned error is of type UnknownUserError.
    **/
    static public function lookup(_username:String):stdgo.Tuple<User_, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_lookup.lookup(_username);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupId looks up a user by userid. If the user cannot be found, the
        returned error is of type UnknownUserIdError.
    **/
    static public function lookupId(_uid:String):stdgo.Tuple<User_, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_lookupId.lookupId(_uid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupGroup looks up a group by name. If the group cannot be found, the
        returned error is of type UnknownGroupError.
    **/
    static public function lookupGroup(_name:String):stdgo.Tuple<Group, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_lookupGroup.lookupGroup(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupGroupId looks up a group by groupid. If the group cannot be found, the
        returned error is of type UnknownGroupIdError.
    **/
    static public function lookupGroupId(_gid:String):stdgo.Tuple<Group, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_lookupGroupId.lookupGroupId(_gid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
