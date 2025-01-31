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
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _c in stdgo._internal.regexp.Regexp__subexpCases._subexpCases) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_c._input?.__copy__());
            var _n = (@:check2r _re.numSubexp() : stdgo.GoInt);
            if (_n != (_c._num)) {
                @:check2r _t.errorf(("%q: NumSubexp = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_c._num));
                continue;
            };
            var _names = @:check2r _re.subexpNames();
            if ((_names.length) != (((1 : stdgo.GoInt) + _n : stdgo.GoInt))) {
                @:check2r _t.errorf(("%q: len(SubexpNames) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface((_names.length)), stdgo.Go.toInterface(_n));
                continue;
            };
            if (_c._names != null) {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < ((1 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool)) {
                        if (_names[(_i : stdgo.GoInt)] != (_c._names[(_i : stdgo.GoInt)])) {
                            @:check2r _t.errorf(("%q: SubexpNames[%d] = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_names[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_c._names[(_i : stdgo.GoInt)]));
                        };
                        _i++;
                    };
                };
            };
            for (__1 => _subexp in _c._indices) {
                var _index = (@:check2r _re.subexpIndex(_subexp._name?.__copy__()) : stdgo.GoInt);
                if (_index != (_subexp._index)) {
                    @:check2r _t.errorf(("%q: SubexpIndex(%q) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c._input), stdgo.Go.toInterface(_subexp._name), stdgo.Go.toInterface(_index), stdgo.Go.toInterface(_subexp._index));
                };
            };
        };
    }
