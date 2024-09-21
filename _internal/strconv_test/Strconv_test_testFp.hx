package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testFp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testFp" + " skip function");
        return;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(("testdata/testfp.txt" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("testfp: open testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _s = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(_f));
            {
                var _lineno = (1 : stdgo.GoInt);
                stdgo.Go.cfor(_s.scan(), _lineno++, {
                    var _line = (_s.text()?.__copy__() : stdgo.GoString);
                    if (((_line.length == (0 : stdgo.GoInt)) || (_line[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                        continue;
                    };
                    var _a = stdgo._internal.strings.Strings_split.split(_line?.__copy__(), (" " : stdgo.GoString));
                    if ((_a.length) != ((4 : stdgo.GoInt))) {
                        _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": wrong field count" : stdgo.GoString)));
                        continue;
                    };
                    var _s:stdgo.GoString = ("" : stdgo.GoString);
                    var _v:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
                    {
                        final __value__ = _a[(0 : stdgo.GoInt)];
                        if (__value__ == (("float64" : stdgo.GoString))) {
                            var _ok:Bool = false;
                            {
                                var __tmp__ = _internal.strconv_test.Strconv_test__myatof64._myatof64(_a[(2 : stdgo.GoInt)]?.__copy__());
                                _v = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": cannot atof64 " : stdgo.GoString)), stdgo.Go.toInterface(_a[(2 : stdgo.GoInt)]));
                                continue;
                            };
                            _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(_a[(1 : stdgo.GoInt)]?.__copy__(), stdgo.Go.toInterface(_v))?.__copy__();
                        } else if (__value__ == (("float32" : stdgo.GoString))) {
                            var __tmp__ = _internal.strconv_test.Strconv_test__myatof32._myatof32(_a[(2 : stdgo.GoInt)]?.__copy__()), _v1:stdgo.GoFloat32 = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)), stdgo.Go.toInterface(_lineno), stdgo.Go.toInterface((": cannot atof32 " : stdgo.GoString)), stdgo.Go.toInterface(_a[(2 : stdgo.GoInt)]));
                                continue;
                            };
                            _s = stdgo._internal.fmt.Fmt_sprintf.sprintf(_a[(1 : stdgo.GoInt)]?.__copy__(), stdgo.Go.toInterface(_v1))?.__copy__();
                            _v = (_v1 : stdgo.GoFloat64);
                        };
                    };
                    if (_s != (_a[((3 : stdgo.GoInt) : stdgo.GoInt)])) {
                        _t.error(stdgo.Go.toInterface(("testdata/testfp.txt:" : stdgo.GoString)),
stdgo.Go.toInterface(_lineno),
stdgo.Go.toInterface((": " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(0 : stdgo.GoInt)]),
stdgo.Go.toInterface((" " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(1 : stdgo.GoInt)]),
stdgo.Go.toInterface((" " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(2 : stdgo.GoInt)]),
stdgo.Go.toInterface((" (" : stdgo.GoString)),
stdgo.Go.toInterface(_v),
stdgo.Go.toInterface((") " : stdgo.GoString)),
stdgo.Go.toInterface(("want " : stdgo.GoString)),
stdgo.Go.toInterface(_a[(3 : stdgo.GoInt)]),
stdgo.Go.toInterface((" got " : stdgo.GoString)),
stdgo.Go.toInterface(_s));
                    };
                });
            };
            if (_s.err() != null) {
                _t.fatal(stdgo.Go.toInterface(("testfp: read testdata/testfp.txt: " : stdgo.GoString)), stdgo.Go.toInterface(_s.err()));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
