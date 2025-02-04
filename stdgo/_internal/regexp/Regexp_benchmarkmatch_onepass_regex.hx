package stdgo._internal.regexp;
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        var _r = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("(?s)\\A.*\\z" : stdgo.GoString));
        if (((@:checkr _r ?? throw "null pointer dereference")._onepass == null || ((@:checkr _r ?? throw "null pointer dereference")._onepass : Dynamic).__nil__)) {
            @:check2r _b.fatalf(("want onepass regex, but %q is not onepass" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
        };
        for (__0 => _size in stdgo._internal.regexp.Regexp__benchsizes._benchSizes) {
            if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                continue;
            };
            var _t = stdgo._internal.regexp.Regexp__maketext._makeText(_size._n);
            @:check2r _b.run(_size._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                @:check2r _b.setBytes((_size._n : stdgo.GoInt64));
                @:check2r _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        if (!@:check2r _r.match(_t)) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("not match!" : stdgo.GoString)));
                        };
                        _i++;
                    };
                };
            });
        };
    }
