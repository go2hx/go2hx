package stdgo._internal.internal.abi;
function newName(_n:stdgo.GoString, _tag:stdgo.GoString, _exported:Bool, _embedded:Bool):stdgo._internal.internal.abi.Abi_name.Name {
        if (((_n.length) >= (536870912 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("abi.NewName: name too long: " : stdgo.GoString) + (_n.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        if (((_tag.length) >= (536870912 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(((("abi.NewName: tag too long: " : stdgo.GoString) + (_tag.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString));
        };
        var _nameLen:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _tagLen:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _nameLenLen = (stdgo._internal.internal.abi.Abi__writevarint._writeVarint((_nameLen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_n.length)) : stdgo.GoInt);
        var _tagLenLen = (stdgo._internal.internal.abi.Abi__writevarint._writeVarint((_tagLen.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_tag.length)) : stdgo.GoInt);
        var _bits:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _l = (((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt) + (_n.length) : stdgo.GoInt);
        if (_exported) {
            _bits = (_bits | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (((_tag.length) > (0 : stdgo.GoInt) : Bool)) {
            _l = (_l + ((_tagLenLen + (_tag.length) : stdgo.GoInt)) : stdgo.GoInt);
            _bits = (_bits | ((2 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        if (_embedded) {
            _bits = (_bits | ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b[(0 : stdgo.GoInt)] = _bits;
        (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_nameLen.__slice__(0, _nameLenLen) : stdgo.Slice<stdgo.GoUInt8>));
        (_b.__slice__(((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_n);
        if (((_tag.length) > (0 : stdgo.GoInt) : Bool)) {
            var _tb = (_b.__slice__((((1 : stdgo.GoInt) + _nameLenLen : stdgo.GoInt) + (_n.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _tb.__copyTo__((_tagLen.__slice__(0, _tagLenLen) : stdgo.Slice<stdgo.GoUInt8>));
            (_tb.__slice__(_tagLenLen) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_tag);
        };
        return ({ bytes : stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) } : stdgo._internal.internal.abi.Abi_name.Name);
    }
