package stdgo._internal.embed;
@:keep @:allow(stdgo._internal.embed.Embed.FS_asInterface) class FS_static_extension {
    @:keep
    @:tdfield
    static public function readFile( _f:stdgo._internal.embed.Embed_fs.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_fs.FS = _f?.__copy__();
        var __tmp__ = _f.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L336"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L337"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>)) : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>), _1 : false };
        }, _ofile = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L340"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L341"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("is a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L343"
        return { _0 : ((@:checkr (@:checkr _ofile ?? throw "null pointer dereference")._f ?? throw "null pointer dereference")._data : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readDir( _f:stdgo._internal.embed.Embed_fs.FS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_fs.FS = _f?.__copy__();
        var __tmp__ = _f.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L319"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L320"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_file) : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>)) : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>), _1 : false };
        }, _dir = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L323"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L324"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("not a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>(((@:checkr _dir ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L327"
        for (_i => _ in _list) {
            _list[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _dir ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>));
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L330"
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function open( _f:stdgo._internal.embed.Embed_fs.FS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.embed.Embed_fs.FS = _f?.__copy__();
        var _file = _f._lookup(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L307"
        if (({
            final value = _file;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L308"
            return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("open" : stdgo.GoString), path : _name?.__copy__(), err : stdgo._internal.io.fs.Fs_errnotexist.errNotExist } : stdgo._internal.io.fs.Fs_patherror.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L310"
        if (_file.isDir()) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L311"
            return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.embed.Embed_t_opendir.T_openDir(_file, _f._readDir(_name?.__copy__()), (0 : stdgo.GoInt)) : stdgo._internal.embed.Embed_t_opendir.T_openDir)) : stdgo.Ref<stdgo._internal.embed.Embed_t_opendir.T_openDir>)), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L313"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.embed.Embed_t_openfile.T_openFile(_file, (0i64 : stdgo.GoInt64)) : stdgo._internal.embed.Embed_t_openfile.T_openFile)) : stdgo.Ref<stdgo._internal.embed.Embed_t_openfile.T_openFile>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readDir( _f:stdgo._internal.embed.Embed_fs.FS, _dir:stdgo.GoString):stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file> {
        @:recv var _f:stdgo._internal.embed.Embed_fs.FS = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L285"
        if (({
            final value = _f._files;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L286"
            return (null : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
        };
        var _files = (_f._files : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
        var _i = (stdgo._internal.embed.Embed__sortsearch._sortSearch((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1, __7:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L293"
            return (_idir >= _dir : Bool);
        }) : stdgo.GoInt);
        var _j = (stdgo._internal.embed.Embed__sortsearch._sortSearch((_files.length), function(_j:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_j : stdgo.GoInt)]._name?.__copy__()), _jdir:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1, __7:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L297"
            return (_jdir > _dir : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L299"
        return (_files.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
    }
    @:keep
    @:tdfield
    static public function _lookup( _f:stdgo._internal.embed.Embed_fs.FS, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file> {
        @:recv var _f:stdgo._internal.embed.Embed_fs.FS = _f?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L256"
        if (!stdgo._internal.io.fs.Fs_validpath.validPath(_name?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L260"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L262"
        if (_name == (("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L263"
            return stdgo._internal.embed.Embed__dotfile._dotFile;
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L265"
        if (({
            final value = _f._files;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L266"
            return null;
        };
        var __tmp__ = stdgo._internal.embed.Embed__split._split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1, __6:Bool = __tmp__._2;
        var _files = (_f._files : stdgo.Slice<stdgo._internal.embed.Embed_t_file.T_file>);
        var _i = (stdgo._internal.embed.Embed__sortsearch._sortSearch((_files.length), function(_i:stdgo.GoInt):Bool {
            var __tmp__ = stdgo._internal.embed.Embed__split._split(_files[(_i : stdgo.GoInt)]._name?.__copy__()), _idir:stdgo.GoString = __tmp__._0, _ielem:stdgo.GoString = __tmp__._1, __7:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L275"
            return ((_idir > _dir : Bool) || (_idir == (_dir) && (_ielem >= _elem : Bool) : Bool) : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L277"
        if (((_i < (_files.length) : Bool) && (stdgo._internal.embed.Embed__trimslash._trimSlash(_files[(_i : stdgo.GoInt)]._name?.__copy__()) == _name) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L278"
            return (stdgo.Go.setRef(_files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.embed.Embed_t_file.T_file>);
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L280"
        return null;
    }
}
