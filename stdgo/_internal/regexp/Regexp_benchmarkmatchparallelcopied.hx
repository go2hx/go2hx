package stdgo._internal.regexp;
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = ((("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L846"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L847"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _re = _re.copy();
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L849"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L850"
                _re.match(_x);
            };
        });
    }
