package stdgo._internal.regexp;
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _x = ((stdgo._internal.strings.Strings_repeat.repeat(("bbbb" : stdgo.GoString), (20 : stdgo.GoInt)) + ("c" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("[ac]" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                if (!@:check2r _re.matchString(_x.__copy__())) {
                    @:check2r _b.fatalf(("no match!" : stdgo.GoString));
                };
                _i++;
            };
        };
    }
