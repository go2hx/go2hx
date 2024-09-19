package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputReader_asInterface) class T_inputReader_static_extension {
    @:keep
    static public function _context( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader> = _i;
        return (0i64 : stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag);
    }
    @:keep
    static public function _index( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader> = _i;
        return (-1 : stdgo.GoInt);
    }
    @:keep
    static public function _hasPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader> = _i;
        return false;
    }
    @:keep
    static public function _canCheckPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader> = _i;
        return false;
    }
    @:keep
    static public function _step( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputReader.T_inputReader> = _i;
        if ((!_i._atEOT && (_pos != _i._pos) : Bool)) {
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var __tmp__ = _i._r.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _i._atEOT = true;
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        _i._pos = (_i._pos + (_w) : stdgo.GoInt);
        return { _0 : _r, _1 : _w };
    }
}
