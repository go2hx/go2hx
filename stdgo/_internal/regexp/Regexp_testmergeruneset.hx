package stdgo._internal.regexp;
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L126"
        for (_ix => _test in stdgo._internal.regexp.Regexp__runemergetests._runeMergeTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp__mergerunesets._mergeRuneSets((stdgo.Go.setRef(_test._left) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_test._right) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), _test._leftPC, _test._rightPC), _merged:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _next:stdgo.Slice<stdgo.GoUInt32> = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L128"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L129"
                _t.errorf(("mergeRuneSet :%d (%v, %v) merged\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged));
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L131"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L132"
                _t.errorf(("mergeRuneSet :%d(%v, %v) next\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next));
            };
        };
    }
