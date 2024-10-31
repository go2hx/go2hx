package stdgo._internal.regexp;
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        var _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?s)\\A.*\\z" : stdgo.GoString));
        if (_r._onepass == null || (_r._onepass : Dynamic).__nil__) {
            _b.fatalf(("want onepass regex, but %q is not onepass" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
        for (__0 => _size in stdgo._internal.regexp.Regexp__benchSizes._benchSizes) {
            if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _t = stdgo._internal.regexp.Regexp__makeText._makeText(_size._n);
            _b.run(_size._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes((_size._n : stdgo.GoInt64));
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _b.n : Bool)) {
                        if (!_r.match(_t)) {
                            _b.fatal(stdgo.Go.toInterface(("not match!" : stdgo.GoString)));
                        };
                        _i++;
                    };
                };
            });
        };
    }
