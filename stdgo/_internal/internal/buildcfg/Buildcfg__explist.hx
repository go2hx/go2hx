package stdgo._internal.internal.buildcfg;
function _expList(_exp:stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags>, _base:stdgo.Ref<stdgo._internal.internal.goexperiment.Goexperiment_flags.Flags>, _all:Bool):stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_exp))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _rBase:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        if (({
            final value = _base;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _rBase = stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_base))).elem()?.__copy__();
        };
        var _rt = (_rv.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _rt.numField() : Bool)) {
                var _name = (stdgo._internal.strings.Strings_tolower.toLower(_rt.field(_i).name.__copy__()).__copy__() : stdgo.GoString);
var _val = (_rv.field(_i).bool_() : Bool);
var _baseVal = (false : Bool);
if (({
                    final value = _base;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _baseVal = _rBase.field(_i).bool_();
                };
if ((_all || (_val != _baseVal) : Bool)) {
                    if (_val) {
                        _list = (_list.__append__(_name.__copy__()) : stdgo.Slice<stdgo.GoString>);
                    } else {
                        _list = (_list.__append__((("no" : stdgo.GoString) + _name.__copy__() : stdgo.GoString).__copy__()) : stdgo.Slice<stdgo.GoString>);
                    };
                };
                _i++;
            };
        };
        return _list;
    }
