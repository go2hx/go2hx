package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_fsonly_static_extension.T_fsOnly_static_extension) class T_fsOnly {
    @:embedded
    public var fS : stdgo._internal.io.fs.Fs_fs.FS = (null : stdgo._internal.io.fs.Fs_fs.FS);
    public function new(?fS:stdgo._internal.io.fs.Fs_fs.FS) {
        if (fS != null) this.fS = fS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:check31 (this.fS ?? throw "null pointer dereference").open;
    public function __copy__() {
        return new T_fsOnly(fS);
    }
}
