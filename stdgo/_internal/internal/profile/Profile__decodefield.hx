package stdgo._internal.internal.profile;
function _decodeField(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.internal.profile.Profile__decodevarint._decodeVarint(_data), _x:stdgo.GoUInt64 = __tmp__._0, _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        (@:checkr _b ?? throw "null pointer dereference")._field = ((_x >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._typ = ((_x & (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        (@:checkr _b ?? throw "null pointer dereference")._data = (null : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _b ?? throw "null pointer dereference")._u64 = (0i64 : stdgo.GoUInt64);
        {
            final __value__ = (@:checkr _b ?? throw "null pointer dereference")._typ;
            if (__value__ == ((0 : stdgo.GoInt))) {
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__decodevarint._decodeVarint(_data);
                    (@:checkr _b ?? throw "null pointer dereference")._u64 = @:tmpset0 __tmp__._0;
                    _data = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (((_data.length) < (8 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("not enough data" : stdgo.GoString)) };
                };
                (@:checkr _b ?? throw "null pointer dereference")._u64 = stdgo._internal.internal.profile.Profile__le64._le64((_data.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _data = (_data.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                var _n:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var __tmp__ = stdgo._internal.internal.profile.Profile__decodevarint._decodeVarint(_data);
                    _n = @:tmpset0 __tmp__._0;
                    _data = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
                if ((_n > (_data.length : stdgo.GoUInt64) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("too much data" : stdgo.GoString)) };
                };
                (@:checkr _b ?? throw "null pointer dereference")._data = (_data.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                _data = (_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                if (((_data.length) < (4 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("not enough data" : stdgo.GoString)) };
                };
                (@:checkr _b ?? throw "null pointer dereference")._u64 = (stdgo._internal.internal.profile.Profile__le32._le32((_data.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                _data = (_data.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown wire type: %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference")._typ)) };
            };
        };
        return { _0 : _data, _1 : (null : stdgo.Error) };
    }
