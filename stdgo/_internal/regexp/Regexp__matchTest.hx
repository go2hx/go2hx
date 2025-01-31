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
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compileTest._compileTest(_t, (@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), stdgo.Go.str()?.__copy__());
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        var _m = (@:check2r _re.matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            @:check2r _t.errorf(("MatchString failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
        _m = @:check2r _re.match(((@:checkr _test ?? throw "null pointer dereference")._text : stdgo.Slice<stdgo.GoUInt8>));
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            @:check2r _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
