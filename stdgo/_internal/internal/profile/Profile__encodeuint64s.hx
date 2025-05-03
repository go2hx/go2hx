package stdgo._internal.internal.profile;
function _encodeUint64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L70"
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L73"
            for (__0 => _u in _x) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L74"
                stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, _u);
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L77"
            stdgo._internal.internal.profile.Profile__encodelength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L79"
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L80"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L81"
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L82"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L84"
        for (__0 => _u in _x) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L85"
            stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, _u);
        };
    }
