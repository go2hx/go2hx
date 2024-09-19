package stdgo._internal.regexp;
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = (("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _re = _re.copy();
            while (_pb.next()) {
                _re.match(_x);
            };
        });
    }
