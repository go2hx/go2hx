package stdgo._internal.regexp.syntax;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _lit_3407702:stdgo.GoString = ("" : stdgo.GoString);
            var _p_3405203:stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_T_parser.T_parser);
            var _after_3406531:stdgo.GoString = ("" : stdgo.GoString);
            var _err_3405061:stdgo.Error = (null : stdgo.Error);
            var _err_3408186:stdgo.Error = (null : stdgo.Error);
            var _err_3407791:stdgo.Error = (null : stdgo.Error);
            var _max_3406734:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_3406406:stdgo.GoString = ("" : stdgo.GoString);
            var _c_3405223:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var bigSwitchBreak = false;
            var _re_3408015:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
            var _before_3406714:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_3405257:stdgo.GoString = ("" : stdgo.GoString);
            var _n_3408841:stdgo.GoInt = (0 : stdgo.GoInt);
            var _c_3407782:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_3406739:stdgo.GoString = ("" : stdgo.GoString);
            var _t_3405315:stdgo.GoString = ("" : stdgo.GoString);
            var _op_3405241:stdgo._internal.regexp.syntax.Syntax_Op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            var _rest_3408180:stdgo.GoString = ("" : stdgo.GoString);
            var _min_3406729:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_3408416:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _r_3408177:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_3407785:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_3406746:Bool = false;
            var _rest_3408419:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_3405339:stdgo.GoString = ("" : stdgo.GoString);
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
                            _gotoNext = 3405014i32;
                        } else {
                            _gotoNext = 3405195i32;
                        };
                    } else if (__value__ == (3405014i32)) {
                        {
                            _err_3405061 = stdgo._internal.regexp.syntax.Syntax__checkUTF8._checkUTF8(_s?.__copy__());
                            if (_err_3405061 != null) {
                                _gotoNext = 3405093i32;
                            } else {
                                _gotoNext = 3405120i32;
                            };
                        };
                    } else if (__value__ == (3405093i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3405061 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405120i32;
                    } else if (__value__ == (3405120i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalRegexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405195i32;
                    } else if (__value__ == (3405195i32)) {
                        _p_3405203._flags = _flags;
                        _p_3405203._wholeRegexp = _s?.__copy__();
                        _t_3405315 = _s?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3405323i32;
                    } else if (__value__ == (3405323i32)) {
                        if (_t_3405315 != (stdgo.Go.str())) {
                            _gotoNext = 3405335i32;
                        } else {
                            _gotoNext = 3408725i32;
                        };
                    } else if (__value__ == (3405335i32)) {
                        _repeat_3405339 = stdgo.Go.str()?.__copy__();
                        _gotoNext = 3405353i32;
                    } else if (__value__ == (3405353i32)) {
                        var __blank__ = 0i32;
                        bigSwitchBreak = false;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3405366i32)) {
                        if (!bigSwitchBreak) {
                            {
                                final __value__ = _t_3405315[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3405479i32;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3405749i32;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3405846i32;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3405942i32;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406057i32;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406187i32;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406301i32;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406383i32;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3406684i32;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3407240i32;
                                } else {
                                    _gotoNext = 3405382i32;
                                };
                            };
                        } else {
                            _gotoNext = 3408700i32;
                        };
                    } else if (__value__ == (3405382i32)) {
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_t_3405315?.__copy__());
                                _c_3405223 = __tmp__._0;
                                _t_3405315 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3405433i32;
                            } else {
                                _gotoNext = 3405463i32;
                            };
                        };
                    } else if (__value__ == (3405433i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405463i32;
                    } else if (__value__ == (3405463i32)) {
                        _p_3405203._literal(_c_3405223);
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3405479i32)) {
                        if ((((_p_3405203._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3405315.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_3405315[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3405544i32;
                        } else {
                            _gotoNext = 3405687i32;
                        };
                    } else if (__value__ == (3405544i32)) {
                        {
                            {
                                var __tmp__ = _p_3405203._parsePerlFlags(_t_3405315?.__copy__());
                                _t_3405315 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3405640i32;
                            } else {
                                _gotoNext = 3405673i32;
                            };
                        };
                    } else if (__value__ == (3405640i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405673i32;
                    } else if (__value__ == (3405673i32)) {
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3405687i32)) {
                        _p_3405203._numCap++;
                        _p_3405203._op((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).cap = _p_3405203._numCap;
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3405749i32)) {
                        {
                            _err = _p_3405203._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3405804i32;
                            } else {
                                _gotoNext = 3405834i32;
                            };
                        };
                    } else if (__value__ == (3405804i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405834i32;
                    } else if (__value__ == (3405834i32)) {
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3405846i32)) {
                        {
                            _err = _p_3405203._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3405900i32;
                            } else {
                                _gotoNext = 3405930i32;
                            };
                        };
                    } else if (__value__ == (3405900i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3405930i32;
                    } else if (__value__ == (3405930i32)) {
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3405942i32)) {
                        if ((_p_3405203._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3405979i32;
                        } else {
                            _gotoNext = 3406013i32;
                        };
                    } else if (__value__ == (3405979i32)) {
                        _p_3405203._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3406045i32;
                    } else if (__value__ == (3406013i32)) {
                        _p_3405203._op((7 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3406045i32;
                    } else if (__value__ == (3406045i32)) {
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406057i32)) {
                        if ((_p_3405203._flags & (16 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3406094i32;
                        } else {
                            _gotoNext = 3406145i32;
                        };
                    } else if (__value__ == (3406094i32)) {
                        _p_3405203._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags = (_p_3405203._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op)).flags | ((256 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags);
                        _gotoNext = 3406175i32;
                    } else if (__value__ == (3406145i32)) {
                        _p_3405203._op((8 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3406175i32;
                    } else if (__value__ == (3406175i32)) {
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406187i32)) {
                        if ((_p_3405203._flags & (8 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags))) {
                            _gotoNext = 3406222i32;
                        } else {
                            _gotoNext = 3406254i32;
                        };
                    } else if (__value__ == (3406222i32)) {
                        _p_3405203._op((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3406289i32;
                    } else if (__value__ == (3406254i32)) {
                        _p_3405203._op((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _gotoNext = 3406289i32;
                    } else if (__value__ == (3406289i32)) {
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406301i32)) {
                        {
                            {
                                var __tmp__ = _p_3405203._parseClass(_t_3405315?.__copy__());
                                _t_3405315 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3406354i32;
                            } else {
                                _gotoNext = 3408700i32;
                            };
                        };
                    } else if (__value__ == (3406354i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406383i32)) {
                        _before_3406406 = _t_3405315?.__copy__();
                        var __blank__ = 0i32;
                        _gotoNext = 3406421i32;
                    } else if (__value__ == (3406421i32)) {
                        {
                            final __value__ = _t_3405315[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3406438i32;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3406467i32;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3406496i32;
                            } else {
                                _gotoNext = 3406531i32;
                            };
                        };
                    } else if (__value__ == (3406438i32)) {
                        _op_3405241 = (14 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3406531i32;
                    } else if (__value__ == (3406467i32)) {
                        _op_3405241 = (15 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3406531i32;
                    } else if (__value__ == (3406496i32)) {
                        _op_3405241 = (16 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _gotoNext = 3406531i32;
                    } else if (__value__ == (3406531i32)) {
                        _after_3406531 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        {
                            {
                                var __tmp__ = _p_3405203._repeat(_op_3405241, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_3406406?.__copy__(), _after_3406531?.__copy__(), _lastRepeat_3405257?.__copy__());
                                _after_3406531 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3406623i32;
                            } else {
                                _gotoNext = 3406653i32;
                            };
                        };
                    } else if (__value__ == (3406623i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3406653i32;
                    } else if (__value__ == (3406653i32)) {
                        _repeat_3405339 = _before_3406406?.__copy__();
                        _t_3405315 = _after_3406531?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406684i32)) {
                        _op_3405241 = (17 : stdgo._internal.regexp.syntax.Syntax_Op.Op);
                        _before_3406714 = _t_3405315?.__copy__();
                        {
                            var __tmp__ = _p_3405203._parseRepeat(_t_3405315?.__copy__());
                            _min_3406729 = __tmp__._0;
                            _max_3406734 = __tmp__._1;
                            _after_3406739 = __tmp__._2?.__copy__();
                            _ok_3406746 = __tmp__._3;
                        };
                        if (!_ok_3406746) {
                            _gotoNext = 3406779i32;
                        } else {
                            _gotoNext = 3406887i32;
                        };
                    } else if (__value__ == (3406779i32)) {
                        _p_3405203._literal((123 : stdgo.GoInt32));
                        _t_3405315 = (_t_3405315.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3406887i32)) {
                        if (((((_min_3406729 < (0 : stdgo.GoInt) : Bool) || (_min_3406729 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_3406734 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_3406734 >= (0 : stdgo.GoInt) : Bool) && (_min_3406729 > _max_3406734 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3406951i32;
                        } else {
                            _gotoNext = 3407101i32;
                        };
                    } else if (__value__ == (3406951i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_before_3406714.__slice__(0, ((_before_3406714.length) - (_after_3406739.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407101i32;
                    } else if (__value__ == (3407101i32)) {
                        {
                            {
                                var __tmp__ = _p_3405203._repeat(_op_3405241, _min_3406729, _max_3406734, _before_3406714?.__copy__(), _after_3406739?.__copy__(), _lastRepeat_3405257?.__copy__());
                                _after_3406739 = __tmp__._0?.__copy__();
                                _err = __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3407179i32;
                            } else {
                                _gotoNext = 3407209i32;
                            };
                        };
                    } else if (__value__ == (3407179i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407209i32;
                    } else if (__value__ == (3407209i32)) {
                        _repeat_3405339 = _before_3406714?.__copy__();
                        _t_3405315 = _after_3406739?.__copy__();
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3407240i32)) {
                        if ((((_p_3405203._flags & (64 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) && ((_t_3405315.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3407291i32;
                        } else {
                            _gotoNext = 3408015i32;
                        };
                    } else if (__value__ == (3407291i32)) {
                        var __blank__ = 0i32;
                        _gotoNext = 3407297i32;
                    } else if (__value__ == (3407297i32)) {
                        {
                            final __value__ = _t_3405315[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3407315i32;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3407388i32;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3407464i32;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3407542i32;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3407637i32;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3407933i32;
                            } else {
                                _gotoNext = 3408015i32;
                            };
                        };
                    } else if (__value__ == (3407315i32)) {
                        _p_3405203._op((9 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3405315 = (_t_3405315.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3407388i32)) {
                        _p_3405203._op((11 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3405315 = (_t_3405315.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3407464i32)) {
                        _p_3405203._op((12 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3405315 = (_t_3405315.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3407542i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), (_t_3405315.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408015i32;
                    } else if (__value__ == (3407637i32)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_3405315.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_3407702 = __tmp__._0?.__copy__();
                            _t_3405315 = __tmp__._1?.__copy__();
                        };
                        var __blank__ = 0i32;
                        _gotoNext = 3407760i32;
                    } else if (__value__ == (3407760i32)) {
                        if (_lit_3407702 != (stdgo.Go.str())) {
                            _gotoNext = 3407774i32;
                        } else {
                            _gotoNext = 3407913i32;
                        };
                    } else if (__value__ == (3407774i32)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextRune._nextRune(_lit_3407702?.__copy__());
                            _c_3407782 = __tmp__._0;
                            _rest_3407785 = __tmp__._1?.__copy__();
                            _err_3407791 = __tmp__._2;
                        };
                        if (_err_3407791 != null) {
                            _gotoNext = 3407832i32;
                        } else {
                            _gotoNext = 3407871i32;
                        };
                    } else if (__value__ == (3407832i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3407791 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3407871i32;
                    } else if (__value__ == (3407871i32)) {
                        _p_3405203._literal(_c_3407782);
                        _lit_3407702 = _rest_3407785?.__copy__();
                        _gotoNext = 3407760i32;
                    } else if (__value__ == (3407913i32)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3407933i32)) {
                        _p_3405203._op((10 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _t_3405315 = (_t_3405315.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3408015i32)) {
                        _re_3408015 = _p_3405203._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op));
                        _re_3408015.flags = _p_3405203._flags;
                        if ((((_t_3405315.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_3405315[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_3405315[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3408171i32;
                        } else {
                            _gotoNext = 3408413i32;
                        };
                    } else if (__value__ == (3408171i32)) {
                        {
                            var __tmp__ = _p_3405203._parseUnicodeClass(_t_3405315?.__copy__(), (_re_3408015.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_3408177 = __tmp__._0;
                            _rest_3408180 = __tmp__._1?.__copy__();
                            _err_3408186 = __tmp__._2;
                        };
                        if (_err_3408186 != null) {
                            _gotoNext = 3408248i32;
                        } else {
                            _gotoNext = 3408281i32;
                        };
                    } else if (__value__ == (3408248i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_3408186 };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408281i32;
                    } else if (__value__ == (3408281i32)) {
                        if (_r_3408177 != null) {
                            _gotoNext = 3408293i32;
                        } else {
                            _gotoNext = 3408413i32;
                        };
                    } else if (__value__ == (3408293i32)) {
                        _re_3408015.rune = _r_3408177;
                        _t_3405315 = _rest_3408180?.__copy__();
                        _p_3405203._push(_re_3408015);
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3408413i32)) {
                        {
                            {
                                var __tmp__ = _p_3405203._parsePerlClassEscape(_t_3405315?.__copy__(), (_re_3408015.rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_3408416 = __tmp__._0;
                                _rest_3408419 = __tmp__._1?.__copy__();
                            };
                            if (_r_3408416 != null) {
                                _gotoNext = 3408477i32;
                            } else {
                                _gotoNext = 3408551i32;
                            };
                        };
                    } else if (__value__ == (3408477i32)) {
                        _re_3408015.rune = _r_3408416;
                        _t_3405315 = _rest_3408419?.__copy__();
                        _p_3405203._push(_re_3408015);
                        bigSwitchBreak = true;
                        _gotoNext = 3405366i32;
                    } else if (__value__ == (3408551i32)) {
                        _p_3405203._reuse(_re_3408015);
                        {
                            {
                                var __tmp__ = _p_3405203._parseEscape(_t_3405315?.__copy__());
                                _c_3405223 = __tmp__._0;
                                _t_3405315 = __tmp__._1?.__copy__();
                                _err = __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3408651i32;
                            } else {
                                _gotoNext = 3408681i32;
                            };
                        };
                    } else if (__value__ == (3408651i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408681i32;
                    } else if (__value__ == (3408681i32)) {
                        _p_3405203._literal(_c_3405223);
                        _gotoNext = 3408700i32;
                    } else if (__value__ == (3408700i32)) {
                        _lastRepeat_3405257 = _repeat_3405339?.__copy__();
                        _gotoNext = 3405323i32;
                    } else if (__value__ == (3408725i32)) {
                        _p_3405203._concat();
                        if (_p_3405203._swapVerticalBar()) {
                            _gotoNext = 3408760i32;
                        } else {
                            _gotoNext = 3408825i32;
                        };
                    } else if (__value__ == (3408760i32)) {
                        _p_3405203._stack = (_p_3405203._stack.__slice__(0, ((_p_3405203._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
                        _gotoNext = 3408825i32;
                    } else if (__value__ == (3408825i32)) {
                        _p_3405203._alternate();
                        _n_3408841 = (_p_3405203._stack.length);
                        if (_n_3408841 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3408870i32;
                        } else {
                            _gotoNext = 3408917i32;
                        };
                    } else if (__value__ == (3408870i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_Error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_ErrorCode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_Error.Error)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Error.Error>)) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3408917i32;
                    } else if (__value__ == (3408917i32)) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_3405203._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
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
