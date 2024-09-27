# Module: `stdgo.os.user`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class User](<#class-user>)

  - [`function current():stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>`](<#user-function-current>)

  - [`function lookup(_username:String):stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>`](<#user-function-lookup>)

  - [`function lookupGroup(_name:String):stdgo.Tuple<stdgo.os.user.Group, stdgo.Error>`](<#user-function-lookupgroup>)

  - [`function lookupGroupId(_gid:String):stdgo.Tuple<stdgo.os.user.Group, stdgo.Error>`](<#user-function-lookupgroupid>)

  - [`function lookupId(_uid:String):stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>`](<#user-function-lookupid>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_lineFunc](<#typedef-t_linefunc>)

- [typedef UnknownGroupError](<#typedef-unknowngrouperror>)

- [typedef UnknownGroupIdError](<#typedef-unknowngroupiderror>)

- [typedef UnknownUserError](<#typedef-unknownusererror>)

- [typedef UnknownUserIdError](<#typedef-unknownuseriderror>)

- [abstract User\_](<#abstract-user_>)

- [abstract Group](<#abstract-group>)

# Classes


```haxe
import
```


## class User



Package user allows user account lookups by name or id.  


For most Unix systems, this package has two internal implementations of
resolving user and group ids to names, and listing supplementary group IDs.
One is written in pure Go and parses /etc/passwd and /etc/group. The other
is cgo\-based and relies on the standard C library \(libc\) routines such as
getpwuid\_r, getgrnam\_r, and getgrouplist.  


When cgo is available, and the required routines are implemented in libc
for a particular platform, cgo\-based \(libc\-backed\) code is used.
This can be overridden by using osusergo build tag, which enforces
the pure Go implementation.  

### User function current


```haxe
function current():stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>
```



Current returns the current user.  


The first call will cache the current user information.
Subsequent calls will return the cached value and will not reflect
changes to the current user.  

[\(view code\)](<./User.hx#L122>)


### User function lookup


```haxe
function lookup(_username:String):stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>
```


```
Lookup looks up a user by username. If the user cannot be found, the
        returned error is of type UnknownUserError.
```
[\(view code\)](<./User.hx#L132>)


### User function lookupGroup


```haxe
function lookupGroup(_name:String):stdgo.Tuple<stdgo.os.user.Group, stdgo.Error>
```


```
LookupGroup looks up a group by name. If the group cannot be found, the
        returned error is of type UnknownGroupError.
```
[\(view code\)](<./User.hx#L152>)


### User function lookupGroupId


```haxe
function lookupGroupId(_gid:String):stdgo.Tuple<stdgo.os.user.Group, stdgo.Error>
```


```
LookupGroupId looks up a group by groupid. If the group cannot be found, the
        returned error is of type UnknownGroupIdError.
```
[\(view code\)](<./User.hx#L162>)


### User function lookupId


```haxe
function lookupId(_uid:String):stdgo.Tuple<stdgo.os.user.User_, stdgo.Error>
```


```
LookupId looks up a user by userid. If the user cannot be found, the
        returned error is of type UnknownUserIdError.
```
[\(view code\)](<./User.hx#L142>)


# Typedefs


```haxe
import
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.os.user.T__struct_0;
```


## typedef T\_lineFunc


```haxe
typedef T_lineFunc = stdgo._internal.os.user.T_lineFunc;
```


## typedef UnknownGroupError


```haxe
typedef UnknownGroupError = stdgo._internal.os.user.UnknownGroupError;
```


## typedef UnknownGroupIdError


```haxe
typedef UnknownGroupIdError = stdgo._internal.os.user.UnknownGroupIdError;
```


## typedef UnknownUserError


```haxe
typedef UnknownUserError = stdgo._internal.os.user.UnknownUserError;
```


## typedef UnknownUserIdError


```haxe
typedef UnknownUserIdError = stdgo._internal.os.user.UnknownUserIdError;
```


# Abstracts


## abstract User\_


[\(view file containing code\)](<./User.hx>)


## abstract Group


[\(view file containing code\)](<./User.hx>)


