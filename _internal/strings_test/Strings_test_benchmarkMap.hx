package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _mapidentity = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _b.run(("identity" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__8 => _md in _internal.strings_test.Strings_test__mapdata._mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.strings.Strings_map_.map_(_mapidentity, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
        var _mapchange = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((_r + (65 : stdgo.GoInt32) : stdgo.GoInt32) - (97 : stdgo.GoInt32) : stdgo.GoInt32);
            };
            if ((((945 : stdgo.GoInt32) <= _r : Bool) && (_r <= (969 : stdgo.GoInt32) : Bool) : Bool)) {
                return ((_r + (913 : stdgo.GoInt32) : stdgo.GoInt32) - (945 : stdgo.GoInt32) : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        _b.run(("change" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            for (__16 => _md in _internal.strings_test.Strings_test__mapdata._mapdata) {
                _b.run(_md._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.strings.Strings_map_.map_(_mapchange, _md._data?.__copy__());
                        });
                    };
                });
            };
        });
    }
