package stdgo._internal.io.fs;
@:keep @:allow(stdgo._internal.io.fs.Fs.FileMode_asInterface) class FileMode_static_extension {
    @:keep
    @:tdfield
    static public function type( _m:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _m:stdgo._internal.io.fs.Fs_filemode.FileMode = _m;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L240"
        return (_m & (-1893203968u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode);
    }
    @:keep
    @:tdfield
    static public function perm( _m:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _m:stdgo._internal.io.fs.Fs_filemode.FileMode = _m;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L235"
        return (_m & (511u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode);
    }
    @:keep
    @:tdfield
    static public function isRegular( _m:stdgo._internal.io.fs.Fs_filemode.FileMode):Bool {
        @:recv var _m:stdgo._internal.io.fs.Fs_filemode.FileMode = _m;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L230"
        return (_m & (-1893203968u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode));
    }
    @:keep
    @:tdfield
    static public function isDir( _m:stdgo._internal.io.fs.Fs_filemode.FileMode):Bool {
        @:recv var _m:stdgo._internal.io.fs.Fs_filemode.FileMode = _m;
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L224"
        return (_m & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode));
    }
    @:keep
    @:tdfield
    static public function string( _m:stdgo._internal.io.fs.Fs_filemode.FileMode):stdgo.GoString {
        @:recv var _m:stdgo._internal.io.fs.Fs_filemode.FileMode = _m;
        {};
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        var _w = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L199"
        for (_i => _c in ("dalTLDpSugct?" : stdgo.GoString)) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L200"
            if ((_m & (((1u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) << (((31 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                _buf[(_w : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L202"
                _w++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L205"
        if (_w == ((0 : stdgo.GoInt))) {
            _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L207"
            _w++;
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L210"
        for (_i => _c in ("rwxrwxrwx" : stdgo.GoString)) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L211"
            if ((_m & (((1u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) << (((8 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                _buf[(_w : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
            } else {
                _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L216"
            _w++;
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/fs.go#L218"
        return ((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
