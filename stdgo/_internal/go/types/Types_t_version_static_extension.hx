package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_version_asInterface) class T_version_static_extension {
    @:keep
    @:tdfield
    static public function _after( _v:stdgo._internal.go.types.Types_t_version.T_version, _u:stdgo._internal.go.types.Types_t_version.T_version):Bool {
        @:recv var _v:stdgo._internal.go.types.Types_t_version.T_version = _v?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L32"
        return ((_v._major > _u._major : Bool) || (_v._major == (_u._major) && (_v._minor > _u._minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _before( _v:stdgo._internal.go.types.Types_t_version.T_version, _u:stdgo._internal.go.types.Types_t_version.T_version):Bool {
        @:recv var _v:stdgo._internal.go.types.Types_t_version.T_version = _v?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L28"
        return ((_v._major < _u._major : Bool) || (_v._major == (_u._major) && (_v._minor < _u._minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function _equal( _v:stdgo._internal.go.types.Types_t_version.T_version, _u:stdgo._internal.go.types.Types_t_version.T_version):Bool {
        @:recv var _v:stdgo._internal.go.types.Types_t_version.T_version = _v?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L24"
        return ((_v._major == _u._major) && (_v._minor == _u._minor) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo._internal.go.types.Types_t_version.T_version):stdgo.GoString {
        @:recv var _v:stdgo._internal.go.types.Types_t_version.T_version = _v?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/types/version.go#L20"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("go%d.%d" : stdgo.GoString), stdgo.Go.toInterface(_v._major), stdgo.Go.toInterface(_v._minor))?.__copy__();
    }
}
