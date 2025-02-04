package stdgo._internal.runtime.pprof;
function _lockProfiles():Void {
        @:check2 stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.lock();
        if (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m == null) {
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
                x.set(("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__goroutineprofile._goroutineProfile);
x.set(("threadcreate" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__threadcreateprofile._threadcreateProfile);
x.set(("heap" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__heapprofile._heapProfile);
x.set(("allocs" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__allocsprofile._allocsProfile);
x.set(("block" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__blockprofile._blockProfile);
x.set(("mutex" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__mutexprofile._mutexProfile);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
        };
    }
