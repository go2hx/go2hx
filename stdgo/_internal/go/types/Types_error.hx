package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_error_static_extension.Error_static_extension) class Error {
    public var fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var msg : stdgo.GoString = "";
    public var soft : Bool = false;
    public var _go116code : stdgo._internal.internal.types.errors.Errors_code.Code = ((0 : stdgo.GoInt) : stdgo._internal.internal.types.errors.Errors_code.Code);
    public var _go116start : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _go116end : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?pos:stdgo._internal.go.token.Token_pos.Pos, ?msg:stdgo.GoString, ?soft:Bool, ?_go116code:stdgo._internal.internal.types.errors.Errors_code.Code, ?_go116start:stdgo._internal.go.token.Token_pos.Pos, ?_go116end:stdgo._internal.go.token.Token_pos.Pos) {
        if (fset != null) this.fset = fset;
        if (pos != null) this.pos = pos;
        if (msg != null) this.msg = msg;
        if (soft != null) this.soft = soft;
        if (_go116code != null) this._go116code = _go116code;
        if (_go116start != null) this._go116start = _go116start;
        if (_go116end != null) this._go116end = _go116end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(fset, pos, msg, soft, _go116code, _go116start, _go116end);
    }
}
