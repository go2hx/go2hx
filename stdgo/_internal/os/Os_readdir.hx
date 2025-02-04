package stdgo._internal.os;
function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        #if (sys || hxnodejs) {
            final name = _name;
            final paths = sys.FileSystem.readDirectory(name);
            final dirs = new stdgo.Slice<stdgo._internal.os.Os_direntry.DirEntry>(paths.length, paths.length);
            for (i in 0 ... paths.length) {
                dirs[i] = cast stdgo.Go.asInterface(new stdgo._internal.os.Os_t_filestat.T_fileStat(paths[i]));
            };
            return { _0 : dirs, _1 : null };
        } #else null #end;
        return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_("readDir not supported on this target") };
    }
