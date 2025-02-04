package stdgo._internal.internal.profile;
function _addTracebackSample(_l:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>, _s:stdgo.Slice<stdgo.GoString>, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>):Void {
        (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _l, label : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("source" : stdgo.GoString), _s);
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)));
    }
