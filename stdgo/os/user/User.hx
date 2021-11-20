package stdgo.os.user;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_lineFunc {
    public var __t__ : Slice<GoUInt8> -> { var _0 : AnyInterface; var _1 : stdgo.Error; };
    public function new(?t:Slice<GoUInt8> -> { var _0 : AnyInterface; var _1 : stdgo.Error; }) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_lineFunc(__t__);
}
@:structInit class User {
    public function groupIds():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _u = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _listGroups(_u);
    }
    public var uid : GoString = (("" : GoString));
    public var gid : GoString = (("" : GoString));
    public var username : GoString = (("" : GoString));
    public var name : GoString = (("" : GoString));
    public var homeDir : GoString = (("" : GoString));
    public function new(?uid:GoString, ?gid:GoString, ?username:GoString, ?name:GoString, ?homeDir:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(uid) + " " + Go.string(gid) + " " + Go.string(username) + " " + Go.string(name) + " " + Go.string(homeDir) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new User(uid, gid, username, name, homeDir);
    }
    public function __set__(__tmp__) {
        this.uid = __tmp__.uid;
        this.gid = __tmp__.gid;
        this.username = __tmp__.username;
        this.name = __tmp__.name;
        this.homeDir = __tmp__.homeDir;
        return this;
    }
}
@:structInit class Group {
    public var gid : GoString = (("" : GoString));
    public var name : GoString = (("" : GoString));
    public function new(?gid:GoString, ?name:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(gid) + " " + Go.string(name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Group(gid, name);
    }
    public function __set__(__tmp__) {
        this.gid = __tmp__.gid;
        this.name = __tmp__.name;
        return this;
    }
}
@:named class UnknownUserIdError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("user: unknown userid " : GoString)) + stdgo.strconv.Strconv.itoa(_e.__t__);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnknownUserIdError(__t__);
}
@:named class UnknownUserError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("user: unknown user " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnknownUserError(__t__);
}
@:named class UnknownGroupIdError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("group: unknown groupid " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnknownGroupIdError(__t__);
}
@:named class UnknownGroupError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("group: unknown group " : GoString)) + _e.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new UnknownGroupError(__t__);
}
@:structInit @:local class T__struct_43 {
    @:embedded
    public var once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public var _u : Pointer<User> = new Pointer<User>().nil();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?once:stdgo.sync.Sync.Once, ?_u:Pointer<User>, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(once) + " " + Go.string(_u) + " " + Go.string(_err) + "}";
    }
    public function do_(_f:() -> Void) once.do_(_0);
    public function _doSlow(_f:() -> Void) once._doSlow(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_43(once, _u, _err);
    }
    public function __set__(__tmp__) {
        this.once = __tmp__.once;
        this._u = __tmp__._u;
        this._err = __tmp__._err;
        return this;
    }
}
var _groupImplemented : Bool = true;
var _colon : Slice<GoUInt8> = new Slice<GoUInt8>(((":".code : GoRune)));
var _cache : T__struct_43 = new T__struct_43();
final _groupFile : GoString = "/etc/group";
var _userImplemented : Bool = true;
final _userFile : GoString = "/etc/passwd";
/**
    // Current returns the current user.
    //
    // The first call will cache the current user information.
    // Subsequent calls will return the cached value and will not reflect
    // changes to the current user.
**/
function current():{ var _0 : Pointer<User>; var _1 : Error; } {
        _cache.do_(function():Void {
            {
                var __tmp__ = _current();
                _cache._u = __tmp__._0;
                _cache._err = __tmp__._1;
            };
        });
        if (_cache._err != null) {
            return { _0 : new Pointer<User>().nil(), _1 : _cache._err };
        };
        var _u:User = _cache._u.value.__copy__();
        return { _0 : Go.pointer(_u), _1 : ((null : stdgo.Error)) };
    }
/**
    // Lookup looks up a user by username. If the user cannot be found, the
    // returned error is of type UnknownUserError.
**/
function lookup(_username:GoString):{ var _0 : Pointer<User>; var _1 : Error; } {
        {
            var __tmp__ = current(), _u:Pointer<User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null && _u.value.username == _username) {
                return { _0 : _u, _1 : _err };
            };
        };
        return _lookupUser(_username);
    }
/**
    // LookupId looks up a user by userid. If the user cannot be found, the
    // returned error is of type UnknownUserIdError.
**/
function lookupId(_uid:GoString):{ var _0 : Pointer<User>; var _1 : Error; } {
        {
            var __tmp__ = current(), _u:Pointer<User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null && _u.value.uid == _uid) {
                return { _0 : _u, _1 : _err };
            };
        };
        return _lookupUserId(_uid);
    }
/**
    // LookupGroup looks up a group by name. If the group cannot be found, the
    // returned error is of type UnknownGroupError.
**/
function lookupGroup(_name:GoString):{ var _0 : Pointer<Group>; var _1 : Error; } {
        return _lookupGroup(_name);
    }
/**
    // LookupGroupId looks up a group by groupid. If the group cannot be found, the
    // returned error is of type UnknownGroupIdError.
**/
function lookupGroupId(_gid:GoString):{ var _0 : Pointer<Group>; var _1 : Error; } {
        return _lookupGroupId(_gid);
    }
function _current():{ var _0 : Pointer<User>; var _1 : Error; } {
        var _uid:GoString = _currentUID();
        var __tmp__ = _lookupUserId(_uid), _u:Pointer<User> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return { _0 : _u, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.os.Os.userHomeDir(), _homeDir:GoString = __tmp__._0, _:stdgo.Error = __tmp__._1;
        _u = Go.pointer((({ uid : _uid, gid : _currentGID(), username : stdgo.os.Os.getenv("USER"), name : "", homeDir : _homeDir } : User)));
        if (stdgo.runtime.Runtime.goos == (("android" : GoString))) {
            if (_u.value.uid == (("" : GoString))) {
                _u.value.uid = "1";
            };
            if (_u.value.username == (("" : GoString))) {
                _u.value.username = "android";
            };
        };
        if (_u.value.uid != (("" : GoString)) && _u.value.username != (("" : GoString)) && _u.value.homeDir != (("" : GoString))) {
            return { _0 : _u, _1 : ((null : stdgo.Error)) };
        };
        var _missing:GoString = (("" : GoString));
        if (_u.value.username == (("" : GoString))) {
            _missing = "$USER";
        };
        if (_u.value.homeDir == (("" : GoString))) {
            if (_missing != (("" : GoString))) {
                _missing = _missing + (", ");
            };
            _missing = _missing + ("$HOME");
        };
        return { _0 : _u, _1 : stdgo.fmt.Fmt.errorf("user: Current requires cgo or %s set in environment", Go.toInterface(_missing)) };
    }
function _listGroups(arg0:Pointer<User>):{ var _0 : Slice<GoString>; var _1 : Error; } {
        if (stdgo.runtime.Runtime.goos == (("android" : GoString)) || stdgo.runtime.Runtime.goos == (("aix" : GoString))) {
            return { _0 : new Slice<GoString>().nil(), _1 : stdgo.fmt.Fmt.errorf("user: GroupIds not implemented on %s", Go.toInterface(stdgo.runtime.Runtime.goos)) };
        };
        return { _0 : new Slice<GoString>().nil(), _1 : stdgo.errors.Errors.new_("user: GroupIds requires cgo") };
    }
function _currentUID():GoString {
        {
            var _id:GoInt = stdgo.os.Os.getuid();
            if (_id >= ((0 : GoInt))) {
                return stdgo.strconv.Strconv.itoa(_id);
            };
        };
        return "";
    }
function _currentGID():GoString {
        {
            var _id:GoInt = stdgo.os.Os.getgid();
            if (_id >= ((0 : GoInt))) {
                return stdgo.strconv.Strconv.itoa(_id);
            };
        };
        return "";
    }
/**
    // readColonFile parses r as an /etc/group or /etc/passwd style file, running
    // fn for each row. readColonFile returns a value, an error, or (nil, nil) if
    // the end of the file is reached without a match.
    //
    // readCols is the minimum number of colon-separated fields that will be passed
    // to fn; in a long line additional fields may be silently discarded.
**/
function _readColonFile(_r:stdgo.io.Io.Reader, _fn:T_lineFunc, _readCols:GoInt):{ var _0 : AnyInterface; var _1 : Error; } {
        var _v:AnyInterface = ((null : AnyInterface)), _err:Error = ((null : stdgo.Error));
        var _rd:Pointer<bufio.Bufio.Reader> = bufio.Bufio.newReader(_r);
        while (true) {
            var _isPrefix:Bool = false;
            var _wholeLine:Slice<GoByte> = new Slice<GoUInt8>().nil();
            while (true) {
                var _line:Slice<GoByte> = new Slice<GoUInt8>().nil();
                {
                    var __tmp__ = _rd.value.readLine();
                    _line = __tmp__._0;
                    _isPrefix = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                        _err = ((null : stdgo.Error));
                    };
                    return { _0 : ((null : AnyInterface)), _1 : _err };
                };
                if (!_isPrefix && _wholeLine.length == ((0 : GoInt))) {
                    _wholeLine = _line;
                    break;
                };
                _wholeLine = _wholeLine.__append__(..._line.toArray());
                if (!_isPrefix || stdgo.bytes.Bytes.count(_wholeLine, new Slice<GoUInt8>(((":".code : GoRune)))) >= _readCols) {
                    break;
                };
            };
            _wholeLine = stdgo.bytes.Bytes.trimSpace(_wholeLine);
            if (_wholeLine.length == ((0 : GoInt)) || _wholeLine[((0 : GoInt))] == (("#".code : GoRune))) {
                continue;
            };
            {
                var __tmp__ = _fn.__t__(_wholeLine);
                _v = Go.toInterface(__tmp__._0);
                _err = __tmp__._1;
            };
            if (_v != null || _err != null) {
                return { _0 : _v, _1 : _err };
            };
            Go.cfor(_isPrefix, {
                var __tmp__ = _rd.value.readLine();
                _isPrefix = __tmp__._1;
                _err = __tmp__._2;
            }, {
                if (_err != null) {
                    if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                        _err = ((null : stdgo.Error));
                    };
                    return { _0 : ((null : AnyInterface)), _1 : _err };
                };
            });
        };
    }
function _matchGroupIndexValue(_value:GoString, _idx:GoInt):T_lineFunc {
        var _leadColon:GoString = (("" : GoString));
        if (_idx > ((0 : GoInt))) {
            _leadColon = ":";
        };
        var _substr:Slice<GoUInt8> = (((_leadColon + _value + ((":" : GoString))) : Slice<GoByte>));
        return new T_lineFunc(function(_line:Slice<GoByte>):{ var _0 : AnyInterface; var _1 : Error; } {
            var _v:AnyInterface = ((null : AnyInterface)), _err:Error = ((null : stdgo.Error));
            if (!stdgo.bytes.Bytes.contains(_line, _substr) || stdgo.bytes.Bytes.count(_line, _colon) < ((3 : GoInt))) {
                return { _0 : _v, _1 : _err };
            };
            var _parts:Slice<GoString> = stdgo.strings.Strings.splitN(((_line : GoString)), ":", ((4 : GoInt)));
            if (_parts.length < ((4 : GoInt)) || _parts[((0 : GoInt))] == (("" : GoString)) || _parts[_idx] != _value || _parts[((0 : GoInt))][((0 : GoInt))] == (("+".code : GoRune)) || _parts[((0 : GoInt))][((0 : GoInt))] == (("-".code : GoRune))) {
                return { _0 : _v, _1 : _err };
            };
            {
                var __tmp__ = stdgo.strconv.Strconv.atoi(_parts[((2 : GoInt))]), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((null : AnyInterface)), _1 : ((null : stdgo.Error)) };
                };
            };
            return { _0 : Go.toInterface(Go.pointer((({ name : _parts[((0 : GoInt))], gid : _parts[((2 : GoInt))] } : Group)))), _1 : ((null : stdgo.Error)) };
        });
    }
function _findGroupId(_id:GoString, _r:stdgo.io.Io.Reader):{ var _0 : Pointer<Group>; var _1 : Error; } {
        {
            var __tmp__ = _readColonFile(_r, _matchGroupIndexValue(_id, ((2 : GoInt))).__copy__(), ((3 : GoInt))), _v:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Group>().nil(), _1 : _err };
            } else if (_v != null) {
                return { _0 : ((_v.value : Pointer<Group>)), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new Pointer<Group>().nil(), _1 : new UnknownGroupIdError(_id) };
    }
function _findGroupName(_name:GoString, _r:stdgo.io.Io.Reader):{ var _0 : Pointer<Group>; var _1 : Error; } {
        {
            var __tmp__ = _readColonFile(_r, _matchGroupIndexValue(_name, ((0 : GoInt))).__copy__(), ((3 : GoInt))), _v:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Group>().nil(), _1 : _err };
            } else if (_v != null) {
                return { _0 : ((_v.value : Pointer<Group>)), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new Pointer<Group>().nil(), _1 : new UnknownGroupError(_name) };
    }
/**
    // returns a *User for a row if that row's has the given value at the
    // given index.
**/
function _matchUserIndexValue(_value:GoString, _idx:GoInt):T_lineFunc {
        var _leadColon:GoString = (("" : GoString));
        if (_idx > ((0 : GoInt))) {
            _leadColon = ":";
        };
        var _substr:Slice<GoUInt8> = (((_leadColon + _value + ((":" : GoString))) : Slice<GoByte>));
        return new T_lineFunc(function(_line:Slice<GoByte>):{ var _0 : AnyInterface; var _1 : Error; } {
            var _v:AnyInterface = ((null : AnyInterface)), _err:Error = ((null : stdgo.Error));
            if (!stdgo.bytes.Bytes.contains(_line, _substr) || stdgo.bytes.Bytes.count(_line, _colon) < ((6 : GoInt))) {
                return { _0 : _v, _1 : _err };
            };
            var _parts:Slice<GoString> = stdgo.strings.Strings.splitN(((_line : GoString)), ":", ((7 : GoInt)));
            if (_parts.length < ((6 : GoInt)) || _parts[_idx] != _value || _parts[((0 : GoInt))] == (("" : GoString)) || _parts[((0 : GoInt))][((0 : GoInt))] == (("+".code : GoRune)) || _parts[((0 : GoInt))][((0 : GoInt))] == (("-".code : GoRune))) {
                return { _0 : _v, _1 : _err };
            };
            {
                var __tmp__ = stdgo.strconv.Strconv.atoi(_parts[((2 : GoInt))]), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((null : AnyInterface)), _1 : ((null : stdgo.Error)) };
                };
            };
            {
                var __tmp__ = stdgo.strconv.Strconv.atoi(_parts[((3 : GoInt))]), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : ((null : AnyInterface)), _1 : ((null : stdgo.Error)) };
                };
            };
            var _u:Pointer<User> = Go.pointer((({ username : _parts[((0 : GoInt))], uid : _parts[((2 : GoInt))], gid : _parts[((3 : GoInt))], name : _parts[((4 : GoInt))], homeDir : _parts[((5 : GoInt))] } : User)));
            {
                var _i:GoInt = stdgo.strings.Strings.index(_u.value.name, ",");
                if (_i >= ((0 : GoInt))) {
                    _u.value.name = _u.value.name.__slice__(0, _i);
                };
            };
            return { _0 : Go.toInterface(_u), _1 : ((null : stdgo.Error)) };
        });
    }
function _findUserId(_uid:GoString, _r:stdgo.io.Io.Reader):{ var _0 : Pointer<User>; var _1 : Error; } {
        var __tmp__ = stdgo.strconv.Strconv.atoi(_uid), _i:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
        if (_e != null) {
            return { _0 : new Pointer<User>().nil(), _1 : stdgo.errors.Errors.new_((("user: invalid userid " : GoString)) + _uid) };
        };
        {
            var __tmp__ = _readColonFile(_r, _matchUserIndexValue(_uid, ((2 : GoInt))).__copy__(), ((6 : GoInt))), _v:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<User>().nil(), _1 : _err };
            } else if (_v != null) {
                return { _0 : ((_v.value : Pointer<User>)), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new Pointer<User>().nil(), _1 : new UnknownUserIdError(_i) };
    }
function _findUsername(_name:GoString, _r:stdgo.io.Io.Reader):{ var _0 : Pointer<User>; var _1 : Error; } {
        {
            var __tmp__ = _readColonFile(_r, _matchUserIndexValue(_name, ((0 : GoInt))).__copy__(), ((6 : GoInt))), _v:AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<User>().nil(), _1 : _err };
            } else if (_v != null) {
                return { _0 : ((_v.value : Pointer<User>)), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new Pointer<User>().nil(), _1 : new UnknownUserError(_name) };
    }
function _lookupGroup(_groupname:GoString):{ var _0 : Pointer<Group>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_groupFile), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Group>().nil(), _1 : _err };
        };
        try {
            deferstack.unshift(() -> _f.value.close());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _findGroupName(_groupname, _f.value);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Group>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _lookupGroupId(_id:GoString):{ var _0 : Pointer<Group>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_groupFile), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Group>().nil(), _1 : _err };
        };
        try {
            deferstack.unshift(() -> _f.value.close());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _findGroupId(_id, _f.value);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Group>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _lookupUser(_username:GoString):{ var _0 : Pointer<User>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_userFile), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<User>().nil(), _1 : _err };
        };
        try {
            deferstack.unshift(() -> _f.value.close());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _findUsername(_username, _f.value);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<User>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _lookupUserId(_uid:GoString):{ var _0 : Pointer<User>; var _1 : Error; } {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_userFile), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<User>().nil(), _1 : _err };
        };
        try {
            deferstack.unshift(() -> _f.value.close());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _findUserId(_uid, _f.value);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<User>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
@:keep var _ = {
        try {
            _groupImplemented = false;
            _groupImplemented = false;
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class User_extension_fields {
    public function groupIds(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.groupIds();
}
class UnknownUserIdError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class UnknownUserError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class UnknownGroupIdError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class UnknownGroupError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
