package stdgo._internal.internal.profile;
function _decodeUint64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoUInt64>>):stdgo.Error {
        if ((@:checkr _b ?? throw "null pointer dereference")._typ == ((2 : stdgo.GoInt))) {
            var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = stdgo._internal.internal.profile.Profile__decodevarint._decodeVarint(_data);
                        _u = @:tmpset0 __tmp__._0;
                        _data = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
                (_x : stdgo.Slice<stdgo.GoUInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoUInt64>).__append__(_u)));
            };
            return (null : stdgo.Error);
        };
        var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _u__pointer__ = stdgo.Go.pointer(_u);
        {
            var _err = (stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, _u__pointer__) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoUInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoUInt64>).__append__(_u)));
        return (null : stdgo.Error);
    }
