package stdgo._internal.go.internal.gccgoimporter;
function _findExportFile(_searchpaths:stdgo.Slice<stdgo.GoString>, _pkgpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L43"
        for (__0 => _spath in _searchpaths) {
            var _pkgfullpath = (stdgo._internal.path.filepath.Filepath_join.join(_spath?.__copy__(), _pkgpath?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_pkgfullpath?.__copy__()), _pkgdir:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L47"
            for (__1 => _filepath in (new stdgo.GoArray<stdgo.GoString>(5, 5, ...[_pkgfullpath?.__copy__(), (_pkgfullpath + (".gox" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_pkgdir + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (".so" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_pkgdir + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_pkgfullpath + (".o" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>).__copy__()) {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_filepath?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L55"
                if (((_err == null) && !_fi.isDir() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L56"
                    return { _0 : _filepath?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/importer.go#L61"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s: could not find export data (tried %s)" : stdgo.GoString), stdgo.Go.toInterface(_pkgpath), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_searchpaths, (":" : stdgo.GoString)))) };
    }
