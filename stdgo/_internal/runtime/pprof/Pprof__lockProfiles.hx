package stdgo._internal.runtime.pprof;
function _lockProfiles():Void {
        @:check2 stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.lock();
        if (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m == null) {
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
                x.set(("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__goroutineProfile._goroutineProfile);
x.set(("threadcreate" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__threadcreateProfile._threadcreateProfile);
x.set(("heap" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__heapProfile._heapProfile);
x.set(("allocs" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__allocsProfile._allocsProfile);
x.set(("block" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__blockProfile._blockProfile);
x.set(("mutex" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__mutexProfile._mutexProfile);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>>);
        };
    }
