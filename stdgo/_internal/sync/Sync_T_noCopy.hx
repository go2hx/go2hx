package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_T_noCopy_static_extension.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noCopy();
    }
}
