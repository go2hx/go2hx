package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function fuzzParseBuildInfoRoundTrip(_f:stdgo.Ref<stdgo._internal.testing.Testing_F.F>):Void {
        _f.add(stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__strip._strip(("\n\t\tpath\trsc.io/fortune\n\t\tmod\trsc.io/fortune\tv1.0.0\n\t\t" : stdgo.GoString))));
        _f.add(stdgo.Go.toInterface(("path\tcmd/test2json" : stdgo.GoString)));
        _f.add(stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__strip._strip(("\n\t\tgo\t1.18\n\t\tpath\texample.com/m\n\t\tmod\texample.com/m\t(devel)\t\n\t\tbuild\t-compiler=gc\n\t\t" : stdgo.GoString))));
        _f.add(stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__strip._strip(("\n\t\tgo\t1.18\n\t\tpath\texample.com/m\n\t\tbuild\t-compiler=gc\n\t\t" : stdgo.GoString))));
        _f.add(stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__strip._strip(("\n\t\tgo 1.18\n\t\tpath example.com/m\n\t\tbuild CRAZY_ENV=\"requires\\nescaping\"\n\t\t" : stdgo.GoString))));
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _s:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.runtime.debug.Debug_parseBuildInfo.parseBuildInfo(_s?.__copy__()), _bi:stdgo.Ref<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.log(stdgo.Go.toInterface(_err));
                return;
            };
            var _s2 = ((_bi.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.runtime.debug.Debug_parseBuildInfo.parseBuildInfo(_s2?.__copy__()), _bi2:stdgo.Ref<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%v:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_s2));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_bi2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_bi)))) {
                _t.fatalf(("Parsed representation differs.\ninput:\n%s\noutput:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s2));
            };
        }));
    }
