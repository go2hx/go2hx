package stdgo._internal.internal.profile;
function _decodeStrings(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoString>>):stdgo.Error {
        var _s:stdgo.GoString = ("" : stdgo.GoString), _s__pointer__ = stdgo.Go.pointer(_s);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L339"
        {
            var _err = (stdgo._internal.internal.profile.Profile__decodestring._decodeString(_b, _s__pointer__) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L340"
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoString>).__setData__(((_x : stdgo.Slice<stdgo.GoString>).__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L343"
        return (null : stdgo.Error);
    }
