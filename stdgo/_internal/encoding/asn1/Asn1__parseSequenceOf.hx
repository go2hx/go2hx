package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _parseSequenceOf(_bytes:stdgo.Slice<stdgo.GoUInt8>, _sliceType:stdgo._internal.reflect.Reflect_Type_.Type_, _elemType:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo.Error; } {
        var _ret = ({} : stdgo._internal.reflect.Reflect_Value.Value), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__getUniversalType._getUniversalType(_elemType), _matchAny:Bool = __tmp__._0, _expectedTag:stdgo.GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("unknown Go type for slice" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
            return { _0 : _ret, _1 : _err };
        };
        var _numElements = (0 : stdgo.GoInt);
        {
            var _offset = (0 : stdgo.GoInt);
            while ((_offset < (_bytes.length) : Bool)) {
                var _t:stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength = ({} : stdgo._internal.encoding.asn1.Asn1_T_tagAndLength.T_tagAndLength);
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseTagAndLength._parseTagAndLength(_bytes, _offset);
                    _t = @:tmpset0 __tmp__._0?.__copy__();
                    _offset = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : _ret, _1 : _err };
                };
                {
                    final __value__ = _t._tag;
                    if (__value__ == ((22 : stdgo.GoInt)) || __value__ == ((27 : stdgo.GoInt)) || __value__ == ((20 : stdgo.GoInt)) || __value__ == ((12 : stdgo.GoInt)) || __value__ == ((18 : stdgo.GoInt)) || __value__ == ((30 : stdgo.GoInt))) {
                        _t._tag = (19 : stdgo.GoInt);
                    } else if (__value__ == ((24 : stdgo.GoInt)) || __value__ == ((23 : stdgo.GoInt))) {
                        _t._tag = (23 : stdgo.GoInt);
                    };
                };
                if ((!_matchAny && (((_t._class != ((0 : stdgo.GoInt)) || _t._isCompound != (_compoundType) : Bool) || (_t._tag != _expectedTag) : Bool)) : Bool)) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("sequence tag mismatch" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError));
                    return { _0 : _ret, _1 : _err };
                };
                if (stdgo._internal.encoding.asn1.Asn1__invalidLength._invalidLength(_offset, _t._length, (_bytes.length))) {
                    _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("truncated sequence" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError));
                    return { _0 : _ret, _1 : _err };
                };
                _offset = (_offset + (_t._length) : stdgo.GoInt);
                _numElements++;
            };
        };
        _ret = stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_sliceType, _numElements, _numElements)?.__copy__();
        var _params = (new stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters() : stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters);
        var _offset = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _numElements : Bool)) {
                {
                    var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseField._parseField(_ret.index(_i).__copy__(), _bytes, _offset, _params.__copy__());
                    _offset = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
if (_err != null) {
                    return { _0 : _ret, _1 : _err };
                };
                _i++;
            };
        };
        return { _0 : _ret, _1 : _err };
    }
