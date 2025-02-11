package stdgo._internal.testing.fstest;
function _testFS(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _expected:haxe.Rest<stdgo.GoString>):stdgo.Error {
        var _expected = new stdgo.Slice<stdgo.GoString>(_expected.length, 0, ..._expected);
        var _t = ({ _fsys : _fsys } : stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester);
        @:check2 _t._checkDir(("." : stdgo.GoString));
        @:check2 _t._checkOpen(("." : stdgo.GoString));
        var _found = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        for (__2 => _dir in _t._dirs) {
            _found[_dir] = true;
        };
        for (__3 => _file in _t._files) {
            _found[_file] = true;
        };
        if (_found != null) _found.__remove__(("." : stdgo.GoString));
        if (((_expected.length == (0 : stdgo.GoInt)) && ((_found.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (_k => _ in _found) {
                if (_k != (("." : stdgo.GoString))) {
                    _list = (_list.__append__(_k?.__copy__()));
                };
            };
            stdgo._internal.sort.Sort_strings.strings(_list);
            if (((_list.length) > (15 : stdgo.GoInt) : Bool)) {
                _list = ((_list.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>).__append__((("..." : stdgo.GoString) : stdgo.GoString)));
            };
            @:check2 _t._errorf(("expected empty file system but found files:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_list, ("\n" : stdgo.GoString))));
        };
        for (__4 => _name in _expected) {
            if (!(_found[_name] ?? false)) {
                @:check2 _t._errorf(("expected but not found: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
        if ((_t._errText.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.errors.Errors_new_.new_((("TestFS found errors:\n" : stdgo.GoString) + (_t._errText : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
