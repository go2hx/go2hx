package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.math.big.Big.T_matrix_asInterface) class T_matrix_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                        _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(("\t%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _a._at(_i, _j))))).__copy__() : stdgo.GoString);
                        _j++;
                    };
                };
_s = (_s + (("\n" : stdgo.GoString)).__copy__() : stdgo.GoString);
                _i++;
            };
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _eql( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if ((((@:checkr _a ?? throw "null pointer dereference")._n != (@:checkr _b ?? throw "null pointer dereference")._n) || ((@:checkr _a ?? throw "null pointer dereference")._m != (@:checkr _b ?? throw "null pointer dereference")._m) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                        if (@:check2r @:check2r _a._at(_i, _j).cmp(@:check2r _b._at(_i, _j)) != ((0 : stdgo.GoInt))) {
                            return false;
                        };
                        _j++;
                    };
                };
                _i++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _mul( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if ((@:checkr _a ?? throw "null pointer dereference")._m != ((@:checkr _b ?? throw "null pointer dereference")._n)) {
            throw stdgo.Go.toInterface(("illegal matrix multiply" : stdgo.GoString));
        };
        var _c = stdgo._internal.math.big.Big__newMatrix._newMatrix((@:checkr _a ?? throw "null pointer dereference")._n, (@:checkr _b ?? throw "null pointer dereference")._m);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _c ?? throw "null pointer dereference")._n : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (@:checkr _c ?? throw "null pointer dereference")._m : Bool)) {
                        var _x = stdgo._internal.math.big.Big_newRat.newRat((0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
{
                            var _k = (0 : stdgo.GoInt);
                            while ((_k < (@:checkr _a ?? throw "null pointer dereference")._m : Bool)) {
                                @:check2r _x.add(_x, @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).mul(@:check2r _a._at(_i, _k), @:check2r _b._at(_k, _j)));
                                _k++;
                            };
                        };
@:check2r _c._set(_i, _j, _x);
                        _j++;
                    };
                };
                _i++;
            };
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _set( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        (@:checkr _a ?? throw "null pointer dereference")._a[((_i * (@:checkr _a ?? throw "null pointer dereference")._m : stdgo.GoInt) + _j : stdgo.GoInt)] = _x;
    }
    @:keep
    @:tdfield
    static public function _at( _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> {
        @:recv var _a:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> = _a;
        if (!((((((0 : stdgo.GoInt) <= _i : Bool) && (_i < (@:checkr _a ?? throw "null pointer dereference")._n : Bool) : Bool) && ((0 : stdgo.GoInt) <= _j : Bool) : Bool) && (_j < (@:checkr _a ?? throw "null pointer dereference")._m : Bool) : Bool))) {
            throw stdgo.Go.toInterface(("index out of range" : stdgo.GoString));
        };
        return (@:checkr _a ?? throw "null pointer dereference")._a[((_i * (@:checkr _a ?? throw "null pointer dereference")._m : stdgo.GoInt) + _j : stdgo.GoInt)];
    }
}
