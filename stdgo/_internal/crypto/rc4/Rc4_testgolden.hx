package stdgo._internal.crypto.rc4;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_gi => _g in stdgo._internal.crypto.rc4.Rc4__golden._golden) {
            var _data = (new stdgo.Slice<stdgo.GoUInt8>((_g._keystream.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _data) {
                _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _expect = (new stdgo.Slice<stdgo.GoUInt8>((_g._keystream.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _expect) {
                _expect[(_i : stdgo.GoInt)] = ((_i : stdgo.GoUInt8) ^ _g._keystream[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            };
            {
                var _size = (1 : stdgo.GoInt);
                while ((_size <= (_g._keystream.length) : Bool)) {
                    var __tmp__ = stdgo._internal.crypto.rc4.Rc4_newcipher.newCipher(_g._key), _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                        @:check2r _t.fatalf(("#%d: NewCipher: %v" : stdgo.GoString), stdgo.Go.toInterface(_gi), stdgo.Go.toInterface(_err));
                    };
var _off = (0 : stdgo.GoInt);
while ((_off < (_g._keystream.length) : Bool)) {
                        var _n = ((_g._keystream.length) - _off : stdgo.GoInt);
                        if ((_n > _size : Bool)) {
                            _n = _size;
                        };
                        var _desc = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d@[%d:%d]" : stdgo.GoString), stdgo.Go.toInterface(_gi), stdgo.Go.toInterface(_off), stdgo.Go.toInterface((_off + _n : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
                        stdgo._internal.crypto.rc4.Rc4__testencrypt._testEncrypt(_t, _desc?.__copy__(), _c, (_data.__slice__(_off, (_off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_expect.__slice__(_off, (_off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _off = (_off + (_n) : stdgo.GoInt);
                    };
                    _size++;
                };
            };
        };
    }
