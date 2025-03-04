package stdgo._internal.crypto.sha512;
function _testHash(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _name:stdgo.GoString, _in:stdgo.GoString, _outHex:stdgo.GoString, _oneShotResult:stdgo.Slice<stdgo.GoUInt8>, _digestFunc:stdgo._internal.hash.Hash_hash.Hash):Void {
        {
            var _calculated = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_oneShotResult)?.__copy__() : stdgo.GoString);
            if (_calculated != (_outHex)) {
                @:check2r _t.errorf(("one-shot result for %s(%q) = %q, but expected %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_calculated), stdgo.Go.toInterface(_outHex));
                return;
            };
        };
        {
            var _pass = (0 : stdgo.GoInt);
            while ((_pass < (3 : stdgo.GoInt) : Bool)) {
                if ((_pass < (2 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, _in.__copy__());
                } else {
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, (_in.__slice__(0, ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                    _digestFunc.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                    stdgo._internal.io.Io_writestring.writeString(_digestFunc, (_in.__slice__(((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                };
{
                    var _calculated = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_digestFunc.sum((null : stdgo.Slice<stdgo.GoUInt8>))).__copy__() : stdgo.GoString);
                    if (_calculated != (_outHex)) {
                        @:check2r _t.errorf(("%s(%q) = %q (in pass #%d), but expected %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_calculated), stdgo.Go.toInterface(_pass), stdgo.Go.toInterface(_outHex));
                    };
                };
_digestFunc.reset();
                _pass++;
            };
        };
    }
