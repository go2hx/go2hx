package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _tenRunes(_r:stdgo.GoInt32):stdgo.GoString {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _runes) {
            _runes[(_i : stdgo.GoInt)] = _r;
        };
        return (_runes : stdgo.GoString)?.__copy__();
    }
