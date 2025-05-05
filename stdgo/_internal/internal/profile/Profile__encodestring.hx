package stdgo._internal.internal.profile;
function _encodeString(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L129"
        stdgo._internal.internal.profile.Profile__encodelength._encodeLength(_b, _tag, (_x.length));
        (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._data.__append__(...(_x : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
