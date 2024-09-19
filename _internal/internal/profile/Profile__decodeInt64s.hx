package _internal.internal.profile;
function _decodeInt64s(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>):stdgo.Error {
        if (_b._typ == ((2 : stdgo.GoInt))) {
            var _data = _b._data;
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = _internal.internal.profile.Profile__decodeVarint._decodeVarint(_data);
                        _u = __tmp__._0;
                        _data = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
                (_x : stdgo.Slice<stdgo.GoInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoInt64>).__append__((_u : stdgo.GoInt64))));
            };
            return (null : stdgo.Error);
        };
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            var _err = (_internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer(_i)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoInt64>).__append__(_i)));
        return (null : stdgo.Error);
    }
