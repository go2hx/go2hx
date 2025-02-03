package stdgo.os.user;
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
    static public inline function current():stdgo.Tuple<User_, stdgo.Error> {
        return {
            final obj = stdgo._internal.os.user.User_current.current();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Lookup looks up a user by username. If the user cannot be found, the
        returned error is of type UnknownUserError.
    **/
    static public inline function lookup(_username:String):stdgo.Tuple<User_, stdgo.Error> {
        final _username = (_username : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookup.lookup(_username);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupId looks up a user by userid. If the user cannot be found, the
        returned error is of type UnknownUserIdError.
    **/
    static public inline function lookupId(_uid:String):stdgo.Tuple<User_, stdgo.Error> {
        final _uid = (_uid : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupId.lookupId(_uid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupGroup looks up a group by name. If the group cannot be found, the
        returned error is of type UnknownGroupError.
    **/
    static public inline function lookupGroup(_name:String):stdgo.Tuple<Group, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupGroup.lookupGroup(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupGroupId looks up a group by groupid. If the group cannot be found, the
        returned error is of type UnknownGroupIdError.
    **/
    static public inline function lookupGroupId(_gid:String):stdgo.Tuple<Group, stdgo.Error> {
        final _gid = (_gid : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.user.User_lookupGroupId.lookupGroupId(_gid);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
