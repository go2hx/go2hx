package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
var _makeFieldsInputASCII : () -> stdgo.GoString = function():stdgo.GoString {
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _x) {
            if (stdgo._internal.math.rand.Rand_intn.intn((10 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
                _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            } else {
                _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            };
        };
        return (_x : stdgo.GoString)?.__copy__();
    };
