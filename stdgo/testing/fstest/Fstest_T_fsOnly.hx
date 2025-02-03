package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsOnly_static_extension) abstract T_fsOnly(stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly) from stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly to stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly {
    public var fS(get, set) : stdgo._internal.io.fs.Fs_FS.FS;
    function get_fS():stdgo._internal.io.fs.Fs_FS.FS return this.fS;
    function set_fS(v:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.io.fs.Fs_FS.FS {
        this.fS = v;
        return v;
    }
    public function new(?fS:stdgo._internal.io.fs.Fs_FS.FS) this = new stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly(fS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
