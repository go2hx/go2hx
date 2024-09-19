package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testCatGoodAndBadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        var __tmp__ = _internal.os.exec_test.Exec_test__helperCommand._helperCommand(_t, ("cat" : stdgo.GoString), ("/bogus/file.foo" : stdgo.GoString), ("exec_test.go" : stdgo.GoString)).combinedOutput(), _bs:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>)) : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.os.exec.Exec_ExitError.ExitError>), _1 : false };
            }, __14 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("expected *exec.ExitError from cat combined; got %T: %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_bs : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString)), _errLine:stdgo.GoString = __tmp__._0, _body:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            _t.fatalf(("expected two lines from cat; got %q" : stdgo.GoString), stdgo.Go.toInterface(_bs));
        };
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_errLine?.__copy__(), ("Error: open /bogus/file.foo" : stdgo.GoString))) {
            _t.errorf(("expected stderr to complain about file; got %q" : stdgo.GoString), stdgo.Go.toInterface(_errLine));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_body?.__copy__(), ("func TestCatGoodAndBadFile(t *testing.T)" : stdgo.GoString))) {
            _t.errorf(("expected test code; got %q (len %d)" : stdgo.GoString), stdgo.Go.toInterface(_body), stdgo.Go.toInterface((_body.length)));
        };
    }
