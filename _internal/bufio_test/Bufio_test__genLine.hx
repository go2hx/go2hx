package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function _genLine(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _lineNum:stdgo.GoInt, _n:stdgo.GoInt, _addNewline:Bool):Void {
        _buf.reset();
        var _doCR = ((_lineNum % (5 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt)) : Bool);
        if (_doCR) {
            _n--;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                var _c = ((97 : stdgo.GoUInt8) + ((_lineNum + _i : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
                if (((_c == (10 : stdgo.GoUInt8)) || (_c == (13 : stdgo.GoUInt8)) : Bool)) {
                    _c = (78 : stdgo.GoUInt8);
                };
                _buf.writeByte(_c);
            });
        };
        if (_addNewline) {
            if (_doCR) {
                _buf.writeByte((13 : stdgo.GoUInt8));
            };
            _buf.writeByte((10 : stdgo.GoUInt8));
        };
    }
