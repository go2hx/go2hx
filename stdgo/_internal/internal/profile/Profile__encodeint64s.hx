package stdgo._internal.internal.profile;
function _encodeInt64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L109"
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L112"
            for (__0 => _u in _x) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L113"
                stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, (_u : stdgo.GoUInt64));
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L116"
            stdgo._internal.internal.profile.Profile__encodelength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L118"
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L119"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L120"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L121"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L123"
        for (__0 => _u in _x) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L124"
            stdgo._internal.internal.profile.Profile__encodeint64._encodeInt64(_b, _tag, _u);
        };
    }
