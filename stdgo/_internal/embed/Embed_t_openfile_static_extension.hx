package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.T_openFile_asInterface) class T_openFile_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>, _b:stdgo.Slice<stdgo.GoUInt8>, _offset:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile> = _f;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L389"
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L390"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.__slice__(_offset) : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L393"
        if ((_n < (_b.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L394"
            return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L396"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seek( _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile> = _f;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L373"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                _offset = (_offset + ((@:checkr _f ?? throw "null pointer dereference")._offset) : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _offset = (_offset + (((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L381"
        if (((_offset < (0i64 : stdgo.GoInt64) : Bool) || (_offset > ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.length : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L382"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("seek" : stdgo.GoString), path : (@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        (@:checkr _f ?? throw "null pointer dereference")._offset = _offset;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L385"
        return { _0 : _offset, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile> = _f;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L361"
        if (((@:checkr _f ?? throw "null pointer dereference")._offset >= ((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L362"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L364"
        if (((@:checkr _f ?? throw "null pointer dereference")._offset < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L365"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._name?.__copy__(), err : stdgo._internal.io.fs.Fs_errinvalid.errInvalid } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        var _n = (_b.__copyTo__(((@:checkr (@:checkr _f ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data.__slice__((@:checkr _f ?? throw "null pointer dereference")._offset) : stdgo.GoString)) : stdgo.GoInt);
        (@:checkr _f ?? throw "null pointer dereference")._offset = ((@:checkr _f ?? throw "null pointer dereference")._offset + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L369"
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function stat( _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile> = _f;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L358"
        return { _0 : stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference")._f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile> = _f;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L357"
        return (null : stdgo.Error);
    }
}
