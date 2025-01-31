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
function _testSubmatchIndices(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((_expect.length) != ((_result.length))) {
            @:check2r _t.errorf(("match %d: expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_expect.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(((_result.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        for (_k => _e in _expect) {
            if (_e != (_result[(_k : stdgo.GoInt)])) {
                @:check2r _t.errorf(("match %d: submatch error: expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
