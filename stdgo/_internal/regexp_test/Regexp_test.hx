package stdgo._internal.regexp_test;
import stdgo._internal.regexp.Regexp;
function example():Void {
        var _validID:stdgo.Ref<stdgo._internal.regexp.Regexp.Regexp> = stdgo._internal.regexp.Regexp.mustCompile(("^[a-z]+\\[[0-9]+\\]$" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("adam[23]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("eve[7]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("Job[48]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_validID.matchString(("snakey" : stdgo.GoString))));
    }
function exampleMatch():Void {
        var __tmp__ = stdgo._internal.regexp.Regexp.match(("foo.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.match(("bar.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.match(("a(b" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
function exampleMatchString():Void {
        var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("foo.*" : stdgo.GoString), ("seafood" : stdgo.GoString)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("bar.*" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("a(b" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
function exampleQuoteMeta():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.regexp.Regexp.quoteMeta(("Escaping symbols like: .+*?()|[]{}^$" : stdgo.GoString))));
    }
function exampleRegexp_Find():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.find((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRegexp_FindAll():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAll((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt))));
    }
function exampleRegexp_FindAllSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo(.?)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllSubmatch((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-1 : stdgo.GoInt))));
    }
function exampleRegexp_FindSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo(.?)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findSubmatch((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRegexp_Match():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.match((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.match((("something else" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRegexp_FindString():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findString(("seafood fool" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findString(("meat" : stdgo.GoString))));
    }
function exampleRegexp_FindStringIndex():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("ab?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findStringIndex(("tablett" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findStringIndex(("foo" : stdgo.GoString)) == null));
    }
function exampleRegexp_FindStringSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b(y|z)c" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findStringSubmatch(("-axxxbyc-" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findStringSubmatch(("-abzc-" : stdgo.GoString))));
    }
function exampleRegexp_FindAllString():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a." : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("graal" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllString(("none" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
function exampleRegexp_FindAllStringSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-axb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
function exampleRegexp_FindAllStringSubmatchIndex():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-axb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-foo-" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
function exampleRegexp_FindSubmatchIndex():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-ab-axb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-axxb-ab-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findSubmatchIndex((("-foo-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRegexp_Longest():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(|b)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString))));
        _re.longest();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString))));
    }
function exampleRegexp_MatchString():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("(gopher){2}" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gophergopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("gophergophergopher" : stdgo.GoString))));
    }
function exampleRegexp_NumSubexp():Void {
        var _re0 = stdgo._internal.regexp.Regexp.mustCompile(("a." : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%d\n" : stdgo.GoString), stdgo.Go.toInterface(_re0.numSubexp()));
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("(.*)((a)b)(.*)a" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.numSubexp()));
    }
function exampleRegexp_ReplaceAll():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("T" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("$1" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("$1W" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
        stdgo._internal.fmt.Fmt.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_re.replaceAll((("-ab-axxb-" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (("${1}W" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>))));
    }
function exampleRegexp_ReplaceAllLiteralString():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("T" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("$1" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("${1}" : stdgo.GoString))));
    }
function exampleRegexp_ReplaceAllString():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("T" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("$1" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("$1W" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("-ab-axxb-" : stdgo.GoString), ("${1}W" : stdgo.GoString))));
    }
function exampleRegexp_ReplaceAllStringFunc():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("[^aeiou]" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllStringFunc(("seafood fool" : stdgo.GoString), stdgo._internal.strings.Strings.toUpper)));
    }
function exampleRegexp_SubexpNames():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.subexpNames()));
        var _reversed = stdgo._internal.fmt.Fmt.sprintf(("${%s} ${%s}" : stdgo.GoString), stdgo.Go.toInterface(_re.subexpNames()[(2 : stdgo.GoInt)]), stdgo.Go.toInterface(_re.subexpNames()[(1 : stdgo.GoInt)]))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_reversed));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.replaceAllString(("Alan Turing" : stdgo.GoString), _reversed?.__copy__())));
    }
function exampleRegexp_SubexpIndex():Void {
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString))));
        var _matches = _re.findStringSubmatch(("Alan Turing" : stdgo.GoString));
        var _lastIndex = _re.subexpIndex(("last" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("last => %d\n" : stdgo.GoString), stdgo.Go.toInterface(_lastIndex));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matches[(_lastIndex : stdgo.GoInt)]));
    }
function exampleRegexp_Split():Void {
        var _a = stdgo._internal.regexp.Regexp.mustCompile(("a" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (0 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (2 : stdgo.GoInt))));
        var _zp = stdgo._internal.regexp.Regexp.mustCompile(("z+" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (0 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (2 : stdgo.GoInt))));
    }
function exampleRegexp_Expand():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _pattern = stdgo._internal.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _template = (("$key=$value\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _result = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _submatches in _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.GoInt))) {
            _result = _pattern.expand(_result, _template, _content, _submatches);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_result : stdgo.GoString)));
    }
function exampleRegexp_ExpandString():Void {
        var _content = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : stdgo.GoString);
        var _pattern = stdgo._internal.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _template = ("$key=$value\n" : stdgo.GoString);
        var _result = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _submatches in _pattern.findAllStringSubmatchIndex(_content?.__copy__(), (-1 : stdgo.GoInt))) {
            _result = _pattern.expandString(_result, _template?.__copy__(), _content?.__copy__(), _submatches);
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_result : stdgo.GoString)));
    }
function exampleRegexp_FindIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _pattern = stdgo._internal.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _loc = _pattern.findIndex(_content);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_loc));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(0 : stdgo.GoInt)], _loc[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
    }
function exampleRegexp_FindAllSubmatchIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _pattern = stdgo._internal.regexp.Regexp.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _allIndexes = _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.GoInt));
        for (__0 => _loc in _allIndexes) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_loc));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(0 : stdgo.GoInt)], _loc[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(2 : stdgo.GoInt)], _loc[(3 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(4 : stdgo.GoInt)], _loc[(5 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
        };
    }
function exampleRegexp_FindAllIndex():Void {
        var _content = (("London" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _re = stdgo._internal.regexp.Regexp.mustCompile(("o." : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (-1 : stdgo.GoInt))));
    }
