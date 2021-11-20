package stdgo.vendor.golang_org.x.net.dns.dnsmessage;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef ResourceBody = StructType & {
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; };
    public function _realType():Type;
    public function goString():GoString;
};
@:named class Type {
    public function goString():GoString {
        var _t = this.__copy__();
        {
            var __tmp__ = _typeNames.exists(_t) ? { value : _typeNames[_t], ok : true } : { value : _typeNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return (("dnsmessage." : GoString)) + _n;
            };
        };
        return _printUint16(_t.__t__);
    }
    public function toString():GoString {
        var _t = this.__copy__();
        {
            var __tmp__ = _typeNames.exists(_t) ? { value : _typeNames[_t], ok : true } : { value : _typeNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _n;
            };
        };
        return _printUint16(_t.__t__);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Type(__t__);
}
@:named class Class_ {
    public function goString():GoString {
        var _c = this.__copy__();
        {
            var __tmp__ = _classNames.exists(_c) ? { value : _classNames[_c], ok : true } : { value : _classNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return (("dnsmessage." : GoString)) + _n;
            };
        };
        return _printUint16(_c.__t__);
    }
    public function toString():GoString {
        var _c = this.__copy__();
        {
            var __tmp__ = _classNames.exists(_c) ? { value : _classNames[_c], ok : true } : { value : _classNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _n;
            };
        };
        return _printUint16(_c.__t__);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Class_(__t__);
}
@:named class OpCode {
    public function goString():GoString {
        var _o = this.__copy__();
        return _printUint16(_o.__t__);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new OpCode(__t__);
}
@:named class RCode {
    public function goString():GoString {
        var _r = this.__copy__();
        {
            var __tmp__ = _rCodeNames.exists(_r) ? { value : _rCodeNames[_r], ok : true } : { value : _rCodeNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return (("dnsmessage." : GoString)) + _n;
            };
        };
        return _printUint16(_r.__t__);
    }
    public function toString():GoString {
        var _r = this.__copy__();
        {
            var __tmp__ = _rCodeNames.exists(_r) ? { value : _rCodeNames[_r], ok : true } : { value : _rCodeNames.defaultValue(), ok : false }, _n:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _n;
            };
        };
        return _printUint16(_r.__t__);
    }
    public var __t__ : GoUInt16;
    public function new(?t:GoUInt16) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new RCode(__t__);
}
@:structInit class T_nestedError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _e.value._s + ((": " : GoString)) + _e.value._err.error();
    }
    public var _s : GoString = (("" : GoString));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_s:GoString, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_s) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nestedError(_s, _err);
    }
    public function __set__(__tmp__) {
        this._s = __tmp__._s;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class Header {
    public function goString():GoString {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.Header{" : GoString)) + (("ID: " : GoString)) + _printUint16(_m.value.id) + ((", " : GoString)) + (("Response: " : GoString)) + _printBool(_m.value.response) + ((", " : GoString)) + (("OpCode: " : GoString)) + _m.value.opCode.goString() + ((", " : GoString)) + (("Authoritative: " : GoString)) + _printBool(_m.value.authoritative) + ((", " : GoString)) + (("Truncated: " : GoString)) + _printBool(_m.value.truncated) + ((", " : GoString)) + (("RecursionDesired: " : GoString)) + _printBool(_m.value.recursionDesired) + ((", " : GoString)) + (("RecursionAvailable: " : GoString)) + _printBool(_m.value.recursionAvailable) + ((", " : GoString)) + (("RCode: " : GoString)) + _m.value.rcode.goString() + (("}" : GoString));
    }
    public function _pack():{ var _0 : GoUInt16; var _1 : GoUInt16; } {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _id:GoUInt16 = ((0 : GoUInt16)), _bits:GoUInt16 = ((0 : GoUInt16));
        _id = _m.value.id;
        _bits = (_m.value.opCode.__t__ << ((11 : GoUnTypedInt))) | _m.value.rcode.__t__;
        if (_m.value.recursionAvailable) {
            _bits = _bits | (_headerBitRA);
        };
        if (_m.value.recursionDesired) {
            _bits = _bits | (_headerBitRD);
        };
        if (_m.value.truncated) {
            _bits = _bits | (_headerBitTC);
        };
        if (_m.value.authoritative) {
            _bits = _bits | (_headerBitAA);
        };
        if (_m.value.response) {
            _bits = _bits | (_headerBitQR);
        };
        return { _0 : _id, _1 : _bits };
    }
    public var id : GoUInt16 = ((0 : GoUInt16));
    public var response : Bool = false;
    public var opCode : OpCode = new OpCode();
    public var authoritative : Bool = false;
    public var truncated : Bool = false;
    public var recursionDesired : Bool = false;
    public var recursionAvailable : Bool = false;
    public var rcode : RCode = new RCode();
    public function new(?id:GoUInt16, ?response:Bool, ?opCode:OpCode, ?authoritative:Bool, ?truncated:Bool, ?recursionDesired:Bool, ?recursionAvailable:Bool, ?rcode:RCode) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(response) + " " + Go.string(opCode) + " " + Go.string(authoritative) + " " + Go.string(truncated) + " " + Go.string(recursionDesired) + " " + Go.string(recursionAvailable) + " " + Go.string(rcode) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Header(id, response, opCode, authoritative, truncated, recursionDesired, recursionAvailable, rcode);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.response = __tmp__.response;
        this.opCode = __tmp__.opCode;
        this.authoritative = __tmp__.authoritative;
        this.truncated = __tmp__.truncated;
        this.recursionDesired = __tmp__.recursionDesired;
        this.recursionAvailable = __tmp__.recursionAvailable;
        this.rcode = __tmp__.rcode;
        return this;
    }
}
@:structInit class Message {
    public function goString():GoString {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = (("dnsmessage.Message{Header: " : GoString)) + _m.value.header.goString() + ((", " : GoString)) + (("Questions: []dnsmessage.Question{" : GoString));
        if (_m.value.questions.length > ((0 : GoInt))) {
            _s = _s + (_m.value.questions[((0 : GoInt))].goString());
            for (_q in _m.value.questions.__slice__(((1 : GoInt)))) {
                _s = _s + (((", " : GoString)) + _q.goString());
            };
        };
        _s = _s + ("}, Answers: []dnsmessage.Resource{");
        if (_m.value.answers.length > ((0 : GoInt))) {
            _s = _s + (_m.value.answers[((0 : GoInt))].goString());
            for (_a in _m.value.answers.__slice__(((1 : GoInt)))) {
                _s = _s + (((", " : GoString)) + _a.goString());
            };
        };
        _s = _s + ("}, Authorities: []dnsmessage.Resource{");
        if (_m.value.authorities.length > ((0 : GoInt))) {
            _s = _s + (_m.value.authorities[((0 : GoInt))].goString());
            for (_a in _m.value.authorities.__slice__(((1 : GoInt)))) {
                _s = _s + (((", " : GoString)) + _a.goString());
            };
        };
        _s = _s + ("}, Additionals: []dnsmessage.Resource{");
        if (_m.value.additionals.length > ((0 : GoInt))) {
            _s = _s + (_m.value.additionals[((0 : GoInt))].goString());
            for (_a in _m.value.additionals.__slice__(((1 : GoInt)))) {
                _s = _s + (((", " : GoString)) + _a.goString());
            };
        };
        return _s + (("}}" : GoString));
    }
    public function appendPack(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_m.value.questions.length > (((-1 ^ ((((0 : GoUInt16)) : GoUInt16))) : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errTooManyQuestions };
        };
        if (_m.value.answers.length > (((-1 ^ ((((0 : GoUInt16)) : GoUInt16))) : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errTooManyAnswers };
        };
        if (_m.value.authorities.length > (((-1 ^ ((((0 : GoUInt16)) : GoUInt16))) : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errTooManyAuthorities };
        };
        if (_m.value.additionals.length > (((-1 ^ ((((0 : GoUInt16)) : GoUInt16))) : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errTooManyAdditionals };
        };
        var _h:T_header = new T_header();
        {
            var __tmp__ = _m.value.header._pack();
            _h._id = __tmp__._0;
            _h._bits = __tmp__._1;
        };
        _h._questions = ((_m.value.questions.length : GoUInt16));
        _h._answers = ((_m.value.answers.length : GoUInt16));
        _h._authorities = ((_m.value.authorities.length : GoUInt16));
        _h._additionals = ((_m.value.additionals.length : GoUInt16));
        var _compressionOff:GoInt = _b.length;
        var _msg:Slice<GoUInt8> = _h._pack(_b);
        var _compression:GoMap<GoString, GoInt> = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind))));
        {
            var _i;
            for (_obj in _m.value.questions.keyValueIterator()) {
                _i = _obj.key;
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _m.value.questions[_i]._pack(_msg, _compression, _compressionOff);
                        _msg = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer(new T_nestedError("packing Question", _err)).value };
                    };
                };
            };
        };
        {
            var _i;
            for (_obj in _m.value.answers.keyValueIterator()) {
                _i = _obj.key;
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _m.value.answers[_i]._pack(_msg, _compression, _compressionOff);
                        _msg = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer(new T_nestedError("packing Answer", _err)).value };
                    };
                };
            };
        };
        {
            var _i;
            for (_obj in _m.value.authorities.keyValueIterator()) {
                _i = _obj.key;
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _m.value.authorities[_i]._pack(_msg, _compression, _compressionOff);
                        _msg = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer(new T_nestedError("packing Authority", _err)).value };
                    };
                };
            };
        };
        {
            var _i;
            for (_obj in _m.value.additionals.keyValueIterator()) {
                _i = _obj.key;
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _m.value.additionals[_i]._pack(_msg, _compression, _compressionOff);
                        _msg = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer(new T_nestedError("packing Additional", _err)).value };
                    };
                };
            };
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function pack():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _m.value.appendPack(new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_packStartingCap : GoInt)).toBasic()));
    }
    public function unpack(_msg:Slice<GoByte>):Error {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Parser = new Parser();
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _p.start(_msg);
                _m.value.header = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allQuestions();
                _m.value.questions = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAnswers();
                _m.value.answers = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAuthorities();
                _m.value.authorities = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        {
            {
                var __tmp__ = _p.allAdditionals();
                _m.value.additionals = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
    @:embedded
    public var header : Header = new Header();
    public var questions : Slice<Question> = new Slice<Question>().nil();
    public var answers : Slice<Resource> = new Slice<Resource>().nil();
    public var authorities : Slice<Resource> = new Slice<Resource>().nil();
    public var additionals : Slice<Resource> = new Slice<Resource>().nil();
    public function new(?header:Header, ?questions:Slice<Question>, ?answers:Slice<Resource>, ?authorities:Slice<Resource>, ?additionals:Slice<Resource>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(header) + " " + Go.string(questions) + " " + Go.string(answers) + " " + Go.string(authorities) + " " + Go.string(additionals) + "}";
    }
    public function _pack():{ var _0 : GoUInt16; var _1 : GoUInt16; } return header._pack();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Message(header, questions, answers, authorities, additionals);
    }
    public function __set__(__tmp__) {
        this.header = __tmp__.header;
        this.questions = __tmp__.questions;
        this.answers = __tmp__.answers;
        this.authorities = __tmp__.authorities;
        this.additionals = __tmp__.additionals;
        return this;
    }
}
@:named class T_section {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_section(__t__);
}
@:structInit class T_header {
    public function _header():Header {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (({ id : _h.value._id, response : (_h.value._bits & _headerBitQR) != ((0 : GoUInt16)), opCode : new OpCode(new OpCode((_h.value._bits >> ((11 : GoUnTypedInt)))).__t__ & ((15 : GoUInt16))), authoritative : (_h.value._bits & _headerBitAA) != ((0 : GoUInt16)), truncated : (_h.value._bits & _headerBitTC) != ((0 : GoUInt16)), recursionDesired : (_h.value._bits & _headerBitRD) != ((0 : GoUInt16)), recursionAvailable : (_h.value._bits & _headerBitRA) != ((0 : GoUInt16)), rcode : new RCode((_h.value._bits & ((15 : GoUInt16)))) } : Header)).__copy__();
    }
    public function _unpack(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _newOff:GoInt = _off;
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._id = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("id", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._bits = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("bits", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._questions = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("questions", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._answers = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("answers", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._authorities = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("authorities", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value._additionals = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("additionals", _err)).value };
            };
        };
        return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
    }
    public function _pack(_msg:Slice<GoByte>):Slice<GoByte> {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _msg = _packUint16(_msg, _h.value._id);
        _msg = _packUint16(_msg, _h.value._bits);
        _msg = _packUint16(_msg, _h.value._questions);
        _msg = _packUint16(_msg, _h.value._answers);
        _msg = _packUint16(_msg, _h.value._authorities);
        return _packUint16(_msg, _h.value._additionals);
    }
    public function _count(_sec:T_section):GoUInt16 {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_sec.__t__ == _sectionQuestions.__t__) {
            return _h.value._questions;
        } else if (_sec.__t__ == _sectionAnswers.__t__) {
            return _h.value._answers;
        } else if (_sec.__t__ == _sectionAuthorities.__t__) {
            return _h.value._authorities;
        } else if (_sec.__t__ == _sectionAdditionals.__t__) {
            return _h.value._additionals;
        };
        return ((0 : GoUInt16));
    }
    public var _id : GoUInt16 = ((0 : GoUInt16));
    public var _bits : GoUInt16 = ((0 : GoUInt16));
    public var _questions : GoUInt16 = ((0 : GoUInt16));
    public var _answers : GoUInt16 = ((0 : GoUInt16));
    public var _authorities : GoUInt16 = ((0 : GoUInt16));
    public var _additionals : GoUInt16 = ((0 : GoUInt16));
    public function new(?_id:GoUInt16, ?_bits:GoUInt16, ?_questions:GoUInt16, ?_answers:GoUInt16, ?_authorities:GoUInt16, ?_additionals:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_id) + " " + Go.string(_bits) + " " + Go.string(_questions) + " " + Go.string(_answers) + " " + Go.string(_authorities) + " " + Go.string(_additionals) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_header(_id, _bits, _questions, _answers, _authorities, _additionals);
    }
    public function __set__(__tmp__) {
        this._id = __tmp__._id;
        this._bits = __tmp__._bits;
        this._questions = __tmp__._questions;
        this._answers = __tmp__._answers;
        this._authorities = __tmp__._authorities;
        this._additionals = __tmp__._additionals;
        return this;
    }
}
@:structInit class Resource {
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value.body == null) {
            return { _0 : _msg, _1 : _errNilResouceBody };
        };
        var _oldMsg:Slice<GoUInt8> = _msg;
        _r.value.header.type = _r.value.body._realType();
        var __tmp__ = _r.value.header._pack(_msg, _compression, _compressionOff), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _msg, _1 : Go.pointer(new T_nestedError("ResourceHeader", _err)).value };
        };
        var _preLen:GoInt = _msg.length;
        {
            var __tmp__ = _r.value.body._pack(_msg, _compression, _compressionOff);
            _msg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _msg, _1 : Go.pointer(new T_nestedError("content", _err)).value };
        };
        {
            var _err:stdgo.Error = _r.value.header._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return { _0 : _oldMsg, _1 : _err };
            };
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.Resource{" : GoString)) + (("Header: " : GoString)) + _r.value.header.goString() + ((", Body: &" : GoString)) + _r.value.body.goString() + (("}" : GoString));
    }
    public var header : ResourceHeader = new ResourceHeader();
    public var body : ResourceBody = ((null : ResourceBody));
    public function new(?header:ResourceHeader, ?body:ResourceBody) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(header) + " " + Go.string(body) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Resource(header, body);
    }
    public function __set__(__tmp__) {
        this.header = __tmp__.header;
        this.body = __tmp__.body;
        return this;
    }
}
@:structInit class Parser {
    public function unknownResource():{ var _0 : UnknownResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid) {
            return { _0 : new UnknownResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackUnknownResource(_p.value._resHeader.type, _p.value._msg, _p.value._off, _p.value._resHeader.length), _r:UnknownResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new UnknownResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function optresource():{ var _0 : OPTResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeOPT.__t__) {
            return { _0 : new OPTResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackOPTResource(_p.value._msg, _p.value._off, _p.value._resHeader.length), _r:OPTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new OPTResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function aaaaresource():{ var _0 : AAAAResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeAAAA.__t__) {
            return { _0 : new AAAAResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackAAAAResource(_p.value._msg, _p.value._off), _r:AAAAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new AAAAResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function aresource():{ var _0 : AResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeA.__t__) {
            return { _0 : new AResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackAResource(_p.value._msg, _p.value._off), _r:AResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new AResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function srvresource():{ var _0 : SRVResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeSRV.__t__) {
            return { _0 : new SRVResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackSRVResource(_p.value._msg, _p.value._off), _r:SRVResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new SRVResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function txtresource():{ var _0 : TXTResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeTXT.__t__) {
            return { _0 : new TXTResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackTXTResource(_p.value._msg, _p.value._off, _p.value._resHeader.length), _r:TXTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new TXTResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function soaresource():{ var _0 : SOAResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeSOA.__t__) {
            return { _0 : new SOAResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackSOAResource(_p.value._msg, _p.value._off), _r:SOAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function ptrresource():{ var _0 : PTRResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typePTR.__t__) {
            return { _0 : new PTRResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackPTRResource(_p.value._msg, _p.value._off), _r:PTRResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new PTRResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function nsresource():{ var _0 : NSResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeNS.__t__) {
            return { _0 : new NSResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackNSResource(_p.value._msg, _p.value._off), _r:NSResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new NSResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function mxresource():{ var _0 : MXResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeMX.__t__) {
            return { _0 : new MXResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackMXResource(_p.value._msg, _p.value._off), _r:MXResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new MXResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function cnameresource():{ var _0 : CNAMEResource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._resHeaderValid || _p.value._resHeader.type.__t__ != typeCNAME.__t__) {
            return { _0 : new CNAMEResource().__copy__(), _1 : errNotStarted };
        };
        var __tmp__ = _unpackCNAMEResource(_p.value._msg, _p.value._off), _r:CNAMEResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new CNAMEResource().__copy__(), _1 : _err };
        };
        _p.value._off = _p.value._off + (((_p.value._resHeader.length : GoInt)));
        _p.value._resHeaderValid = false;
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function skipAllAdditionals():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            {
                var _err:stdgo.Error = _p.value.skipAdditional();
                if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                    return ((null : stdgo.Error));
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    public function skipAdditional():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._skipResource(_sectionAdditionals);
    }
    public function allAdditionals():{ var _0 : Slice<Resource>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_p.value._header._additionals : GoInt));
        if (_n > ((10 : GoInt))) {
            _n = ((10 : GoInt));
        };
        var _as:Slice<Resource> = new Slice<Resource>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Resource()]).setCap(((_n : GoInt)).toBasic());
        while (true) {
            var __tmp__ = _p.value.additional(), _a:Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                return { _0 : _as, _1 : ((null : stdgo.Error)) };
            };
            if (_err != null) {
                return { _0 : new Slice<Resource>().nil(), _1 : _err };
            };
            _as = _as.__append__(_a.__copy__());
        };
    }
    public function additional():{ var _0 : Resource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resource(_sectionAdditionals);
    }
    public function additionalHeader():{ var _0 : ResourceHeader; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resourceHeader(_sectionAdditionals);
    }
    public function skipAllAuthorities():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            {
                var _err:stdgo.Error = _p.value.skipAuthority();
                if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                    return ((null : stdgo.Error));
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    public function skipAuthority():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._skipResource(_sectionAuthorities);
    }
    public function allAuthorities():{ var _0 : Slice<Resource>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_p.value._header._authorities : GoInt));
        if (_n > ((10 : GoInt))) {
            _n = ((10 : GoInt));
        };
        var _as:Slice<Resource> = new Slice<Resource>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Resource()]).setCap(((_n : GoInt)).toBasic());
        while (true) {
            var __tmp__ = _p.value.authority(), _a:Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                return { _0 : _as, _1 : ((null : stdgo.Error)) };
            };
            if (_err != null) {
                return { _0 : new Slice<Resource>().nil(), _1 : _err };
            };
            _as = _as.__append__(_a.__copy__());
        };
    }
    public function authority():{ var _0 : Resource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resource(_sectionAuthorities);
    }
    public function authorityHeader():{ var _0 : ResourceHeader; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resourceHeader(_sectionAuthorities);
    }
    public function skipAllAnswers():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            {
                var _err:stdgo.Error = _p.value.skipAnswer();
                if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                    return ((null : stdgo.Error));
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    public function skipAnswer():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._skipResource(_sectionAnswers);
    }
    public function allAnswers():{ var _0 : Slice<Resource>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((_p.value._header._answers : GoInt));
        if (_n > ((20 : GoInt))) {
            _n = ((20 : GoInt));
        };
        var _as:Slice<Resource> = new Slice<Resource>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Resource()]).setCap(((_n : GoInt)).toBasic());
        while (true) {
            var __tmp__ = _p.value.answer(), _a:Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                return { _0 : _as, _1 : ((null : stdgo.Error)) };
            };
            if (_err != null) {
                return { _0 : new Slice<Resource>().nil(), _1 : _err };
            };
            _as = _as.__append__(_a.__copy__());
        };
    }
    public function answer():{ var _0 : Resource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resource(_sectionAnswers);
    }
    public function answerHeader():{ var _0 : ResourceHeader; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._resourceHeader(_sectionAnswers);
    }
    public function skipAllQuestions():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            {
                var _err:stdgo.Error = _p.value.skipQuestion();
                if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                    return ((null : stdgo.Error));
                } else if (_err != null) {
                    return _err;
                };
            };
        };
    }
    public function skipQuestion():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _p.value._checkAdvance(_sectionQuestions);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _skipName(_p.value._msg, _p.value._off), _off:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return Go.pointer(new T_nestedError("skipping Question Name", _err)).value;
        };
        {
            {
                var __tmp__ = _skipType(_p.value._msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("skipping Question Type", _err)).value;
            };
        };
        {
            {
                var __tmp__ = _skipClass(_p.value._msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("skipping Question Class", _err)).value;
            };
        };
        _p.value._off = _off;
        _p.value._index++;
        return ((null : stdgo.Error));
    }
    public function allQuestions():{ var _0 : Slice<Question>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _qs:Slice<Question> = new Slice<Question>();
        while (true) {
            var __tmp__ = _p.value.question(), _q:Question = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (Go.toInterface(_err) == Go.toInterface(errSectionDone)) {
                return { _0 : _qs, _1 : ((null : stdgo.Error)) };
            };
            if (_err != null) {
                return { _0 : new Slice<Question>().nil(), _1 : _err };
            };
            _qs = _qs.__append__(_q.__copy__());
        };
    }
    public function question():{ var _0 : Question; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _p.value._checkAdvance(_sectionQuestions);
            if (_err != null) {
                return { _0 : new Question().__copy__(), _1 : _err };
            };
        };
        var _name:Name = new Name();
        var __tmp__ = _name._unpack(_p.value._msg, _p.value._off), _off:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Question().__copy__(), _1 : Go.pointer(new T_nestedError("unpacking Question.Name", _err)).value };
        };
        var __tmp__ = _unpackType(_p.value._msg, _off), _typ:Type = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Question().__copy__(), _1 : Go.pointer(new T_nestedError("unpacking Question.Type", _err)).value };
        };
        var __tmp__ = _unpackClass(_p.value._msg, _off), _class:Class_ = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Question().__copy__(), _1 : Go.pointer(new T_nestedError("unpacking Question.Class", _err)).value };
        };
        _p.value._off = _off;
        _p.value._index++;
        return { _0 : new Question(_name.__copy__(), _typ, _class).__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function _skipResource(_sec:T_section):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value._resHeaderValid) {
            var _newOff:GoInt = _p.value._off + ((_p.value._resHeader.length : GoInt));
            if (_newOff > _p.value._msg.length) {
                return _errResourceLen;
            };
            _p.value._off = _newOff;
            _p.value._resHeaderValid = false;
            _p.value._index++;
            return ((null : stdgo.Error));
        };
        {
            var _err:stdgo.Error = _p.value._checkAdvance(_sec);
            if (_err != null) {
                return _err;
            };
        };
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = Dnsmessage._skipResource(_p.value._msg, _p.value._off);
            _p.value._off = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return Go.pointer(new T_nestedError((("skipping: " : GoString)) + _sectionNames[_sec], _err)).value;
        };
        _p.value._index++;
        return ((null : stdgo.Error));
    }
    public function _resourceHeader(_sec:T_section):{ var _0 : ResourceHeader; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value._resHeaderValid) {
            return { _0 : _p.value._resHeader.__copy__(), _1 : ((null : stdgo.Error)) };
        };
        {
            var _err:stdgo.Error = _p.value._checkAdvance(_sec);
            if (_err != null) {
                return { _0 : new ResourceHeader().__copy__(), _1 : _err };
            };
        };
        var _hdr:ResourceHeader = new ResourceHeader();
        var __tmp__ = _hdr._unpack(_p.value._msg, _p.value._off), _off:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new ResourceHeader().__copy__(), _1 : _err };
        };
        _p.value._resHeaderValid = true;
        _p.value._resHeader = _hdr.__copy__();
        _p.value._off = _off;
        return { _0 : _hdr.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function _resource(_sec:T_section):{ var _0 : Resource; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _r:Resource = new Resource();
        var _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _p.value._resourceHeader(_sec);
            _r.header = __tmp__._0.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _r.__copy__(), _1 : _err };
        };
        _p.value._resHeaderValid = false;
        {
            var __tmp__ = _unpackResourceBody(_p.value._msg, _p.value._off, _r.header.__copy__());
            _r.body = __tmp__._0;
            _p.value._off = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : new Resource().__copy__(), _1 : Go.pointer(new T_nestedError((("unpacking " : GoString)) + _sectionNames[_sec], _err)).value };
        };
        _p.value._index++;
        return { _0 : _r.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function _checkAdvance(_sec:T_section):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value._section.__t__ < _sec.__t__) {
            return errNotStarted;
        };
        if (_p.value._section.__t__ > _sec.__t__) {
            return errSectionDone;
        };
        _p.value._resHeaderValid = false;
        if (_p.value._index == ((_p.value._header._count(_sec) : GoInt))) {
            _p.value._index = ((0 : GoInt));
            _p.value._section.__t__++;
            return errSectionDone;
        };
        return ((null : stdgo.Error));
    }
    public function start(_msg:Slice<GoByte>):{ var _0 : Header; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value._msg != null && !_p.value._msg.isNil()) {
            _p.value = new Parser().__copy__();
        };
        _p.value._msg = _msg;
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _p.value._header._unpack(_msg, ((0 : GoInt)));
                _p.value._off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Header().__copy__(), _1 : Go.pointer(new T_nestedError("unpacking header", _err)).value };
            };
        };
        _p.value._section = _sectionQuestions;
        return { _0 : _p.value._header._header().__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public var _msg : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _header : T_header = new T_header();
    public var _section : T_section = new T_section();
    public var _off : GoInt = ((0 : GoInt));
    public var _index : GoInt = ((0 : GoInt));
    public var _resHeaderValid : Bool = false;
    public var _resHeader : ResourceHeader = new ResourceHeader();
    public function new(?_msg:Slice<GoUInt8>, ?_header:T_header, ?_section:T_section, ?_off:GoInt, ?_index:GoInt, ?_resHeaderValid:Bool, ?_resHeader:ResourceHeader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_msg) + " " + Go.string(_header) + " " + Go.string(_section) + " " + Go.string(_off) + " " + Go.string(_index) + " " + Go.string(_resHeaderValid) + " " + Go.string(_resHeader) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Parser(_msg, _header, _section, _off, _index, _resHeaderValid, _resHeader);
    }
    public function __set__(__tmp__) {
        this._msg = __tmp__._msg;
        this._header = __tmp__._header;
        this._section = __tmp__._section;
        this._off = __tmp__._off;
        this._index = __tmp__._index;
        this._resHeaderValid = __tmp__._resHeaderValid;
        this._resHeader = __tmp__._resHeader;
        return this;
    }
}
@:structInit class Builder {
    public function finish():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._section.__t__ < _sectionHeader.__t__) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : errNotStarted };
        };
        _b.value._section = _sectionDone;
        _b.value._header._pack(_b.value._msg.__slice__(_b.value._start, _b.value._start));
        return { _0 : _b.value._msg, _1 : ((null : stdgo.Error)) };
    }
    public function unknownResource(_h:ResourceHeader, _r:UnknownResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("UnknownResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function optresource(_h:ResourceHeader, _r:OPTResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("OPTResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function aaaaresource(_h:ResourceHeader, _r:AAAAResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("AAAAResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function aresource(_h:ResourceHeader, _r:AResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("AResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function srvresource(_h:ResourceHeader, _r:SRVResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("SRVResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function txtresource(_h:ResourceHeader, _r:TXTResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("TXTResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function soaresource(_h:ResourceHeader, _r:SOAResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("SOAResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function ptrresource(_h:ResourceHeader, _r:PTRResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("PTRResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function nsresource(_h:ResourceHeader, _r:NSResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("NSResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function mxresource(_h:ResourceHeader, _r:MXResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("MXResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function cnameresource(_h:ResourceHeader, _r:CNAMEResource):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._checkResourceSection();
            if (_err != null) {
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _lenOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return Go.pointer(new T_nestedError("ResourceHeader", _err)).value;
        };
        var _preLen:GoInt = _msg.length;
        {
            {
                var __tmp__ = _r._pack(_msg, _b.value._compression, _b.value._start);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return Go.pointer(new T_nestedError("CNAMEResource body", _err)).value;
            };
        };
        {
            var _err:stdgo.Error = _h._fixLen(_msg, _lenOff, _preLen);
            if (_err != null) {
                return _err;
            };
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function _checkResourceSection():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._section.__t__ < _sectionAnswers.__t__) {
            return errNotStarted;
        };
        if (_b.value._section.__t__ > _sectionAdditionals.__t__) {
            return errSectionDone;
        };
        return ((null : stdgo.Error));
    }
    public function question(_q:Question):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._section.__t__ < _sectionQuestions.__t__) {
            return errNotStarted;
        };
        if (_b.value._section.__t__ > _sectionQuestions.__t__) {
            return errSectionDone;
        };
        var __tmp__ = _q._pack(_b.value._msg, _b.value._compression, _b.value._start), _msg:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var _err:stdgo.Error = _b.value._incrementSectionCount();
            if (_err != null) {
                return _err;
            };
        };
        _b.value._msg = _msg;
        return ((null : stdgo.Error));
    }
    public function _incrementSectionCount():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _count:Pointer<GoUInt16> = new Pointer<GoUInt16>().nil();
        var _err:Error = ((null : stdgo.Error));
        if (_b.value._section.__t__ == _sectionQuestions.__t__) {
            _count = Go.pointer(_b.value._header._questions);
            _err = _errTooManyQuestions;
        } else if (_b.value._section.__t__ == _sectionAnswers.__t__) {
            _count = Go.pointer(_b.value._header._answers);
            _err = _errTooManyAnswers;
        } else if (_b.value._section.__t__ == _sectionAuthorities.__t__) {
            _count = Go.pointer(_b.value._header._authorities);
            _err = _errTooManyAuthorities;
        } else if (_b.value._section.__t__ == _sectionAdditionals.__t__) {
            _count = Go.pointer(_b.value._header._additionals);
            _err = _errTooManyAdditionals;
        };
        if (_count.value == -1 ^ ((((0 : GoUInt16)) : GoUInt16))) {
            return _err;
        };
        _count.value++;
        return ((null : stdgo.Error));
    }
    public function startAdditionals():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._startCheck(_sectionAdditionals);
            if (_err != null) {
                return _err;
            };
        };
        _b.value._section = _sectionAdditionals;
        return ((null : stdgo.Error));
    }
    public function startAuthorities():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._startCheck(_sectionAuthorities);
            if (_err != null) {
                return _err;
            };
        };
        _b.value._section = _sectionAuthorities;
        return ((null : stdgo.Error));
    }
    public function startAnswers():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._startCheck(_sectionAnswers);
            if (_err != null) {
                return _err;
            };
        };
        _b.value._section = _sectionAnswers;
        return ((null : stdgo.Error));
    }
    public function startQuestions():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _b.value._startCheck(_sectionQuestions);
            if (_err != null) {
                return _err;
            };
        };
        _b.value._section = _sectionQuestions;
        return ((null : stdgo.Error));
    }
    public function _startCheck(_s:T_section):Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._section.__t__ <= _sectionNotStarted.__t__) {
            return errNotStarted;
        };
        if (_b.value._section.__t__ > _s.__t__) {
            return errSectionDone;
        };
        return ((null : stdgo.Error));
    }
    public function enableCompression():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._compression = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind))));
    }
    public var _msg : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _section : T_section = new T_section();
    public var _header : T_header = new T_header();
    public var _start : GoInt = ((0 : GoInt));
    public var _compression : GoMap<GoString, GoInt> = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil();
    public function new(?_msg:Slice<GoUInt8>, ?_section:T_section, ?_header:T_header, ?_start:GoInt, ?_compression:GoMap<GoString, GoInt>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_msg) + " " + Go.string(_section) + " " + Go.string(_header) + " " + Go.string(_start) + " " + Go.string(_compression) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Builder(_msg, _section, _header, _start, _compression);
    }
    public function __set__(__tmp__) {
        this._msg = __tmp__._msg;
        this._section = __tmp__._section;
        this._header = __tmp__._header;
        this._start = __tmp__._start;
        this._compression = __tmp__._compression;
        return this;
    }
}
@:structInit class ResourceHeader {
    public function extendedRCode(_rcode:RCode):RCode {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_h.value.ttl & _ednsVersionMask == _edns0Version) {
            return new RCode(new RCode(((_h.value.ttl >> ((24 : GoUnTypedInt))) << ((4 : GoUnTypedInt)))).__t__ | _rcode.__t__);
        };
        return _rcode;
    }
    public function dnssecallowed():Bool {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _h.value.ttl & _edns0DNSSECOKMask == _edns0DNSSECOK;
    }
    public function setEDNS0(_udpPayloadLen:GoInt, _extRCode:RCode, _dnssecOK:Bool):Error {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _h.value.name = (({ data : new GoArray<GoUInt8>(...([((".".code : GoRune))].concat([for (i in 0 ... 254) 0]))).copy(), length : ((1 : GoUInt8)) } : Name)).__copy__();
        _h.value.type = typeOPT;
        _h.value.class_ = new Class_(_udpPayloadLen);
        _h.value.ttl = ((_extRCode.__t__ >> ((4 : GoUnTypedInt))) << ((24 : GoUnTypedInt)));
        if (_dnssecOK) {
            _h.value.ttl = _h.value.ttl | (_edns0DNSSECOK);
        };
        return ((null : stdgo.Error));
    }
    public function _fixLen(_msg:Slice<GoByte>, _lenOff:GoInt, _preLen:GoInt):Error {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _conLen:GoInt = _msg.length - _preLen;
        if (_conLen > (((-1 ^ ((((0 : GoUInt16)) : GoUInt16))) : GoInt))) {
            return _errResTooLong;
        };
        _packUint16(_msg.__slice__(_lenOff, _lenOff), ((_conLen : GoUInt16)));
        _h.value.length = ((_conLen : GoUInt16));
        return ((null : stdgo.Error));
    }
    public function _unpack(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _newOff:GoInt = _off;
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _h.value.name._unpack(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Name", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackType(_msg, _newOff);
                _h.value.type = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Type", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackClass(_msg, _newOff);
                _h.value.class_ = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Class", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint32(_msg, _newOff);
                _h.value.ttl = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("TTL", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _unpackUint16(_msg, _newOff);
                _h.value.length = __tmp__._0;
                _newOff = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Length", _err)).value };
            };
        };
        return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
    }
    public function _pack(_oldMsg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : GoInt; var _2 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _msg:Slice<GoByte> = new Slice<GoUInt8>().nil(), _lenOff:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _msg = _oldMsg;
        {
            {
                var __tmp__ = _h.value.name._pack(_msg, _compression, _compressionOff);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _oldMsg, _1 : ((0 : GoInt)), _2 : Go.pointer(new T_nestedError("Name", _err)).value };
            };
        };
        _msg = _packType(_msg, _h.value.type);
        _msg = _packClass(_msg, _h.value.class_);
        _msg = _packUint32(_msg, _h.value.ttl);
        _lenOff = _msg.length;
        _msg = _packUint16(_msg, _h.value.length);
        return { _0 : _msg, _1 : _lenOff, _2 : ((null : stdgo.Error)) };
    }
    public function goString():GoString {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.ResourceHeader{" : GoString)) + (("Name: " : GoString)) + _h.value.name.goString() + ((", " : GoString)) + (("Type: " : GoString)) + _h.value.type.goString() + ((", " : GoString)) + (("Class: " : GoString)) + _h.value.class_.goString() + ((", " : GoString)) + (("TTL: " : GoString)) + _printUint32(_h.value.ttl) + ((", " : GoString)) + (("Length: " : GoString)) + _printUint16(_h.value.length) + (("}" : GoString));
    }
    public var name : Name = new Name();
    public var type : Type = new Type();
    public var class_ : Class_ = new Class_();
    public var ttl : GoUInt32 = ((0 : GoUInt32));
    public var length : GoUInt16 = ((0 : GoUInt16));
    public function new(?name:Name, ?type:Type, ?class_:Class_, ?ttl:GoUInt32, ?length:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(class_) + " " + Go.string(ttl) + " " + Go.string(length) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ResourceHeader(name, type, class_, ttl, length);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.class_ = __tmp__.class_;
        this.ttl = __tmp__.ttl;
        this.length = __tmp__.length;
        return this;
    }
}
@:structInit class Name {
    public function _unpackCompressed(_msg:Slice<GoByte>, _off:GoInt, _allowCompression:Bool):{ var _0 : GoInt; var _1 : Error; } {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _currOff:GoInt = _off;
            var _newOff:GoInt = _off;
            var _ptr:GoInt = ((0 : GoInt));
            var _name:Slice<GoUInt8> = _n.value.data.__slice__(0, ((0 : GoInt)));
            @:label("Loop") while (true) {
                if (_currOff >= _msg.length) {
                    return { _0 : _off, _1 : _errBaseLen };
                };
                var _c:GoInt = ((_msg[_currOff] : GoInt));
                _currOff++;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_c & ((192 : GoInt)) == ((0 : GoInt))) {
                            if (_c == ((0 : GoInt))) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            var _endOff:GoInt = _currOff + _c;
                            if (_endOff > _msg.length) {
                                return { _0 : _off, _1 : _errCalcLen };
                            };
                            _name = _name.__append__(..._msg.__slice__(_currOff, _endOff).toArray());
                            _name = _name.__append__(((".".code : GoRune)));
                            _currOff = _endOff;
                            break;
                        } else if (_c & ((192 : GoInt)) == ((192 : GoInt))) {
                            if (!_allowCompression) {
                                return { _0 : _off, _1 : _errCompressedSRV };
                            };
                            if (_currOff >= _msg.length) {
                                return { _0 : _off, _1 : _errInvalidPtr };
                            };
                            var _c1:GoUInt8 = _msg[_currOff];
                            _currOff++;
                            if (_ptr == ((0 : GoInt))) {
                                _newOff = _currOff;
                            };
                            {
                                _ptr++;
                                if (_ptr > ((10 : GoInt))) {
                                    return { _0 : _off, _1 : _errTooManyPtr };
                                };
                            };
                            _currOff = ((_c ^ ((192 : GoInt))) << ((8 : GoUnTypedInt))) | ((_c1 : GoInt));
                            break;
                        } else {
                            return { _0 : _off, _1 : _errReserved };
                        };
                        break;
                    };
                };
            };
            if (_name.length == ((0 : GoInt))) {
                _name = _name.__append__(((".".code : GoRune)));
            };
            if (_name.length > _n.value.data.length) {
                return { _0 : _off, _1 : _errCalcLen };
            };
            _n.value.length = ((_name.length : GoUInt8));
            if (_ptr == ((0 : GoInt))) {
                _newOff = _currOff;
            };
            return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
        });
    }
    public function _unpack(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _n.value._unpackCompressed(_msg, _off, true);
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _oldMsg:Slice<GoUInt8> = _msg;
        if (_n.value.length == ((0 : GoUInt8)) || _n.value.data[_n.value.length - ((1 : GoUInt8))] != ((".".code : GoRune))) {
            return { _0 : _oldMsg, _1 : _errNonCanonicalName };
        };
        if (_n.value.data[((0 : GoInt))] == ((".".code : GoRune)) && _n.value.length == ((1 : GoUInt8))) {
            return { _0 : _msg.__append__(((0 : GoUInt8))), _1 : ((null : stdgo.Error)) };
        };
        {
            var _i:GoInt = ((0 : GoInt)), _begin:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((_n.value.length : GoInt)), _i++, {
                if (_n.value.data[_i] == ((".".code : GoRune))) {
                    if (_i - _begin >= (((1 : GoUnTypedInt)) << ((6 : GoUnTypedInt)))) {
                        return { _0 : _oldMsg, _1 : _errSegTooLong };
                    };
                    if (_i - _begin == ((0 : GoInt))) {
                        return { _0 : _oldMsg, _1 : _errZeroSegLen };
                    };
                    _msg = _msg.__append__((((_i - _begin) : GoByte)));
                    {
                        var _j:GoInt = _begin;
                        Go.cfor(_j < _i, _j++, {
                            _msg = _msg.__append__(_n.value.data[_j]);
                        });
                    };
                    _begin = _i + ((1 : GoInt));
                    continue;
                };
                if ((_i == ((0 : GoInt)) || _n.value.data[_i - ((1 : GoInt))] == ((".".code : GoRune))) && _compression != null && !_compression.isNil()) {
                    {
                        var __tmp__ = _compression.exists(((_n.value.data.__slice__(_i) : GoString))) ? { value : _compression[((_n.value.data.__slice__(_i) : GoString))], ok : true } : { value : _compression.defaultValue(), ok : false }, _ptr:GoInt = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (_ok) {
                            return { _0 : _msg.__append__(((((_ptr >> ((8 : GoUnTypedInt))) | ((192 : GoInt))) : GoByte)), ((_ptr : GoByte))), _1 : ((null : stdgo.Error)) };
                        };
                    };
                    if (_msg.length <= (((-1 ^ ((((0 : GoUInt16)) : GoUInt16)) >> ((2 : GoUnTypedInt))) : GoInt))) {
                        _compression[((_n.value.data.__slice__(_i) : GoString))] = _msg.length - _compressionOff;
                    };
                };
            });
        };
        return { _0 : _msg.__append__(((0 : GoUInt8))), _1 : ((null : stdgo.Error)) };
    }
    public function goString():GoString {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.MustNewName(\"" : GoString)) + _printString(_n.value.data.__slice__(0, _n.value.length)) + (("\")" : GoString));
    }
    public function toString():GoString {
        var _n = this.__copy__();
        return ((_n.data.__slice__(0, _n.length) : GoString));
    }
    public var data : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 255) ((0 : GoUInt8))]);
    public var length : GoUInt8 = ((0 : GoUInt8));
    public function new(?data:GoArray<GoUInt8>, ?length:GoUInt8) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Name(data, length);
    }
    public function __set__(__tmp__) {
        this.data = __tmp__.data;
        this.length = __tmp__.length;
        return this;
    }
}
@:structInit class Question {
    public function goString():GoString {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.Question{" : GoString)) + (("Name: " : GoString)) + _q.value.name.goString() + ((", " : GoString)) + (("Type: " : GoString)) + _q.value.type.goString() + ((", " : GoString)) + (("Class: " : GoString)) + _q.value.class_.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _q.value.name._pack(_msg, _compression, _compressionOff), _msg:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _msg, _1 : Go.pointer(new T_nestedError("Name", _err)).value };
        };
        _msg = _packType(_msg, _q.value.type);
        return { _0 : _packClass(_msg, _q.value.class_), _1 : ((null : stdgo.Error)) };
    }
    public var name : Name = new Name();
    public var type : Type = new Type();
    public var class_ : Class_ = new Class_();
    public function new(?name:Name, ?type:Type, ?class_:Class_) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(type) + " " + Go.string(class_) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Question(name, type, class_);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.type = __tmp__.type;
        this.class_ = __tmp__.class_;
        return this;
    }
}
@:structInit class CNAMEResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.CNAMEResource{CNAME: " : GoString)) + _r.value.cname.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value.cname._pack(_msg, _compression, _compressionOff);
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeCNAME;
    }
    public var cname : Name = new Name();
    public function new(?cname:Name) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(cname) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CNAMEResource(cname);
    }
    public function __set__(__tmp__) {
        this.cname = __tmp__.cname;
        return this;
    }
}
@:structInit class MXResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.MXResource{" : GoString)) + (("Pref: " : GoString)) + _printUint16(_r.value.pref) + ((", " : GoString)) + (("MX: " : GoString)) + _r.value.mx.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _oldMsg:Slice<GoUInt8> = _msg;
        _msg = _packUint16(_msg, _r.value.pref);
        var __tmp__ = _r.value.mx._pack(_msg, _compression, _compressionOff), _msg:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _oldMsg, _1 : Go.pointer(new T_nestedError("MXResource.MX", _err)).value };
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeMX;
    }
    public var pref : GoUInt16 = ((0 : GoUInt16));
    public var mx : Name = new Name();
    public function new(?pref:GoUInt16, ?mx:Name) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(pref) + " " + Go.string(mx) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new MXResource(pref, mx);
    }
    public function __set__(__tmp__) {
        this.pref = __tmp__.pref;
        this.mx = __tmp__.mx;
        return this;
    }
}
@:structInit class NSResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.NSResource{NS: " : GoString)) + _r.value.ns.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value.ns._pack(_msg, _compression, _compressionOff);
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeNS;
    }
    public var ns : Name = new Name();
    public function new(?ns:Name) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(ns) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NSResource(ns);
    }
    public function __set__(__tmp__) {
        this.ns = __tmp__.ns;
        return this;
    }
}
@:structInit class PTRResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.PTRResource{PTR: " : GoString)) + _r.value.ptr.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value.ptr._pack(_msg, _compression, _compressionOff);
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typePTR;
    }
    public var ptr : Name = new Name();
    public function new(?ptr:Name) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(ptr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PTRResource(ptr);
    }
    public function __set__(__tmp__) {
        this.ptr = __tmp__.ptr;
        return this;
    }
}
@:structInit class SOAResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.SOAResource{" : GoString)) + (("NS: " : GoString)) + _r.value.ns.goString() + ((", " : GoString)) + (("MBox: " : GoString)) + _r.value.mbox.goString() + ((", " : GoString)) + (("Serial: " : GoString)) + _printUint32(_r.value.serial) + ((", " : GoString)) + (("Refresh: " : GoString)) + _printUint32(_r.value.refresh) + ((", " : GoString)) + (("Retry: " : GoString)) + _printUint32(_r.value.retry) + ((", " : GoString)) + (("Expire: " : GoString)) + _printUint32(_r.value.expire) + ((", " : GoString)) + (("MinTTL: " : GoString)) + _printUint32(_r.value.minTTL) + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _oldMsg:Slice<GoUInt8> = _msg;
        var __tmp__ = _r.value.ns._pack(_msg, _compression, _compressionOff), _msg:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _oldMsg, _1 : Go.pointer(new T_nestedError("SOAResource.NS", _err)).value };
        };
        {
            var __tmp__ = _r.value.mbox._pack(_msg, _compression, _compressionOff);
            _msg = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _oldMsg, _1 : Go.pointer(new T_nestedError("SOAResource.MBox", _err)).value };
        };
        _msg = _packUint32(_msg, _r.value.serial);
        _msg = _packUint32(_msg, _r.value.refresh);
        _msg = _packUint32(_msg, _r.value.retry);
        _msg = _packUint32(_msg, _r.value.expire);
        return { _0 : _packUint32(_msg, _r.value.minTTL), _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeSOA;
    }
    public var ns : Name = new Name();
    public var mbox : Name = new Name();
    public var serial : GoUInt32 = ((0 : GoUInt32));
    public var refresh : GoUInt32 = ((0 : GoUInt32));
    public var retry : GoUInt32 = ((0 : GoUInt32));
    public var expire : GoUInt32 = ((0 : GoUInt32));
    public var minTTL : GoUInt32 = ((0 : GoUInt32));
    public function new(?ns:Name, ?mbox:Name, ?serial:GoUInt32, ?refresh:GoUInt32, ?retry:GoUInt32, ?expire:GoUInt32, ?minTTL:GoUInt32) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(ns) + " " + Go.string(mbox) + " " + Go.string(serial) + " " + Go.string(refresh) + " " + Go.string(retry) + " " + Go.string(expire) + " " + Go.string(minTTL) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SOAResource(ns, mbox, serial, refresh, retry, expire, minTTL);
    }
    public function __set__(__tmp__) {
        this.ns = __tmp__.ns;
        this.mbox = __tmp__.mbox;
        this.serial = __tmp__.serial;
        this.refresh = __tmp__.refresh;
        this.retry = __tmp__.retry;
        this.expire = __tmp__.expire;
        this.minTTL = __tmp__.minTTL;
        return this;
    }
}
@:structInit class TXTResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = "dnsmessage.TXTResource{TXT: []string{";
        if (_r.value.txt.length == ((0 : GoInt))) {
            return _s + (("}}" : GoString));
        };
        _s = _s + ((("\"" : GoString)) + _printString(((_r.value.txt[((0 : GoInt))] : Slice<GoByte>))));
        for (_t in _r.value.txt.__slice__(((1 : GoInt)))) {
            _s = _s + ((("\", \"" : GoString)) + _printString(((_t : Slice<GoByte>))));
        };
        return _s + (("\"}}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _oldMsg:Slice<GoUInt8> = _msg;
        for (_s in _r.value.txt) {
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _packText(_msg, _s);
                _msg = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _oldMsg, _1 : _err };
            };
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeTXT;
    }
    public var txt : Slice<GoString> = new Slice<GoString>().nil();
    public function new(?txt:Slice<GoString>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(txt) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TXTResource(txt);
    }
    public function __set__(__tmp__) {
        this.txt = __tmp__.txt;
        return this;
    }
}
@:structInit class SRVResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.SRVResource{" : GoString)) + (("Priority: " : GoString)) + _printUint16(_r.value.priority) + ((", " : GoString)) + (("Weight: " : GoString)) + _printUint16(_r.value.weight) + ((", " : GoString)) + (("Port: " : GoString)) + _printUint16(_r.value.port) + ((", " : GoString)) + (("Target: " : GoString)) + _r.value.target.goString() + (("}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _oldMsg:Slice<GoUInt8> = _msg;
        _msg = _packUint16(_msg, _r.value.priority);
        _msg = _packUint16(_msg, _r.value.weight);
        _msg = _packUint16(_msg, _r.value.port);
        var __tmp__ = _r.value.target._pack(_msg, new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil(), _compressionOff), _msg:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _oldMsg, _1 : Go.pointer(new T_nestedError("SRVResource.Target", _err)).value };
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeSRV;
    }
    public var priority : GoUInt16 = ((0 : GoUInt16));
    public var weight : GoUInt16 = ((0 : GoUInt16));
    public var port : GoUInt16 = ((0 : GoUInt16));
    public var target : Name = new Name();
    public function new(?priority:GoUInt16, ?weight:GoUInt16, ?port:GoUInt16, ?target:Name) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(priority) + " " + Go.string(weight) + " " + Go.string(port) + " " + Go.string(target) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SRVResource(priority, weight, port, target);
    }
    public function __set__(__tmp__) {
        this.priority = __tmp__.priority;
        this.weight = __tmp__.weight;
        this.port = __tmp__.port;
        this.target = __tmp__.target;
        return this;
    }
}
@:structInit class AResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.AResource{" : GoString)) + (("A: [4]byte{" : GoString)) + _printByteSlice(_r.value.a.__slice__(0)) + (("}}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _packBytes(_msg, _r.value.a.__slice__(0)), _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeA;
    }
    public var a : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public function new(?a:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(a) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AResource(a);
    }
    public function __set__(__tmp__) {
        this.a = __tmp__.a;
        return this;
    }
}
@:structInit class AAAAResource {
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _packBytes(_msg, _r.value.aaaa.__slice__(0)), _1 : ((null : stdgo.Error)) };
    }
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.AAAAResource{" : GoString)) + (("AAAA: [16]byte{" : GoString)) + _printByteSlice(_r.value.aaaa.__slice__(0)) + (("}}" : GoString));
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeAAAA;
    }
    public var aaaa : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public function new(?aaaa:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(aaaa) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AAAAResource(aaaa);
    }
    public function __set__(__tmp__) {
        this.aaaa = __tmp__.aaaa;
        return this;
    }
}
@:structInit class OPTResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = "dnsmessage.OPTResource{Options: []dnsmessage.Option{";
        if (_r.value.options.length == ((0 : GoInt))) {
            return _s + (("}}" : GoString));
        };
        _s = _s + (_r.value.options[((0 : GoInt))].goString());
        for (_o in _r.value.options.__slice__(((1 : GoInt)))) {
            _s = _s + (((", " : GoString)) + _o.goString());
        };
        return _s + (("}}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_opt in _r.value.options) {
            _msg = _packUint16(_msg, _opt.code);
            var _l:GoUInt16 = ((_opt.data.length : GoUInt16));
            _msg = _packUint16(_msg, _l);
            _msg = _packBytes(_msg, _opt.data);
        };
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return typeOPT;
    }
    public var options : Slice<Option> = new Slice<Option>().nil();
    public function new(?options:Slice<Option>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(options) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new OPTResource(options);
    }
    public function __set__(__tmp__) {
        this.options = __tmp__.options;
        return this;
    }
}
@:structInit class Option {
    public function goString():GoString {
        var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.Option{" : GoString)) + (("Code: " : GoString)) + _printUint16(_o.value.code) + ((", " : GoString)) + (("Data: []byte{" : GoString)) + _printByteSlice(_o.value.data) + (("}}" : GoString));
    }
    public var code : GoUInt16 = ((0 : GoUInt16));
    public var data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?code:GoUInt16, ?data:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(code) + " " + Go.string(data) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Option(code, data);
    }
    public function __set__(__tmp__) {
        this.code = __tmp__.code;
        this.data = __tmp__.data;
        return this;
    }
}
@:structInit class UnknownResource {
    public function goString():GoString {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (("dnsmessage.UnknownResource{" : GoString)) + (("Type: " : GoString)) + _r.value.type.goString() + ((", " : GoString)) + (("Data: []byte{" : GoString)) + _printByteSlice(_r.value.data) + (("}}" : GoString));
    }
    public function _pack(_msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return { _0 : _packBytes(_msg, _r.value.data.__slice__(0)), _1 : ((null : stdgo.Error)) };
    }
    public function _realType():Type {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _r.value.type;
    }
    public var type : Type = new Type();
    public var data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?type:Type, ?data:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(data) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new UnknownResource(type, data);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.data = __tmp__.data;
        return this;
    }
}
var _errStringTooLong : stdgo.Error = stdgo.errors.Errors.new_("character string exceeds maximum length (255)");
final _nameLen : GoInt64 = ((255 : GoUnTypedInt));
final _ednsVersionMask : GoInt64 = ((16711680 : GoUnTypedInt));
var errSectionDone : stdgo.Error = stdgo.errors.Errors.new_("parsing/packing of this section has completed");
final classANY : Class_ = new Class_(((255 : GoUInt16)));
var _errTooManyPtr : stdgo.Error = stdgo.errors.Errors.new_("too many pointers (>10)");
final _edns0DNSSECOK : GoInt64 = ((32768 : GoUnTypedInt));
final typeA : Type = new Type(((1 : GoUInt16)));
final typeNS : Type = new Type(((2 : GoUInt16)));
final typeCNAME : Type = new Type(((5 : GoUInt16)));
final typeSOA : Type = new Type(((6 : GoUInt16)));
final typePTR : Type = new Type(((12 : GoUInt16)));
final typeMX : Type = new Type(((15 : GoUInt16)));
final typeTXT : Type = new Type(((16 : GoUInt16)));
final typeAAAA : Type = new Type(((28 : GoUInt16)));
final typeSRV : Type = new Type(((33 : GoUInt16)));
final typeOPT : Type = new Type(((41 : GoUInt16)));
final typeWKS : Type = new Type(((11 : GoUInt16)));
final typeHINFO : Type = new Type(((13 : GoUInt16)));
final typeMINFO : Type = new Type(((14 : GoUInt16)));
final typeAXFR : Type = new Type(((252 : GoUInt16)));
final typeALL : Type = new Type(((255 : GoUInt16)));
var _typeNames : GoMap<Type, GoString> = new GoMap<Type, GoString>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("vendor/golang.org/x/net/dns/dnsmessage.Type", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))),
{ key : typeA, value : "TypeA" },
{ key : typeNS, value : "TypeNS" },
{ key : typeCNAME, value : "TypeCNAME" },
{ key : typeSOA, value : "TypeSOA" },
{ key : typePTR, value : "TypePTR" },
{ key : typeMX, value : "TypeMX" },
{ key : typeTXT, value : "TypeTXT" },
{ key : typeAAAA, value : "TypeAAAA" },
{ key : typeSRV, value : "TypeSRV" },
{ key : typeOPT, value : "TypeOPT" },
{ key : typeWKS, value : "TypeWKS" },
{ key : typeHINFO, value : "TypeHINFO" },
{ key : typeMINFO, value : "TypeMINFO" },
{ key : typeAXFR, value : "TypeAXFR" },
{ key : typeALL, value : "TypeALL" });
final classINET : Class_ = new Class_(((1 : GoUInt16)));
final classCSNET : Class_ = new Class_(((2 : GoUInt16)));
final classCHAOS : Class_ = new Class_(((3 : GoUInt16)));
final classHESIOD : Class_ = new Class_(((4 : GoUInt16)));
var _classNames : GoMap<Class_, GoString> = new GoMap<Class_, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("vendor/golang.org/x/net/dns/dnsmessage.Class", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : classINET, value : "ClassINET" }, { key : classCSNET, value : "ClassCSNET" }, { key : classCHAOS, value : "ClassCHAOS" }, { key : classHESIOD, value : "ClassHESIOD" }, { key : classANY, value : "ClassANY" });
final _hexDigits : GoString = "0123456789abcdef";
final rcodeRefused : RCode = new RCode(((5 : GoUInt16)));
final _sectionHeader : T_section = new T_section((1 : GoUnTypedInt));
final _sectionQuestions : T_section = new T_section((2 : GoUnTypedInt));
final _sectionAnswers : T_section = new T_section((3 : GoUnTypedInt));
final _sectionAuthorities : T_section = new T_section((4 : GoUnTypedInt));
final _sectionAdditionals : T_section = new T_section((5 : GoUnTypedInt));
var _sectionNames : GoMap<T_section, GoString> = new GoMap<T_section, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("vendor/golang.org/x/net/dns/dnsmessage.section", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : _sectionHeader, value : "header" }, { key : _sectionQuestions, value : "Question" }, { key : _sectionAnswers, value : "Answer" }, { key : _sectionAuthorities, value : "Authority" }, { key : _sectionAdditionals, value : "Additional" });
final rcodeNameError : RCode = new RCode(((3 : GoUInt16)));
final _headerBitQR : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt)));
final rcodeSuccess : RCode = new RCode(((0 : GoUInt16)));
var _errBaseLen : stdgo.Error = stdgo.errors.Errors.new_("insufficient data for base length type");
final _uint16Len : GoInt64 = ((2 : GoUnTypedInt));
final _headerBitAA : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((10 : GoUnTypedInt)));
final rcodeFormatError : RCode = new RCode(((1 : GoUInt16)));
var _errSegTooLong : stdgo.Error = stdgo.errors.Errors.new_("segment length too long");
var _errTooManyAnswers : stdgo.Error = stdgo.errors.Errors.new_("too many Answers to pack (>65535)");
final _sectionDone : T_section = new T_section((6 : GoUnTypedInt));
var _errTooManyAdditionals : stdgo.Error = stdgo.errors.Errors.new_("too many Additionals to pack (>65535)");
var _errNilResouceBody : stdgo.Error = stdgo.errors.Errors.new_("nil resource body");
var _errInvalidPtr : stdgo.Error = stdgo.errors.Errors.new_("invalid pointer");
final rcodeServerFailure : RCode = new RCode(((2 : GoUInt16)));
final _headerLen : GoUnTypedInt = ((6 : GoUnTypedInt)) * _uint16Len;
var errNotStarted : stdgo.Error = stdgo.errors.Errors.new_("parsing/packing of this type isn\'t available yet");
final _sectionNotStarted : T_section = new T_section((0 : GoUnTypedInt));
var _errCalcLen : stdgo.Error = stdgo.errors.Errors.new_("insufficient data for calculated length type");
var _errResourceLen : stdgo.Error = stdgo.errors.Errors.new_("insufficient data for resource body length");
var _errResTooLong : stdgo.Error = stdgo.errors.Errors.new_("resource length too long");
var _errTooManyQuestions : stdgo.Error = stdgo.errors.Errors.new_("too many Questions to pack (>65535)");
final _edns0Version : GoInt64 = ((0 : GoUnTypedInt));
final _headerBitRA : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt)));
final _packStartingCap : GoInt64 = ((512 : GoUnTypedInt));
final rcodeNotImplemented : RCode = new RCode(((4 : GoUInt16)));
var _errCompressedSRV : stdgo.Error = stdgo.errors.Errors.new_("compressed name in SRV resource data");
var _errTooManyAuthorities : stdgo.Error = stdgo.errors.Errors.new_("too many Authorities to pack (>65535)");
final _headerBitRD : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((8 : GoUnTypedInt)));
var _rCodeNames : GoMap<RCode, GoString> = new GoMap<RCode, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("vendor/golang.org/x/net/dns/dnsmessage.RCode", [], stdgo.reflect.Reflect.GoType.basic(uint16_kind)), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : rcodeSuccess, value : "RCodeSuccess" }, { key : rcodeFormatError, value : "RCodeFormatError" }, { key : rcodeServerFailure, value : "RCodeServerFailure" }, { key : rcodeNameError, value : "RCodeNameError" }, { key : rcodeNotImplemented, value : "RCodeNotImplemented" }, { key : rcodeRefused, value : "RCodeRefused" });
final _headerBitTC : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((9 : GoUnTypedInt)));
var _errReserved : stdgo.Error = stdgo.errors.Errors.new_("segment prefix is reserved");
final _uint32Len : GoInt64 = ((4 : GoUnTypedInt));
var _errZeroSegLen : stdgo.Error = stdgo.errors.Errors.new_("zero length segment");
final _edns0DNSSECOKMask : GoInt64 = ((16744448 : GoUnTypedInt));
var _errNonCanonicalName : stdgo.Error = stdgo.errors.Errors.new_("name is not in canonical format (it must end with a .)");
function _printPaddedUint8(_i:GoUInt8):GoString {
        var _b:GoUInt8 = ((_i : GoByte));
        return ((new Slice<GoUInt8>(_b / ((100 : GoUInt8)) + (("0".code : GoRune)), _b / ((10 : GoUInt8)) % ((10 : GoUInt8)) + (("0".code : GoRune)), _b % ((10 : GoUInt8)) + (("0".code : GoRune))) : GoString));
    }
function _printUint8Bytes(_buf:Slice<GoByte>, _i:GoUInt8):Slice<GoByte> {
        var _b:GoUInt8 = ((_i : GoByte));
        if (_i >= ((100 : GoUInt8))) {
            _buf = _buf.__append__(_b / ((100 : GoUInt8)) + (("0".code : GoRune)));
        };
        if (_i >= ((10 : GoUInt8))) {
            _buf = _buf.__append__(_b / ((10 : GoUInt8)) % ((10 : GoUInt8)) + (("0".code : GoRune)));
        };
        return _buf.__append__(_b % ((10 : GoUInt8)) + (("0".code : GoRune)));
    }
function _printByteSlice(_b:Slice<GoByte>):GoString {
        if (_b.length == ((0 : GoInt))) {
            return "";
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((5 : GoInt)) * _b.length : GoInt)).toBasic());
        _buf = _printUint8Bytes(_buf, ((_b[((0 : GoInt))] : GoUInt8)));
        for (_n in _b.__slice__(((1 : GoInt)))) {
            _buf = _buf.__append__(((",".code : GoRune)), ((" ".code : GoRune)));
            _buf = _printUint8Bytes(_buf, ((_n : GoUInt8)));
        };
        return ((_buf : GoString));
    }
function _printString(_str:Slice<GoByte>):GoString {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_str.length : GoInt)).toBasic());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _str.length, _i++, {
                var _c:GoUInt8 = _str[_i];
                if (_c == ((".".code : GoRune)) || _c == (("-".code : GoRune)) || _c == ((" ".code : GoRune)) || (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)) || (("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune)) || (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
                    _buf = _buf.__append__(_c);
                    continue;
                };
                var _upper:GoUInt8 = (_c >> ((4 : GoUnTypedInt)));
                var _lower:GoUInt8 = (((_c << ((4 : GoUnTypedInt)))) >> ((4 : GoUnTypedInt)));
                _buf = _buf.__append__((("\\".code : GoRune)), (("x".code : GoRune)), _hexDigits[_upper], _hexDigits[_lower]);
            });
        };
        return ((_buf : GoString));
    }
function _printUint16(_i:GoUInt16):GoString {
        return _printUint32(((_i : GoUInt32)));
    }
function _printUint32(_i:GoUInt32):GoString {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _b:Slice<GoUInt8> = _buf, _d:GoUInt32 = ((((1000000000 : GoUInt32)) : GoUInt32));
            Go.cfor(_d > ((0 : GoUInt32)), _d = _d / (((10 : GoUInt32))), {
                _b[((0 : GoInt))] = (((_i / _d % ((10 : GoUInt32)) + (("0".code : GoRune))) : GoByte));
                if (_b[((0 : GoInt))] == (("0".code : GoRune)) && _b.length == _buf.length && _buf.length > ((1 : GoInt))) {
                    _buf = _buf.__slice__(((1 : GoInt)));
                };
                _b = _b.__slice__(((1 : GoInt)));
                _i = _i % (_d);
            });
        };
        return ((_buf : GoString));
    }
function _printBool(_b:Bool):GoString {
        if (_b) {
            return "true";
        };
        return "false";
    }
/**
    // NewBuilder creates a new builder with compression disabled.
    //
    // Note: Most users will want to immediately enable compression with the
    // EnableCompression method. See that method's comment for why you may or may
    // not want to enable compression.
    //
    // The DNS message is appended to the provided initial buffer buf (which may be
    // nil) as it is built. The final message is returned by the (*Builder).Finish
    // method, which may return the same underlying array if there was sufficient
    // capacity in the slice.
**/
function newBuilder(_buf:Slice<GoByte>, _h:Header):Builder {
        if (_buf == null || _buf.isNil()) {
            _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_packStartingCap : GoInt)).toBasic());
        };
        var _b:Builder = (({ _msg : _buf, _start : _buf.length, _section : new T_section(), _header : new T_header(), _compression : new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind)))).nil() } : Builder)).__copy__();
        {
            var __tmp__ = _h._pack();
            _b._header._id = __tmp__._0;
            _b._header._bits = __tmp__._1;
        };
        var _hb:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
        _b._msg = _b._msg.__append__(..._hb.__slice__(0).toArray());
        _b._section = _sectionHeader;
        return _b.__copy__();
    }
function _skipResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        var __tmp__ = _skipName(_msg, _off), _newOff:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _off, _1 : Go.pointer(new T_nestedError("Name", _err)).value };
        };
        {
            {
                var __tmp__ = _skipType(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Type", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _skipClass(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("Class", _err)).value };
            };
        };
        {
            {
                var __tmp__ = _skipUint32(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : Go.pointer(new T_nestedError("TTL", _err)).value };
            };
        };
        var __tmp__ = _unpackUint16(_msg, _newOff), _length:GoUInt16 = __tmp__._0, _newOff:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _off, _1 : Go.pointer(new T_nestedError("Length", _err)).value };
        };
        {
            _newOff = _newOff + (((_length : GoInt)));
            if (_newOff > _msg.length) {
                return { _0 : _off, _1 : _errResourceLen };
            };
        };
        return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
    }
/**
    // packUint16 appends the wire format of field to msg.
**/
function _packUint16(_msg:Slice<GoByte>, _field:GoUInt16):Slice<GoByte> {
        return _msg.__append__((((_field >> ((8 : GoUnTypedInt))) : GoByte)), ((_field : GoByte)));
    }
function _unpackUint16(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoUInt16; var _1 : GoInt; var _2 : Error; } {
        if (_off + _uint16Len > _msg.length) {
            return { _0 : ((0 : GoUInt16)), _1 : _off, _2 : _errBaseLen };
        };
        return { _0 : (((_msg[_off] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_msg[_off + ((1 : GoInt))] : GoUInt16)), _1 : _off + _uint16Len, _2 : ((null : stdgo.Error)) };
    }
function _skipUint16(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        if (_off + _uint16Len > _msg.length) {
            return { _0 : _off, _1 : _errBaseLen };
        };
        return { _0 : _off + _uint16Len, _1 : ((null : stdgo.Error)) };
    }
/**
    // packType appends the wire format of field to msg.
**/
function _packType(_msg:Slice<GoByte>, _field:Type):Slice<GoByte> {
        return _packUint16(_msg, _field.__t__);
    }
function _unpackType(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : Type; var _1 : GoInt; var _2 : Error; } {
        var __tmp__ = _unpackUint16(_msg, _off), _t:GoUInt16 = __tmp__._0, _o:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : new Type(_t), _1 : _o, _2 : _err };
    }
function _skipType(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        return _skipUint16(_msg, _off);
    }
/**
    // packClass appends the wire format of field to msg.
**/
function _packClass(_msg:Slice<GoByte>, _field:Class_):Slice<GoByte> {
        return _packUint16(_msg, _field.__t__);
    }
function _unpackClass(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : Class_; var _1 : GoInt; var _2 : Error; } {
        var __tmp__ = _unpackUint16(_msg, _off), _c:GoUInt16 = __tmp__._0, _o:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        return { _0 : new Class_(_c), _1 : _o, _2 : _err };
    }
function _skipClass(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        return _skipUint16(_msg, _off);
    }
/**
    // packUint32 appends the wire format of field to msg.
**/
function _packUint32(_msg:Slice<GoByte>, _field:GoUInt32):Slice<GoByte> {
        return _msg.__append__((((_field >> ((24 : GoUnTypedInt))) : GoByte)), (((_field >> ((16 : GoUnTypedInt))) : GoByte)), (((_field >> ((8 : GoUnTypedInt))) : GoByte)), ((_field : GoByte)));
    }
function _unpackUint32(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoUInt32; var _1 : GoInt; var _2 : Error; } {
        if (_off + _uint32Len > _msg.length) {
            return { _0 : ((0 : GoUInt32)), _1 : _off, _2 : _errBaseLen };
        };
        var _v:GoUInt32 = (((_msg[_off] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_msg[_off + ((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_msg[_off + ((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_msg[_off + ((3 : GoInt))] : GoUInt32));
        return { _0 : _v, _1 : _off + _uint32Len, _2 : ((null : stdgo.Error)) };
    }
function _skipUint32(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        if (_off + _uint32Len > _msg.length) {
            return { _0 : _off, _1 : _errBaseLen };
        };
        return { _0 : _off + _uint32Len, _1 : ((null : stdgo.Error)) };
    }
/**
    // packText appends the wire format of field to msg.
**/
function _packText(_msg:Slice<GoByte>, _field:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _l:GoInt = _field.length;
        if (_l > ((255 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errStringTooLong };
        };
        _msg = _msg.__append__(((_l : GoByte)));
        _msg = _msg.__append__(..._field.toArray());
        return { _0 : _msg, _1 : ((null : stdgo.Error)) };
    }
function _unpackText(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoString; var _1 : GoInt; var _2 : Error; } {
        if (_off >= _msg.length) {
            return { _0 : "", _1 : _off, _2 : _errBaseLen };
        };
        var _beginOff:GoInt = _off + ((1 : GoInt));
        var _endOff:GoInt = _beginOff + ((_msg[_off] : GoInt));
        if (_endOff > _msg.length) {
            return { _0 : "", _1 : _off, _2 : _errCalcLen };
        };
        return { _0 : ((_msg.__slice__(_beginOff, _endOff) : GoString)), _1 : _endOff, _2 : ((null : stdgo.Error)) };
    }
/**
    // packBytes appends the wire format of field to msg.
**/
function _packBytes(_msg:Slice<GoByte>, _field:Slice<GoByte>):Slice<GoByte> {
        return _msg.__append__(..._field.toArray());
    }
function _unpackBytes(_msg:Slice<GoByte>, _off:GoInt, _field:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _newOff:GoInt = _off + _field.length;
        if (_newOff > _msg.length) {
            return { _0 : _off, _1 : _errBaseLen };
        };
        Go.copy(_field, _msg.__slice__(_off, _newOff));
        return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewName creates a new Name from a string.
**/
function newName(_name:GoString):{ var _0 : Name; var _1 : Error; } {
        if (((_name : Slice<GoByte>)).length > _nameLen) {
            return { _0 : new Name().__copy__(), _1 : _errCalcLen };
        };
        var _n:Name = (({ length : ((_name.length : GoUInt8)), data : new GoArray<GoUInt8>(...[for (i in 0 ... 255) ((0 : GoUInt8))]) } : Name)).__copy__();
        Go.copy(_n.data.__slice__(0), ((_name : Slice<GoByte>)));
        return { _0 : _n.__copy__(), _1 : ((null : stdgo.Error)) };
    }
/**
    // MustNewName creates a new Name from a string and panics on error.
**/
function mustNewName(_name:GoString):Name {
        var __tmp__ = newName(_name), _n:Name = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw (("creating name: " : GoString)) + _err.error();
        };
        return _n.__copy__();
    }
function _skipName(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _newOff:GoInt = _off;
            @:label("Loop") while (true) {
                if (_newOff >= _msg.length) {
                    return { _0 : _off, _1 : _errBaseLen };
                };
                var _c:GoInt = ((_msg[_newOff] : GoInt));
                _newOff++;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_c & ((192 : GoInt)) == ((0 : GoInt))) {
                            if (_c == ((0 : GoInt))) {
                                @:break {
                                    ____exit____ = true;
                                    ____break____ = true;
                                    break;
                                };
                            };
                            _newOff = _newOff + (_c);
                            if (_newOff > _msg.length) {
                                return { _0 : _off, _1 : _errCalcLen };
                            };
                            break;
                        } else if (_c & ((192 : GoInt)) == ((192 : GoInt))) {
                            _newOff++;
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                            break;
                        } else {
                            return { _0 : _off, _1 : _errReserved };
                        };
                        break;
                    };
                };
            };
            return { _0 : _newOff, _1 : ((null : stdgo.Error)) };
        });
    }
function _unpackResourceBody(_msg:Slice<GoByte>, _off:GoInt, _hdr:ResourceHeader):{ var _0 : ResourceBody; var _1 : GoInt; var _2 : Error; } {
        var _r:ResourceBody = ((null : ResourceBody)), _err:Error = ((null : stdgo.Error)), _name:GoString = (("" : GoString));
        if (_hdr.type.__t__ == typeA.__t__) {
            var _rb:AResource = new AResource();
            {
                var __tmp__ = _unpackAResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "A";
        } else if (_hdr.type.__t__ == typeNS.__t__) {
            var _rb:NSResource = new NSResource();
            {
                var __tmp__ = _unpackNSResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "NS";
        } else if (_hdr.type.__t__ == typeCNAME.__t__) {
            var _rb:CNAMEResource = new CNAMEResource();
            {
                var __tmp__ = _unpackCNAMEResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "CNAME";
        } else if (_hdr.type.__t__ == typeSOA.__t__) {
            var _rb:SOAResource = new SOAResource();
            {
                var __tmp__ = _unpackSOAResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "SOA";
        } else if (_hdr.type.__t__ == typePTR.__t__) {
            var _rb:PTRResource = new PTRResource();
            {
                var __tmp__ = _unpackPTRResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "PTR";
        } else if (_hdr.type.__t__ == typeMX.__t__) {
            var _rb:MXResource = new MXResource();
            {
                var __tmp__ = _unpackMXResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "MX";
        } else if (_hdr.type.__t__ == typeTXT.__t__) {
            var _rb:TXTResource = new TXTResource();
            {
                var __tmp__ = _unpackTXTResource(_msg, _off, _hdr.length);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "TXT";
        } else if (_hdr.type.__t__ == typeAAAA.__t__) {
            var _rb:AAAAResource = new AAAAResource();
            {
                var __tmp__ = _unpackAAAAResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "AAAA";
        } else if (_hdr.type.__t__ == typeSRV.__t__) {
            var _rb:SRVResource = new SRVResource();
            {
                var __tmp__ = _unpackSRVResource(_msg, _off);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "SRV";
        } else if (_hdr.type.__t__ == typeOPT.__t__) {
            var _rb:OPTResource = new OPTResource();
            {
                var __tmp__ = _unpackOPTResource(_msg, _off, _hdr.length);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "OPT";
        } else {
            var _rb:UnknownResource = new UnknownResource();
            {
                var __tmp__ = _unpackUnknownResource(_hdr.type, _msg, _off, _hdr.length);
                _rb = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            _r = Go.pointer(_rb).value;
            _name = "Unknown";
        };
        if (_err != null) {
            return { _0 : ((null : ResourceBody)), _1 : _off, _2 : Go.pointer(new T_nestedError(_name + ((" record" : GoString)), _err)).value };
        };
        return { _0 : _r, _1 : _off + ((_hdr.length : GoInt)), _2 : ((null : stdgo.Error)) };
    }
function _unpackCNAMEResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : CNAMEResource; var _1 : Error; } {
        var _cname:Name = new Name();
        {
            var __tmp__ = _cname._unpack(_msg, _off), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new CNAMEResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : new CNAMEResource(_cname.__copy__()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackMXResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : MXResource; var _1 : Error; } {
        var __tmp__ = _unpackUint16(_msg, _off), _pref:GoUInt16 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new MXResource().__copy__(), _1 : Go.pointer(new T_nestedError("Pref", _err)).value };
        };
        var _mx:Name = new Name();
        {
            var __tmp__ = _mx._unpack(_msg, _off), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new MXResource().__copy__(), _1 : Go.pointer(new T_nestedError("MX", _err)).value };
            };
        };
        return { _0 : new MXResource(_pref, _mx.__copy__()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackNSResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : NSResource; var _1 : Error; } {
        var _ns:Name = new Name();
        {
            var __tmp__ = _ns._unpack(_msg, _off), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new NSResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : new NSResource(_ns.__copy__()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackPTRResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : PTRResource; var _1 : Error; } {
        var _ptr:Name = new Name();
        {
            var __tmp__ = _ptr._unpack(_msg, _off), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new PTRResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : new PTRResource(_ptr.__copy__()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackSOAResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : SOAResource; var _1 : Error; } {
        var _ns:Name = new Name();
        var __tmp__ = _ns._unpack(_msg, _off), _off:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("NS", _err)).value };
        };
        var _mbox:Name = new Name();
        {
            {
                var __tmp__ = _mbox._unpack(_msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("MBox", _err)).value };
            };
        };
        var __tmp__ = _unpackUint32(_msg, _off), _serial:GoUInt32 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("Serial", _err)).value };
        };
        var __tmp__ = _unpackUint32(_msg, _off), _refresh:GoUInt32 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("Refresh", _err)).value };
        };
        var __tmp__ = _unpackUint32(_msg, _off), _retry:GoUInt32 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("Retry", _err)).value };
        };
        var __tmp__ = _unpackUint32(_msg, _off), _expire:GoUInt32 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("Expire", _err)).value };
        };
        var __tmp__ = _unpackUint32(_msg, _off), _minTTL:GoUInt32 = __tmp__._0, _:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SOAResource().__copy__(), _1 : Go.pointer(new T_nestedError("MinTTL", _err)).value };
        };
        return { _0 : new SOAResource(_ns.__copy__(), _mbox.__copy__(), _serial, _refresh, _retry, _expire, _minTTL).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackTXTResource(_msg:Slice<GoByte>, _off:GoInt, _length:GoUInt16):{ var _0 : TXTResource; var _1 : Error; } {
        var _txts:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((((1 : GoInt)) : GoInt)).toBasic());
        {
            var _n:GoUInt16 = ((((0 : GoUInt16)) : GoUInt16));
            while (_n < _length) {
                var _t:GoString = (("" : GoString));
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _unpackText(_msg, _off);
                        _t = __tmp__._0;
                        _off = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : new TXTResource().__copy__(), _1 : Go.pointer(new T_nestedError("text", _err)).value };
                    };
                };
                if (_length - _n < ((_t.length : GoUInt16)) + ((1 : GoUInt16))) {
                    return { _0 : new TXTResource().__copy__(), _1 : _errCalcLen };
                };
                _n = _n + (((_t.length : GoUInt16)) + ((1 : GoUInt16)));
                _txts = _txts.__append__(_t);
            };
        };
        return { _0 : new TXTResource(_txts).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackSRVResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : SRVResource; var _1 : Error; } {
        var __tmp__ = _unpackUint16(_msg, _off), _priority:GoUInt16 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SRVResource().__copy__(), _1 : Go.pointer(new T_nestedError("Priority", _err)).value };
        };
        var __tmp__ = _unpackUint16(_msg, _off), _weight:GoUInt16 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SRVResource().__copy__(), _1 : Go.pointer(new T_nestedError("Weight", _err)).value };
        };
        var __tmp__ = _unpackUint16(_msg, _off), _port:GoUInt16 = __tmp__._0, _off:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new SRVResource().__copy__(), _1 : Go.pointer(new T_nestedError("Port", _err)).value };
        };
        var _target:Name = new Name();
        {
            var __tmp__ = _target._unpackCompressed(_msg, _off, false), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new SRVResource().__copy__(), _1 : Go.pointer(new T_nestedError("Target", _err)).value };
            };
        };
        return { _0 : new SRVResource(_priority, _weight, _port, _target.__copy__()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackAResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : AResource; var _1 : Error; } {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        {
            var __tmp__ = _unpackBytes(_msg, _off, _a.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new AResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : new AResource(_a.copy()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackAAAAResource(_msg:Slice<GoByte>, _off:GoInt):{ var _0 : AAAAResource; var _1 : Error; } {
        var _aaaa:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        {
            var __tmp__ = _unpackBytes(_msg, _off, _aaaa.__slice__(0)), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new AAAAResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : new AAAAResource(_aaaa.copy()).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackOPTResource(_msg:Slice<GoByte>, _off:GoInt, _length:GoUInt16):{ var _0 : OPTResource; var _1 : Error; } {
        var _opts:Slice<Option> = new Slice<Option>().nil();
        {
            var _oldOff:GoInt = _off;
            while (_off < _oldOff + ((_length : GoInt))) {
                var _err:Error = ((null : stdgo.Error));
                var _o:Option = new Option();
                {
                    var __tmp__ = _unpackUint16(_msg, _off);
                    _o.code = __tmp__._0;
                    _off = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : new OPTResource().__copy__(), _1 : Go.pointer(new T_nestedError("Code", _err)).value };
                };
                var _l:GoUInt16 = ((0 : GoUInt16));
                {
                    var __tmp__ = _unpackUint16(_msg, _off);
                    _l = __tmp__._0;
                    _off = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : new OPTResource().__copy__(), _1 : Go.pointer(new T_nestedError("Data", _err)).value };
                };
                _o.data = new Slice<GoUInt8>(...[for (i in 0 ... ((_l : GoInt)).toBasic()) ((0 : GoUInt8))]);
                if (Go.copy(_o.data, _msg.__slice__(_off)) != ((_l : GoInt))) {
                    return { _0 : new OPTResource().__copy__(), _1 : Go.pointer(new T_nestedError("Data", _errCalcLen)).value };
                };
                _off = _off + (((_l : GoInt)));
                _opts = _opts.__append__(_o.__copy__());
            };
        };
        return { _0 : new OPTResource(_opts).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _unpackUnknownResource(_recordType:Type, _msg:Slice<GoByte>, _off:GoInt, _length:GoUInt16):{ var _0 : UnknownResource; var _1 : Error; } {
        var _parsed:UnknownResource = (({ type : _recordType, data : new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]) } : UnknownResource)).__copy__();
        {
            var __tmp__ = _unpackBytes(_msg, _off, _parsed.data), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new UnknownResource().__copy__(), _1 : _err };
            };
        };
        return { _0 : _parsed.__copy__(), _1 : ((null : stdgo.Error)) };
    }
class Type_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Class__extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class OpCode_extension_fields {
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class RCode_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class T_nestedError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class Header_extension_fields {
    public function _pack(__tmp__):{ var _0 : GoUInt16; var _1 : GoUInt16; } return __tmp__._pack();
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Message_extension_fields {
    public function unpack(__tmp__, _msg:Slice<GoByte>):Error return __tmp__.unpack(_msg);
    public function pack(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.pack();
    public function appendPack(__tmp__, _b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.appendPack(_b);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class T_header_extension_fields {
    public function _count(__tmp__, _sec:T_section):GoUInt16 return __tmp__._count(_sec);
    public function _pack(__tmp__, _msg:Slice<GoByte>):Slice<GoByte> return __tmp__._pack(_msg);
    public function _unpack(__tmp__, _msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } return __tmp__._unpack(_msg, _off);
    public function _header(__tmp__):Header return __tmp__._header();
}
class Resource_extension_fields {
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
}
class Parser_extension_fields {
    public function start(__tmp__, _msg:Slice<GoByte>):{ var _0 : Header; var _1 : Error; } return __tmp__.start(_msg);
    public function _checkAdvance(__tmp__, _sec:T_section):Error return __tmp__._checkAdvance(_sec);
    public function _resource(__tmp__, _sec:T_section):{ var _0 : Resource; var _1 : Error; } return __tmp__._resource(_sec);
    public function _resourceHeader(__tmp__, _sec:T_section):{ var _0 : ResourceHeader; var _1 : Error; } return __tmp__._resourceHeader(_sec);
    public function _skipResource(__tmp__, _sec:T_section):Error return __tmp__._skipResource(_sec);
    public function question(__tmp__):{ var _0 : Question; var _1 : Error; } return __tmp__.question();
    public function allQuestions(__tmp__):{ var _0 : Slice<Question>; var _1 : Error; } return __tmp__.allQuestions();
    public function skipQuestion(__tmp__):Error return __tmp__.skipQuestion();
    public function skipAllQuestions(__tmp__):Error return __tmp__.skipAllQuestions();
    public function answerHeader(__tmp__):{ var _0 : ResourceHeader; var _1 : Error; } return __tmp__.answerHeader();
    public function answer(__tmp__):{ var _0 : Resource; var _1 : Error; } return __tmp__.answer();
    public function allAnswers(__tmp__):{ var _0 : Slice<Resource>; var _1 : Error; } return __tmp__.allAnswers();
    public function skipAnswer(__tmp__):Error return __tmp__.skipAnswer();
    public function skipAllAnswers(__tmp__):Error return __tmp__.skipAllAnswers();
    public function authorityHeader(__tmp__):{ var _0 : ResourceHeader; var _1 : Error; } return __tmp__.authorityHeader();
    public function authority(__tmp__):{ var _0 : Resource; var _1 : Error; } return __tmp__.authority();
    public function allAuthorities(__tmp__):{ var _0 : Slice<Resource>; var _1 : Error; } return __tmp__.allAuthorities();
    public function skipAuthority(__tmp__):Error return __tmp__.skipAuthority();
    public function skipAllAuthorities(__tmp__):Error return __tmp__.skipAllAuthorities();
    public function additionalHeader(__tmp__):{ var _0 : ResourceHeader; var _1 : Error; } return __tmp__.additionalHeader();
    public function additional(__tmp__):{ var _0 : Resource; var _1 : Error; } return __tmp__.additional();
    public function allAdditionals(__tmp__):{ var _0 : Slice<Resource>; var _1 : Error; } return __tmp__.allAdditionals();
    public function skipAdditional(__tmp__):Error return __tmp__.skipAdditional();
    public function skipAllAdditionals(__tmp__):Error return __tmp__.skipAllAdditionals();
    public function cnameresource(__tmp__):{ var _0 : CNAMEResource; var _1 : Error; } return __tmp__.cnameresource();
    public function mxresource(__tmp__):{ var _0 : MXResource; var _1 : Error; } return __tmp__.mxresource();
    public function nsresource(__tmp__):{ var _0 : NSResource; var _1 : Error; } return __tmp__.nsresource();
    public function ptrresource(__tmp__):{ var _0 : PTRResource; var _1 : Error; } return __tmp__.ptrresource();
    public function soaresource(__tmp__):{ var _0 : SOAResource; var _1 : Error; } return __tmp__.soaresource();
    public function txtresource(__tmp__):{ var _0 : TXTResource; var _1 : Error; } return __tmp__.txtresource();
    public function srvresource(__tmp__):{ var _0 : SRVResource; var _1 : Error; } return __tmp__.srvresource();
    public function aresource(__tmp__):{ var _0 : AResource; var _1 : Error; } return __tmp__.aresource();
    public function aaaaresource(__tmp__):{ var _0 : AAAAResource; var _1 : Error; } return __tmp__.aaaaresource();
    public function optresource(__tmp__):{ var _0 : OPTResource; var _1 : Error; } return __tmp__.optresource();
    public function unknownResource(__tmp__):{ var _0 : UnknownResource; var _1 : Error; } return __tmp__.unknownResource();
}
class Builder_extension_fields {
    public function enableCompression(__tmp__):Void __tmp__.enableCompression();
    public function _startCheck(__tmp__, _s:T_section):Error return __tmp__._startCheck(_s);
    public function startQuestions(__tmp__):Error return __tmp__.startQuestions();
    public function startAnswers(__tmp__):Error return __tmp__.startAnswers();
    public function startAuthorities(__tmp__):Error return __tmp__.startAuthorities();
    public function startAdditionals(__tmp__):Error return __tmp__.startAdditionals();
    public function _incrementSectionCount(__tmp__):Error return __tmp__._incrementSectionCount();
    public function question(__tmp__, _q:Question):Error return __tmp__.question(_q);
    public function _checkResourceSection(__tmp__):Error return __tmp__._checkResourceSection();
    public function cnameresource(__tmp__, _h:ResourceHeader, _r:CNAMEResource):Error return __tmp__.cnameresource(_h, _r);
    public function mxresource(__tmp__, _h:ResourceHeader, _r:MXResource):Error return __tmp__.mxresource(_h, _r);
    public function nsresource(__tmp__, _h:ResourceHeader, _r:NSResource):Error return __tmp__.nsresource(_h, _r);
    public function ptrresource(__tmp__, _h:ResourceHeader, _r:PTRResource):Error return __tmp__.ptrresource(_h, _r);
    public function soaresource(__tmp__, _h:ResourceHeader, _r:SOAResource):Error return __tmp__.soaresource(_h, _r);
    public function txtresource(__tmp__, _h:ResourceHeader, _r:TXTResource):Error return __tmp__.txtresource(_h, _r);
    public function srvresource(__tmp__, _h:ResourceHeader, _r:SRVResource):Error return __tmp__.srvresource(_h, _r);
    public function aresource(__tmp__, _h:ResourceHeader, _r:AResource):Error return __tmp__.aresource(_h, _r);
    public function aaaaresource(__tmp__, _h:ResourceHeader, _r:AAAAResource):Error return __tmp__.aaaaresource(_h, _r);
    public function optresource(__tmp__, _h:ResourceHeader, _r:OPTResource):Error return __tmp__.optresource(_h, _r);
    public function unknownResource(__tmp__, _h:ResourceHeader, _r:UnknownResource):Error return __tmp__.unknownResource(_h, _r);
    public function finish(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.finish();
}
class ResourceHeader_extension_fields {
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function _pack(__tmp__, _oldMsg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : GoInt; var _2 : Error; } return __tmp__._pack(_oldMsg, _compression, _compressionOff);
    public function _unpack(__tmp__, _msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } return __tmp__._unpack(_msg, _off);
    public function _fixLen(__tmp__, _msg:Slice<GoByte>, _lenOff:GoInt, _preLen:GoInt):Error return __tmp__._fixLen(_msg, _lenOff, _preLen);
    public function setEDNS0(__tmp__, _udpPayloadLen:GoInt, _extRCode:RCode, _dnssecOK:Bool):Error return __tmp__.setEDNS0(_udpPayloadLen, _extRCode, _dnssecOK);
    public function dnssecallowed(__tmp__):Bool return __tmp__.dnssecallowed();
    public function extendedRCode(__tmp__, _rcode:RCode):RCode return __tmp__.extendedRCode(_rcode);
}
class Name_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function _unpack(__tmp__, _msg:Slice<GoByte>, _off:GoInt):{ var _0 : GoInt; var _1 : Error; } return __tmp__._unpack(_msg, _off);
    public function _unpackCompressed(__tmp__, _msg:Slice<GoByte>, _off:GoInt, _allowCompression:Bool):{ var _0 : GoInt; var _1 : Error; } return __tmp__._unpackCompressed(_msg, _off, _allowCompression);
}
class Question_extension_fields {
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class CNAMEResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class MXResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class NSResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class PTRResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SOAResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class TXTResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class SRVResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class AResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class AAAAResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function goString(__tmp__):GoString return __tmp__.goString();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
}
class OPTResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class Option_extension_fields {
    public function goString(__tmp__):GoString return __tmp__.goString();
}
class UnknownResource_extension_fields {
    public function _realType(__tmp__):Type return __tmp__._realType();
    public function _pack(__tmp__, _msg:Slice<GoByte>, _compression:GoMap<GoString, GoInt>, _compressionOff:GoInt):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._pack(_msg, _compression, _compressionOff);
    public function goString(__tmp__):GoString return __tmp__.goString();
}
