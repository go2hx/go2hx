package stdgo._internal.crypto.internal.nistec.fiat;
function _p256InvertEndianness(_v:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((_v.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _v[(((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)];
                    final __tmp__1 = _v[(_i : stdgo.GoInt)];
                    final __tmp__2 = _v;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _v;
                    final __tmp__5 = (((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
                _i++;
            };
        };
    }
