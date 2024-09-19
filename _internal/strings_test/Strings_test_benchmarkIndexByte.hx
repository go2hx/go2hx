package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkIndexByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _got = (stdgo._internal.strings.Strings_indexByte.indexByte(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoUInt8)) : stdgo.GoInt);
            if (_got != ((17 : stdgo.GoInt))) {
                _b.fatalf(("wrong index: expected 17, got=%d" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_indexByte.indexByte(("some_text=some☺value" : stdgo.GoString), (118 : stdgo.GoUInt8));
            });
        };
    }
