package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _err_3550950:stdgo.Error = (null : stdgo.Error);
            var _t_3551204:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3551130:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _err_3554075:stdgo.Error = (null : stdgo.Error);
            var _after_3552628:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3552295:stdgo.GoString = ("" : stdgo.GoString);
            var _re_3553904:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _p_3551092:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _n_3554730:stdgo.GoInt = (0 : stdgo.GoInt);
            var bigSwitchBreak = false;
            var _rest_3554069:stdgo.GoString = ("" : stdgo.GoString);
            var _before_3552603:stdgo.GoString = ("" : stdgo.GoString);
            var _after_3552420:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3554066:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3553674:stdgo.GoString = ("" : stdgo.GoString);
            var _r_3554305:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _lit_3553591:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3551146:stdgo.GoString = ("" : stdgo.GoString);
            var _max_3552623:stdgo.GoInt = (0 : stdgo.GoInt);
            var _repeat_3551228:stdgo.GoString = ("" : stdgo.GoString);
            var _rest_3554308:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3552635:Bool = false;
            var _min_3552618:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3551112:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _err_3553680:stdgo.Error = (null : stdgo.Error);
            var _c_3553671:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _r = ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (__value__ == null) {} else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else if (__value__ == (stdgo.Go.toInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode))))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>));
                                            } else {
                                                throw stdgo.Go.toInterface(_r);
                                            };
                                        };
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                        if (__exception__.message == "__return__") throw "__return__";
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        });
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3550903i32;
                        } else {
                            _gotoNext = 3551084i32;
                        };
                    } else if (__value__ == (3550903i32)) {
                        {
                            _err_3550950 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3550950 != null) {
                                _gotoNext = 3550982i32;
                            } else {
                                _gotoNext = 3551009i32;
                            };
                        };
                    } else if (__value__ == (3550982i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3550950 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551009i32;
                    } else if (__value__ == (3551009i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551084i32;
                    } else if (__value__ == (3551084i32)) {
                        _p_3551092._flags = _flags;
                        _p_3551092._wholeRegexp = _s?.__copy__();
                        _t_3551204 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3551212i32;
                    } else if (__value__ == (3551212i32)) {
                        if (_t_3551204 != (stdgo.Go.str())) {
                            _gotoNext = 3551224i32;
                        } else {
                            _gotoNext = 3554614i32;
                        };
                    } else if (__value__ == (3551224i32)) {
                        _repeat_3551228 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3551242i32;
                    } else if (__value__ == (3551242i32)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3551255i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3551204[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551368i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551638i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551735i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551831i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3551946i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552076i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552190i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552272i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3552573i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3553129i32;
                                } else {
                                    _gotoNext = 3551271i32;
                                };
                            };
                        } else {
                            _gotoNext = 3554589i32;
                        };
                    } else if (__value__ == (3551271i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3551204?.__copy__());
                                _c_3551112 = __tmp__._0;
                                _t_3551204 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3551322i32;
                            } else {
                                _gotoNext = 3551352i32;
                            };
                        };
                    } else if (__value__ == (3551322i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551352i32;
                    } else if (__value__ == (3551352i32)) {
                        _p_3551092._literal(_c_3551112);
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551368i32)) {
                        if ((((_p_3551092._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3551204.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3551204[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3551433i32;
                        } else {
                            _gotoNext = 3551576i32;
                        };
                    } else if (__value__ == (3551433i32)) {
                        {
                            {
                                var __tmp__ = _p_3551092._parsePerlFlags(_t_3551204?.__copy__());
                                _t_3551204 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3551529i32;
                            } else {
                                _gotoNext = 3551562i32;
                            };
                        };
                    } else if (__value__ == (3551529i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551562i32;
                    } else if (__value__ == (3551562i32)) {
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551576i32)) {
                        _p_3551092._numCap++;
                        _p_3551092._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3551092._numCap;
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551638i32)) {
                        {
                            _err = _p_3551092._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3551693i32;
                            } else {
                                _gotoNext = 3551723i32;
                            };
                        };
                    } else if (__value__ == (3551693i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551723i32;
                    } else if (__value__ == (3551723i32)) {
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551735i32)) {
                        {
                            _err = _p_3551092._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3551789i32;
                            } else {
                                _gotoNext = 3551819i32;
                            };
                        };
                    } else if (__value__ == (3551789i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3551819i32;
                    } else if (__value__ == (3551819i32)) {
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551831i32)) {
                        if ((_p_3551092._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3551868i32;
                        } else {
                            _gotoNext = 3551902i32;
                        };
                    } else if (__value__ == (3551868i32)) {
                        _p_3551092._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3551934i32;
                    } else if (__value__ == (3551902i32)) {
                        _gotoNext = 3551902i32;
                        _p_3551092._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3551934i32;
                    } else if (__value__ == (3551934i32)) {
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3551946i32)) {
                        if ((_p_3551092._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3551983i32;
                        } else {
                            _gotoNext = 3552034i32;
                        };
                    } else if (__value__ == (3551983i32)) {
                        _p_3551092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3551092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3552064i32;
                    } else if (__value__ == (3552034i32)) {
                        _gotoNext = 3552034i32;
                        _p_3551092._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3552064i32;
                    } else if (__value__ == (3552064i32)) {
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3552076i32)) {
                        if ((_p_3551092._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3552111i32;
                        } else {
                            _gotoNext = 3552143i32;
                        };
                    } else if (__value__ == (3552111i32)) {
                        _p_3551092._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3552178i32;
                    } else if (__value__ == (3552143i32)) {
                        _gotoNext = 3552143i32;
                        _p_3551092._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        var __blank__ = 0i32;
                        _gotoNext = 3552178i32;
                    } else if (__value__ == (3552178i32)) {
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3552190i32)) {
                        {
                            {
                                var __tmp__ = _p_3551092._parseClass(_t_3551204?.__copy__());
                                _t_3551204 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3552243i32;
                            } else {
                                _gotoNext = 3554589i32;
                            };
                        };
                    } else if (__value__ == (3552243i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3552272i32)) {
                        _before_3552295 = _t_3551204?.__copy__();
                        _gotoNext = 3552310i32;
                    } else if (__value__ == (3552310i32)) {
                        {
                            final __value__ = _t_3551204[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3552327i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3552356i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3552385i32;
                            } else {
                                _gotoNext = 3552420i32;
                            };
                        };
                    } else if (__value__ == (3552327i32)) {
                        _op_3551130 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3552420i32;
                    } else if (__value__ == (3552356i32)) {
                        _op_3551130 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3552420i32;
                    } else if (__value__ == (3552385i32)) {
                        _op_3551130 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3552420i32;
                    } else if (__value__ == (3552420i32)) {
                        _after_3552420 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3551092._repeat(_op_3551130, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3552295?.__copy__(), _after_3552420?.__copy__(), _lastRepeat_3551146?.__copy__());
                                _after_3552420 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3552512i32;
                            } else {
                                _gotoNext = 3552542i32;
                            };
                        };
                    } else if (__value__ == (3552512i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3552542i32;
                    } else if (__value__ == (3552542i32)) {
                        _repeat_3551228 = _before_3552295?.__copy__();
                        _t_3551204 = _after_3552420?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3552573i32)) {
                        _op_3551130 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3552603 = _t_3551204?.__copy__();
                        {
                            var __tmp__ = _p_3551092._parseRepeat(_t_3551204?.__copy__());
                            _min_3552618 = __tmp__._0;
                            _max_3552623 = __tmp__._1;
                            _after_3552628 = __tmp__._2?.__copy__();
                            _ok_3552635 = __tmp__._3;
                        };
                        if (!_ok_3552635) {
                            _gotoNext = 3552668i32;
                        } else {
                            _gotoNext = 3552776i32;
                        };
                    } else if (__value__ == (3552668i32)) {
                        _p_3551092._literal((123 : stdgo.GoInt32));
                        _t_3551204 = (_t_3551204.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3552776i32)) {
                        if (((((_min_3552618 < (0 : stdgo.GoInt) : Bool) || (_min_3552618 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3552623 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3552623 >= (0 : stdgo.GoInt) : Bool) && (_min_3552618 > _max_3552623 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3552840i32;
                        } else {
                            _gotoNext = 3552990i32;
                        };
                    } else if (__value__ == (3552840i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3552603.__slice__(0, ((_before_3552603.length) - (_after_3552628.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3552990i32;
                    } else if (__value__ == (3552990i32)) {
                        {
                            {
                                var __tmp__ = _p_3551092._repeat(_op_3551130, _min_3552618, _max_3552623, _before_3552603?.__copy__(), _after_3552628?.__copy__(), _lastRepeat_3551146?.__copy__());
                                _after_3552628 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3553068i32;
                            } else {
                                _gotoNext = 3553098i32;
                            };
                        };
                    } else if (__value__ == (3553068i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553098i32;
                    } else if (__value__ == (3553098i32)) {
                        _repeat_3551228 = _before_3552603?.__copy__();
                        _t_3551204 = _after_3552628?.__copy__();
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3553129i32)) {
                        if ((((_p_3551092._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3551204.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3553180i32;
                        } else {
                            _gotoNext = 3553904i32;
                        };
                    } else if (__value__ == (3553180i32)) {
                        _gotoNext = 3553186i32;
                    } else if (__value__ == (3553186i32)) {
                        {
                            final __value__ = _t_3551204[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3553204i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3553277i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3553353i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3553431i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3553526i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3553822i32;
                            } else {
                                _gotoNext = 3553904i32;
                            };
                        };
                    } else if (__value__ == (3553204i32)) {
                        _p_3551092._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3551204 = (_t_3551204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3553277i32)) {
                        _p_3551092._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3551204 = (_t_3551204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3553353i32)) {
                        _p_3551092._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3551204 = (_t_3551204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3553431i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3551204.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553904i32;
                    } else if (__value__ == (3553526i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3551204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3553591 = __tmp__._0?.__copy__();
                            _t_3551204 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3553649i32;
                    } else if (__value__ == (3553649i32)) {
                        if (_lit_3553591 != (stdgo.Go.str())) {
                            _gotoNext = 3553663i32;
                        } else {
                            _gotoNext = 3553802i32;
                        };
                    } else if (__value__ == (3553663i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3553591?.__copy__());
                            _c_3553671 = __tmp__._0;
                            _rest_3553674 = __tmp__._1?.__copy__();
                            _err_3553680 = __tmp__._2;
                        };
                        if (_err_3553680 != null) {
                            _gotoNext = 3553721i32;
                        } else {
                            _gotoNext = 3553760i32;
                        };
                    } else if (__value__ == (3553721i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3553680 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3553760i32;
                    } else if (__value__ == (3553760i32)) {
                        _p_3551092._literal(_c_3553671);
                        _lit_3553591 = _rest_3553674?.__copy__();
                        _gotoNext = 3553649i32;
                    } else if (__value__ == (3553802i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3553822i32)) {
                        _p_3551092._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3551204 = (_t_3551204.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3553904i32)) {
                        _re_3553904 = _p_3551092._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3553904.flags = _p_3551092._flags;
                        if ((((_t_3551204.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3551204[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3551204[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3554060i32;
                        } else {
                            _gotoNext = 3554302i32;
                        };
                    } else if (__value__ == (3554060i32)) {
                        {
                            var __tmp__ = _p_3551092._parseUnicodeClass(_t_3551204?.__copy__(), (_re_3553904.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3554066 = __tmp__._0;
                            _rest_3554069 = __tmp__._1?.__copy__();
                            _err_3554075 = __tmp__._2;
                        };
                        if (_err_3554075 != null) {
                            _gotoNext = 3554137i32;
                        } else {
                            _gotoNext = 3554170i32;
                        };
                    } else if (__value__ == (3554137i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3554075 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554170i32;
                    } else if (__value__ == (3554170i32)) {
                        if (_r_3554066 != null) {
                            _gotoNext = 3554182i32;
                        } else {
                            _gotoNext = 3554302i32;
                        };
                    } else if (__value__ == (3554182i32)) {
                        _re_3553904.rune = _r_3554066;
                        _t_3551204 = _rest_3554069?.__copy__();
                        _p_3551092._push(_re_3553904);
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3554302i32)) {
                        {
                            {
                                var __tmp__ = _p_3551092._parsePerlClassEscape(_t_3551204?.__copy__(), (_re_3553904.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3554305 = __tmp__._0;
                                _rest_3554308 = __tmp__._1?.__copy__();
                            };
                            if (_r_3554305 != null) {
                                _gotoNext = 3554366i32;
                            } else {
                                _gotoNext = 3554440i32;
                            };
                        };
                    } else if (__value__ == (3554366i32)) {
                        _re_3553904.rune = _r_3554305;
                        _t_3551204 = _rest_3554308?.__copy__();
                        _p_3551092._push(_re_3553904);
                        bigSwitchBreak = true;
                        _gotoNext = 3551255i32;
                    } else if (__value__ == (3554440i32)) {
                        _p_3551092._reuse(_re_3553904);
                        {
                            {
                                var __tmp__ = _p_3551092._parseEscape(_t_3551204?.__copy__());
                                _c_3551112 = __tmp__._0;
                                _t_3551204 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3554540i32;
                            } else {
                                _gotoNext = 3554570i32;
                            };
                        };
                    } else if (__value__ == (3554540i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554570i32;
                    } else if (__value__ == (3554570i32)) {
                        _p_3551092._literal(_c_3551112);
                        _gotoNext = 3554589i32;
                    } else if (__value__ == (3554589i32)) {
                        _lastRepeat_3551146 = _repeat_3551228?.__copy__();
                        _gotoNext = 3551212i32;
                    } else if (__value__ == (3554614i32)) {
                        _p_3551092._concat();
                        if (_p_3551092._swapVerticalBar()) {
                            _gotoNext = 3554649i32;
                        } else {
                            _gotoNext = 3554714i32;
                        };
                    } else if (__value__ == (3554649i32)) {
                        _p_3551092._stack = (_p_3551092._stack.__slice__(0, ((_p_3551092._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3554714i32;
                    } else if (__value__ == (3554714i32)) {
                        _p_3551092._alternate();
                        _n_3554730 = (_p_3551092._stack.length);
                        if (_n_3554730 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3554759i32;
                        } else {
                            _gotoNext = 3554806i32;
                        };
                    } else if (__value__ == (3554759i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3554806i32;
                    } else if (__value__ == (3554806i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3551092._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _0, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
