package stdgo._internal.encoding.json;
function testMarshalFloat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        @:check2r _t.parallel();
        var _nfail = (0 : stdgo.GoInt);
        var _test = (function(_f:stdgo.GoFloat64, _bits:stdgo.GoInt):Void {
            var _vf = (stdgo.Go.toInterface(_f) : stdgo.AnyInterface);
            if (_bits == ((32 : stdgo.GoInt))) {
                _f = ((_f : stdgo.GoFloat32) : stdgo.GoFloat64);
                _vf = stdgo.Go.toInterface((_f : stdgo.GoFloat32));
            };
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_vf), _bout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Marshal(%T(%g)): %v" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_err));
                _nfail++;
                return;
            };
            var _out = ((_bout : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_out?.__copy__(), _bits), _g:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Marshal(%T(%g)) = %q, cannot parse back: %v" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err));
                _nfail++;
                return;
            };
            if (((_f != _g) || (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_f)) != stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_g))) : Bool)) {
                @:check2r _t.errorf(("Marshal(%T(%g)) = %q (is %g, not %g)" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_g : stdgo.GoFloat32)), _vf);
                _nfail++;
                return;
            };
            var _bad = stdgo._internal.encoding.json.Json__badfloatres._badFloatREs;
            if (_bits == ((64 : stdgo.GoInt))) {
                _bad = (_bad.__slice__(0, ((_bad.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>>);
            };
            for (__4 => _re in _bad) {
                if (@:check2r _re.matchString(_out?.__copy__())) {
                    @:check2r _t.errorf(("Marshal(%T(%g)) = %q, must not match /%s/" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)));
                    _nfail++;
                    return;
                };
            };
        } : (stdgo.GoFloat64, stdgo.GoInt) -> Void);
        var __0 = stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)), __1 = stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt));
var _smaller = __1, _bigger = __0;
        var _digits = ("1.2345678901234567890123" : stdgo.GoString);
        {
            var _i = (_digits.length : stdgo.GoInt);
            while ((_i >= (2 : stdgo.GoInt) : Bool)) {
                if ((stdgo._internal.testing.Testing_short.short() && (_i < ((_digits.length) - (4 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
{
                    var _exp = (-30 : stdgo.GoInt);
                    while ((_exp <= (30 : stdgo.GoInt) : Bool)) {
                        for (__4 => _sign in ("+-" : stdgo.GoString)) {
                            {
                                var _bits = (32 : stdgo.GoInt);
                                while ((_bits <= (64 : stdgo.GoInt) : Bool)) {
                                    var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%c%se%d" : stdgo.GoString), stdgo.Go.toInterface(_sign), stdgo.Go.toInterface((_digits.__slice__(0, _i) : stdgo.GoString)), stdgo.Go.toInterface(_exp)).__copy__() : stdgo.GoString);
var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s.__copy__(), _bits), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                                        stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
                                    };
var _next = (stdgo._internal.math.Math_nextafter.nextafter : (stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64);
if (_bits == ((32 : stdgo.GoInt))) {
                                        _next = function(_g:stdgo.GoFloat64, _h:stdgo.GoFloat64):stdgo.GoFloat64 {
                                            return (stdgo._internal.math.Math_nextafter32.nextafter32((_g : stdgo.GoFloat32), (_h : stdgo.GoFloat32)) : stdgo.GoFloat64);
                                        };
                                    };
_test(_f, _bits);
_test(_next(_f, _bigger), _bits);
_test(_next(_f, _smaller), _bits);
if ((_nfail > (50 : stdgo.GoInt) : Bool)) {
                                        @:check2r _t.fatalf(("stopping test early" : stdgo.GoString));
                                    };
                                    _bits = (_bits + ((32 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                        _exp++;
                    };
                };
                _i--;
            };
        };
        _test((0 : stdgo.GoFloat64), (64 : stdgo.GoInt));
        _test(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (64 : stdgo.GoInt));
        _test((0 : stdgo.GoFloat64), (32 : stdgo.GoInt));
        _test(stdgo._internal.math.Math_copysign.copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (32 : stdgo.GoInt));
    }
