package stdgo._internal.regexp.syntax;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_frag_static_extension.T_frag_static_extension) class T_frag {
    public var _i : stdgo.GoUInt32 = 0;
    public var _out : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList = ({} : stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList);
    public var _nullable : Bool = false;
    public function new(?_i:stdgo.GoUInt32, ?_out:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList, ?_nullable:Bool) {
        if (_i != null) this._i = _i;
        if (_out != null) this._out = _out;
        if (_nullable != null) this._nullable = _nullable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_frag(_i, _out, _nullable);
    }
}
