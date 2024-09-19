package stdgo._internal.regexp;
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = ((stdgo._internal.strings.Strings_repeat.repeat(("bbbb" : stdgo.GoString), (20 : stdgo.GoInt)) + ("c" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("[ac]" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if (!_re.matchString(_x?.__copy__())) {
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
            });
        };
    }
