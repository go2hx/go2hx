package stdgo._internal.regexp;
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L660"
        for (__0 => _data in stdgo._internal.regexp.Regexp__benchdata._benchData) {
            var _r = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_data._re?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L662"
            for (__1 => _size in stdgo._internal.regexp.Regexp__benchsizes._benchSizes) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L663"
                if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L664"
                    continue;
                };
                var _t = stdgo._internal.regexp.Regexp__maketext._makeText(_size._n);
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L667"
                _b.run(((_data._name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _size._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L668"
                    _b.setBytes((_size._n : stdgo.GoInt64));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L669"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L670"
                            if (_r.match(_t)) {
                                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L671"
                                _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                            };
                            _i++;
                        };
                    };
                });
            };
        };
    }
