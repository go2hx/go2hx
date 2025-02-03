package stdgo.testing.fstest;
@:structInit @:using(stdgo.testing.fstest.Fstest.T_fsTester_static_extension) abstract T_fsTester(stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester) from stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester to stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester {
    public var _fsys(get, set) : stdgo._internal.io.fs.Fs_FS.FS;
    function get__fsys():stdgo._internal.io.fs.Fs_FS.FS return this._fsys;
    function set__fsys(v:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.io.fs.Fs_FS.FS {
        this._fsys = v;
        return v;
    }
    public var _errText(get, set) : Array<std.UInt>;
    function get__errText():Array<std.UInt> return [for (i in this._errText) i];
    function set__errText(v:Array<std.UInt>):Array<std.UInt> {
        this._errText = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _dirs(get, set) : Array<String>;
    function get__dirs():Array<String> return [for (i in this._dirs) i];
    function set__dirs(v:Array<String>):Array<String> {
        this._dirs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _files(get, set) : Array<String>;
    function get__files():Array<String> return [for (i in this._files) i];
    function set__files(v:Array<String>):Array<String> {
        this._files = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS, ?_errText:Array<std.UInt>, ?_dirs:Array<String>, ?_files:Array<String>) this = new stdgo._internal.testing.fstest.Fstest_T_fsTester.T_fsTester(_fsys, ([for (i in _errText) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _dirs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in _files) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
