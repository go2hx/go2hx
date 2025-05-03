package stdgo._internal.internal.profile;
function _encodeStrings(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L134"
        for (__0 => _s in _x) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L135"
            stdgo._internal.internal.profile.Profile__encodestring._encodeString(_b, _tag, _s?.__copy__());
        };
    }
