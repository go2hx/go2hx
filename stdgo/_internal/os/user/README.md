# Module: `stdgo._internal.os.user`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _current():{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-_current>)

- [`function _currentGID():stdgo.GoString`](<#function-_currentgid>)

- [`function _currentUID():stdgo.GoString`](<#function-_currentuid>)

- [`function _findGroupId(_id:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-_findgroupid>)

- [`function _findGroupName(_name:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-_findgroupname>)

- [`function _findUserId(_uid:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-_finduserid>)

- [`function _findUsername(_name:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-_findusername>)

- [`function _listGroups(_u:stdgo.Ref<stdgo._internal.os.user.User>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}`](<#function-_listgroups>)

- [`function _listGroupsFromReader(_u:stdgo.Ref<stdgo._internal.os.user.User>, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}`](<#function-_listgroupsfromreader>)

- [`function _lookupGroup(_groupname:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-_lookupgroup>)

- [`function _lookupGroupId(_id:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-_lookupgroupid>)

- [`function _lookupUser(_username:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-_lookupuser>)

- [`function _lookupUserId(_uid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-_lookupuserid>)

- [`function _matchGroupIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.T_lineFunc`](<#function-_matchgroupindexvalue>)

- [`function _matchUserIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.T_lineFunc`](<#function-_matchuserindexvalue>)

- [`function _readColonFile(_r:stdgo._internal.io.Reader, _fn:stdgo._internal.os.user.T_lineFunc, _readCols:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.AnyInterface;
}`](<#function-_readcolonfile>)

- [`function current():{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-current>)

- [`function lookup(_username:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-lookup>)

- [`function lookupGroup(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-lookupgroup>)

- [`function lookupGroupId(_gid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}`](<#function-lookupgroupid>)

- [`function lookupId(_uid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}`](<#function-lookupid>)

- [class Group](<#class-group>)

  - [`function new(?gid:stdgo.GoString, ?name:stdgo.GoString):Void`](<#group-function-new>)

- [class User](<#class-user>)

  - [`function new(?uid:stdgo.GoString, ?gid:stdgo.GoString, ?username:stdgo.GoString, ?name:stdgo.GoString, ?homeDir:stdgo.GoString):Void`](<#user-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_lineFunc](<#typedef-t_linefunc>)

- [typedef UnknownGroupError](<#typedef-unknowngrouperror>)

- [typedef UnknownGroupIdError](<#typedef-unknowngroupiderror>)

- [typedef UnknownUserError](<#typedef-unknownusererror>)

- [typedef UnknownUserIdError](<#typedef-unknownuseriderror>)

# Constants


```haxe
import stdgo._internal.os.user.User_lookupId
```


```haxe
final _groupFile:stdgo.GoString = (("/etc/group" : stdgo.GoString))
```


```haxe
final _userFile:stdgo.GoString = (("/etc/passwd" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.os.user.User_lookupId
```


```haxe
var _colon:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _userBuffer:stdgo.GoInt
```


```haxe
var _groupBuffer:stdgo.GoInt
```


```haxe
var _userImplemented:Bool
```


```haxe
var _groupImplemented:Bool
```


```haxe
var _groupListImplemented:Bool
```


```haxe
var _cache:stdgo._internal.os.user.T__struct_0
```


# Functions


```haxe
import stdgo._internal.os.user.User_lookupId
```


## function \_current


```haxe
function _current():{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_currentGID


```haxe
function _currentGID():stdgo.GoString
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_currentUID


```haxe
function _currentUID():stdgo.GoString
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_findGroupId


```haxe
function _findGroupId(_id:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_findGroupName


```haxe
function _findGroupName(_name:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_findUserId


```haxe
function _findUserId(_uid:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_findUsername


```haxe
function _findUsername(_name:stdgo.GoString, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_listGroups


```haxe
function _listGroups(_u:stdgo.Ref<stdgo._internal.os.user.User>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_listGroupsFromReader


```haxe
function _listGroupsFromReader(_u:stdgo.Ref<stdgo._internal.os.user.User>, _r:stdgo._internal.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoString>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_lookupGroup


```haxe
function _lookupGroup(_groupname:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_lookupGroupId


```haxe
function _lookupGroupId(_id:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_lookupUser


```haxe
function _lookupUser(_username:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_lookupUserId


```haxe
function _lookupUserId(_uid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_matchGroupIndexValue


```haxe
function _matchGroupIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.T_lineFunc
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_matchUserIndexValue


```haxe
function _matchUserIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.T_lineFunc
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function \_readColonFile


```haxe
function _readColonFile(_r:stdgo._internal.io.Reader, _fn:stdgo._internal.os.user.T_lineFunc, _readCols:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.AnyInterface;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function current


```haxe
function current():{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function lookup


```haxe
function lookup(_username:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function lookupGroup


```haxe
function lookupGroup(_name:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function lookupGroupId


```haxe
function lookupGroupId(_gid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.Group>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


## function lookupId


```haxe
function lookupId(_uid:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.os.user.User>;
}
```


[\(view code\)](<./User_lookupId.hx#L2>)


# Classes


```haxe
import stdgo._internal.os.user.*
```


## class Group


```haxe
var gid:stdgo.GoString
```


```haxe
var name:stdgo.GoString
```


### Group function new


```haxe
function new(?gid:stdgo.GoString, ?name:stdgo.GoString):Void
```


[\(view code\)](<./User_Group.hx#L5>)


## class User


```haxe
var gid:stdgo.GoString
```


```haxe
var homeDir:stdgo.GoString
```


```haxe
var name:stdgo.GoString
```


```haxe
var uid:stdgo.GoString
```


```haxe
var username:stdgo.GoString
```


### User function new


```haxe
function new(?uid:stdgo.GoString, ?gid:stdgo.GoString, ?username:stdgo.GoString, ?name:stdgo.GoString, ?homeDir:stdgo.GoString):Void
```


[\(view code\)](<./User_User.hx#L8>)


# Typedefs


```haxe
import stdgo._internal.os.user.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	{<once> | stdgo._internal.sync.Once | meta:{<m>}};
	_u:stdgo.Ref<stdgo._internal.os.user.User>;
	_err:stdgo.Error;
};
```


## typedef T\_lineFunc


```haxe
typedef T_lineFunc = ();
```


## typedef UnknownGroupError


```haxe
typedef UnknownGroupError = stdgo.GoString;
```


## typedef UnknownGroupIdError


```haxe
typedef UnknownGroupIdError = stdgo.GoString;
```


## typedef UnknownUserError


```haxe
typedef UnknownUserError = stdgo.GoString;
```


## typedef UnknownUserIdError


```haxe
typedef UnknownUserIdError = stdgo.GoInt;
```


