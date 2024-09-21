package _internal.internal.profile;
function _decodeStrings(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _err = (_internal.internal.profile.Profile__decodeString._decodeString(_b, stdgo.Go.pointer(_s)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoString>).__setData__(((_x : stdgo.Slice<stdgo.GoString>).__append__(_s?.__copy__())));
        return (null : stdgo.Error);
    }
