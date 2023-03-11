package stdgo.regexp_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.regexp.Regexp;
function example():Void {
        var _validID:Ref<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile(("^[a-z]+\\[[0-9]+\\]$$" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_validID.matchString(("adam[23]" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_validID.matchString(("eve[7]" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_validID.matchString(("Job[48]" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_validID.matchString(("snakey" : GoString))));
    }
function exampleMatch():Void {
        var __tmp__ = stdgo.regexp.Regexp.match(("foo.*" : GoString), (("seafood" : GoString) : Slice<GoByte>)), _matched:Bool = __tmp__._0, _err:Error = __tmp__._1;
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("bar.*" : GoString), (("seafood" : GoString) : Slice<GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("a(b" : GoString), (("seafood" : GoString) : Slice<GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
    }
function exampleMatchString():Void {
        var __tmp__ = stdgo.regexp.Regexp.matchString(("foo.*" : GoString), ("seafood" : GoString)), _matched:Bool = __tmp__._0, _err:Error = __tmp__._1;
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("bar.*" : GoString), ("seafood" : GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("a(b" : GoString), ("seafood" : GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(_matched), Go.toInterface(_err));
    }
function exampleQuoteMeta():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.regexp.Regexp.quoteMeta(("Escaping symbols like: .+*?()|[]{}^$$" : GoString))));
    }
function exampleRegexp_Find():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.find((("seafood fool" : GoString) : Slice<GoByte>))));
    }
function exampleRegexp_FindAll():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAll((("seafood fool" : GoString) : Slice<GoByte>), (-1 : GoInt))));
    }
function exampleRegexp_FindAllSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo(.?)" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAllSubmatch((("seafood fool" : GoString) : Slice<GoByte>), (-1 : GoInt))));
    }
function exampleRegexp_FindSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo(.?)" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findSubmatch((("seafood fool" : GoString) : Slice<GoByte>))));
    }
function exampleRegexp_Match():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.match((("seafood fool" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.match((("something else" : GoString) : Slice<GoByte>))));
    }
function exampleRegexp_FindString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("foo.?" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findString(("seafood fool" : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findString(("meat" : GoString))));
    }
function exampleRegexp_FindStringIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("ab?" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findStringIndex(("tablett" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findStringIndex(("foo" : GoString)) == null));
    }
function exampleRegexp_FindStringSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b(y|z)c" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findStringSubmatch(("-axxxbyc-" : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findStringSubmatch(("-abzc-" : GoString))));
    }
function exampleRegexp_FindAllString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a." : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllString(("paranormal" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllString(("paranormal" : GoString), (2 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllString(("graal" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllString(("none" : GoString), (-1 : GoInt))));
    }
function exampleRegexp_FindAllStringSubmatch():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAllStringSubmatch(("-ab-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAllStringSubmatch(("-axxb-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAllStringSubmatch(("-ab-axb-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.findAllStringSubmatch(("-axxb-ab-" : GoString), (-1 : GoInt))));
    }
function exampleRegexp_FindAllStringSubmatchIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-axb-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-ab-" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllStringSubmatchIndex(("-foo-" : GoString), (-1 : GoInt))));
    }
function exampleRegexp_FindSubmatchIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findSubmatchIndex((("-ab-" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findSubmatchIndex((("-axxb-" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findSubmatchIndex((("-ab-axb-" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findSubmatchIndex((("-axxb-ab-" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findSubmatchIndex((("-foo-" : GoString) : Slice<GoByte>))));
    }
function exampleRegexp_Longest():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(|b)" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findString(("ab" : GoString))));
        _re.longest();
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findString(("ab" : GoString))));
    }
function exampleRegexp_MatchString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(gopher){2}" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.matchString(("gopher" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.matchString(("gophergopher" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.matchString(("gophergophergopher" : GoString))));
    }
function exampleRegexp_NumSubexp():Void {
        var _re0 = stdgo.regexp.Regexp.mustCompile(("a." : GoString));
        stdgo.fmt.Fmt.printf(("%d\n" : GoString), Go.toInterface(_re0.numSubexp()));
        var _re = stdgo.regexp.Regexp.mustCompile(("(.*)((a)b)(.*)a" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.numSubexp()));
    }
function exampleRegexp_ReplaceAll():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_re.replaceAll((("-ab-axxb-" : GoString) : Slice<GoByte>), (("T" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_re.replaceAll((("-ab-axxb-" : GoString) : Slice<GoByte>), (("$$1" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_re.replaceAll((("-ab-axxb-" : GoString) : Slice<GoByte>), (("$$1W" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(_re.replaceAll((("-ab-axxb-" : GoString) : Slice<GoByte>), (("$${1}W" : GoString) : Slice<GoByte>))));
    }
function exampleRegexp_ReplaceAllLiteralString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : GoString), ("T" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : GoString), ("$$1" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : GoString), ("$${1}" : GoString))));
    }
function exampleRegexp_ReplaceAllString():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("a(x*)b" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllString(("-ab-axxb-" : GoString), ("T" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllString(("-ab-axxb-" : GoString), ("$$1" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllString(("-ab-axxb-" : GoString), ("$$1W" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllString(("-ab-axxb-" : GoString), ("$${1}W" : GoString))));
    }
function exampleRegexp_ReplaceAllStringFunc():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("[^aeiou]" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllStringFunc(("seafood fool" : GoString), stdgo.strings.Strings.toUpper)));
    }
function exampleRegexp_SubexpNames():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.matchString(("Alan Turing" : GoString))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_re.subexpNames()));
        var _reversed:GoString = stdgo.fmt.Fmt.sprintf(("$${%s} $${%s}" : GoString), Go.toInterface(_re.subexpNames()[(2 : GoInt)]), Go.toInterface(_re.subexpNames()[(1 : GoInt)]));
        stdgo.fmt.Fmt.println(Go.toInterface(_reversed));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.replaceAllString(("Alan Turing" : GoString), _reversed)));
    }
function exampleRegexp_SubexpIndex():Void {
        var _re = stdgo.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.matchString(("Alan Turing" : GoString))));
        var _matches = _re.findStringSubmatch(("Alan Turing" : GoString));
        var _lastIndex:GoInt = _re.subexpIndex(("last" : GoString));
        stdgo.fmt.Fmt.printf(("last => %d\n" : GoString), Go.toInterface(_lastIndex));
        stdgo.fmt.Fmt.println(Go.toInterface(_matches[(_lastIndex : GoInt)]));
    }
function exampleRegexp_Split():Void {
        var _a = stdgo.regexp.Regexp.mustCompile(("a" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_a.split(("banana" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_a.split(("banana" : GoString), (0 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_a.split(("banana" : GoString), (1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_a.split(("banana" : GoString), (2 : GoInt))));
        var _zp = stdgo.regexp.Regexp.mustCompile(("z+" : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_zp.split(("pizza" : GoString), (-1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_zp.split(("pizza" : GoString), (0 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_zp.split(("pizza" : GoString), (1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_zp.split(("pizza" : GoString), (2 : GoInt))));
    }
function exampleRegexp_Expand():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : GoString) : Slice<GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$$" : GoString));
        var _template = (("$$key=$$value\n" : GoString) : Slice<GoByte>);
        var _result = (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>);
        for (__0 => _submatches in _pattern.findAllSubmatchIndex(_content, (-1 : GoInt))) {
            _result = _pattern.expand(_result, _template, _content, _submatches);
        };
        stdgo.fmt.Fmt.println(Go.toInterface((_result : GoString)));
    }
function exampleRegexp_ExpandString():Void {
        var _content:GoString = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : GoString);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$$" : GoString));
        var _template:GoString = ("$$key=$$value\n" : GoString);
        var _result = (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>);
        for (__0 => _submatches in _pattern.findAllStringSubmatchIndex(_content, (-1 : GoInt))) {
            _result = _pattern.expandString(_result, _template, _content, _submatches);
        };
        stdgo.fmt.Fmt.println(Go.toInterface((_result : GoString)));
    }
function exampleRegexp_FindIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : GoString) : Slice<GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$$" : GoString));
        var _loc = _pattern.findIndex(_content);
        stdgo.fmt.Fmt.println(Go.toInterface(_loc));
        stdgo.fmt.Fmt.println(Go.toInterface(((_content.__slice__(_loc[(0 : GoInt)], _loc[(1 : GoInt)]) : Slice<GoUInt8>) : GoString)));
    }
function exampleRegexp_FindAllSubmatchIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : GoString) : Slice<GoByte>);
        var _pattern = stdgo.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$$" : GoString));
        var _allIndexes = _pattern.findAllSubmatchIndex(_content, (-1 : GoInt));
        for (__0 => _loc in _allIndexes) {
            stdgo.fmt.Fmt.println(Go.toInterface(_loc));
            stdgo.fmt.Fmt.println(Go.toInterface(((_content.__slice__(_loc[(0 : GoInt)], _loc[(1 : GoInt)]) : Slice<GoUInt8>) : GoString)));
            stdgo.fmt.Fmt.println(Go.toInterface(((_content.__slice__(_loc[(2 : GoInt)], _loc[(3 : GoInt)]) : Slice<GoUInt8>) : GoString)));
            stdgo.fmt.Fmt.println(Go.toInterface(((_content.__slice__(_loc[(4 : GoInt)], _loc[(5 : GoInt)]) : Slice<GoUInt8>) : GoString)));
        };
    }
function exampleRegexp_FindAllIndex():Void {
        var _content = (("London" : GoString) : Slice<GoByte>);
        var _re = stdgo.regexp.Regexp.mustCompile(("o." : GoString));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllIndex(_content, (1 : GoInt))));
        stdgo.fmt.Fmt.println(Go.toInterface(_re.findAllIndex(_content, (-1 : GoInt))));
    }
