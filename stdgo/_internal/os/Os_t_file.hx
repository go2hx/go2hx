package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_file_static_extension.T_file_static_extension) class T_file {
    public var _pfd : stdgo._internal.internal.poll.Poll_fd.FD = ({} : stdgo._internal.internal.poll.Poll_fd.FD);
    public var _name : stdgo.GoString = "";
    public var _dirinfo : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo> = (null : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>);
    public var _nonblock : Bool = false;
    public var _stdoutOrErr : Bool = false;
    public var _appendMode : Bool = false;
    public function new(?_pfd:stdgo._internal.internal.poll.Poll_fd.FD, ?_name:stdgo.GoString, ?_dirinfo:stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
        if (_pfd != null) this._pfd = _pfd;
        if (_name != null) this._name = _name;
        if (_dirinfo != null) this._dirinfo = _dirinfo;
        if (_nonblock != null) this._nonblock = _nonblock;
        if (_stdoutOrErr != null) this._stdoutOrErr = _stdoutOrErr;
        if (_appendMode != null) this._appendMode = _appendMode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    }
}
