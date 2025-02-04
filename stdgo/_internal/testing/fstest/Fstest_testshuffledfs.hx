package stdgo._internal.testing.fstest;
function testShuffledFS(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fsys = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            x.set(("tmp/one" : stdgo.GoString), ({ data : ((("1" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
x.set(("tmp/two" : stdgo.GoString), ({ data : ((("2" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
x.set(("tmp/three" : stdgo.GoString), ({ data : ((("3" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_t_shuffledfs.T_shuffledFS);
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testfs.testFS(stdgo.Go.asInterface(_fsys), ("tmp/one" : stdgo.GoString), ("tmp/two" : stdgo.GoString), ("tmp/three" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
