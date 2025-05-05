package stdgo._internal.testing.fstest;
function testFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error {
        var _expected = new stdgo.Slice<stdgo.GoString>(_expected.length, 0, ..._expected);
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L37"
        {
            var _err = (stdgo._internal.testing.fstest.Fstest__testfs._testFS(_fsys, ...(_expected : Array<stdgo.GoString>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L38"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L40"
        for (__2 => _name in _expected) {
            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L41"
            {
                var _i = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var __0 = ((_name.__slice__(0, _i) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_name.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _dirSlash = __1, _dir = __0;
                    var _subExpected:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L44"
                    for (__3 => _name in _expected) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L45"
                        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), _dirSlash?.__copy__())) {
                            _subExpected = (_subExpected.__append__((_name.__slice__((_dirSlash.length)) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        };
                    };
                    var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(_fsys, _dir?.__copy__()), _sub:stdgo._internal.io.fs.Fs_fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L50"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L51"
                        return _err;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L53"
                    {
                        var _err = (stdgo._internal.testing.fstest.Fstest__testfs._testFS(_sub, ...(_subExpected : Array<stdgo.GoString>)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L54"
                            return stdgo._internal.fmt.Fmt_errorf.errorf(("testing fs.Sub(fsys, %s): %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L56"
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/fstest/testfs.go#L59"
        return (null : stdgo.Error);
    }
