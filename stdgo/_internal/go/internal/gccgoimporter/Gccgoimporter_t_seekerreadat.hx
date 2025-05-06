package stdgo._internal.go.internal.gccgoimporter;
@:structInit @:using(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat_static_extension.T_seekerReadAt_static_extension) class T_seekerReadAt {
    public var _seeker : stdgo._internal.io.Io_readseeker.ReadSeeker = (null : stdgo._internal.io.Io_readseeker.ReadSeeker);
    public function new(?_seeker:stdgo._internal.io.Io_readseeker.ReadSeeker) {
        if (_seeker != null) this._seeker = _seeker;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_seekerReadAt(_seeker);
    }
}
