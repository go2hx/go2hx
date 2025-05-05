package stdgo._internal.regexp;
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.path.filepath.Filepath_glob.glob(("testdata/*.dat" : stdgo.GoString)), _files:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L329"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L330"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L332"
        for (__0 => _file in _files) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L333"
            _t.log(stdgo.Go.toInterface(_file));
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L334"
            stdgo._internal.regexp.Regexp__testfowler._testFowler(_t, _file?.__copy__());
        };
    }
