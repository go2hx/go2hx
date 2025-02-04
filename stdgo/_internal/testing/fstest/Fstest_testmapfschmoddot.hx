package stdgo._internal.testing.fstest;
function testMapFSChmodDot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            x.set(("a/b.txt" : stdgo.GoString), (stdgo.Go.setRef(({ mode : (438u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>));
x.set(("." : stdgo.GoString), (stdgo.Go.setRef(({ mode : (-2147483137u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile)) : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.io.fs.Fs_walkdir.walkDir(stdgo.Go.asInterface(_m), ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _err:stdgo.Error):stdgo.Error {
            var __tmp__ = _d.info(), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%s: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
            return (null : stdgo.Error);
        });
        var _want = ((("\n.: drwxrwxrwx\na: d---------\na/b.txt: -rw-rw-rw-\n" : stdgo.GoString).__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _got = ((@:check2r _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_want != (_got)) {
            @:check2r _t.errorf(("MapFS modes want:\n%s\ngot:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
