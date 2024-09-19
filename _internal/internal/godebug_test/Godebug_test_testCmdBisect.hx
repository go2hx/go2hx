package _internal.internal.godebug_test;
import stdgo._internal.internal.godebug.Godebug;
function testCmdBisect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("go" : stdgo.GoString), ("run" : stdgo.GoString), ("cmd/vendor/golang.org/x/tools/cmd/bisect" : stdgo.GoString), ("GODEBUG=buggy=1#PATTERN" : stdgo.GoString), stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=BisectTestCase" : stdgo.GoString)).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("exec bisect: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _want:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("godebug_test.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _line in stdgo._internal.strings.Strings_split.split((_src : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), ("BISECT BUG" : stdgo.GoString))) {
                _want = (_want.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("godebug_test.go:%d" : stdgo.GoString), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__()));
            };
        };
        stdgo._internal.sort.Sort_strings.strings(_want);
        var _have:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__54 => _line in stdgo._internal.strings.Strings_split.split((_out : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString))) {
            if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), ("godebug_test.go:" : stdgo.GoString))) {
                _have = (_have.__append__((_line.__slice__(stdgo._internal.strings.Strings_lastIndex.lastIndex(_line?.__copy__(), ("godebug_test.go:" : stdgo.GoString))) : stdgo.GoString)?.__copy__()));
            };
        };
        stdgo._internal.sort.Sort_strings.strings(_have);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want))) {
            _t.errorf(("bad bisect output:\nhave %v\nwant %v\ncomplete output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_have), stdgo.Go.toInterface(_want), stdgo.Go.toInterface((_out : stdgo.GoString)));
        };
    }
