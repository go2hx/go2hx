package stdgo._internal.regexp;
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        var _r = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("(?s)\\A.*\\z" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L682"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._onepass;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L683"
            _b.fatalf(("want onepass regex, but %q is not onepass" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L685"
        for (__0 => _size in stdgo._internal.regexp.Regexp__benchsizes._benchSizes) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L686"
            if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L687"
                continue;
            };
            var _t = stdgo._internal.regexp.Regexp__maketext._makeText(_size._n);
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L690"
            _b.run(_size._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L691"
                _b.setBytes((_size._n : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L692"
                _b.reportAllocs();
                //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L693"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L694"
                        if (!_r.match(_t)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/exec_test.go#L695"
                            _b.fatal(stdgo.Go.toInterface(("not match!" : stdgo.GoString)));
                        };
                        _i++;
                    };
                };
            });
        };
    }
