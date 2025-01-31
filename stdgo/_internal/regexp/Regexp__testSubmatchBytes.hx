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
function _testSubmatchBytes(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            @:check2r _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            return;
        };
        {
            var _k = (0 : stdgo.GoInt);
            while ((_k < (_submatches.length) : Bool)) {
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != null) {
                        @:check2r _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    {
                        _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
var _got = _result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)];
if ((_got.length) != (_got.capacity)) {
                    @:check2r _t.errorf(("match %d: expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
var _expect = (((@:checkr _test ?? throw "null pointer dereference")._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString).__copy__() : stdgo.GoString);
if (_expect != ((_got : stdgo.GoString))) {
                    @:check2r _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    return;
                };
                _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
