package stdgo._internal.testing.fstest;
function testDash(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            x.set(("a-b/a" : stdgo.GoString), ({ data : ((("a-b/a" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
        {
            var _err = (stdgo._internal.testing.fstest.Fstest_testfs.testFS(stdgo.Go.asInterface(_m), ("a-b/a" : stdgo.GoString)) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
