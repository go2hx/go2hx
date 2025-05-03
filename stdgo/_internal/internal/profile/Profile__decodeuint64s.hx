package stdgo._internal.internal.profile;
function _decodeUint64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoUInt64>>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L307"
        if ((@:checkr _b ?? throw "null pointer dereference")._typ == ((2 : stdgo.GoInt))) {
            var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L310"
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L314"
                {
                    {
                        var __tmp__ = stdgo._internal.internal.profile.Profile__decodevarint._decodeVarint(_data);
                        _u = @:tmpset0 __tmp__._0;
                        _data = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L315"
                        return _err;
                    };
                };
                (_x : stdgo.Slice<stdgo.GoUInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoUInt64>).__append__(_u) : stdgo.Slice<stdgo.GoUInt64>));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L319"
            return (null : stdgo.Error);
        };
        var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _u__pointer__ = stdgo.Go.pointer(_u);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L322"
        {
            var _err = (stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, _u__pointer__) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L323"
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoUInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoUInt64>).__append__(_u) : stdgo.Slice<stdgo.GoUInt64>));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L326"
        return (null : stdgo.Error);
    }
