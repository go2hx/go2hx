package stdgo._internal.regexp;
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(("testdata/*.dat" : stdgo.GoString)), _files:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _file in _files) {
            @:check2r _t.log(stdgo.Go.toInterface(_file));
            stdgo._internal.regexp.Regexp__testfowler._testFowler(_t, _file?.__copy__());
        };
    }
