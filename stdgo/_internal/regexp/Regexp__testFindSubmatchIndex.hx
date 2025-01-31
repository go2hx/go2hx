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
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result == null) : Bool)) {} else if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result != null) : Bool)) {
            @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result == null) : Bool)) {
            @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result != null) : Bool)) {
            stdgo._internal.regexp.Regexp__testSubmatchIndices._testSubmatchIndices(_test, (0 : stdgo.GoInt), (@:checkr _test ?? throw "null pointer dereference")._matches[(0 : stdgo.GoInt)], _result, _t);
        };
    }
