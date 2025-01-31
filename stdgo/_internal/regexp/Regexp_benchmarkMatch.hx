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
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _isRaceBuilder = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(stdgo._internal.internal.testenv.Testenv_builder.builder()?.__copy__(), ("-race" : stdgo.GoString)) : Bool);
        for (__0 => _data in stdgo._internal.regexp.Regexp__benchData._benchData) {
            var _r = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_data._re?.__copy__());
            for (__1 => _size in stdgo._internal.regexp.Regexp__benchSizes._benchSizes) {
                if ((((_isRaceBuilder || stdgo._internal.testing.Testing_short.short() : Bool)) && (_size._n > (1024 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
                var _t = stdgo._internal.regexp.Regexp__makeText._makeText(_size._n);
                @:check2r _b.run(((_data._name + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _size._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    @:check2r _b.setBytes((_size._n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            if (@:check2r _r.match(_t)) {
                                @:check2r _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                            };
                            _i++;
                        };
                    };
                });
            };
        };
    }
