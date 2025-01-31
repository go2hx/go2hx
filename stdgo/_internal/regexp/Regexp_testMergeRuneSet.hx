package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_ix => _test in stdgo._internal.regexp.Regexp__runeMergeTests._runeMergeTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp__mergeRuneSets._mergeRuneSets((stdgo.Go.setRef(_test._left) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), (stdgo.Go.setRef(_test._right) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>), _test._leftPC, _test._rightPC), _merged:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _next:stdgo.Slice<stdgo.GoUInt32> = __tmp__._1;
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged))) {
                @:check2r _t.errorf(("mergeRuneSet :%d (%v, %v) merged\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_merged), stdgo.Go.toInterface(_test._merged));
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next))) {
                @:check2r _t.errorf(("mergeRuneSet :%d(%v, %v) next\n have\n%v\nwant\n%v" : stdgo.GoString), stdgo.Go.toInterface(_ix), stdgo.Go.toInterface(_test._left), stdgo.Go.toInterface(_test._right), stdgo.Go.toInterface(_next), stdgo.Go.toInterface(_test._next));
            };
        };
    }
