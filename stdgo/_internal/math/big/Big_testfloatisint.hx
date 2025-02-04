package stdgo._internal.math.big;
function testFloatIsInt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo.GoString>(14, 14, ...[
("0 int" : stdgo.GoString),
("-0 int" : stdgo.GoString),
("1 int" : stdgo.GoString),
("-1 int" : stdgo.GoString),
("0.5" : stdgo.GoString),
("1.23" : stdgo.GoString),
("1.23e1" : stdgo.GoString),
("1.23e2 int" : stdgo.GoString),
("0.000000001e+8" : stdgo.GoString),
("0.000000001e+9 int" : stdgo.GoString),
("1.2345e200 int" : stdgo.GoString),
("Inf" : stdgo.GoString),
("+Inf" : stdgo.GoString),
("-Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _s = (stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_test?.__copy__(), (" int" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            var _want = (_s != (_test) : Bool);
            {
                var _got = (@:check2r stdgo._internal.math.big.Big__makefloat._makeFloat(_s?.__copy__()).isInt() : Bool);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("%s.IsInt() == %t" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
