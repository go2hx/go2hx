package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function _sizeof( _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = _conf;
        var _f = (stdgo._internal.go.types.Types__stdsizes._stdSizes.sizeof : stdgo._internal.go.types.Types_type_.Type_ -> stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L333"
        if ((@:checkr _conf ?? throw "null pointer dereference").sizes != null) {
            _f = (@:checkr _conf ?? throw "null pointer dereference").sizes.sizeof;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L336"
        return _f(t);
    }
    @:keep
    @:tdfield
    static public function _offsetof( _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, t:stdgo._internal.go.types.Types_type_.Type_, _index:stdgo.Slice<stdgo.GoInt>):stdgo.GoInt64 {
        @:recv var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = _conf;
        var _offs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L314"
        for (__0 => _i in _index) {
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(t)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
            var _d = (_conf._offsetsof(_s)[(_i : stdgo.GoInt)] : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L317"
            if ((_d < (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L318"
                return (-1i64 : stdgo.GoInt64);
            };
            _offs = (_offs + (_d) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L321"
            if ((_offs < (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L322"
                return (-1i64 : stdgo.GoInt64);
            };
            t = (@:checkr (@:checkr _s ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._object._typ;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L326"
        return _offs;
    }
    @:keep
    @:tdfield
    static public function _offsetsof( _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>):stdgo.Slice<stdgo.GoInt64> {
        @:recv var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = _conf;
        var _offsets:stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L292"
        if ((t.numFields() > (0 : stdgo.GoInt) : Bool)) {
            var _f = stdgo._internal.go.types.Types__stdsizes._stdSizes.offsetsof;
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L295"
            if ((@:checkr _conf ?? throw "null pointer dereference").sizes != null) {
                _f = (@:checkr _conf ?? throw "null pointer dereference").sizes.offsetsof;
            };
            _offsets = _f((@:checkr t ?? throw "null pointer dereference")._fields);
            //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L300"
            if ((_offsets.length) != (t.numFields())) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L301"
                throw stdgo.Go.toInterface(("implementation of offsetsof returned the wrong number of offsets" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L304"
        return _offsets;
    }
    @:keep
    @:tdfield
    static public function _alignof( _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = _conf;
        var _f = (stdgo._internal.go.types.Types__stdsizes._stdSizes.alignof_ : stdgo._internal.go.types.Types_type_.Type_ -> stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L281"
        if ((@:checkr _conf ?? throw "null pointer dereference").sizes != null) {
            _f = (@:checkr _conf ?? throw "null pointer dereference").sizes.alignof_;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L284"
        {
            var _a = (_f(t) : stdgo.GoInt64);
            if ((_a >= (1i64 : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L285"
                return _a;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/sizes.go#L287"
        throw stdgo.Go.toInterface(("implementation of alignof returned an alignment < 1" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function check( _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, _path:stdgo.GoString, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config> = _conf;
        var _pkg = stdgo._internal.go.types.Types_newpackage.newPackage(_path?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/types/api.go#L425"
        return { _0 : _pkg, _1 : stdgo._internal.go.types.Types_newchecker.newChecker(_conf, _fset, _pkg, _info).files(_files) };
    }
}
