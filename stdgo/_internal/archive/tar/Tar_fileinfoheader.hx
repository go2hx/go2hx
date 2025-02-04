package stdgo._internal.archive.tar;
function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _link:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } {
        if (_fi == null) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("archive/tar: FileInfo is nil" : stdgo.GoString)) };
        };
        var _fm = (_fi.mode() : stdgo._internal.io.fs.Fs_filemode.FileMode);
        var _h = (stdgo.Go.setRef(({ name : _fi.name()?.__copy__(), modTime : _fi.modTime()?.__copy__(), mode : (_fm.perm() : stdgo.GoInt64) } : stdgo._internal.archive.tar.Tar_header.Header)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>);
        if (_fm.isRegular()) {
            (@:checkr _h ?? throw "null pointer dereference").typeflag = (48 : stdgo.GoUInt8);
            (@:checkr _h ?? throw "null pointer dereference").size = _fi.size();
        } else if (_fi.isDir()) {
            (@:checkr _h ?? throw "null pointer dereference").typeflag = (53 : stdgo.GoUInt8);
            (@:checkr _h ?? throw "null pointer dereference").name = ((@:checkr _h ?? throw "null pointer dereference").name + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        } else if ((_fm & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").typeflag = (50 : stdgo.GoUInt8);
            (@:checkr _h ?? throw "null pointer dereference").linkname = _link?.__copy__();
        } else if ((_fm & (67108864u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            if ((_fm & (2097152u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                (@:checkr _h ?? throw "null pointer dereference").typeflag = (51 : stdgo.GoUInt8);
            } else {
                (@:checkr _h ?? throw "null pointer dereference").typeflag = (52 : stdgo.GoUInt8);
            };
        } else if ((_fm & (33554432u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").typeflag = (54 : stdgo.GoUInt8);
        } else if ((_fm & (16777216u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: sockets not supported" : stdgo.GoString)) };
        } else {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("archive/tar: unknown file mode %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm))) };
        };
        if ((_fm & (8388608u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").mode = ((@:checkr _h ?? throw "null pointer dereference").mode | ((2048i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if ((_fm & (4194304u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").mode = ((@:checkr _h ?? throw "null pointer dereference").mode | ((1024i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if ((_fm & (1048576u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            (@:checkr _h ?? throw "null pointer dereference").mode = ((@:checkr _h ?? throw "null pointer dereference").mode | ((512i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_fi.sys() : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>)) : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>), _1 : false };
            }, _sys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _h ?? throw "null pointer dereference").uid = (@:checkr _sys ?? throw "null pointer dereference").uid;
                (@:checkr _h ?? throw "null pointer dereference").gid = (@:checkr _sys ?? throw "null pointer dereference").gid;
                (@:checkr _h ?? throw "null pointer dereference").uname = (@:checkr _sys ?? throw "null pointer dereference").uname?.__copy__();
                (@:checkr _h ?? throw "null pointer dereference").gname = (@:checkr _sys ?? throw "null pointer dereference").gname?.__copy__();
                (@:checkr _h ?? throw "null pointer dereference").accessTime = (@:checkr _sys ?? throw "null pointer dereference").accessTime?.__copy__();
                (@:checkr _h ?? throw "null pointer dereference").changeTime = (@:checkr _sys ?? throw "null pointer dereference").changeTime?.__copy__();
                if ((@:checkr _sys ?? throw "null pointer dereference").xattrs != null) {
                    (@:checkr _h ?? throw "null pointer dereference").xattrs = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                    for (_k => _v in (@:checkr _sys ?? throw "null pointer dereference").xattrs) {
                        (@:checkr _h ?? throw "null pointer dereference").xattrs[_k] = _v?.__copy__();
                    };
                };
                if ((@:checkr _sys ?? throw "null pointer dereference").typeflag == ((49 : stdgo.GoUInt8))) {
                    (@:checkr _h ?? throw "null pointer dereference").typeflag = (49 : stdgo.GoUInt8);
                    (@:checkr _h ?? throw "null pointer dereference").size = (0i64 : stdgo.GoInt64);
                    (@:checkr _h ?? throw "null pointer dereference").linkname = (@:checkr _sys ?? throw "null pointer dereference").linkname?.__copy__();
                };
                if ((@:checkr _sys ?? throw "null pointer dereference").pAXRecords != null) {
                    (@:checkr _h ?? throw "null pointer dereference").pAXRecords = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                    for (_k => _v in (@:checkr _sys ?? throw "null pointer dereference").pAXRecords) {
                        (@:checkr _h ?? throw "null pointer dereference").pAXRecords[_k] = _v?.__copy__();
                    };
                };
            };
        };
        if (stdgo._internal.archive.tar.Tar__sysstat._sysStat != null) {
            return { _0 : _h, _1 : stdgo._internal.archive.tar.Tar__sysstat._sysStat(_fi, _h) };
        };
        return { _0 : _h, _1 : (null : stdgo.Error) };
    }
