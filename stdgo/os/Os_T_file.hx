package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_file_static_extension) abstract T_file(stdgo._internal.os.Os_T_file.T_file) from stdgo._internal.os.Os_T_file.T_file to stdgo._internal.os.Os_T_file.T_file {
    public var _pfd(get, set) : stdgo._internal.internal.poll.Poll_FD.FD;
    function get__pfd():stdgo._internal.internal.poll.Poll_FD.FD return this._pfd;
    function set__pfd(v:stdgo._internal.internal.poll.Poll_FD.FD):stdgo._internal.internal.poll.Poll_FD.FD {
        this._pfd = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _dirinfo(get, set) : T_dirInfo;
    function get__dirinfo():T_dirInfo return this._dirinfo;
    function set__dirinfo(v:T_dirInfo):T_dirInfo {
        this._dirinfo = (v : stdgo.Ref<stdgo._internal.os.Os_T_dirInfo.T_dirInfo>);
        return v;
    }
    public var _nonblock(get, set) : Bool;
    function get__nonblock():Bool return this._nonblock;
    function set__nonblock(v:Bool):Bool {
        this._nonblock = v;
        return v;
    }
    public var _stdoutOrErr(get, set) : Bool;
    function get__stdoutOrErr():Bool return this._stdoutOrErr;
    function set__stdoutOrErr(v:Bool):Bool {
        this._stdoutOrErr = v;
        return v;
    }
    public var _appendMode(get, set) : Bool;
    function get__appendMode():Bool return this._appendMode;
    function set__appendMode(v:Bool):Bool {
        this._appendMode = v;
        return v;
    }
    public function new(?_pfd:stdgo._internal.internal.poll.Poll_FD.FD, ?_name:String, ?_dirinfo:T_dirInfo, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) this = new stdgo._internal.os.Os_T_file.T_file(_pfd, (_name : stdgo.GoString), (_dirinfo : stdgo.Ref<stdgo._internal.os.Os_T_dirInfo.T_dirInfo>), _nonblock, _stdoutOrErr, _appendMode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
