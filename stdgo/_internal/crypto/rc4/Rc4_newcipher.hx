package stdgo._internal.crypto.rc4;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>; var _1 : stdgo.Error; } {
        var _k = (_key.length : stdgo.GoInt);
        if (((_k < (1 : stdgo.GoInt) : Bool) || (_k > (256 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface((_k : stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError)) };
        };
        var _c:stdgo._internal.crypto.rc4.Rc4_cipher.Cipher = ({} : stdgo._internal.crypto.rc4.Rc4_cipher.Cipher);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                _c._s[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt32);
                _i++;
            };
        };
        var _j:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                _j = (_j + (((_c._s[(_i : stdgo.GoInt)] : stdgo.GoUInt8) + _key[(_i % _k : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
{
                    final __tmp__0 = _c._s[(_j : stdgo.GoInt)];
                    final __tmp__1 = _c._s[(_i : stdgo.GoInt)];
                    final __tmp__2 = _c._s;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _c._s;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = __tmp__0;
                    __tmp__4[__tmp__5] = __tmp__1;
                };
                _i++;
            };
        };
        return { _0 : (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>), _1 : (null : stdgo.Error) };
    }
