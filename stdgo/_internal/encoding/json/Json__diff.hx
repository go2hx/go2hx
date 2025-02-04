package stdgo._internal.encoding.json;
function _diff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                if ((((_i >= (_a.length) : Bool) || (_i >= (_b.length) : Bool) : Bool) || (_a[(_i : stdgo.GoInt)] != _b[(_i : stdgo.GoInt)]) : Bool)) {
                    var _j = (_i - (10 : stdgo.GoInt) : stdgo.GoInt);
                    if ((_j < (0 : stdgo.GoInt) : Bool)) {
                        _j = (0 : stdgo.GoInt);
                    };
                    @:check2r _t.errorf(("diverge at %d: «%s» vs «%s»" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__trim._trim((_a.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__trim._trim((_b.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>))));
                    return;
                };
                _i++;
            };
        };
    }
