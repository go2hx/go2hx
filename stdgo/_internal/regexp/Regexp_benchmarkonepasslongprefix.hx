package stdgo._internal.regexp;
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _x = ((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^abcdefghijklmnopqrstuvwxyz.*$" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _re.match(_x);
                _i++;
            };
        };
    }
