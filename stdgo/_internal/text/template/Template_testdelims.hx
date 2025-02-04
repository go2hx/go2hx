package stdgo._internal.text.template;
function testDelims(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _value = ({ str : ("Hello, world" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_1.T__struct_1);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.text.template.Template__delimpairs._delimPairs.length) : Bool)) {
                var _text = ((".Str" : stdgo.GoString) : stdgo.GoString);
var _left = (stdgo._internal.text.template.Template__delimpairs._delimPairs[(_i + (0 : stdgo.GoInt) : stdgo.GoInt)].__copy__() : stdgo.GoString);
var _trueLeft = (_left.__copy__() : stdgo.GoString);
var _right = (stdgo._internal.text.template.Template__delimpairs._delimPairs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__() : stdgo.GoString);
var _trueRight = (_right.__copy__() : stdgo.GoString);
if (_left == ((stdgo.Go.str() : stdgo.GoString))) {
                    _trueLeft = ("{{" : stdgo.GoString);
                };
if (_right == ((stdgo.Go.str() : stdgo.GoString))) {
                    _trueRight = ("}}" : stdgo.GoString);
                };
_text = ((_trueLeft + _text.__copy__() : stdgo.GoString) + _trueRight.__copy__() : stdgo.GoString).__copy__();
_text = (_text + (((_trueLeft + ("/*comment*/" : stdgo.GoString).__copy__() : stdgo.GoString) + _trueRight.__copy__() : stdgo.GoString)).__copy__() : stdgo.GoString);
_text = (_text + (((((_trueLeft + ("\"" : stdgo.GoString).__copy__() : stdgo.GoString) + _trueLeft.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString).__copy__() : stdgo.GoString) + _trueRight.__copy__() : stdgo.GoString)).__copy__() : stdgo.GoString);
var __tmp__ = @:check2r @:check2r stdgo._internal.text.template.Template_new_.new_(("delims" : stdgo.GoString)).delims(_left.__copy__(), _right.__copy__()).parse(_text.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    @:check2r _t.fatalf(("delim %q text %q parse err %s" : stdgo.GoString), stdgo.Go.toInterface(_left), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
                };
var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
_err = @:check2r _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(_value)));
if (_err != null) {
                    @:check2r _t.fatalf(("delim %q exec err %s" : stdgo.GoString), stdgo.Go.toInterface(_left), stdgo.Go.toInterface(_err));
                };
if ((@:check2r _b.string() : stdgo.GoString) != ((("Hello, world" : stdgo.GoString) + _trueLeft.__copy__() : stdgo.GoString))) {
                    @:check2r _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface((("Hello, world" : stdgo.GoString) + _trueLeft.__copy__() : stdgo.GoString)), stdgo.Go.toInterface((@:check2r _b.string() : stdgo.GoString)));
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
