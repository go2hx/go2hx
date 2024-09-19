package _internal.internal.profile;
function _addTracebackSample(_l:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>, _s:stdgo.Slice<stdgo.GoString>, _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):Void {
        _p.sample = (_p.sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _l, label : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("source" : stdgo.GoString), _s);
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)));
    }
