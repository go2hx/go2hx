package stdgo._internal.archive.tar;
function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _link:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>; var _1 : stdgo.Error; } {
        if (_fi == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("archive/tar: FileInfo is nil" : stdgo.GoString)) };
        };
        var _fm = (_fi.mode() : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        var _h = (stdgo.Go.setRef(({ name : _fi.name()?.__copy__(), modTime : _fi.modTime()?.__copy__(), mode : (_fm.perm() : stdgo.GoInt64) } : stdgo._internal.archive.tar.Tar_Header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
        if (_fm.isRegular()) {
            _h.typeflag = (48 : stdgo.GoUInt8);
            _h.size = _fi.size();
        } else if (_fi.isDir()) {
            _h.typeflag = (53 : stdgo.GoUInt8);
            _h.name = (_h.name + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        } else if ((_fm & (134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.typeflag = (50 : stdgo.GoUInt8);
            _h.linkname = _link?.__copy__();
        } else if ((_fm & (67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            if ((_fm & (2097152u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _h.typeflag = (51 : stdgo.GoUInt8);
            } else {
                _h.typeflag = (52 : stdgo.GoUInt8);
            };
        } else if ((_fm & (33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.typeflag = (54 : stdgo.GoUInt8);
        } else if ((_fm & (16777216u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: sockets not supported" : stdgo.GoString)) };
        } else {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: unknown file mode %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm))) };
        };
        if ((_fm & (8388608u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.mode = (_h.mode | ((2048i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if ((_fm & (4194304u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.mode = (_h.mode | ((1024i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if ((_fm & (1048576u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _h.mode = (_h.mode | ((512i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_fi.sys() : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>), _1 : false };
            }, _sys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _h.uid = _sys.uid;
                _h.gid = _sys.gid;
                _h.uname = _sys.uname?.__copy__();
                _h.gname = _sys.gname?.__copy__();
                _h.accessTime = _sys.accessTime?.__copy__();
                _h.changeTime = _sys.changeTime?.__copy__();
                if (_sys.xattrs != null) {
                    _h.xattrs = ({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                    for (_k => _v in _sys.xattrs) {
                        _h.xattrs[_k] = _v?.__copy__();
                    };
                };
                if (_sys.typeflag == ((49 : stdgo.GoUInt8))) {
                    _h.typeflag = (49 : stdgo.GoUInt8);
                    _h.size = (0i64 : stdgo.GoInt64);
                    _h.linkname = _sys.linkname?.__copy__();
                };
                if (_sys.paxrecords != null) {
                    _h.paxrecords = ({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                    for (_k => _v in _sys.paxrecords) {
                        _h.paxrecords[_k] = _v?.__copy__();
                    };
                };
            };
        };
        if (stdgo._internal.archive.tar.Tar__sysStat._sysStat != null) {
            return { _0 : _h, _1 : stdgo._internal.archive.tar.Tar__sysStat._sysStat(_fi, _h) };
        };
        return { _0 : _h, _1 : (null : stdgo.Error) };
    }
