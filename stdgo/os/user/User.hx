package stdgo.os.user;
typedef User_ = stdgo._internal.os.user.User_user.User;
typedef Group = stdgo._internal.os.user.User_group.Group;
typedef UnknownUserIdError = stdgo._internal.os.user.User_unknownuseriderror.UnknownUserIdError;
typedef UnknownUserError = stdgo._internal.os.user.User_unknownusererror.UnknownUserError;
typedef UnknownGroupIdError = stdgo._internal.os.user.User_unknowngroupiderror.UnknownGroupIdError;
typedef UnknownGroupError = stdgo._internal.os.user.User_unknowngrouperror.UnknownGroupError;
typedef UserPointer = stdgo._internal.os.user.User_userpointer.UserPointer;
typedef GroupPointer = stdgo._internal.os.user.User_grouppointer.GroupPointer;
typedef UnknownUserIdErrorPointer = stdgo._internal.os.user.User_unknownuseriderrorpointer.UnknownUserIdErrorPointer;
typedef UnknownUserErrorPointer = stdgo._internal.os.user.User_unknownusererrorpointer.UnknownUserErrorPointer;
typedef UnknownGroupIdErrorPointer = stdgo._internal.os.user.User_unknowngroupiderrorpointer.UnknownGroupIdErrorPointer;
typedef UnknownGroupErrorPointer = stdgo._internal.os.user.User_unknowngrouperrorpointer.UnknownGroupErrorPointer;
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
    static public inline function current():{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } return stdgo._internal.os.user.User_current.current();
    /**
        * Lookup looks up a user by username. If the user cannot be found, the
        * returned error is of type UnknownUserError.
    **/
    static public inline function lookup(_username:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } return stdgo._internal.os.user.User_lookup.lookup(_username);
    /**
        * LookupId looks up a user by userid. If the user cannot be found, the
        * returned error is of type UnknownUserIdError.
    **/
    static public inline function lookupId(_uid:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_user.User>; var _1 : stdgo.Error; } return stdgo._internal.os.user.User_lookupid.lookupId(_uid);
    /**
        * LookupGroup looks up a group by name. If the group cannot be found, the
        * returned error is of type UnknownGroupError.
    **/
    static public inline function lookupGroup(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_group.Group>; var _1 : stdgo.Error; } return stdgo._internal.os.user.User_lookupgroup.lookupGroup(_name);
    /**
        * LookupGroupId looks up a group by groupid. If the group cannot be found, the
        * returned error is of type UnknownGroupIdError.
    **/
    static public inline function lookupGroupId(_gid:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.os.user.User_group.Group>; var _1 : stdgo.Error; } return stdgo._internal.os.user.User_lookupgroupid.lookupGroupId(_gid);
}
