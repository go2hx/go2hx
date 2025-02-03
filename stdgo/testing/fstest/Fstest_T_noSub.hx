package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_noSub_static_extension) abstract T_noSub(stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub) from stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub to stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub {
    public var mapFS(get, set) : MapFS;
    function get_mapFS():MapFS return this.mapFS;
    function set_mapFS(v:MapFS):MapFS {
        this.mapFS = v;
        return v;
    }
    public function new(?mapFS:MapFS) this = new stdgo._internal.testing.fstest.Fstest_T_noSub.T_noSub(mapFS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
