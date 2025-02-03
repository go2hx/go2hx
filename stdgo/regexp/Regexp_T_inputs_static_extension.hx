package stdgo.regexp;
class T_inputs_static_extension {
    static public function _init(_i:T_inputs, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String):stdgo.Tuple<T_input, StdTypes.Int> {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._init(_i, _r, _b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _clear(_i:T_inputs):Void {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>);
        stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._clear(_i);
    }
    static public function _newReader(_i:T_inputs, _r:stdgo._internal.io.Io_RuneReader.RuneReader):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>);
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newReader(_i, _r);
    }
    static public function _newString(_i:T_inputs, _s:String):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newString(_i, _s);
    }
    static public function _newBytes(_i:T_inputs, _b:Array<std.UInt>):T_input {
        final _i = (_i : stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputs.T_inputs>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_T_inputs_static_extension.T_inputs_static_extension._newBytes(_i, _b);
    }
}
