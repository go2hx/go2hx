package stdgo._internal.internal.profile;
function _decodeStrings(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var _s__pointer__ = stdgo.Go.pointer(_s);
        {
            var _err = (stdgo._internal.internal.profile.Profile__decodestring._decodeString(_b, _s__pointer__) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoString>).__setData__(((_x : stdgo.Slice<stdgo.GoString>).__append__(_s?.__copy__())));
        return (null : stdgo.Error);
    }
