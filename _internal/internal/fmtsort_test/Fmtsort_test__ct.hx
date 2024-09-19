package _internal.internal.fmtsort_test;
function _ct(_typ:stdgo._internal.reflect.Reflect_Type_.Type_, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var _value = (new stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>((_args.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_args.length : stdgo.GoInt).toBasic() > 0 ? (_args.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_Value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        for (_i => _v in _args) {
            var _x = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (!_x.isValid()) {
                _x = stdgo._internal.reflect.Reflect_zero.zero(_typ)?.__copy__();
            } else {
                _x = _x.convert(_typ)?.__copy__();
            };
            _value[(_i : stdgo.GoInt)] = _x?.__copy__();
        };
        return _value;
    }
