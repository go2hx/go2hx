package stdgo._internal.internal.profile;
function _encodeMessage(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):Void {
        var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L156"
        _m._encode(_b);
        var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L158"
        stdgo._internal.internal.profile.Profile__encodelength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
        var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L160"
        ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L161"
        ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L162"
        ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
