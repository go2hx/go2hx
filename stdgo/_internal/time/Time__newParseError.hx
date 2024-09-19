package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _newParseError(_layout:stdgo.GoString, _value:stdgo.GoString, _layoutElem:stdgo.GoString, _valueElem:stdgo.GoString, _message:stdgo.GoString):stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError> {
        var _valueCopy = (stdgo._internal.time.Time__cloneString._cloneString(_value?.__copy__())?.__copy__() : stdgo.GoString);
        var _valueElemCopy = (stdgo._internal.time.Time__cloneString._cloneString(_valueElem?.__copy__())?.__copy__() : stdgo.GoString);
        return (stdgo.Go.setRef((new stdgo._internal.time.Time_ParseError.ParseError(_layout?.__copy__(), _valueCopy?.__copy__(), _layoutElem?.__copy__(), _valueElemCopy?.__copy__(), _message?.__copy__()) : stdgo._internal.time.Time_ParseError.ParseError)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>);
    }
