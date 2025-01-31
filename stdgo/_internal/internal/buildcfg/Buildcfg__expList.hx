package stdgo._internal.internal.buildcfg;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
function _expList(_exp:stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>, _base:stdgo.Ref<_internal.internal.goexperiment.Goexperiment_Flags.Flags>, _all:Bool):stdgo.Slice<stdgo.GoString> {
        var _list:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_exp))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _rBase:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        if ((_base != null && ((_base : Dynamic).__nil__ == null || !(_base : Dynamic).__nil__))) {
            _rBase = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_base))).elem()?.__copy__();
        };
        var _rt = (_rv.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _rt.numField() : Bool)) {
                var _name = (stdgo._internal.strings.Strings_toLower.toLower(_rt.field(_i).name.__copy__()).__copy__() : stdgo.GoString);
var _val = (_rv.field(_i).bool_() : Bool);
var _baseVal = (false : Bool);
if ((_base != null && ((_base : Dynamic).__nil__ == null || !(_base : Dynamic).__nil__))) {
                    _baseVal = _rBase.field(_i).bool_();
                };
if ((_all || (_val != _baseVal) : Bool)) {
                    if (_val) {
                        _list = (_list.__append__(_name.__copy__()));
                    } else {
                        _list = (_list.__append__((("no" : stdgo.GoString) + _name.__copy__() : stdgo.GoString).__copy__()));
                    };
                };
                _i++;
            };
        };
        return _list;
    }
