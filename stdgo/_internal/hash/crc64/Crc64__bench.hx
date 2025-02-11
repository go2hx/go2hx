package stdgo._internal.hash.crc64;
function _bench(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _poly:stdgo.GoUInt64, _size:stdgo.GoInt64):Void {
        @:check2r _b.setBytes(_size);
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
        };
        var _h = (stdgo._internal.hash.crc64.Crc64_new_.new_(stdgo._internal.hash.crc64.Crc64_maketable.makeTable(_poly)) : stdgo._internal.hash.Hash_hash64.Hash64);
        var _in = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _h.size()).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                _h.reset();
_h.write(_data);
_h.sum(_in);
                _i++;
            };
        };
    }
