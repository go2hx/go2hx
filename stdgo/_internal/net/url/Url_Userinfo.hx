package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.net.url.Url_Userinfo_static_extension.Userinfo_static_extension) class Userinfo {
    public var _username : stdgo.GoString = "";
    public var _password : stdgo.GoString = "";
    public var _passwordSet : Bool = false;
    public function new(?_username:stdgo.GoString, ?_password:stdgo.GoString, ?_passwordSet:Bool) {
        if (_username != null) this._username = _username;
        if (_password != null) this._password = _password;
        if (_passwordSet != null) this._passwordSet = _passwordSet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Userinfo(_username, _password, _passwordSet);
    }
}
