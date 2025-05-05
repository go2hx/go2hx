package stdgo._internal.regexp;
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = ((("this is a long line that contains foo bar baz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("foo (ba+r)? baz" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L835"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L836"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L837"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L838"
                _re.match(_x);
            };
        });
    }
