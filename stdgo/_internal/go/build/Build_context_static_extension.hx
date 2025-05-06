package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.Context_asInterface) class Context_static_extension {
    @:keep
    @:tdfield
    static public function _goodOSArchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), ("." : stdgo.GoString));
            _name = @:tmpset0 __tmp__._0?.__copy__();
        };
        var _i = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("_" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1996"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1997"
            return true;
        };
        _name = (_name.__slice__(_i) : stdgo.GoString)?.__copy__();
        var _l = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("_" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2002"
        {
            var _n = (_l.length : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == ("test" : stdgo.GoString)) : Bool)) {
                _l = (_l.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _n = (_l.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2006"
        if ((((_n >= (2 : stdgo.GoInt) : Bool) && (stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool) && (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2007"
            if (_allTags != null) {
                _allTags[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] = true;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2011"
            return (_ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) && _ctxt._matchTag(_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) : Bool);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2013"
        if (((_n >= (1 : stdgo.GoInt) : Bool) && (((stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) || (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2014"
            return _ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L2016"
        return true;
    }
    @:keep
    @:tdfield
    static public function _matchTag( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1923"
        if (_allTags != null) {
            _allTags[_name] = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1928"
        if (((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled && (_name == ("cgo" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1929"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1931"
        if (((_name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOOS) || _name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOARCH) : Bool) || (_name == (@:checkr _ctxt ?? throw "null pointer dereference").compiler) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1932"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1934"
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("android" : stdgo.GoString)) && (_name == ("linux" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1935"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1937"
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("illumos" : stdgo.GoString)) && (_name == ("solaris" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1938"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1940"
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("ios" : stdgo.GoString)) && (_name == ("darwin" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1941"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1943"
        if (((_name == ("unix" : stdgo.GoString)) && (stdgo._internal.go.build.Build__unixos._unixOS[(@:checkr _ctxt ?? throw "null pointer dereference").gOOS] ?? false) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1944"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1946"
        if (_name == (("boringcrypto" : stdgo.GoString))) {
            _name = ("goexperiment.boringcrypto" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1951"
        for (__0 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").buildTags) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1952"
            if (_tag == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1953"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1956"
        for (__1 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").toolTags) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1957"
            if (_tag == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1958"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1961"
        for (__2 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").releaseTags) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1962"
            if (_tag == (_name)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1963"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1967"
        return false;
    }
    @:keep
    @:tdfield
    static public function _eval( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1905"
        return _x.eval(function(_tag:stdgo.GoString):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1905"
            return _ctxt._matchTag(_tag?.__copy__(), _allTags);
        });
    }
    @:keep
    @:tdfield
    static public function _matchAuto( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _text:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1892"
        if (stdgo._internal.strings.Strings_containsany.containsAny(_text?.__copy__(), ("&|()" : stdgo.GoString))) {
            _text = (("//go:build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _text = (("// +build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1898"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1899"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1901"
        return _ctxt._eval(_x, _allTags);
    }
    @:keep
    @:tdfield
    static public function _makePathsAbsolute( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _args:stdgo.Slice<stdgo.GoString>, _srcDir:stdgo.GoString):Void {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _nextPath = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1787"
        for (_i => _arg in _args) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1788"
            if (_nextPath) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1789"
                if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_arg?.__copy__())) {
                    _args[(_i : stdgo.GoInt)] = stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), _arg?.__copy__())?.__copy__();
                };
                _nextPath = false;
            } else if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-I" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-L" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1794"
                if ((_arg.length) == ((2 : stdgo.GoInt))) {
                    _nextPath = true;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1797"
                    if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs((_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                        _args[(_i : stdgo.GoInt)] = ((_arg.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), (_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _saveCgo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _filename:stdgo.GoString, _di:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _cg:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _text = (_cg.text()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1679"
        for (__0 => _line in stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString))) {
            var _orig = (_line?.__copy__() : stdgo.GoString);
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1686"
            if (((((_line.length) < (5 : stdgo.GoInt) : Bool) || (_line.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != (("#cgo" : stdgo.GoString)) : Bool) || (((_line[(4 : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_line[(4 : stdgo.GoInt)] != (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1687"
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__(), (":" : stdgo.GoString)), _line:stdgo.GoString = __tmp__._0, _argstr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1692"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1693"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var _f = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1698"
            if (((_f.length) < (1 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1699"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var __0 = (_f.__slice__(0, ((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), __1 = (_f[((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
var _verb = __1, _cond = __0;
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1703"
            if (((_cond.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ok = (false : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1705"
                for (__1 => _c in _cond) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1706"
                    if (_ctxt._matchAuto(_c?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>))) {
                        _ok = true;
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1708"
                        break;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1711"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1712"
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.go.build.Build__splitquoted._splitQuoted(_argstr?.__copy__()), _args:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1717"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1718"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1720"
            for (_i => _arg in _args) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1721"
                {
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__expandsrcdir._expandSrcDir(_arg?.__copy__(), (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                        _arg = @:tmpset0 __tmp__._0?.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1722"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: malformed #cgo argument: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_arg));
                    };
                };
                _args[(_i : stdgo.GoInt)] = _arg?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1727"
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString)) || __value__ == (("CPPFLAGS" : stdgo.GoString)) || __value__ == (("CXXFLAGS" : stdgo.GoString)) || __value__ == (("FFLAGS" : stdgo.GoString)) || __value__ == (("LDFLAGS" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1730"
                    _ctxt._makePathsAbsolute(_args, (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1733"
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("CPPFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("CXXFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("FFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("LDFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else if (__value__ == (("pkg-config" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig = ((@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig.__append__(...(_args : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1747"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo verb: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1750"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldBuild( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _content:stdgo.Slice<stdgo.GoUInt8>, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _shouldBuild = false, _binaryOnly = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.go.build.Build__parsefileheader._parseFileHeader(_content), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _goBuild:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _sawBinaryOnly:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1564"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1565"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : _err };
                _shouldBuild = __tmp__._0;
                _binaryOnly = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1570"
        if (_goBuild != null) {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse((_goBuild : stdgo.GoString)?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1573"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1574"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("parsing //go:build line: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    _shouldBuild = __tmp__._0;
                    _binaryOnly = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _shouldBuild = _ctxt._eval(_x, _allTags);
        } else {
            _shouldBuild = true;
            var _p = _content;
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1581"
            while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
                var _line = _p;
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1583"
                {
                    var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        {
                            final __tmp__0 = (_line.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            final __tmp__1 = (_p.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _line = @:binopAssign __tmp__0;
                            _p = @:binopAssign __tmp__1;
                        };
                    } else {
                        _p = (_p.__slice__((_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1589"
                if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, stdgo._internal.go.build.Build__slashslash._slashSlash) || !stdgo._internal.bytes.Bytes_contains.contains(_line, stdgo._internal.go.build.Build__plusbuild._plusBuild) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1590"
                    continue;
                };
                var _text = ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1593"
                if (!stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_text?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1594"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1596"
                {
                    var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1597"
                        if (!_ctxt._eval(_x, _allTags)) {
                            _shouldBuild = false;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1604"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _shouldBuild, _1 : _sawBinaryOnly, _2 : (null : stdgo.Error) };
            _shouldBuild = __tmp__._0;
            _binaryOnly = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>, _binaryOnly:stdgo.Pointer<Bool>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1440"
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1442"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1446"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_name.length);
        };
        var _ext = ((_name.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1451"
        if (((_ext != (".go" : stdgo.GoString)) && ({
            final value = stdgo._internal.go.build.Build__filelistforext._fileListForExt((stdgo.Go.setRef(stdgo._internal.go.build.Build__dummypkg._dummyPkg) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>), _ext?.__copy__());
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1453"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1456"
        if ((!_ctxt._goodOSArchFile(_name?.__copy__(), _allTags) && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1457"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _info = (stdgo.Go.setRef(({ _name : _ctxt._joinPath(_dir?.__copy__(), _name?.__copy__())?.__copy__(), _fset : _fset } : stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo)) : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1461"
        if (_ext == ((".syso" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1463"
            return { _0 : _info, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = _ctxt._openFile((@:checkr _info ?? throw "null pointer dereference")._name?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1467"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1468"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1471"
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), (".go" : stdgo.GoString))) {
            _err = stdgo._internal.go.build.Build__readgoinfo._readGoInfo(_f, _info);
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1473"
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), ("_test.go" : stdgo.GoString))) {
                _binaryOnly = (null : stdgo.Pointer<Bool>);
            };
        } else {
            _binaryOnly = (null : stdgo.Pointer<Bool>);
            {
                var __tmp__ = stdgo._internal.go.build.Build__readcomments._readComments(_f);
                (@:checkr _info ?? throw "null pointer dereference")._header = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1480"
        _f.close();
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1481"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1482"
            return { _0 : _info, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _info ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err)) };
        };
        var __tmp__ = _ctxt._shouldBuild((@:checkr _info ?? throw "null pointer dereference")._header, _allTags), _ok:Bool = __tmp__._0, _sawBinaryOnly:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1487"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1488"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1490"
        if ((!_ok && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1491"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1494"
        if (((_binaryOnly != null) && _sawBinaryOnly : Bool)) {
            _binaryOnly.value = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1498"
        return { _0 : _info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _match = false, _err = (null : stdgo.Error);
        var __tmp__ = _ctxt._matchFile(_dir?.__copy__(), _name?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>), (null : stdgo.Pointer<Bool>), null), _info:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1399"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : ({
                final value = _info;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }), _1 : _err };
            _match = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _importGo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1118"
        if ((((((((((((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) || (_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").joinPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").readDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").openFile != null : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").toolTags, stdgo._internal.go.build.Build__defaulttooltags._defaultToolTags) : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").releaseTags, stdgo._internal.go.build.Build__defaultreleasetags._defaultReleaseTags) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1120"
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1126"
        if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1127"
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        var _go111Module = (stdgo._internal.os.Os_getenv.getenv(("GO111MODULE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1135"
        {
            final __value__ = _go111Module;
            if (__value__ == (("off" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1137"
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            } else {};
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1142"
        if (_srcDir != ((stdgo.Go.str() : stdgo.GoString))) {
            var _absSrcDir:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1144"
            if (stdgo._internal.path.filepath.Filepath_isabs.isAbs(_srcDir?.__copy__())) {
                _absSrcDir = _srcDir?.__copy__();
            } else if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1147"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: Dir is non-empty, so relative srcDir is not allowed: %v" : stdgo.GoString), stdgo.Go.toInterface(_srcDir));
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_srcDir?.__copy__());
                    _absSrcDir = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1153"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1154"
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1161"
            {
                var __tmp__ = _ctxt._hasSubdir(stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__(), _absSrcDir?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1162"
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1167"
        {
            var _dir = (_ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__() : stdgo.GoString);
            if (_ctxt._isDir(_dir?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1168"
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1173"
        if (_go111Module == (("auto" : stdgo.GoString))) {
            var _parent:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1178"
            if ((@:checkr _ctxt ?? throw "null pointer dereference").dir == ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.os.Os_getwd.getwd();
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1180"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1182"
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs((@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__());
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1186"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1189"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1192"
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1193"
                {
                    var __tmp__ = _ctxt._openFile(_ctxt._joinPath(_parent?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = _f.read(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1196"
                        _f.close();
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1197"
                        if (((_err == null) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1199"
                            break;
                        };
                    };
                };
                var _d = (stdgo._internal.path.filepath.Filepath_dir.dir(_parent?.__copy__())?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1203"
                if (((_d.length) >= (_parent.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1204"
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
                _parent = _d?.__copy__();
            };
        };
        var _goCmd = (stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("bin" : stdgo.GoString), ("go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_goCmd?.__copy__(), ("list" : stdgo.GoString), ("-e" : stdgo.GoString), (("-compiler=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__() : stdgo.GoString)?.__copy__(), (("-tags=" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join((@:checkr _ctxt ?? throw "null pointer dereference").buildTags, ("," : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), (("-installsuffix=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__(), ("-f={{.Dir}}\n{{.ImportPath}}\n{{.Root}}\n{{.Goroot}}\n{{if .Error}}{{.Error}}{{end}}\n" : stdgo.GoString), ("--" : stdgo.GoString), _path?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1213"
        if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _cmd ?? throw "null pointer dereference").dir = (@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__();
        };
        var _stdout:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder), _stderr:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        (@:checkr _cmd ?? throw "null pointer dereference").stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        (@:checkr _cmd ?? throw "null pointer dereference").stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        var _cgo = (("0" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1222"
        if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
            _cgo = ("1" : stdgo.GoString);
        };
        (@:checkr _cmd ?? throw "null pointer dereference").env = (_cmd.environ_().__append__((("GOOS=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString)?.__copy__(), (("GOARCH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString)?.__copy__(), (("GOROOT=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__() : stdgo.GoString)?.__copy__(), (("GOPATH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__() : stdgo.GoString)?.__copy__(), (("CGO_ENABLED=" : stdgo.GoString) + _cgo?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1233"
        {
            var _err = (_cmd.run() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1234"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: go list %s: %v\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)));
            };
        };
        var _f = stdgo._internal.strings.Strings_splitn.splitN((_stdout.string() : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString), (5 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1238"
        if ((_f.length) != ((5 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1239"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: importGo %s: unexpected output:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)));
        };
        var _dir = (_f[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _errStr = (stdgo._internal.strings.Strings_trimspace.trimSpace(_f[(4 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1243"
        if (((_errStr != (stdgo.Go.str() : stdgo.GoString)) && (_dir == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1246"
            return stdgo._internal.errors.Errors_new_.new_(_errStr?.__copy__());
        };
        (@:checkr _p ?? throw "null pointer dereference").dir = _dir?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").importPath = _f[(1 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").root = _f[(2 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").goroot = _f[(3 : stdgo.GoInt)] == (("true" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1256"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function import_( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _root_31:stdgo.GoString = ("" : stdgo.GoString);
        var _qcom_70:stdgo.GoString = ("" : stdgo.GoString);
        var _xTestImportPos_55:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _dir_39:stdgo.GoString = ("" : stdgo.GoString);
        var _root_8:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4412451_82:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_4405641_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _paths_36:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _isDir_29:Bool = false;
        var _gorootFirst_27:Bool = false;
        var _iterator_4400927_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sub_9:stdgo.GoString = ("" : stdgo.GoString);
        var _binaryOnly_6:Bool = false;
        var _xTestEmbedPos_52:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _rootsrc_14:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4412797 = 0i64;
        var _list_64:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _info_62:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = (null : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        var _firstCommentFile_49:stdgo.GoString = ("" : stdgo.GoString);
        var _sub_15:stdgo.GoString = ("" : stdgo.GoString);
        var _tag_86:stdgo.GoString = ("" : stdgo.GoString);
        var _pkgtargetroot_1:stdgo.GoString = ("" : stdgo.GoString);
        var _embedMap_80:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _err_77:stdgo.Error = (null : stdgo.Error);
        var _fset_57:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        var _badGoFiles_45:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _err_43:stdgo.Error = (null : stdgo.Error);
        var _isDir_35:Bool = false;
        var _inTestdata_7:stdgo.GoString -> Bool = null;
        var _dir_20:stdgo.GoString = ("" : stdgo.GoString);
        var _fileList_78:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _iterator_4405333_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tried_23:stdgo._internal.go.build.Build_t__struct_0.T__struct_0 = ({ _vendor : (null : stdgo.Slice<stdgo.GoString>), _goroot : ("" : stdgo.GoString), _gopath : (null : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_t__struct_0.T__struct_0);
        var _importPos_53:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _iterator_4411254_75:stdgo.GoInt = (0 : stdgo.GoInt);
        var _allTags_56:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _p_0:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = (null : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        var _testEmbedPos_51:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var sfiles_47:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _badGoError_44:stdgo.Error = (null : stdgo.Error);
        var _dir_34:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4402864_25:stdgo.GoInt = (0 : stdgo.GoInt);
        var _root_13:stdgo.GoString = ("" : stdgo.GoString);
        var _pkgerr_3:stdgo.Error = (null : stdgo.Error);
        var _ok_10:Bool = false;
        var _directives_81:stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
        var _imp_76:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _isTest_68:Bool = false;
        var _pkg_67:stdgo.GoString = ("" : stdgo.GoString);
        var _testImportPos_54:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _embedPos_50:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _dir_32:stdgo.GoString = ("" : stdgo.GoString);
        var _importMap_79:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _data_65:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pkga_2:stdgo.GoString = ("" : stdgo.GoString);
        var _emb_85:stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed = ({} : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed);
        var _line_71:stdgo.GoInt = (0 : stdgo.GoInt);
        var _isXTest_69:Bool = false;
        var _firstFile_48:stdgo.GoString = ("" : stdgo.GoString);
        var _dirs_42:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        var _gopath_22:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _setPkga_5:() -> Void = null;
        var _err_63:stdgo.Error = (null : stdgo.Error);
        var _d_59:stdgo._internal.io.fs.Fs_direntry.DirEntry = (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        var _dir_41:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_17:stdgo.GoString = ("" : stdgo.GoString);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _searchVendor_24:(stdgo.GoString, Bool) -> Bool = null;
        var _iterator_4412599_84:stdgo.GoInt = (0 : stdgo.GoInt);
        var _imp_83:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _name_60:stdgo.GoString = ("" : stdgo.GoString);
        var _badGoFile_46:(stdgo.GoString, stdgo.Error) -> Void = null;
        var _isDir_33:Bool = false;
        var _all_11:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _keys_4412786:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _isCgo_74:Bool = false;
        var _filename_66:stdgo.GoString = ("" : stdgo.GoString);
        var _root_26:stdgo.GoString = ("" : stdgo.GoString);
        var _err_21:stdgo.Error = (null : stdgo.Error);
        var _ok_16:Bool = false;
        var _suffix_4:stdgo.GoString = ("" : stdgo.GoString);
        var _com_72:stdgo.GoString = ("" : stdgo.GoString);
        var _ext_61:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4408262_58:stdgo.GoInt = (0 : stdgo.GoInt);
        var _format_37:stdgo.GoString = ("" : stdgo.GoString);
        var _earlyRoot_19:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_28:stdgo.GoString = ("" : stdgo.GoString);
        var _err_73:stdgo.Error = (null : stdgo.Error);
        var _iterator_4404290_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _gotoNext;
                        if (__value__ == (0i64)) {
                            _p_0 = (stdgo.Go.setRef(({ importPath : _path?.__copy__() } : stdgo._internal.go.build.Build_package.Package)) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L557"
                            if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4398697i64;
                            } else {
                                _gotoNext = 4398767i64;
                            };
                            break;
                        } else if (__value__ == (4398697i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L558"
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: invalid import path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4398767i64;
                            break;
                        } else if (__value__ == (4398767i64)) {
                            _suffix_4 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L565"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").installSuffix != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4398870i64;
                            } else {
                                _gotoNext = 4398912i64;
                            };
                            break;
                        } else if (__value__ == (4398870i64)) {
                            _suffix_4 = (("_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4398912i64;
                            break;
                        } else if (__value__ == (4398912i64)) {
                            _gotoNext = 4398912i64;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L568"
                            {
                                final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                                if (__value__ == (("gccgo" : stdgo.GoString))) {
                                    _gotoNext = 4398936i64;
                                } else if (__value__ == (("gc" : stdgo.GoString))) {
                                    _gotoNext = 4399023i64;
                                } else {
                                    _gotoNext = 4399101i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4398936i64)) {
                            _pkgtargetroot_1 = ((((("pkg/gccgo_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4399228i64;
                            break;
                        } else if (__value__ == (4399023i64)) {
                            _pkgtargetroot_1 = ((((("pkg/" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4399228i64;
                            break;
                        } else if (__value__ == (4399101i64)) {
                            _pkgerr_3 = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: unknown compiler %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:checkr _ctxt ?? throw "null pointer dereference").compiler));
                            _gotoNext = 4399228i64;
                            break;
                        } else if (__value__ == (4399228i64)) {
                            _setPkga_5 = function():Void {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L578"
                                {
                                    final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                                    if (__value__ == (("gccgo" : stdgo.GoString))) {
                                        var __tmp__ = stdgo._internal.path.Path_split.split((@:checkr _p_0 ?? throw "null pointer dereference").importPath?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1;
                                        _pkga_2 = (((((_pkgtargetroot_1 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dir?.__copy__() : stdgo.GoString) + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _elem?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                    } else if (__value__ == (("gc" : stdgo.GoString))) {
                                        _pkga_2 = (((_pkgtargetroot_1 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _p_0 ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                    };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L586"
                            _setPkga_5();
                            _binaryOnly_6 = false;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L589"
                            if (stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__())) {
                                _gotoNext = 4399520i64;
                            } else {
                                _gotoNext = 4401372i64;
                            };
                            break;
                        } else if (__value__ == (4399520i64)) {
                            _pkga_2 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L591"
                            if (_srcDir == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4399592i64;
                            } else {
                                _gotoNext = 4399681i64;
                            };
                            break;
                        } else if (__value__ == (4399592i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L592"
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: import relative to unknown directory" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4399681i64;
                            break;
                        } else if (__value__ == (4399681i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L594"
                            if (!_ctxt._isAbsPath(_path?.__copy__())) {
                                _gotoNext = 4399706i64;
                            } else {
                                _gotoNext = 4399971i64;
                            };
                            break;
                        } else if (__value__ == (4399706i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _ctxt._joinPath(_srcDir?.__copy__(), _path?.__copy__())?.__copy__();
                            _gotoNext = 4399971i64;
                            break;
                        } else if (__value__ == (4399971i64)) {
                            _inTestdata_7 = function(_sub:stdgo.GoString):Bool {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L601"
                                return (((stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_sub?.__copy__(), ("/testdata" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("testdata/" : stdgo.GoString)) : Bool) || (_sub == ("testdata" : stdgo.GoString)) : Bool);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L603"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4400181i64;
                            } else {
                                _gotoNext = 4400431i64;
                            };
                            break;
                        } else if (__value__ == (4400181i64)) {
                            _root_8 = _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L605"
                            {
                                {
                                    var __tmp__ = _ctxt._hasSubdir(_root_8?.__copy__(), (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                    _sub_9 = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok_10 = @:tmpset0 __tmp__._1;
                                };
                                if ((_ok_10 && !_inTestdata_7(_sub_9?.__copy__()) : Bool)) {
                                    _gotoNext = 4400297i64;
                                } else {
                                    _gotoNext = 4400431i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4400297i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = _sub_9?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L609"
                            _setPkga_5();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4400431i64)) {
                            _all_11 = _ctxt._gopath();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L614"
                            if ((0i64 : stdgo.GoInt) < (_all_11.length)) {
                                _gotoNext = 4401257i64;
                            } else {
                                _gotoNext = 4405959i64;
                            };
                            break;
                        } else if (__value__ == (4400458i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L614"
                            _i_12++;
                            _gotoNext = 4401258i64;
                            break;
                        } else if (__value__ == (4400479i64)) {
                            _root_13 = _all_11[(_i_12 : stdgo.GoInt)]?.__copy__();
                            _rootsrc_14 = _ctxt._joinPath(_root_13?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L616"
                            {
                                {
                                    var __tmp__ = _ctxt._hasSubdir(_rootsrc_14?.__copy__(), (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                    _sub_15 = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok_16 = @:tmpset0 __tmp__._1;
                                };
                                if ((_ok_16 && !_inTestdata_7(_sub_15?.__copy__()) : Bool)) {
                                    _gotoNext = 4400594i64;
                                } else {
                                    _gotoNext = 4400458i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4400594i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L620"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4400772i64;
                            } else {
                                _gotoNext = 4400907i64;
                            };
                            break;
                        } else if (__value__ == (4400772i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L621"
                            {
                                _dir_17 = _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _sub_15?.__copy__())?.__copy__();
                                if (_ctxt._isDir(_dir_17?.__copy__())) {
                                    _gotoNext = 4400845i64;
                                } else {
                                    _gotoNext = 4400907i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4400845i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").conflictDir = _dir_17?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4400907i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L626"
                            if ((0i64 : stdgo.GoInt) < ((_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>).length)) {
                                _gotoNext = 4401067i64;
                            } else {
                                _gotoNext = 4401161i64;
                            };
                            break;
                        } else if (__value__ == (4400911i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L626"
                            _iterator_4400927_18++;
                            _gotoNext = 4401068i64;
                            break;
                        } else if (__value__ == (4400941i64)) {
                            _earlyRoot_19 = (_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>)[(_iterator_4400927_18 : stdgo.GoInt)]?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L627"
                            {
                                _dir_20 = _ctxt._joinPath(_earlyRoot_19?.__copy__(), ("src" : stdgo.GoString), _sub_15?.__copy__())?.__copy__();
                                if (_ctxt._isDir(_dir_20?.__copy__())) {
                                    _gotoNext = 4401012i64;
                                } else {
                                    _gotoNext = 4400911i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4401012i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").conflictDir = _dir_20?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4401067i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = (_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>)[(0i64 : stdgo.GoInt)]?.__copy__();
                                _iterator_4400927_18 = @:binopAssign __tmp__0;
                                _earlyRoot_19 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4401068i64;
                            break;
                        } else if (__value__ == (4401068i64)) {
                            //"file://#L0"
                            if (_iterator_4400927_18 < ((_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>).length)) {
                                _gotoNext = 4400941i64;
                            } else {
                                _gotoNext = 4401161i64;
                            };
                            break;
                        } else if (__value__ == (4401161i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = _sub_15?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root_13?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L637"
                            _setPkga_5();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4401257i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _all_11[(0i64 : stdgo.GoInt)]?.__copy__();
                                _i_12 = @:binopAssign __tmp__0;
                                _root_13 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4401258i64;
                            break;
                        } else if (__value__ == (4401258i64)) {
                            //"file://#L0"
                            if (_i_12 < (_all_11.length)) {
                                _gotoNext = 4400479i64;
                            } else {
                                _gotoNext = 4405959i64;
                            };
                            break;
                        } else if (__value__ == (4401372i64)) {
                            _gotoNext = 4401372i64;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L644"
                            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString))) {
                                _gotoNext = 4401408i64;
                            } else {
                                _gotoNext = 4401489i64;
                            };
                            break;
                        } else if (__value__ == (4401408i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L645"
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: cannot import absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4401489i64;
                            break;
                        } else if (__value__ == (4401489i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L648"
                            {
                                _err_21 = _ctxt._importGo(_p_0, _path?.__copy__(), _srcDir?.__copy__(), _mode);
                                if (_err_21 == null) {
                                    _gotoNext = 4401548i64;
                                } else if (stdgo.Go.toInterface(_err_21) != (stdgo.Go.toInterface(stdgo._internal.go.build.Build__errnomodules._errNoModules))) {
                                    _gotoNext = 4401596i64;
                                } else {
                                    _gotoNext = 4401622i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4401548i64)) {
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4401596i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L651"
                            return { _0 : _p_0, _1 : _err_21 };
                            _gotoNext = 4401622i64;
                            break;
                        } else if (__value__ == (4401622i64)) {
                            _gopath_22 = _ctxt._gopath();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L664"
                            if ((((_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) == (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) && (_srcDir != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4401946i64;
                            } else {
                                _gotoNext = 4402991i64;
                            };
                            break;
                        } else if (__value__ == (4401946i64)) {
                            _searchVendor_24 = function(_root:stdgo.GoString, _isGoroot:Bool):Bool {
                                var __tmp__ = _ctxt._hasSubdir(_root?.__copy__(), _srcDir?.__copy__()), _sub:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L667"
                                if (((!_ok || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("src/" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L668"
                                    return false;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L670"
                                while (true) {
                                    var _vendor = (_ctxt._joinPath(_root?.__copy__(), _sub?.__copy__(), ("vendor" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L672"
                                    if (_ctxt._isDir(_vendor?.__copy__())) {
                                        var _dir = (_ctxt._joinPath(_vendor?.__copy__(), _path?.__copy__())?.__copy__() : stdgo.GoString);
                                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L674"
                                        if ((_ctxt._isDir(_dir?.__copy__()) && stdgo._internal.go.build.Build__hasgofiles._hasGoFiles(_ctxt, _dir?.__copy__()) : Bool)) {
                                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir?.__copy__();
                                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = stdgo._internal.strings.Strings_trimprefix.trimPrefix(stdgo._internal.path.Path_join.join(_sub?.__copy__(), ("vendor" : stdgo.GoString), _path?.__copy__())?.__copy__(), ("src/" : stdgo.GoString))?.__copy__();
                                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = _isGoroot;
                                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root?.__copy__();
                                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L679"
                                            _setPkga_5();
                                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L680"
                                            return true;
                                        };
                                        _tried_23._vendor = (_tried_23._vendor.__append__(_dir?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                                    };
                                    var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_sub?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L685"
                                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L686"
                                        break;
                                    };
                                    _sub = (_sub.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L690"
                                return false;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L692"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString)) && (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _searchVendor_24((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), true) : Bool)) {
                                _gotoNext = 4402824i64;
                            } else {
                                _gotoNext = 4402849i64;
                            };
                            break;
                        } else if (__value__ == (4402824i64)) {
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4402849i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L695"
                            if ((0i64 : stdgo.GoInt) < (_gopath_22.length)) {
                                _gotoNext = 4402938i64;
                            } else {
                                _gotoNext = 4402991i64;
                            };
                            break;
                        } else if (__value__ == (4402853i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L695"
                            _iterator_4402864_25++;
                            _gotoNext = 4402939i64;
                            break;
                        } else if (__value__ == (4402877i64)) {
                            _root_26 = _gopath_22[(_iterator_4402864_25 : stdgo.GoInt)]?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L696"
                            if (_searchVendor_24(_root_26?.__copy__(), false)) {
                                _gotoNext = 4402912i64;
                            } else {
                                _gotoNext = 4402853i64;
                            };
                            break;
                        } else if (__value__ == (4402912i64)) {
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4402938i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _gopath_22[(0i64 : stdgo.GoInt)]?.__copy__();
                                _iterator_4402864_25 = @:binopAssign __tmp__0;
                                _root_26 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4402939i64;
                            break;
                        } else if (__value__ == (4402939i64)) {
                            //"file://#L0"
                            if (_iterator_4402864_25 < (_gopath_22.length)) {
                                _gotoNext = 4402877i64;
                            } else {
                                _gotoNext = 4402991i64;
                            };
                            break;
                        } else if (__value__ == (4402991i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L703"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4403012i64;
                            } else {
                                _gotoNext = 4404275i64;
                            };
                            break;
                        } else if (__value__ == (4403012i64)) {
                            _gorootFirst_27 = ((_srcDir == (stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("vendor/" : stdgo.GoString)) : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L709"
                            if (!_gorootFirst_27) {
                                _gotoNext = 4403403i64;
                            } else {
                                _gotoNext = 4403470i64;
                            };
                            break;
                        } else if (__value__ == (4403403i64)) {
                            {
                                var __tmp__ = _ctxt._hasSubdir((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _srcDir?.__copy__());
                                _gorootFirst_27 = @:tmpset0 __tmp__._1;
                            };
                            _gotoNext = 4403470i64;
                            break;
                        } else if (__value__ == (4403470i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L712"
                            if (_gorootFirst_27) {
                                _gotoNext = 4403485i64;
                            } else {
                                _gotoNext = 4403873i64;
                            };
                            break;
                        } else if (__value__ == (4403485i64)) {
                            _dir_28 = _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L714"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                                _gotoNext = 4403570i64;
                            } else {
                                _gotoNext = 4403846i64;
                            };
                            break;
                        } else if (__value__ == (4403570i64)) {
                            _isDir_29 = _ctxt._isDir(_dir_28?.__copy__());
                            _binaryOnly_6 = (((!_isDir_29 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _ctxt._isFile(_ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L717"
                            if ((_isDir_29 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4403743i64;
                            } else {
                                _gotoNext = 4403846i64;
                            };
                            break;
                        } else if (__value__ == (4403743i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_28?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4403846i64)) {
                            _tried_23._goroot = _dir_28?.__copy__();
                            _gotoNext = 4403873i64;
                            break;
                        } else if (__value__ == (4403873i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L726"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && stdgo._internal.internal.goroot.Goroot_isstandardpackage.isStandardPackage((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__(), _path?.__copy__()) : Bool)) {
                                _gotoNext = 4403963i64;
                            } else {
                                _gotoNext = 4404275i64;
                            };
                            break;
                        } else if (__value__ == (4403963i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4404275i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L736"
                            if ((0i64 : stdgo.GoInt) < (_gopath_22.length)) {
                                _gotoNext = 4404607i64;
                            } else {
                                _gotoNext = 4404820i64;
                            };
                            break;
                        } else if (__value__ == (4404303i64)) {
                            _root_31 = _gopath_22[(_iterator_4404290_30 : stdgo.GoInt)]?.__copy__();
                            _dir_32 = _ctxt._joinPath(_root_31?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            _isDir_33 = _ctxt._isDir(_dir_32?.__copy__());
                            _binaryOnly_6 = (((!_isDir_33 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _ctxt._isFile(_ctxt._joinPath(_root_31?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L740"
                            if ((_isDir_33 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4404506i64;
                            } else {
                                _gotoNext = 4404565i64;
                            };
                            break;
                        } else if (__value__ == (4404506i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_32?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root_31?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4404565i64)) {
                            _tried_23._gopath = (_tried_23._gopath.__append__(_dir_32?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L736"
                            _iterator_4404290_30++;
                            _gotoNext = 4404608i64;
                            break;
                        } else if (__value__ == (4404607i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _gopath_22[(0i64 : stdgo.GoInt)]?.__copy__();
                                _iterator_4404290_30 = @:binopAssign __tmp__0;
                                _root_31 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4404608i64;
                            break;
                        } else if (__value__ == (4404608i64)) {
                            //"file://#L0"
                            if (_iterator_4404290_30 < (_gopath_22.length)) {
                                _gotoNext = 4404303i64;
                            } else {
                                _gotoNext = 4404820i64;
                            };
                            break;
                        } else if (__value__ == (4404820i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L751"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && (_tried_23._goroot == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4404863i64;
                            } else {
                                _gotoNext = 4405265i64;
                            };
                            break;
                        } else if (__value__ == (4404863i64)) {
                            _dir_34 = _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L753"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                                _gotoNext = 4404946i64;
                            } else {
                                _gotoNext = 4405212i64;
                            };
                            break;
                        } else if (__value__ == (4404946i64)) {
                            _isDir_35 = _ctxt._isDir(_dir_34?.__copy__());
                            _binaryOnly_6 = (((!_isDir_35 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _ctxt._isFile(_ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L756"
                            if ((_isDir_35 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4405116i64;
                            } else {
                                _gotoNext = 4405212i64;
                            };
                            break;
                        } else if (__value__ == (4405116i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_34?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4405212i64)) {
                            _tried_23._goroot = _dir_34?.__copy__();
                            _gotoNext = 4405265i64;
                            break;
                        } else if (__value__ == (4405265i64)) {
                            _format_37 = ("\t%s (vendor tree)" : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L769"
                            if ((0i64 : stdgo.GoInt) < (_tried_23._vendor.length)) {
                                _gotoNext = 4405425i64;
                            } else {
                                _gotoNext = 4405430i64;
                            };
                            break;
                        } else if (__value__ == (4405352i64)) {
                            _dir_39 = _tried_23._vendor[(_iterator_4405333_38 : stdgo.GoInt)]?.__copy__();
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_37?.__copy__(), stdgo.Go.toInterface(_dir_39))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            _format_37 = ("\t%s" : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L769"
                            _iterator_4405333_38++;
                            _gotoNext = 4405426i64;
                            break;
                        } else if (__value__ == (4405425i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _tried_23._vendor[(0i64 : stdgo.GoInt)]?.__copy__();
                                _iterator_4405333_38 = @:binopAssign __tmp__0;
                                _dir_39 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4405426i64;
                            break;
                        } else if (__value__ == (4405426i64)) {
                            //"file://#L0"
                            if (_iterator_4405333_38 < (_tried_23._vendor.length)) {
                                _gotoNext = 4405352i64;
                            } else {
                                _gotoNext = 4405430i64;
                            };
                            break;
                        } else if (__value__ == (4405430i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L773"
                            if (_tried_23._goroot != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4405452i64;
                            } else {
                                _gotoNext = 4405538i64;
                            };
                            break;
                        } else if (__value__ == (4405452i64)) {
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("\t%s (from $GOROOT)" : stdgo.GoString), stdgo.Go.toInterface(_tried_23._goroot))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            _gotoNext = 4405594i64;
                            break;
                        } else if (__value__ == (4405538i64)) {
                            _gotoNext = 4405538i64;
                            _paths_36 = (_paths_36.__append__(("\t($GOROOT not set)" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                            0i64;
                            _gotoNext = 4405594i64;
                            break;
                        } else if (__value__ == (4405594i64)) {
                            _format_37 = ("\t%s (from $GOPATH)" : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L779"
                            if ((0i64 : stdgo.GoInt) < (_tried_23._gopath.length)) {
                                _gotoNext = 4405733i64;
                            } else {
                                _gotoNext = 4405738i64;
                            };
                            break;
                        } else if (__value__ == (4405660i64)) {
                            _dir_41 = _tried_23._gopath[(_iterator_4405641_40 : stdgo.GoInt)]?.__copy__();
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_37?.__copy__(), stdgo.Go.toInterface(_dir_41))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            _format_37 = ("\t%s" : stdgo.GoString);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L779"
                            _iterator_4405641_40++;
                            _gotoNext = 4405734i64;
                            break;
                        } else if (__value__ == (4405733i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _tried_23._gopath[(0i64 : stdgo.GoInt)]?.__copy__();
                                _iterator_4405641_40 = @:binopAssign __tmp__0;
                                _dir_41 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4405734i64;
                            break;
                        } else if (__value__ == (4405734i64)) {
                            //"file://#L0"
                            if (_iterator_4405641_40 < (_tried_23._gopath.length)) {
                                _gotoNext = 4405660i64;
                            } else {
                                _gotoNext = 4405738i64;
                            };
                            break;
                        } else if (__value__ == (4405738i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L783"
                            if ((_tried_23._gopath.length) == ((0 : stdgo.GoInt))) {
                                _gotoNext = 4405764i64;
                            } else {
                                _gotoNext = 4405860i64;
                            };
                            break;
                        } else if (__value__ == (4405764i64)) {
                            _paths_36 = (_paths_36.__append__(("\t($GOPATH not set. For more details see: \'go help gopath\')" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
                            _gotoNext = 4405860i64;
                            break;
                        } else if (__value__ == (4405860i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L786"
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in any of:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_paths_36, ("\n" : stdgo.GoString)))) };
                            0i64;
                            _gotoNext = 4405959i64;
                            break;
                        } else if (__value__ == (4405959i64)) {
                            _gotoNext = 4405959i64;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L790"
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").root != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4405983i64;
                            } else {
                                _gotoNext = 4406901i64;
                            };
                            break;
                        } else if (__value__ == (4405983i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").srcRoot = _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgRoot = _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("pkg" : stdgo.GoString))?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").binDir = _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("bin" : stdgo.GoString))?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L794"
                            if (_pkga_2 != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4406129i64;
                            } else {
                                _gotoNext = 4406901i64;
                            };
                            break;
                        } else if (__value__ == (4406129i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgTargetRoot = _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), _pkgtargetroot_1?.__copy__())?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L800"
                            if ((!(@:checkr _p_0 ?? throw "null pointer dereference").goroot || (((stdgo._internal.go.build.Build__installgoroot._installgoroot.value() == (("all" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").importPath != (("unsafe" : stdgo.GoString)) : Bool) && ((@:checkr _p_0 ?? throw "null pointer dereference").importPath != ("builtin" : stdgo.GoString)) : Bool)) : Bool)) {
                                _gotoNext = 4406428i64;
                            } else {
                                _gotoNext = 4406901i64;
                            };
                            break;
                        } else if (__value__ == (4406428i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L801"
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").goroot) {
                                _gotoNext = 4406446i64;
                            } else {
                                _gotoNext = 4406493i64;
                            };
                            break;
                        } else if (__value__ == (4406446i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L802"
                            stdgo._internal.go.build.Build__installgoroot._installgoroot.incNonDefault();
                            _gotoNext = 4406493i64;
                            break;
                        } else if (__value__ == (4406493i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgObj = _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), _pkga_2?.__copy__())?.__copy__();
                            _gotoNext = 4406901i64;
                            break;
                        } else if (__value__ == (4406901i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L814"
                            if ((stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__()) && !_ctxt._isDir((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__()) : Bool)) {
                                _gotoNext = 4406946i64;
                            } else {
                                _gotoNext = 4407174i64;
                            };
                            break;
                        } else if (__value__ == (4406946i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L815"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").goroot : Bool)) {
                                _gotoNext = 4406990i64;
                            } else {
                                _gotoNext = 4407091i64;
                            };
                            break;
                        } else if (__value__ == (4406990i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L817"
                            return { _0 : _p_0, _1 : (null : stdgo.Error) };
                            _gotoNext = 4407091i64;
                            break;
                        } else if (__value__ == (4407091i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L821"
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in:\n\t%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").importPath), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").dir)) };
                            _gotoNext = 4407174i64;
                            break;
                        } else if (__value__ == (4407174i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L824"
                            if ((_mode & (1u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                                _gotoNext = 4407196i64;
                            } else {
                                _gotoNext = 4407221i64;
                            };
                            break;
                        } else if (__value__ == (4407196i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L825"
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = 4407221i64;
                            break;
                        } else if (__value__ == (4407221i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L827"
                            if ((_binaryOnly_6 && ((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool)) {
                                _gotoNext = 4407262i64;
                            } else {
                                _gotoNext = 4407288i64;
                            };
                            break;
                        } else if (__value__ == (4407262i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L828"
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = 4407288i64;
                            break;
                        } else if (__value__ == (4407288i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L831"
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").goroot : Bool)) {
                                _gotoNext = 4407328i64;
                            } else {
                                _gotoNext = 4407398i64;
                            };
                            break;
                        } else if (__value__ == (4407328i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L833"
                            return { _0 : _p_0, _1 : (null : stdgo.Error) };
                            _gotoNext = 4407398i64;
                            break;
                        } else if (__value__ == (4407398i64)) {
                            {
                                var __tmp__ = _ctxt._readDir((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                _dirs_42 = @:tmpset0 __tmp__._0;
                                _err_43 = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L837"
                            if (_err_43 != null) {
                                _gotoNext = 4407446i64;
                            } else {
                                _gotoNext = 4407469i64;
                            };
                            break;
                        } else if (__value__ == (4407446i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L838"
                            return { _0 : _p_0, _1 : _err_43 };
                            _gotoNext = 4407469i64;
                            break;
                        } else if (__value__ == (4407469i64)) {
                            _badGoFiles_45 = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            _badGoFile_46 = function(_name:stdgo.GoString, _err:stdgo.Error):Void {
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L844"
                                if (_badGoError_44 == null) {
                                    _badGoError_44 = _err;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L847"
                                if (!(_badGoFiles_45[_name] ?? false)) {
                                    (@:checkr _p_0 ?? throw "null pointer dereference").invalidGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").invalidGoFiles.__append__(_name?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                                    _badGoFiles_45[_name] = true;
                                };
                            };
                            _embedPos_50 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _testEmbedPos_51 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _xTestEmbedPos_52 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _importPos_53 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _testImportPos_54 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _xTestImportPos_55 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _allTags_56 = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            _fset_57 = stdgo._internal.go.token.Token_newfileset.newFileSet();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            if ((0i64 : stdgo.GoInt) < (_dirs_42.length)) {
                                _gotoNext = 4412781i64;
                            } else {
                                _gotoNext = 4412786i64;
                            };
                            break;
                        } else if (__value__ == (4408254i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4408273i64)) {
                            _d_59 = _dirs_42[(_iterator_4408262_58 : stdgo.GoInt)];
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L864"
                            if (_d_59.isDir()) {
                                _gotoNext = 4408290i64;
                            } else {
                                _gotoNext = 4408310i64;
                            };
                            break;
                        } else if (__value__ == (4408290i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4408310i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L867"
                            if (_d_59.type() == ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                                _gotoNext = 4408340i64;
                            } else {
                                _gotoNext = 4408471i64;
                            };
                            break;
                        } else if (__value__ == (4408340i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L868"
                            if (_ctxt._isDir(_ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), _d_59.name()?.__copy__())?.__copy__())) {
                                _gotoNext = 4408391i64;
                            } else {
                                _gotoNext = 4408471i64;
                            };
                            break;
                        } else if (__value__ == (4408391i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4408471i64)) {
                            _name_60 = _d_59.name()?.__copy__();
                            _ext_61 = stdgo._internal.go.build.Build__nameext._nameExt(_name_60?.__copy__())?.__copy__();
                            {
                                var __tmp__ = _ctxt._matchFile((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), _name_60?.__copy__(), _allTags_56, stdgo.Go.pointer((@:checkr _p_0 ?? throw "null pointer dereference").binaryOnly), _fset_57);
                                _info_62 = @:tmpset0 __tmp__._0;
                                _err_63 = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L878"
                            if (((_err_63 != null) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_60?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4408635i64;
                            } else {
                                _gotoNext = 4408679i64;
                            };
                            break;
                        } else if (__value__ == (4408635i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L879"
                            _badGoFile_46(_name_60?.__copy__(), _err_63);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4408679i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L882"
                            if (({
                                final value = _info_62;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                _gotoNext = 4408694i64;
                            } else {
                                _gotoNext = 4409089i64;
                            };
                            break;
                        } else if (__value__ == (4408694i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L883"
                            if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_60?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_60?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4408763i64;
                            } else if (_ext_61 == ((".go" : stdgo.GoString))) {
                                _gotoNext = 4408842i64;
                            } else if (({
                                final value = stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_0, _ext_61?.__copy__());
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4408941i64;
                            } else {
                                _gotoNext = 4409011i64;
                            };
                            break;
                        } else if (__value__ == (4408763i64)) {
                            _gotoNext = 4409011i64;
                            break;
                        } else if (__value__ == (4408842i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            _gotoNext = 4409011i64;
                            break;
                        } else if (__value__ == (4408941i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            _gotoNext = 4409011i64;
                            break;
                        } else if (__value__ == (4409011i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4409089i64)) {
                            _gotoNext = 4409089i64;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L894"
                            {
                                final __value__ = _ext_61;
                                if (__value__ == ((".go" : stdgo.GoString))) {
                                    _gotoNext = 4409104i64;
                                } else if (__value__ == ((".S" : stdgo.GoString)) || __value__ == ((".sx" : stdgo.GoString))) {
                                    _gotoNext = 4409135i64;
                                } else {
                                    _gotoNext = 4409243i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4409104i64)) {
                            _gotoNext = 4409360i64;
                            break;
                        } else if (__value__ == (4409135i64)) {
                            sfiles_47 = (sfiles_47.__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4409243i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L902"
                            {
                                _list_64 = stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_0, _ext_61?.__copy__());
                                if (({
                                    final value = _list_64;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    _gotoNext = 4409302i64;
                                } else {
                                    _gotoNext = 4409344i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4409302i64)) {
                            (_list_64 : stdgo.Slice<stdgo.GoString>).__setData__(((_list_64 : stdgo.Slice<stdgo.GoString>).__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>));
                            _gotoNext = 4409344i64;
                            break;
                        } else if (__value__ == (4409344i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4409360i64)) {
                            {
                                final __tmp__0 = (@:checkr _info_62 ?? throw "null pointer dereference")._header;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._name?.__copy__();
                                _data_65 = @:binopAssign __tmp__0;
                                _filename_66 = @:binopAssign __tmp__1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L910"
                            if ((@:checkr _info_62 ?? throw "null pointer dereference")._parseErr != null) {
                                _gotoNext = 4409428i64;
                            } else {
                                _gotoNext = 4409599i64;
                            };
                            break;
                        } else if (__value__ == (4409428i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L911"
                            _badGoFile_46(_name_60?.__copy__(), (@:checkr _info_62 ?? throw "null pointer dereference")._parseErr);
                            _gotoNext = 4409599i64;
                            break;
                        } else if (__value__ == (4409599i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L917"
                            if (({
                                final value = (@:checkr _info_62 ?? throw "null pointer dereference")._parsed;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4409638i64;
                            } else {
                                _gotoNext = 4409781i64;
                            };
                            break;
                        } else if (__value__ == (4409638i64)) {
                            _pkg_67 = (@:checkr (@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L919"
                            if (_pkg_67 == (("documentation" : stdgo.GoString))) {
                                _gotoNext = 4409700i64;
                            } else {
                                _gotoNext = 4409781i64;
                            };
                            break;
                        } else if (__value__ == (4409700i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L863"
                            _iterator_4408262_58++;
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4409781i64)) {
                            _isTest_68 = stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_60?.__copy__(), ("_test.go" : stdgo.GoString));
                            _isXTest_69 = false;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L927"
                            if (((_isTest_68 && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_pkg_67?.__copy__(), ("_test" : stdgo.GoString)) : Bool) && ((@:checkr _p_0 ?? throw "null pointer dereference").name != _pkg_67) : Bool)) {
                                _gotoNext = 4409910i64;
                            } else {
                                _gotoNext = 4409974i64;
                            };
                            break;
                        } else if (__value__ == (4409910i64)) {
                            _isXTest_69 = true;
                            _pkg_67 = (_pkg_67.__slice__(0, ((_pkg_67.length) - ((("_test" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            _gotoNext = 4409974i64;
                            break;
                        } else if (__value__ == (4409974i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L932"
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4409990i64;
                            } else if (_pkg_67 != ((@:checkr _p_0 ?? throw "null pointer dereference").name)) {
                                _gotoNext = 4410054i64;
                            } else {
                                _gotoNext = 4410512i64;
                            };
                            break;
                        } else if (__value__ == (4409990i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").name = _pkg_67?.__copy__();
                            _firstFile_48 = _name_60?.__copy__();
                            _gotoNext = 4410512i64;
                            break;
                        } else if (__value__ == (4410054i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L939"
                            _badGoFile_46(_name_60?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef(({ dir : (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), packages : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(@:checkr _p_0 ?? throw "null pointer dereference").name?.__copy__(), _pkg_67?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), files : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_firstFile_48?.__copy__(), _name_60?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError)) : stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError>)));
                            _gotoNext = 4410512i64;
                            break;
                        } else if (__value__ == (4410512i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L946"
                            if (((((({
                                final value = (@:checkr _info_62 ?? throw "null pointer dereference")._parsed;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && ({
                                final value = (@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) : Bool) && (@:checkr _p_0 ?? throw "null pointer dereference").doc == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !_isTest_68 : Bool) && !_isXTest_69 : Bool)) {
                                _gotoNext = 4410598i64;
                            } else {
                                _gotoNext = 4410655i64;
                            };
                            break;
                        } else if (__value__ == (4410598i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").doc = stdgo._internal.go.doc.Doc_synopsis.synopsis((@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc.text()?.__copy__())?.__copy__();
                            _gotoNext = 4410655i64;
                            break;
                        } else if (__value__ == (4410655i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L950"
                            if ((_mode & (4u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                                _gotoNext = 4410682i64;
                            } else {
                                _gotoNext = 4411223i64;
                            };
                            break;
                        } else if (__value__ == (4410682i64)) {
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__findimportcomment._findImportComment(_data_65);
                                _qcom_70 = @:tmpset0 __tmp__._0?.__copy__();
                                _line_71 = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L952"
                            if (_line_71 != ((0 : stdgo.GoInt))) {
                                _gotoNext = 4410741i64;
                            } else {
                                _gotoNext = 4411223i64;
                            };
                            break;
                        } else if (__value__ == (4410741i64)) {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_qcom_70?.__copy__());
                                _com_72 = @:tmpset0 __tmp__._0?.__copy__();
                                _err_73 = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L954"
                            if (_err_73 != null) {
                                _gotoNext = 4410799i64;
                            } else if ((@:checkr _p_0 ?? throw "null pointer dereference").importComment == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4410924i64;
                            } else if ((@:checkr _p_0 ?? throw "null pointer dereference").importComment != (_com_72)) {
                                _gotoNext = 4411019i64;
                            } else {
                                _gotoNext = 4411223i64;
                            };
                            break;
                        } else if (__value__ == (4410799i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L955"
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("%s:%d: cannot parse import comment" : stdgo.GoString), stdgo.Go.toInterface(_filename_66), stdgo.Go.toInterface(_line_71)));
                            _gotoNext = 4411223i64;
                            break;
                        } else if (__value__ == (4410924i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").importComment = _com_72?.__copy__();
                            _firstCommentFile_49 = _name_60?.__copy__();
                            _gotoNext = 4411223i64;
                            break;
                        } else if (__value__ == (4411019i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L960"
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("found import comments %q (%s) and %q (%s) in %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").importComment), stdgo.Go.toInterface(_firstCommentFile_49), stdgo.Go.toInterface(_com_72), stdgo.Go.toInterface(_name_60), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").dir)));
                            _gotoNext = 4411223i64;
                            break;
                        } else if (__value__ == (4411223i64)) {
                            _isCgo_74 = false;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L967"
                            if ((0i64 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4411568i64;
                            } else {
                                _gotoNext = 4411574i64;
                            };
                            break;
                        } else if (__value__ == (4411244i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L967"
                            _iterator_4411254_75++;
                            _gotoNext = 4411569i64;
                            break;
                        } else if (__value__ == (4411273i64)) {
                            _imp_76 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(_iterator_4411254_75 : stdgo.GoInt)];
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L968"
                            if (_imp_76._path == (("C" : stdgo.GoString))) {
                                _gotoNext = 4411297i64;
                            } else {
                                _gotoNext = 4411244i64;
                            };
                            break;
                        } else if (__value__ == (4411297i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L969"
                            if (_isTest_68) {
                                _gotoNext = 4411313i64;
                            } else {
                                _gotoNext = 4411421i64;
                            };
                            break;
                        } else if (__value__ == (4411313i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L970"
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("use of cgo in test %s not supported" : stdgo.GoString), stdgo.Go.toInterface(_filename_66)));
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L967"
                            _iterator_4411254_75++;
                            _gotoNext = 4411569i64;
                            break;
                        } else if (__value__ == (4411421i64)) {
                            _isCgo_74 = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L974"
                            if (({
                                final value = _imp_76._doc;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4411456i64;
                            } else {
                                _gotoNext = 4411244i64;
                            };
                            break;
                        } else if (__value__ == (4411456i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L975"
                            {
                                _err_77 = _ctxt._saveCgo(_filename_66?.__copy__(), _p_0, _imp_76._doc);
                                if (_err_77 != null) {
                                    _gotoNext = 4411520i64;
                                } else {
                                    _gotoNext = 4411244i64;
                                };
                            };
                            break;
                        } else if (__value__ == (4411520i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L976"
                            _badGoFile_46(_name_60?.__copy__(), _err_77);
                            _gotoNext = 4411244i64;
                            break;
                        } else if (__value__ == (4411568i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(0i64 : stdgo.GoInt)];
                                _iterator_4411254_75 = @:binopAssign __tmp__0;
                                _imp_76 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4411569i64;
                            break;
                        } else if (__value__ == (4411569i64)) {
                            //"file://#L0"
                            if (_iterator_4411254_75 < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4411273i64;
                            } else {
                                _gotoNext = 4411574i64;
                            };
                            break;
                        } else if (__value__ == (4411574i64)) {
                            _gotoNext = 4411683i64;
                            break;
                        } else if (__value__ == (4411683i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L985"
                            if (_isCgo_74) {
                                _gotoNext = 4411694i64;
                            } else if (_isXTest_69) {
                                _gotoNext = 4411983i64;
                            } else if (_isTest_68) {
                                _gotoNext = 4412122i64;
                            } else {
                                _gotoNext = 4412256i64;
                            };
                            break;
                        } else if (__value__ == (4411694i64)) {
                            _allTags_56[("cgo" : stdgo.GoString)] = true;
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L988"
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
                                _gotoNext = 4411753i64;
                            } else {
                                _gotoNext = 4411873i64;
                            };
                            break;
                        } else if (__value__ == (4411753i64)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _importPos_53;
                            _embedMap_80 = _embedPos_50;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4412374i64;
                            break;
                        } else if (__value__ == (4411873i64)) {
                            _gotoNext = 4411873i64;
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            0i64;
                            _gotoNext = 4412374i64;
                            break;
                        } else if (__value__ == (4411983i64)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").xTestGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _xTestImportPos_55;
                            _embedMap_80 = _xTestEmbedPos_52;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").xTestDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4412374i64;
                            break;
                        } else if (__value__ == (4412122i64)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").testGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _testImportPos_54;
                            _embedMap_80 = _testEmbedPos_51;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").testDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4412374i64;
                            break;
                        } else if (__value__ == (4412256i64)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").goFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _importPos_53;
                            _embedMap_80 = _embedPos_50;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4412374i64;
                            break;
                        } else if (__value__ == (4412374i64)) {
                            (_fileList_78 : stdgo.Slice<stdgo.GoString>).__setData__(((_fileList_78 : stdgo.Slice<stdgo.GoString>).__append__(_name_60?.__copy__()) : stdgo.Slice<stdgo.GoString>));
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1014"
                            if (_importMap_79 != null) {
                                _gotoNext = 4412432i64;
                            } else {
                                _gotoNext = 4412561i64;
                            };
                            break;
                        } else if (__value__ == (4412432i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1015"
                            if ((0i64 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4412552i64;
                            } else {
                                _gotoNext = 4412561i64;
                            };
                            break;
                        } else if (__value__ == (4412470i64)) {
                            _imp_83 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(_iterator_4412451_82 : stdgo.GoInt)];
                            _importMap_79[_imp_83._path] = ((_importMap_79[_imp_83._path] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(_fset_57.position(_imp_83._pos)?.__copy__()) : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1015"
                            _iterator_4412451_82++;
                            _gotoNext = 4412553i64;
                            break;
                        } else if (__value__ == (4412552i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(0i64 : stdgo.GoInt)];
                                _iterator_4412451_82 = @:binopAssign __tmp__0;
                                _imp_83 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4412553i64;
                            break;
                        } else if (__value__ == (4412553i64)) {
                            //"file://#L0"
                            if (_iterator_4412451_82 < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4412470i64;
                            } else {
                                _gotoNext = 4412561i64;
                            };
                            break;
                        } else if (__value__ == (4412561i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1019"
                            if (_embedMap_80 != null) {
                                _gotoNext = 4412580i64;
                            } else {
                                _gotoNext = 4412697i64;
                            };
                            break;
                        } else if (__value__ == (4412580i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1020"
                            if ((0i64 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._embeds.length)) {
                                _gotoNext = 4412688i64;
                            } else {
                                _gotoNext = 4412697i64;
                            };
                            break;
                        } else if (__value__ == (4412617i64)) {
                            _emb_85 = (@:checkr _info_62 ?? throw "null pointer dereference")._embeds[(_iterator_4412599_84 : stdgo.GoInt)];
                            _embedMap_80[_emb_85._pattern] = ((_embedMap_80[_emb_85._pattern] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(_emb_85._pos?.__copy__()) : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1020"
                            _iterator_4412599_84++;
                            _gotoNext = 4412689i64;
                            break;
                        } else if (__value__ == (4412688i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._embeds[(0i64 : stdgo.GoInt)];
                                _iterator_4412599_84 = @:binopAssign __tmp__0;
                                _emb_85 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4412689i64;
                            break;
                        } else if (__value__ == (4412689i64)) {
                            //"file://#L0"
                            if (_iterator_4412599_84 < ((@:checkr _info_62 ?? throw "null pointer dereference")._embeds.length)) {
                                _gotoNext = 4412617i64;
                            } else {
                                _gotoNext = 4412697i64;
                            };
                            break;
                        } else if (__value__ == (4412697i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1024"
                            if (({
                                final value = _directives_81;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4412718i64;
                            } else {
                                _gotoNext = 4408254i64;
                            };
                            break;
                        } else if (__value__ == (4412718i64)) {
                            (_directives_81 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__setData__(((_directives_81 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__append__(...((@:checkr _info_62 ?? throw "null pointer dereference")._directives : Array<stdgo._internal.go.build.Build_directive.Directive>)) : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>));
                            _gotoNext = 4408254i64;
                            break;
                        } else if (__value__ == (4412781i64)) {
                            {
                                final __tmp__0 = 0i64;
                                final __tmp__1 = _dirs_42[(0i64 : stdgo.GoInt)];
                                _iterator_4408262_58 = @:binopAssign __tmp__0;
                                _d_59 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4412782i64;
                            break;
                        } else if (__value__ == (4412782i64)) {
                            //"file://#L0"
                            if (_iterator_4408262_58 < (_dirs_42.length)) {
                                _gotoNext = 4408273i64;
                            } else {
                                _gotoNext = 4412786i64;
                            };
                            break;
                        } else if (__value__ == (4412786i64)) {
                            _keys_4412786 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1029"
                            for (_key => _ in _allTags_56) {
                                _keys_4412786 = _keys_4412786.__append__(_key);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1029"
                            if ((0i64 : stdgo.GoInt) < (_allTags_56.length)) {
                                _gotoNext = 4412850i64;
                            } else {
                                _gotoNext = 4412854i64;
                            };
                            break;
                        } else if (__value__ == (4412811i64)) {
                            _tag_86 = _keys_4412786[@:invalid_index_invalid_type _iterator_4412797]?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").allTags = ((@:checkr _p_0 ?? throw "null pointer dereference").allTags.__append__(_tag_86?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1029"
                            _iterator_4412797++;
                            _gotoNext = 4412851i64;
                            break;
                        } else if (__value__ == (4412850i64)) {
                            _iterator_4412797 = 0i64;
                            _gotoNext = 4412851i64;
                            break;
                        } else if (__value__ == (4412851i64)) {
                            //"file://#L0"
                            if (_iterator_4412797 < (_keys_4412786.length)) {
                                _gotoNext = 4412811i64;
                            } else {
                                _gotoNext = 4412854i64;
                            };
                            break;
                        } else if (__value__ == (4412854i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1032"
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").allTags);
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_embedPos_50);
                                (@:checkr _p_0 ?? throw "null pointer dereference").embedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").embedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testEmbedPos_51);
                                (@:checkr _p_0 ?? throw "null pointer dereference").testEmbedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").testEmbedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestEmbedPos_52);
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestEmbedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestEmbedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_importPos_53);
                                (@:checkr _p_0 ?? throw "null pointer dereference").imports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").importPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testImportPos_54);
                                (@:checkr _p_0 ?? throw "null pointer dereference").testImports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").testImportPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestImportPos_55);
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestImports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestImportPos = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1045"
                            if ((((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles.length) > (0 : stdgo.GoInt) : Bool)) {
                                _gotoNext = 4413416i64;
                            } else {
                                _gotoNext = 4413492i64;
                            };
                            break;
                        } else if (__value__ == (4413416i64)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").sFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").sFiles.__append__(...(sfiles_47 : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1047"
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").sFiles);
                            _gotoNext = 4413598i64;
                            break;
                        } else if (__value__ == (4413492i64)) {
                            _gotoNext = 4413492i64;
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(...(sfiles_47 : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1050"
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles);
                            0i64;
                            _gotoNext = 4413598i64;
                            break;
                        } else if (__value__ == (4413598i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1053"
                            if (_badGoError_44 != null) {
                                _gotoNext = 4413619i64;
                            } else {
                                _gotoNext = 4413648i64;
                            };
                            break;
                        } else if (__value__ == (4413619i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1054"
                            return { _0 : _p_0, _1 : _badGoError_44 };
                            _gotoNext = 4413648i64;
                            break;
                        } else if (__value__ == (4413648i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1056"
                            if ((((((@:checkr _p_0 ?? throw "null pointer dereference").goFiles.length) + ((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles.length) : stdgo.GoInt) + ((@:checkr _p_0 ?? throw "null pointer dereference").testGoFiles.length) : stdgo.GoInt) + ((@:checkr _p_0 ?? throw "null pointer dereference").xTestGoFiles.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                _gotoNext = 4413726i64;
                            } else {
                                _gotoNext = 4413762i64;
                            };
                            break;
                        } else if (__value__ == (4413726i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1057"
                            return { _0 : _p_0, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.Build_nogoerror.NoGoError((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__()) : stdgo._internal.go.build.Build_nogoerror.NoGoError)) : stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError>)) };
                            _gotoNext = 4413762i64;
                            break;
                        } else if (__value__ == (4413762i64)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1059"
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = -1i64;
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function importDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L501"
        return _ctxt.import_(("." : stdgo.GoString), _dir?.__copy__(), _mode);
    }
    @:keep
    @:tdfield
    static public function srcDirs( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L269"
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
            var _dir = (_ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L271"
            if (_ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L275"
        for (__0 => _p in _ctxt._gopath()) {
            var _dir = (_ctxt._joinPath(_p?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L277"
            if (_ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L281"
        return _all;
    }
    @:keep
    @:tdfield
    static public function _gopath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L236"
        for (__0 => _p in _ctxt._splitPathList((@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L237"
            if (((_p == (stdgo.Go.str() : stdgo.GoString)) || (_p == (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L242"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L244"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), ("~" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L257"
                continue;
            };
            _all = (_all.__append__(_p?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L261"
        return _all;
    }
    @:keep
    @:tdfield
    static public function _isFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var __tmp__ = _ctxt._openFile(_path?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L226"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L227"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L229"
        _f.close();
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L230"
        return true;
    }
    @:keep
    @:tdfield
    static public function _openFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L210"
        {
            var _fn = ((@:checkr _ctxt ?? throw "null pointer dereference").openFile : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; });
            if (_fn != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L211"
                return _fn(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L215"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L216"
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L218"
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L194"
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").readDir : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; });
            if (_f != null) {
                var __tmp__ = _f(_path?.__copy__()), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L196"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L197"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
                };
                var _des = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>((_fis.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L200"
                for (_i => _fi in _fis) {
                    _des[(_i : stdgo.GoInt)] = stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_fi);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L203"
                return { _0 : _des, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L205"
        return stdgo._internal.os.Os_readdir.readDir(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _hasSubdir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _root:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _rel = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L152"
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; });
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L153"
                return _f(_root?.__copy__(), _dir?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L157"
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L158"
                return { _0 : _rel, _1 : _ok };
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_root?.__copy__()), _rootSym:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_dir?.__copy__()), _dirSym:stdgo.GoString = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L167"
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L168"
                return { _0 : _rel, _1 : _ok };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L170"
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dirSym?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L171"
                return { _0 : _rel, _1 : _ok };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L173"
        return stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dirSym?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _isDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L142"
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isDir : stdgo.GoString -> Bool);
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L143"
                return _f(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L146"
        return ((_err == null) && _fi.isDir() : Bool);
    }
    @:keep
    @:tdfield
    static public function _isAbsPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L134"
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath : stdgo.GoString -> Bool);
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L135"
                return _f(_path?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L137"
        return stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _splitPathList( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L126"
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList;
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L127"
                return _f(_s?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L129"
        return stdgo._internal.path.filepath.Filepath_splitlist.splitList(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _joinPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L118"
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").joinPath;
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L119"
                return _f(...(_elem : Array<stdgo.GoString>))?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L121"
        return stdgo._internal.path.filepath.Filepath_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
    }
}
