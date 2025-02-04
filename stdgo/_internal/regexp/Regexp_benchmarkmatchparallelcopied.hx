package stdgo._internal.regexp;
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = ((("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        @:check2r _b.resetTimer();
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _re = @:check2r _re.copy();
            while (@:check2r _pb.next()) {
                @:check2r _re.match(_x);
            };
        });
    }
