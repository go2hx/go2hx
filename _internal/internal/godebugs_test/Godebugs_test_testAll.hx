package _internal.internal.godebugs_test;
function testAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("../../../doc/godebug.md" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if ((stdgo._internal.os.Os_isNotExist.isNotExist(_err) && (((stdgo._internal.internal.testenv.Testenv_builder.builder() == stdgo.Go.str()) || true : Bool)) : Bool)) {
                _t.skip(stdgo.Go.toInterface(_err));
            };
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _doc = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _last = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        for (__0 => _info in stdgo._internal.internal.godebugs.Godebugs_all.all) {
            if ((_info.name <= _last : Bool)) {
                _t.errorf(("All not sorted: %s then %s" : stdgo.GoString), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_info.name));
            };
            _last = _info.name?.__copy__();
            if (_info.package_ == (stdgo.Go.str())) {
                _t.errorf(("Name=%s missing Package" : stdgo.GoString), stdgo.Go.toInterface(_info.name));
            };
            if (((_info.changed != (0 : stdgo.GoInt)) && (_info.old == stdgo.Go.str()) : Bool)) {
                _t.errorf(("Name=%s has Changed, missing Old" : stdgo.GoString), stdgo.Go.toInterface(_info.name));
            };
            if (((_info.old != stdgo.Go.str()) && (_info.changed == (0 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Name=%s has Old, missing Changed" : stdgo.GoString), stdgo.Go.toInterface(_info.name));
            };
            if (!stdgo._internal.strings.Strings_contains.contains(_doc?.__copy__(), ((("`" : stdgo.GoString) + _info.name?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())) {
                _t.errorf(("Name=%s not documented in doc/godebug.md" : stdgo.GoString), stdgo.Go.toInterface(_info.name));
            };
        };
    }
