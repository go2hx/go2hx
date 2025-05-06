package stdgo._internal.go.internal.gccgoimporter;
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parsePackage( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1266"
        while ((@:checkr _p ?? throw "null pointer dereference")._tok != ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1267"
            _p._parseDirective();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1269"
        for (__0 => _f in (@:checkr _p ?? throw "null pointer dereference")._fixups) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1270"
            if (_f._target.underlying() == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1271"
                _p._errorf(("internal error: fixup can\'t be applied, loop required" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1273"
            _f._toUpdate.setUnderlying(_f._target.underlying());
        };
        (@:checkr _p ?? throw "null pointer dereference")._fixups = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1276"
        for (__1 => _typ in (@:checkr _p ?? throw "null pointer dereference")._typeList) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1277"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _it = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1278"
                    _it.complete();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1281"
        (@:checkr _p ?? throw "null pointer dereference")._pkg.markComplete();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1282"
        return (@:checkr _p ?? throw "null pointer dereference")._pkg;
    }
    @:keep
    @:tdfield
    static public function _parseDirective( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1182"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((-2 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1184"
            _p._expect((-2 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1187"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lit;
            if (__value__ == (("v1" : stdgo.GoString)) || __value__ == (("v2" : stdgo.GoString)) || __value__ == (("v3" : stdgo.GoString)) || __value__ == (("priority" : stdgo.GoString)) || __value__ == (("init" : stdgo.GoString)) || __value__ == (("init_graph" : stdgo.GoString)) || __value__ == (("checksum" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1189"
                _p._parseInitDataDirective();
            } else if (__value__ == (("package" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1192"
                _p._next();
                (@:checkr _p ?? throw "null pointer dereference")._pkgname = _p._parseUnquotedString()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1194"
                _p._maybeCreatePackage();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1195"
                if ((((@:checkr _p ?? throw "null pointer dereference")._version != (("v1" : stdgo.GoString)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((10 : stdgo.GoInt32)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (59 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1196"
                    _p._parseUnquotedString();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1197"
                    _p._parseUnquotedString();
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1199"
                _p._expectEOL();
            } else if (__value__ == (("pkgpath" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1202"
                _p._next();
                (@:checkr _p ?? throw "null pointer dereference")._pkgpath = _p._parseUnquotedString()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1204"
                _p._maybeCreatePackage();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1205"
                _p._expectEOL();
            } else if (__value__ == (("prefix" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1208"
                _p._next();
                (@:checkr _p ?? throw "null pointer dereference")._pkgpath = _p._parseUnquotedString()?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1210"
                _p._expectEOL();
            } else if (__value__ == (("import" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1213"
                _p._next();
                var _pkgname = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
                var _pkgpath = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1216"
                _p._getPkg(_pkgpath?.__copy__(), _pkgname?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1217"
                _p._parseString();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1218"
                _p._expectEOL();
            } else if (__value__ == (("indirectimport" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1221"
                _p._next();
                var _pkgname = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
                var _pkgpath = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1224"
                _p._getPkg(_pkgpath?.__copy__(), _pkgname?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1225"
                _p._expectEOL();
            } else if (__value__ == (("types" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1228"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1229"
                _p._parseTypes((@:checkr _p ?? throw "null pointer dereference")._pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1230"
                _p._expectEOL();
            } else if (__value__ == (("func" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1233"
                _p._next();
                var _fun = _p._parseFunc((@:checkr _p ?? throw "null pointer dereference")._pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1235"
                if (({
                    final value = _fun;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1236"
                    (@:checkr _p ?? throw "null pointer dereference")._pkg.scope().insert(stdgo.Go.asInterface(_fun));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1238"
                _p._expectEOL();
            } else if (__value__ == (("type" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1241"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1242"
                _p._parseType((@:checkr _p ?? throw "null pointer dereference")._pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1243"
                _p._expectEOL();
            } else if (__value__ == (("var" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1246"
                _p._next();
                var _v = _p._parseVar((@:checkr _p ?? throw "null pointer dereference")._pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1248"
                if (({
                    final value = _v;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1249"
                    (@:checkr _p ?? throw "null pointer dereference")._pkg.scope().insert(stdgo.Go.asInterface(_v));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1251"
                _p._expectEOL();
            } else if (__value__ == (("const" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1254"
                _p._next();
                var _c = _p._parseConst((@:checkr _p ?? throw "null pointer dereference")._pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1256"
                (@:checkr _p ?? throw "null pointer dereference")._pkg.scope().insert(stdgo.Go.asInterface(_c));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1257"
                _p._expectEOL();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1260"
                _p._errorf(("unexpected identifier: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseInitDataDirective( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1122"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((-2 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1124"
                _p._expect((-2 : stdgo.GoInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1127"
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lit;
                if (__value__ == (("v1" : stdgo.GoString)) || __value__ == (("v2" : stdgo.GoString)) || __value__ == (("v3" : stdgo.GoString))) {
                    (@:checkr _p ?? throw "null pointer dereference")._version = (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1130"
                    _p._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1131"
                    _p._expect((59 : stdgo.GoInt32));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1132"
                    _p._expect((10 : stdgo.GoInt32));
                } else if (__value__ == (("priority" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1135"
                    _p._next();
                    (@:checkr _p ?? throw "null pointer dereference")._initdata.priority = _p._parseInt();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1137"
                    _p._expectEOL();
                } else if (__value__ == (("init" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1140"
                    _p._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1141"
                    while ((((@:checkr _p ?? throw "null pointer dereference")._tok != ((10 : stdgo.GoInt32)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((59 : stdgo.GoInt32)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (-1 : stdgo.GoInt32)) : Bool)) {
                        (@:checkr _p ?? throw "null pointer dereference")._initdata.inits = ((@:checkr _p ?? throw "null pointer dereference")._initdata.inits.__append__(_p._parsePackageInit()?.__copy__()) : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit>);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1144"
                    _p._expectEOL();
                } else if (__value__ == (("init_graph" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1147"
                    _p._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1149"
                    while ((((@:checkr _p ?? throw "null pointer dereference")._tok != ((10 : stdgo.GoInt32)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((59 : stdgo.GoInt32)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (-1 : stdgo.GoInt32)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1150"
                        _p._parseInt64();
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1151"
                        _p._parseInt64();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1153"
                    _p._expectEOL();
                } else if (__value__ == (("checksum" : stdgo.GoString))) {
                    {
                        var _a0 = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").mode;
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function(_mode:stdgo.GoUInt):Void {
                                (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").mode = _mode;
                            };
                            a(_a0);
                        }) });
                    };
                    (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").mode = ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").mode & ((((24u32 : stdgo.GoUInt)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt)) : stdgo.GoUInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1161"
                    _p._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1162"
                    _p._parseUnquotedString();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1163"
                    _p._expectEOL();
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1166"
                    _p._errorf(("unexpected identifier: %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _maybeCreatePackage( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1111"
        if ((((@:checkr _p ?? throw "null pointer dereference")._pkgname != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _p ?? throw "null pointer dereference")._pkgpath != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._pkg = _p._getPkg((@:checkr _p ?? throw "null pointer dereference")._pkgpath?.__copy__(), (@:checkr _p ?? throw "null pointer dereference")._pkgname?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _parsePackageInit( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _name = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
        var _initfunc = (_p._parseUnquotedString()?.__copy__() : stdgo.GoString);
        var _priority = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1103"
        if ((@:checkr _p ?? throw "null pointer dereference")._version == (("v1" : stdgo.GoString))) {
            _priority = _p._parseInt();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1106"
        return ({ name : _name?.__copy__(), initFunc : _initfunc?.__copy__(), priority : _priority } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_packageinit.PackageInit);
    }
    @:keep
    @:tdfield
    static public function _parseSavedType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _i:stdgo.GoInt, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (@:checkr _p ?? throw "null pointer dereference")._scanner;
                var _a1 = (@:checkr _p ?? throw "null pointer dereference")._tok;
                var _a2 = (@:checkr _p ?? throw "null pointer dereference")._lit;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_s:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _tok:stdgo.GoInt32, _lit:stdgo.GoString):Void {
                        (@:checkr _p ?? throw "null pointer dereference")._scanner = _s;
                        (@:checkr _p ?? throw "null pointer dereference")._tok = _tok;
                        (@:checkr _p ?? throw "null pointer dereference")._lit = _lit?.__copy__();
                    };
                    a(_a0, _a1, _a2?.__copy__());
                }) });
            };
            (@:checkr _p ?? throw "null pointer dereference")._scanner = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1080"
            _p._initScanner((@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").position.filename?.__copy__(), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader((@:checkr _p ?? throw "null pointer dereference")._typeData[(_i : stdgo.GoInt)]?.__copy__())));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1081"
            _p._expectKeyword(("type" : stdgo.GoString));
            var _id = (_p._parseInt() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1083"
            if (_id != (_i)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1084"
                _p._errorf(("type ID mismatch: got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_id), stdgo.Go.toInterface(_i));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1086"
            if (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._typeList[(_i : stdgo.GoInt)]) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved)))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1087"
                _p._errorf(("internal error: %d already reserved in parseSavedType" : stdgo.GoString), stdgo.Go.toInterface(_i));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1089"
            if ((@:checkr _p ?? throw "null pointer dereference")._typeList[(_i : stdgo.GoInt)] == null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1090"
                _p._reserve(_i);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1091"
                _p._parseTypeSpec(_pkg, (_nlist.__append__(stdgo.Go.toInterface(_i)) : stdgo.Slice<stdgo.AnyInterface>));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1093"
            if ((((@:checkr _p ?? throw "null pointer dereference")._typeList[(_i : stdgo.GoInt)] == null) || (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._typeList[(_i : stdgo.GoInt)]) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1094"
                _p._errorf(("internal error: parseSavedType(%d,%v) reserved/nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_nlist));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypes( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _maxp1 = (_p._parseInt() : stdgo.GoInt);
            var _exportedp1 = (_p._parseInt() : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._typeList = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_maxp1 : stdgo.GoInt).toBasic(), _maxp1) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
            {};
            var _typeOffsets:stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108> = (null : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108>);
            var _total = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1037"
            {
                var _i = (1 : stdgo.GoInt);
                while ((_i < _maxp1 : Bool)) {
                    var _len = (_p._parseInt() : stdgo.GoInt);
_typeOffsets = (_typeOffsets.__append__((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108(_total, _len) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108)) : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__parsetypes___localname___typeoffset_26108.T__parseTypes___localname___typeOffset_26108>);
_total = (_total + (_len) : stdgo.GoInt);
                    _i++;
                };
            };
            {
                var _a0 = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_w:stdgo.GoUInt64):Void {
                        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace = _w;
                    };
                    a(_a0);
                }) });
            };
            (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace = (0i64 : stdgo.GoUInt64);
            var _sb:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1052"
            while ((_sb.len() < _total : Bool)) {
                var _r = ((@:checkr _p ?? throw "null pointer dereference")._scanner.next() : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1054"
                if (_r == ((-1 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1055"
                    _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1057"
                _sb.writeRune(_r);
            };
            var _allTypeData = ((_sb.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            (@:checkr _p ?? throw "null pointer dereference")._typeData = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1062"
            for (__0 => _to in _typeOffsets) {
                (@:checkr _p ?? throw "null pointer dereference")._typeData = ((@:checkr _p ?? throw "null pointer dereference")._typeData.__append__((_allTypeData.__slice__(_to._offset, (_to._offset + _to._length : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1066"
            {
                var _i = (1 : stdgo.GoInt);
                while ((_i < (_exportedp1 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1067"
                    _p._parseSavedType(_pkg, _i, (null : stdgo.Slice<stdgo.AnyInterface>));
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _skipInlineBody( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L996"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((60 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L997"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L998"
                _p._expectKeyword(("inl" : stdgo.GoString));
            } else if ((((@:checkr _p ?? throw "null pointer dereference")._tok != (-2 : stdgo.GoInt32)) || ((@:checkr _p ?? throw "null pointer dereference")._lit != ("inl" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1000"
                return;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1002"
                _p._next();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1005"
            _p._expect((58 : stdgo.GoInt32));
            var _want = (_p._parseInt() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1007"
            _p._expect((62 : stdgo.GoInt32));
            {
                var _a0 = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_w:stdgo.GoUInt64):Void {
                        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace = _w;
                    };
                    a(_a0);
                }) });
            };
            (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace = (0i64 : stdgo.GoUInt64);
            var _got = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1015"
            while ((_got < _want : Bool)) {
                var _r = ((@:checkr _p ?? throw "null pointer dereference")._scanner.next() : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1017"
                if (_r == ((-1 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L1018"
                    _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
                };
                _got = (_got + (stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_r)) : stdgo.GoInt);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeExtended( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt; } {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _t = (null : stdgo._internal.go.types.Types_type_.Type_), _n1 = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L986"
        _p._expect((60 : stdgo.GoInt32));
        {
            var __tmp__ = _p._parseTypeAfterAngle(_pkg, ...(_n : Array<stdgo.AnyInterface>));
            _t = @:tmpset0 __tmp__._0;
            _n1 = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L988"
        return { _0 : _t, _1 : _n1 };
    }
    @:keep
    @:tdfield
    static public function _parseTypeAfterAngle( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt; } {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _t = (null : stdgo._internal.go.types.Types_type_.Type_), _n1 = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L943"
        _p._expectKeyword(("type" : stdgo.GoString));
        _n1 = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L946"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((-3 : stdgo.GoInt32))) {
                _n1 = _p._parseInt();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L949"
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((62 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L950"
                    if (((((@:checkr _p ?? throw "null pointer dereference")._typeData.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._typeList[(_n1 : stdgo.GoInt)] == null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L951"
                        _p._parseSavedType(_pkg, _n1, _n);
                    };
                    _t = (@:checkr _p ?? throw "null pointer dereference")._typeList[(_n1 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L954"
                    if ((((@:checkr _p ?? throw "null pointer dereference")._typeData.length == (0 : stdgo.GoInt)) && (stdgo.Go.toInterface(_t) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved))) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L955"
                        _p._errorf(("invalid type cycle, type %d not yet defined (nlist=%v)" : stdgo.GoString), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L957"
                    _p._update(_t, _n);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L959"
                    _p._reserve(_n1);
                    _t = _p._parseTypeSpec(_pkg, (_n.__append__(stdgo.Go.toInterface(_n1)) : stdgo.Slice<stdgo.AnyInterface>));
                };
            } else if (__value__ == ((45 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L964"
                _p._next();
                var _n1 = (_p._parseInt() : stdgo.GoInt);
                _t = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__lookupbuiltintype._lookupBuiltinType(_n1);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L967"
                _p._update(_t, _n);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L970"
                _p._errorf(("expected type number, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L971"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.GoInt; } = { _0 : (null : stdgo._internal.go.types.Types_type_.Type_), _1 : (0 : stdgo.GoInt) };
                    _t = __tmp__._0;
                    _n1 = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L974"
        if (((_t == null) || (stdgo.Go.toInterface(_t) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L975"
            _p._errorf(("internal error: bad return from parseType(%v)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L978"
        _p._expect((62 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L979"
        return { _0 : _t, _1 : _n1 };
    }
    @:keep
    @:tdfield
    static public function _parseType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _n:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        var _n = new stdgo.Slice<stdgo.AnyInterface>(_n.length, 0, ..._n);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L936"
        _p._expect((60 : stdgo.GoInt32));
        var __tmp__ = _p._parseTypeAfterAngle(_pkg, ...(_n : Array<stdgo.AnyInterface>)), _t:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L938"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _parseTypeSpec( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L848"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((-6 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L850"
                return _p._parseNamedType(_nlist);
            } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L853"
                {
                    final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lit;
                    if (__value__ == (("map" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L855"
                        return _p._parseMapType(_pkg, _nlist);
                    } else if (__value__ == (("chan" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L858"
                        return _p._parseChanType(_pkg, _nlist);
                    } else if (__value__ == (("struct" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L861"
                        return _p._parseStructType(_pkg, _nlist);
                    } else if (__value__ == (("interface" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L864"
                        return _p._parseInterfaceType(_pkg, _nlist);
                    };
                };
            } else if (__value__ == ((42 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L868"
                return _p._parsePointerType(_pkg, _nlist);
            } else if (__value__ == ((91 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L871"
                return _p._parseArrayOrSliceType(_pkg, _nlist);
            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L874"
                return stdgo.Go.asInterface(_p._parseFunctionType(_pkg, _nlist));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L877"
        _p._errorf(("expected type name or literal, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L878"
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
    @:keep
    @:tdfield
    static public function _parsePointerType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L830"
        _p._expect((42 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L831"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((-2 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L832"
            _p._expectKeyword(("any" : stdgo.GoString));
            var _t = stdgo._internal.go.types.Types_typ.typ[((18 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L834"
            _p._update(stdgo.Go.asInterface(_t), _nlist);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L835"
            return stdgo.Go.asInterface(_t);
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_pointer_.Pointer_)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L839"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newpointer.newPointer(_p._parseType(_pkg, stdgo.Go.toInterface(stdgo.Go.asInterface(_t)))) : stdgo._internal.go.types.Types_pointer_.Pointer_)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_pointer_.Pointer_);
            x._base = __tmp__?._base;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L843"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseInterfaceType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L801"
        _p._expectKeyword(("interface" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_interface.Interface)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L804"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        var _embeddeds:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L809"
        _p._expect((123 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L810"
        while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (125 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L811"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((63 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L812"
                _p._next();
                _embeddeds = (_embeddeds.__append__(_p._parseType(_pkg)) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
            } else {
                var _method = _p._parseFunc(_pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L816"
                if (({
                    final value = _method;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _methods = (_methods.__append__(_method) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L820"
            _p._expect((59 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L822"
        _p._expect((125 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds) : stdgo._internal.go.types.Types_interface.Interface)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_interface.Interface);
            x._check = __tmp__?._check;
            x._methods = __tmp__?._methods;
            x._embeddeds = __tmp__?._embeddeds;
            x._embedPos = __tmp__?._embedPos;
            x._implicit = __tmp__?._implicit;
            x._complete = __tmp__?._complete;
            x._tset = __tmp__?._tset;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L825"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseFunc( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L773"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((47 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L775"
            _p._expect((47 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L776"
            _p._expect((42 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L777"
            if (_p._expect((-2 : stdgo.GoInt32)) == (("asm" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L778"
                _p._parseUnquotedString();
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L780"
            _p._expect((42 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L781"
            _p._expect((47 : stdgo.GoInt32));
        };
        var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
        var _f = stdgo._internal.go.types.Types_newfunc.newFunc((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _p._parseFunctionType(_pkg, (null : stdgo.Slice<stdgo.AnyInterface>)));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L786"
        _p._skipInlineBody();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L788"
        if (((_name[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _name[(0 : stdgo.GoInt)] == ((60 : stdgo.GoUInt8)) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(_name?.__copy__(), (36 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L793"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L796"
        return _f;
    }
    @:keep
    @:tdfield
    static public function _parseFunctionType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_signature.Signature)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L762"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
        var _results = _p._parseResultList(_pkg);
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _params, _results, _isVariadic) : stdgo._internal.go.types.Types_signature.Signature)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_signature.Signature);
            x._rparams = __tmp__?._rparams;
            x._tparams = __tmp__?._tparams;
            x._scope = __tmp__?._scope;
            x._recv = __tmp__?._recv;
            x._params = __tmp__?._params;
            x._results = __tmp__?._results;
            x._variadic = __tmp__?._variadic;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L768"
        return _t;
    }
    @:keep
    @:tdfield
    static public function _parseResultList( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L741"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((60 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L743"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L744"
                if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (-2 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._lit == ("inl" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L745"
                    return null;
                };
                var __tmp__ = _p._parseTypeAfterAngle(_pkg), _taa:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L748"
                return stdgo._internal.go.types.Types_newtuple.newTuple(stdgo._internal.go.types.Types_newparam.newParam((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _taa));
            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __tmp__._0, __0:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L752"
                return _params;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L755"
                return null;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParamList( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        var _isVariadic = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L720"
        _p._expect((40 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L721"
        while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (41 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L722"
            if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L723"
                _p._expect((44 : stdgo.GoInt32));
            };
            var __tmp__ = _p._parseParam(_pkg), _par:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = __tmp__._0, _variadic:Bool = __tmp__._1;
            _list = (_list.__append__(_par) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L727"
            if (_variadic) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L728"
                if (_isVariadic) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L729"
                    _p._error(stdgo.Go.toInterface(("... not on final argument" : stdgo.GoString)));
                };
                _isVariadic = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L734"
        _p._expect((41 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L736"
        return { _0 : stdgo._internal.go.types.Types_newtuple.newTuple(...(_list : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>)), _1 : _isVariadic };
    }
    @:keep
    @:tdfield
    static public function _parseStructType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L694"
        _p._expectKeyword(("struct" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_struct.Struct)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L697"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        var _tags:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L702"
        _p._expect((123 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L703"
        while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (125 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (-1 : stdgo.GoInt32)) : Bool)) {
            var __tmp__ = _p._parseField(_pkg), _field:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = __tmp__._0, _tag:stdgo.GoString = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L705"
            _p._expect((59 : stdgo.GoInt32));
            _fields = (_fields.__append__(_field) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
            _tags = (_tags.__append__(_tag?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L709"
        _p._expect((125 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags) : stdgo._internal.go.types.Types_struct.Struct)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_struct.Struct);
            x._fields = __tmp__?._fields;
            x._tags = __tmp__?._tags;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L712"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseChanType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L667"
        _p._expectKeyword(("chan" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_chan.Chan)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L670"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _dir = (0 : stdgo._internal.go.types.Types_chandir.ChanDir);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L673"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((45 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L675"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L676"
                _p._expect((60 : stdgo.GoInt32));
                _dir = (1 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L681"
                if ((@:checkr _p ?? throw "null pointer dereference")._scanner.peek() == ((45 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L682"
                    _p._next();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L683"
                    _p._expect((45 : stdgo.GoInt32));
                    _dir = (2 : stdgo._internal.go.types.Types_chandir.ChanDir);
                };
            };
        };
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newchan.newChan(_dir, _p._parseType(_pkg)) : stdgo._internal.go.types.Types_chan.Chan)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_chan.Chan);
            x._dir = __tmp__?._dir;
            x._elem = __tmp__?._elem;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L689"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseMapType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L651"
        _p._expectKeyword(("map" : stdgo.GoString));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_map_.Map_)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L654"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L656"
        _p._expect((91 : stdgo.GoInt32));
        var _key = (_p._parseType(_pkg) : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L658"
        _p._expect((93 : stdgo.GoInt32));
        var _elem = (_p._parseType(_pkg) : stdgo._internal.go.types.Types_type_.Type_);
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newmap.newMap(_key, _elem) : stdgo._internal.go.types.Types_map_.Map_)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_map_.Map_);
            x._key = __tmp__?._key;
            x._elem = __tmp__?._elem;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L662"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseArrayOrSliceType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L628"
        _p._expect((91 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L629"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((93 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L630"
            _p._next();
            var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_slice_.Slice_)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L633"
            _p._update(stdgo.Go.asInterface(_t), _nlist);
            {
                var __tmp__ = (stdgo._internal.go.types.Types_newslice.newSlice(_p._parseType(_pkg)) : stdgo._internal.go.types.Types_slice_.Slice_)?.__copy__();
                var x = (_t : stdgo._internal.go.types.Types_slice_.Slice_);
                x._elem = __tmp__?._elem;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L636"
            return stdgo.Go.asInterface(_t);
        };
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_array_.Array_)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L640"
        _p._update(stdgo.Go.asInterface(_t), _nlist);
        var _len = (_p._parseInt64() : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L643"
        _p._expect((93 : stdgo.GoInt32));
        {
            var __tmp__ = (stdgo._internal.go.types.Types_newarray.newArray(_p._parseType(_pkg), _len) : stdgo._internal.go.types.Types_array_.Array_)?.__copy__();
            var x = (_t : stdgo._internal.go.types.Types_array_.Array_);
            x._len = __tmp__?._len;
            x._elem = __tmp__?._elem;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L646"
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function _parseInt( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _lit = (_p._expect((-3 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_lit?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L620"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L621"
            _p._error(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L623"
        return (_n : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _parseInt64( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _lit = (_p._expect((-3 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_lit?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L611"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L612"
            _p._error(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L614"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _parseNamedType( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _nlist:stdgo.Slice<stdgo.AnyInterface>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __tmp__ = _p._parseExportedName(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _scope = _pkg.scope();
        var _obj = (_scope.lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L514"
        if (((_obj != null) && (_obj.type() == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L515"
            _p._errorf(("%v has nil type" : stdgo.GoString), stdgo.Go.toInterface(_obj));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L518"
        if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (-2 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._lit == ("notinheap" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L519"
            _p._next();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L526"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((61 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L527"
            _p._next();
            (@:checkr _p ?? throw "null pointer dereference")._aliases[(stdgo.Go.typeAssert((_nlist[((_nlist.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt)] = _name?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L529"
            if (_obj != null) {
                var _t = (_obj.type() : stdgo._internal.go.types.Types_type_.Type_);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L532"
                _p._update(_t, _nlist);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L533"
                _p._parseType(_pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L534"
                return _t;
            };
            var _t = (_p._parseType(_pkg, ...(_nlist : Array<stdgo.AnyInterface>)) : stdgo._internal.go.types.Types_type_.Type_);
            _obj = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _t));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L538"
            _scope.insert(_obj);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L539"
            return _t;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L543"
        if (_obj == null) {
            var _tname = stdgo._internal.go.types.Types_newtypename.newTypeName((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L547"
            stdgo._internal.go.types.Types_newnamed.newNamed(_tname, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L548"
            _scope.insert(stdgo.Go.asInterface(_tname));
            _obj = stdgo.Go.asInterface(_tname);
        };
        var _t = (_obj.type() : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L554"
        _p._update(_t, _nlist);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
        }, _nt = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L557"
        if (!_ok) {
            var _pt = (_p._parseType(_pkg) : stdgo._internal.go.types.Types_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L560"
            if (stdgo.Go.toInterface(_pt) != (stdgo.Go.toInterface(_t))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L561"
                _p._error(stdgo.Go.toInterface(("unexpected underlying type for non-named TypeName" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L563"
            return _t;
        };
        var _underlying = (_p._parseType(_pkg) : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L567"
        if (_nt.underlying() == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L568"
            if (_underlying.underlying() == null) {
                var _fix = ({ _toUpdate : _nt, _target : _underlying } : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord);
                (@:checkr _p ?? throw "null pointer dereference")._fixups = ((@:checkr _p ?? throw "null pointer dereference")._fixups.__append__(_fix?.__copy__()) : stdgo.Slice<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_fixuprecord.T_fixupRecord>);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L572"
                _nt.setUnderlying(_underlying.underlying());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L576"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((10 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L577"
            _p._next();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L579"
            while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((-2 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L580"
                _p._expectKeyword(("func" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L581"
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((47 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L583"
                    _p._expect((47 : stdgo.GoInt32));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L584"
                    _p._expect((42 : stdgo.GoInt32));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L585"
                    if (_p._expect((-2 : stdgo.GoInt32)) == (("asm" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L586"
                        _p._parseUnquotedString();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L588"
                    _p._expect((42 : stdgo.GoInt32));
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L589"
                    _p._expect((47 : stdgo.GoInt32));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L591"
                _p._expect((40 : stdgo.GoInt32));
                var __tmp__ = _p._parseParam(_pkg), _receiver:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = __tmp__._0, __8:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L593"
                _p._expect((41 : stdgo.GoInt32));
                var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
                var __tmp__ = _p._parseParamList(_pkg), _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
                var _results = _p._parseResultList(_pkg);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L597"
                _p._skipInlineBody();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L598"
                _p._expectEOL();
                var _sig = stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_receiver, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _params, _results, _isVariadic);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L601"
                _nt.addMethod(stdgo._internal.go.types.Types_newfunc.newFunc((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _sig));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L605"
        return stdgo.Go.asInterface(_nt);
    }
    @:keep
    @:tdfield
    static public function _update( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _t:stdgo._internal.go.types.Types_type_.Type_, _nlist:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L476"
        if (stdgo.Go.toInterface(_t) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved)))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L477"
            _p._errorf(("internal error: update(%v) invoked on reserved" : stdgo.GoString), stdgo.Go.toInterface(_nlist));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L479"
        if (_t == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L480"
            _p._errorf(("internal error: update(%v) invoked on nil" : stdgo.GoString), stdgo.Go.toInterface(_nlist));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L482"
        for (__0 => _n in _nlist) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L483"
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                    var _n:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L485"
                    if (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._typeList[(_n : stdgo.GoInt)]) == (stdgo.Go.toInterface(_t))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L486"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L488"
                    if (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._typeList[(_n : stdgo.GoInt)]) != (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved)))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L489"
                        _p._errorf(("internal error: update(%v): %d not reserved" : stdgo.GoString), stdgo.Go.toInterface(_nlist), stdgo.Go.toInterface(_n));
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._typeList[(_n : stdgo.GoInt)] = _t;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L493"
                    if (stdgo.Go.toInterface((_n : stdgo._internal.go.types.Types_pointer_.Pointer_)) != stdgo.Go.toInterface(((new stdgo._internal.go.types.Types_pointer_.Pointer_() : stdgo._internal.go.types.Types_pointer_.Pointer_)))) {
                        var _elem = (_n.elem() : stdgo._internal.go.types.Types_type_.Type_);
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L495"
                        if (stdgo.Go.toInterface(_elem) == (stdgo.Go.toInterface(_t))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L496"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L498"
                        _p._errorf(("internal error: update: pointer already set to %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_elem), stdgo.Go.toInterface(_t));
                    };
                    {
                        var __tmp__ = (stdgo._internal.go.types.Types_newpointer.newPointer(_t) : stdgo._internal.go.types.Types_pointer_.Pointer_)?.__copy__();
                        var x = (_n : stdgo._internal.go.types.Types_pointer_.Pointer_);
                        x._base = __tmp__?._base;
                    };
                } else {
                    var _n:stdgo.AnyInterface = __type__?.__underlying__();
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L502"
                    _p._errorf(("internal error: %T on nlist" : stdgo.GoString), _n);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reserve( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L457"
        if (((@:checkr _p ?? throw "null pointer dereference")._typeData.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L458"
            if (_n != (((@:checkr _p ?? throw "null pointer dereference")._typeList.length))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L459"
                _p._errorf(("invalid type number %d (out of sync)" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            (@:checkr _p ?? throw "null pointer dereference")._typeList = ((@:checkr _p ?? throw "null pointer dereference")._typeList.__append__(stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved)) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L463"
            if ((@:checkr _p ?? throw "null pointer dereference")._typeList[(_n : stdgo.GoInt)] != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L464"
                _p._errorf(("previously visited type number %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
            (@:checkr _p ?? throw "null pointer dereference")._typeList[(_n : stdgo.GoInt)] = stdgo.Go.asInterface(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__reserved._reserved);
        };
    }
    @:keep
    @:tdfield
    static public function _parseConst( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_const.Const> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
        var _typ:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L430"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((60 : stdgo.GoInt32))) {
            _typ = _p._parseType(_pkg);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L433"
        _p._expect((61 : stdgo.GoInt32));
        var __tmp__ = _p._parseConstValue(_pkg), _val:stdgo._internal.go.constant.Constant_value.Value = __tmp__._0, _vtyp:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L435"
        if (_typ == null) {
            _typ = _vtyp;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L438"
        return stdgo._internal.go.types.Types_newconst.newConst((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _typ, _val);
    }
    @:keep
    @:tdfield
    static public function _parseConstValue( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.types.Types_type_.Type_; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _val = (null : stdgo._internal.go.constant.Constant_value.Value), _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L324"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((36 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L325"
            _p._next();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L326"
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((-2 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L327"
                _p._errorf(("expected identifier after \'$\', got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L331"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((-6 : stdgo.GoInt32))) {
                var _str = (_p._parseString()?.__copy__() : stdgo.GoString);
                _val = stdgo._internal.go.constant.Constant_makestring.makeString(_str?.__copy__());
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((24 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L336"
                return { _0 : _val, _1 : _typ };
            } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                var _b = (false : Bool);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L340"
                {
                    final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lit;
                    if (__value__ == (("false" : stdgo.GoString))) {} else if (__value__ == (("true" : stdgo.GoString))) {
                        _b = true;
                    } else if (__value__ == (("convert" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L346"
                        return _p._parseConversion(_pkg);
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L349"
                        _p._errorf(("expected const value, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L352"
                _p._next();
                _val = stdgo._internal.go.constant.Constant_makebool.makeBool(_b);
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((19 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L355"
                return { _0 : _val, _1 : _typ };
            };
        };
        var _sign = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L359"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((45 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L360"
            _p._next();
            _sign = ("-" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L364"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((-3 : stdgo.GoInt32))) {
                _val = stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral((_sign + (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() : stdgo.GoString)?.__copy__(), (5 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt));
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L367"
                if (_val == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L368"
                    _p._error(stdgo.Go.toInterface(("could not parse integer literal" : stdgo.GoString)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L371"
                _p._next();
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L372"
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((39 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L373"
                    _p._next();
                    _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((21 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                } else {
                    _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((20 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                };
            } else if (__value__ == ((-4 : stdgo.GoInt32))) {
                var _re = ((_sign + (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L381"
                _p._next();
                var _im:stdgo.GoString = ("" : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L384"
                {
                    final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                    if (__value__ == ((43 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L386"
                        _p._next();
                        _im = _p._expect((-4 : stdgo.GoInt32))?.__copy__();
                    } else if (__value__ == ((45 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L390"
                        _p._next();
                        _im = (("-" : stdgo.GoString) + _p._expect((-4 : stdgo.GoInt32))?.__copy__() : stdgo.GoString)?.__copy__();
                    } else if (__value__ == ((-2 : stdgo.GoInt32))) {
                        _im = _re?.__copy__();
                        _re = ("0" : stdgo.GoString);
                    } else {
                        _val = stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_re?.__copy__(), (6 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt));
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L400"
                        if (_val == null) {
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L401"
                            _p._error(stdgo.Go.toInterface(("could not parse float literal" : stdgo.GoString)));
                        };
                        _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((22 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L404"
                        return { _0 : _val, _1 : _typ };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L407"
                _p._expectKeyword(("i" : stdgo.GoString));
                var _reval = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_re?.__copy__(), (6 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L409"
                if (_reval == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L410"
                    _p._error(stdgo.Go.toInterface(("could not parse real component of complex literal" : stdgo.GoString)));
                };
                var _imval = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral((_im + ("i" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (7 : stdgo._internal.go.token.Token_token.Token), (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L413"
                if (_imval == null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L414"
                    _p._error(stdgo.Go.toInterface(("could not parse imag component of complex literal" : stdgo.GoString)));
                };
                _val = stdgo._internal.go.constant.Constant_binaryop.binaryOp(_reval, (12 : stdgo._internal.go.token.Token_token.Token), _imval);
                _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((23 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L420"
                _p._errorf(("expected const value, got %s (%q)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L423"
        return { _0 : _val, _1 : _typ };
    }
    @:keep
    @:tdfield
    static public function _parseConversion( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.types.Types_type_.Type_; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _val = (null : stdgo._internal.go.constant.Constant_value.Value), _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L310"
        _p._expectKeyword(("convert" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L311"
        _p._expect((40 : stdgo.GoInt32));
        _typ = _p._parseType(_pkg);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L313"
        _p._expect((44 : stdgo.GoInt32));
        {
            var __tmp__ = _p._parseConstValue(_pkg);
            _val = @:tmpset0 __tmp__._0;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L315"
        _p._expect((41 : stdgo.GoInt32));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L316"
        return { _0 : _val, _1 : _typ };
    }
    @:keep
    @:tdfield
    static public function _parseVar( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
        var _v = stdgo._internal.go.types.Types_newvar.newVar((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _p._parseType(_pkg));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L299"
        if (((_name[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (_name[(0 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L303"
            return null;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L305"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _parseParam( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _param = (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>), _isVariadic = false;
        var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L270"
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("p." : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("r." : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("$ret" : stdgo.GoString)) : Bool)) {
            _name = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L273"
        if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (60 : stdgo.GoInt32)) && ((@:checkr _p ?? throw "null pointer dereference")._scanner.peek() == (101 : stdgo.GoInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L275"
            _p._next();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L276"
            _p._expectKeyword(("esc" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L277"
            _p._expect((58 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L278"
            _p._expect((-3 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L279"
            _p._expect((62 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L281"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((46 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L282"
            _p._next();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L283"
            _p._expect((46 : stdgo.GoInt32));
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L284"
            _p._expect((46 : stdgo.GoInt32));
            _isVariadic = true;
        };
        var _typ = (_p._parseType(_pkg) : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L288"
        if (_isVariadic) {
            _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(_typ));
        };
        _param = stdgo._internal.go.types.Types_newparam.newParam((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _typ);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L292"
        return { _0 : _param, _1 : _isVariadic };
    }
    @:keep
    @:tdfield
    static public function _parseField( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _field = (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>), _tag = ("" : stdgo.GoString);
        var _name = (_p._parseName()?.__copy__() : stdgo.GoString);
        var __tmp__ = _p._parseTypeExtended(_pkg), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        var _anon = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L243"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            _anon = true;
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L246"
            {
                var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._aliases != null && (@:checkr _p ?? throw "null pointer dereference")._aliases.__exists__(_n) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._aliases[_n], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _aname:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _name = _aname?.__copy__();
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L249"
                    {
                        final __type__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__deref._deref(_typ);
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                            var _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value);
                            _name = _typ.name()?.__copy__();
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _typ:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value);
                            _name = _typ.obj().name()?.__copy__();
                        } else {
                            var _typ:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L255"
                            _p._error(stdgo.Go.toInterface(("embedded field expected" : stdgo.GoString)));
                        };
                    };
                };
            };
        };
        _field = stdgo._internal.go.types.Types_newfield.newField((0 : stdgo._internal.go.token.Token_pos.Pos), _pkg, _name?.__copy__(), _typ, _anon);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L260"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((-6 : stdgo.GoInt32))) {
            _tag = _p._parseString()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L263"
        return { _0 : _field, _1 : _tag };
    }
    @:keep
    @:tdfield
    static public function _parseName( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L221"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((63 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L223"
            _p._next();
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L224"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = _p._parseUnquotedQualifiedName(), __0:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L228"
        return _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _parseExportedName( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _pkg = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _name = ("" : stdgo.GoString);
        var __tmp__ = _p._parseQualifiedName(), _path:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _pkgname:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L209"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((-6 : stdgo.GoInt32))) {
            _pkgname = _p._parseString()?.__copy__();
        };
        _pkg = _p._getPkg(_path?.__copy__(), _pkgname?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L213"
        if (({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L214"
            _p._errorf(("package %s (path = %q) not found" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_path));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L216"
        return { _0 : _pkg, _1 : _name };
    }
    @:keep
    @:tdfield
    static public function _getPkg( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _pkgpath:stdgo.GoString, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L191"
        if (_pkgpath == (("unsafe" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L192"
            return stdgo._internal.go.types.Types_unsafe.unsafe;
        };
        var _pkg = ((@:checkr _p ?? throw "null pointer dereference")._imports[_pkgpath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L195"
        if ((({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        }) && (_name != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _pkg = stdgo._internal.go.types.Types_newpackage.newPackage(_pkgpath?.__copy__(), _name?.__copy__());
            (@:checkr _p ?? throw "null pointer dereference")._imports[_pkgpath] = _pkg;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L199"
        return _pkg;
    }
    @:keep
    @:tdfield
    static public function _parseQualifiedNameStr( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _unquotedName:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _pkgpath = ("" : stdgo.GoString), _name = ("" : stdgo.GoString);
        var _parts = stdgo._internal.strings.Strings_split.split(_unquotedName?.__copy__(), ("." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L166"
        if (_parts[(0 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
            _parts = (_parts.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L170"
        {
            final __value__ = (_parts.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L172"
                _p._errorf(("malformed qualified name: %q" : stdgo.GoString), stdgo.Go.toInterface(_unquotedName));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _pkgpath = (@:checkr _p ?? throw "null pointer dereference")._pkgpath?.__copy__();
                _name = _parts[(0 : stdgo.GoInt)]?.__copy__();
            } else {
                _pkgpath = stdgo._internal.strings.Strings_join.join((_parts.__slice__((0 : stdgo.GoInt), ((_parts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), ("." : stdgo.GoString))?.__copy__();
                _name = _parts[((_parts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L183"
        return { _0 : _pkgpath, _1 : _name };
    }
    @:keep
    @:tdfield
    static public function _parseUnquotedQualifiedName( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _path = ("" : stdgo.GoString), _name = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L158"
        return _p._parseQualifiedNameStr(_p._parseUnquotedString()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _parseQualifiedName( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _path = ("" : stdgo.GoString), _name = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L154"
        return _p._parseQualifiedNameStr(_p._parseString()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _next( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._tok = (@:checkr _p ?? throw "null pointer dereference")._scanner.scan();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L145"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
            if (__value__ == ((-2 : stdgo.GoInt32)) || __value__ == ((-3 : stdgo.GoInt32)) || __value__ == ((-4 : stdgo.GoInt32)) || __value__ == ((-6 : stdgo.GoInt32)) || __value__ == ((183 : stdgo.GoInt32))) {
                (@:checkr _p ?? throw "null pointer dereference")._lit = (@:checkr _p ?? throw "null pointer dereference")._scanner.tokenText()?.__copy__();
            } else {
                (@:checkr _p ?? throw "null pointer dereference")._lit = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseUnquotedString( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L128"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L129"
            _p._error(stdgo.Go.toInterface(("unexpected EOF" : stdgo.GoString)));
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L132"
        _b.writeString((@:checkr _p ?? throw "null pointer dereference")._scanner.tokenText()?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L135"
        {
            var _ch = ((@:checkr _p ?? throw "null pointer dereference")._scanner.peek() : stdgo.GoInt32);
            while ((((_ch != ((10 : stdgo.GoInt32)) && _ch != ((59 : stdgo.GoInt32)) : Bool) && _ch != ((-1 : stdgo.GoInt32)) : Bool) && (((@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace & (((1i64 : stdgo.GoUInt64) << (_ch : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L136"
                _b.writeRune(_ch);
//"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L137"
                (@:checkr _p ?? throw "null pointer dereference")._scanner.next();
                _ch = (@:checkr _p ?? throw "null pointer dereference")._scanner.peek();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L139"
        _p._next();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L140"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _parseString( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_p._expect((-6 : stdgo.GoInt32))?.__copy__()), _str:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L119"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L120"
            _p._error(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L122"
        return _str?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _expectKeyword( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _keyword:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _lit = (_p._expect((-2 : stdgo.GoInt32))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L112"
        if (_lit != (_keyword)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L113"
            _p._errorf(("expected keyword %s, got %q" : stdgo.GoString), stdgo.Go.toInterface(_keyword), stdgo.Go.toInterface(_lit));
        };
    }
    @:keep
    @:tdfield
    static public function _expectEOL( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L104"
        if ((((@:checkr _p ?? throw "null pointer dereference")._version == ("v1" : stdgo.GoString)) || ((@:checkr _p ?? throw "null pointer dereference")._version == ("v2" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L105"
            _p._expect((59 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L107"
        _p._expect((10 : stdgo.GoInt32));
    }
    @:keep
    @:tdfield
    static public function _expect( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _tok:stdgo.GoInt32):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        var _lit = ((@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L96"
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != (_tok)) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L97"
            _p._errorf(("expected %s, got %s (%s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok)), stdgo.Go.toInterface(stdgo._internal.text.scanner.Scanner_tokenstring.tokenString((@:checkr _p ?? throw "null pointer dereference")._tok)), stdgo.Go.toInterface(_lit));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L99"
        _p._next();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L100"
        return _lit?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _errorf( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L91"
        _p._error(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))));
    }
    @:keep
    @:tdfield
    static public function _error( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _err:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L83"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = stdgo.Go.toInterface(stdgo._internal.errors.Errors_new_.new_(_s?.__copy__()));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L87"
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError((@:checkr _p ?? throw "null pointer dereference")._scanner.pos()?.__copy__(), (stdgo.Go.typeAssert((_err : stdgo.Error)) : stdgo.Error)) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importerror.T_importError)));
    }
    @:keep
    @:tdfield
    static public function _initScanner( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _filename:stdgo.GoString, _src:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L65"
        (@:checkr _p ?? throw "null pointer dereference")._scanner.init(_src);
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").error = function(__0:stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>, _msg:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L66"
            _p._error(stdgo.Go.toInterface(_msg));
        };
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").mode = (92u32 : stdgo.GoUInt);
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").whitespace = (4294967808i64 : stdgo.GoUInt64);
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._scanner ?? throw "null pointer dereference").position.filename = _filename?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L70"
        _p._next();
    }
    @:keep
    @:tdfield
    static public function _init( _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser>, _filename:stdgo.GoString, _src:stdgo._internal.io.Io_reader.Reader, _imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._scanner = (stdgo.Go.setRef(({} : stdgo._internal.text.scanner.Scanner_scanner.Scanner)) : stdgo.Ref<stdgo._internal.text.scanner.Scanner_scanner.Scanner>);
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gccgoimporter/parser.go#L58"
        _p._initScanner(_filename?.__copy__(), _src);
        (@:checkr _p ?? throw "null pointer dereference")._imports = _imports;
        (@:checkr _p ?? throw "null pointer dereference")._aliases = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        (@:checkr _p ?? throw "null pointer dereference")._typeList = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((1 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
    }
}
