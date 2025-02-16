package stdgo;
@:structInit @:using(stdgo.os.user.User.User_static_extension) abstract User_(stdgo._internal.os.user.User_user.User) from stdgo._internal.os.user.User_user.User to stdgo._internal.os.user.User_user.User {
    public var uid(get, set) : String;
    function get_uid():String return this.uid;
    function set_uid(v:String):String {
        this.uid = (v : stdgo.GoString);
        return v;
    }
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = (v : stdgo.GoString);
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var homeDir(get, set) : String;
    function get_homeDir():String return this.homeDir;
    function set_homeDir(v:String):String {
        this.homeDir = (v : stdgo.GoString);
        return v;
    }
    public function new(?uid:String, ?gid:String, ?username:String, ?name:String, ?homeDir:String) this = new stdgo._internal.os.user.User_user.User((uid : stdgo.GoString), (gid : stdgo.GoString), (username : stdgo.GoString), (name : stdgo.GoString), (homeDir : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.os.user.User.Group_static_extension) abstract Group(stdgo._internal.os.user.User_group.Group) from stdgo._internal.os.user.User_group.Group to stdgo._internal.os.user.User_group.Group {
    public var gid(get, set) : String;
    function get_gid():String return this.gid;
    function set_gid(v:String):String {
        this.gid = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?gid:String, ?name:String) this = new stdgo._internal.os.user.User_group.Group((gid : stdgo.GoString), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.os.user.User_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {
    public static function _doSlow(__self__:stdgo._internal.os.user.User_t__struct_0.T__struct_0, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.os.user.User_t__struct_0_static_extension.T__struct_0_static_extension._doSlow(__self__, _0);
    }
    public static function do_(__self__:stdgo._internal.os.user.User_t__struct_0.T__struct_0, _0:() -> Void):Void {
        final _0 = _0;
        stdgo._internal.os.user.User_t__struct_0_static_extension.T__struct_0_static_extension.do_(__self__, _0);
    }
}
@:dox(hide) typedef T__struct_0 = stdgo._internal.os.user.User_t__struct_0.T__struct_0;
@:dox(hide) typedef T_lineFunc = stdgo._internal.os.user.User_t_linefunc.T_lineFunc;
typedef UnknownUserIdError = stdgo._internal.os.user.User_unknownuseriderror.UnknownUserIdError;
typedef UnknownUserError = stdgo._internal.os.user.User_unknownusererror.UnknownUserError;
typedef UnknownGroupIdError = stdgo._internal.os.user.User_unknowngroupiderror.UnknownGroupIdError;
typedef UnknownGroupError = stdgo._internal.os.user.User_unknowngrouperror.UnknownGroupError;
typedef UserPointer = stdgo._internal.os.user.User_userpointer.UserPointer;
class User_static_extension {
    static public function groupIds(_u:User_):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.os.user.User_user.User>);
        return {
            final obj = stdgo._internal.os.user.User_user_static_extension.User_static_extension.groupIds(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef GroupPointer = stdgo._internal.os.user.User_grouppointer.GroupPointer;
class Group_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.os.user.User_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_lineFuncPointer = stdgo._internal.os.user.User_t_linefuncpointer.T_lineFuncPointer;
@:dox(hide) class T_lineFunc_static_extension {

}
typedef UnknownUserIdErrorPointer = stdgo._internal.os.user.User_unknownuseriderrorpointer.UnknownUserIdErrorPointer;
class UnknownUserIdError_static_extension {
    static public function error(_e:UnknownUserIdError):String {
        return stdgo._internal.os.user.User_unknownuseriderror_static_extension.UnknownUserIdError_static_extension.error(_e);
    }
}
typedef UnknownUserErrorPointer = stdgo._internal.os.user.User_unknownusererrorpointer.UnknownUserErrorPointer;
class UnknownUserError_static_extension {
    static public function error(_e:UnknownUserError):String {
        return stdgo._internal.os.user.User_unknownusererror_static_extension.UnknownUserError_static_extension.error(_e);
    }
}
typedef UnknownGroupIdErrorPointer = stdgo._internal.os.user.User_unknowngroupiderrorpointer.UnknownGroupIdErrorPointer;
class UnknownGroupIdError_static_extension {
    static public function error(_e:UnknownGroupIdError):String {
        return stdgo._internal.os.user.User_unknowngroupiderror_static_extension.UnknownGroupIdError_static_extension.error(_e);
    }
}
typedef UnknownGroupErrorPointer = stdgo._internal.os.user.User_unknowngrouperrorpointer.UnknownGroupErrorPointer;
class UnknownGroupError_static_extension {
    static public function error(_e:UnknownGroupError):String {
        return stdgo._internal.os.user.User_unknowngrouperror_static_extension.UnknownGroupError_static_extension.error(_e);
    }
}
/**
    * 
    * Package user allows user account lookups by name or id.
    * 
    * For most Unix systems, this package has two internal implementations of
    * resolving user and group ids to names, and listing supplementary group IDs.
    * One is written in pure Go and parses /etc/passwd and /etc/group. The other
    * is cgo-based and relies on the standard C library (libc) routines such as
    * getpwuid_r, getgrnam_r, and getgrouplist.
    * 
    * When cgo is available, and the required routines are implemented in libc
    * for a particular platform, cgo-based (libc-backed) code is used.
    * This can be overridden by using osusergo build tag, which enforces
    * the pure Go implementation.
    * 
**/
class User {
    /**
        * Current returns the current user.
        * 
        * The first call will cache the current user information.
        * Subsequent calls will return the cached value and will not reflect
        * changes to the current user.
    **/
    static public inline function current():stdgo.Tuple<User_, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_current.current();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Lookup looks up a user by username. If the user cannot be found, the
        * returned error is of type UnknownUserError.
    **/
    static public inline function lookup(_username:String):stdgo.Tuple<User_, stdgo.Error> {
        final _username = (_username : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookup.lookup(_username);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LookupId looks up a user by userid. If the user cannot be found, the
        * returned error is of type UnknownUserIdError.
    **/
    static public inline function lookupId(_uid:String):stdgo.Tuple<User_, stdgo.Error> {
        final _uid = (_uid : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupid.lookupId(_uid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LookupGroup looks up a group by name. If the group cannot be found, the
        * returned error is of type UnknownGroupError.
    **/
    static public inline function lookupGroup(_name:String):stdgo.Tuple<Group, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupgroup.lookupGroup(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * LookupGroupId looks up a group by groupid. If the group cannot be found, the
        * returned error is of type UnknownGroupIdError.
    **/
    static public inline function lookupGroupId(_gid:String):stdgo.Tuple<Group, stdgo.Error> {
        final _gid = (_gid : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupgroupid.lookupGroupId(_gid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
