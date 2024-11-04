package stdgo._internal.regexp;
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        for (__0 => _data in stdgo._internal.regexp.Regexp__benchData._benchData) {
            var _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_data._re?.__copy__());
            for (__1 => _size in stdgo._internal.regexp.Regexp__benchSizes._benchSizes) {
                if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
                var _t = stdgo._internal.regexp.Regexp__makeText._makeText(_size._n);
                _b.run(((_data._name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _size._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.setBytes((_size._n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _b.n : Bool)) {
                            if (_r.match(_t)) {
                                _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                            };
                            _i++;
                        };
                    };
                });
            };
        };
    }
