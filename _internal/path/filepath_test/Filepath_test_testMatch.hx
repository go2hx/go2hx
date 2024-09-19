package _internal.path.filepath_test;
import stdgo._internal.path.filepath.Filepath;
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.path.filepath_test.Filepath_test__matchTests._matchTests) {
            var _pattern = (_tt._pattern?.__copy__() : stdgo.GoString);
            var _s = (_tt._s?.__copy__() : stdgo.GoString);
            if (false) {
                if (stdgo._internal.strings.Strings_contains.contains(_pattern?.__copy__(), ("\\" : stdgo.GoString))) {
                    continue;
                };
                _pattern = stdgo._internal.path.filepath.Filepath_clean.clean(_pattern?.__copy__())?.__copy__();
                _s = stdgo._internal.path.filepath.Filepath_clean.clean(_s?.__copy__())?.__copy__();
            };
            var __tmp__ = stdgo._internal.path.filepath.Filepath_match.match(_pattern?.__copy__(), _s?.__copy__()), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_ok != _tt._match) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                _t.errorf(("Match(%#q, %#q) = %v, %q want %v, %q" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_internal.path.filepath_test.Filepath_test__errp._errp(_err)), stdgo.Go.toInterface(_tt._match), stdgo.Go.toInterface(_internal.path.filepath_test.Filepath_test__errp._errp(_tt._err)));
            };
        };
    }
