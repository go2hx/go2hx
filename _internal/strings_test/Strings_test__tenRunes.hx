package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _tenRunes(_ch:stdgo.GoInt32):stdgo.GoString {
        var _r = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _r) {
            _r[(_i : stdgo.GoInt)] = _ch;
        };
        return (_r : stdgo.GoString)?.__copy__();
    }
