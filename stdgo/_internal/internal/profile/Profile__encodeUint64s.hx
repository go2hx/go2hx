package stdgo._internal.internal.profile;
function _encodeUint64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt64>):Void {
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            for (__0 => _u in _x) {
                stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, _u);
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            stdgo._internal.internal.profile.Profile__encodeLength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        for (__0 => _u in _x) {
            stdgo._internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, _u);
        };
    }
