package stdgo._internal.go.build;
@:structInit @:using(stdgo._internal.go.build.Build_t_fileembed_static_extension.T_fileEmbed_static_extension) class T_fileEmbed {
    public var _pattern : stdgo.GoString = "";
    public var _pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public function new(?_pattern:stdgo.GoString, ?_pos:stdgo._internal.go.token.Token_position.Position) {
        if (_pattern != null) this._pattern = _pattern;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileEmbed(_pattern, _pos);
    }
}
