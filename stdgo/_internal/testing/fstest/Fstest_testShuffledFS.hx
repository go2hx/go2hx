package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fsys = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
            x.set(("tmp/one" : stdgo.GoString), ({ data : (("1" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
x.set(("tmp/two" : stdgo.GoString), ({ data : (("2" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
x.set(("tmp/three" : stdgo.GoString), ({ data : (("3" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_MapFile.MapFile));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_T_shuffledFS.T_shuffledFS);
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testFS.testFS(stdgo.Go.asInterface(_fsys), ("tmp/one" : stdgo.GoString), ("tmp/two" : stdgo.GoString), ("tmp/three" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
