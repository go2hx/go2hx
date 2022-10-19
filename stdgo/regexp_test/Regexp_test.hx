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

function example():Void {
	var _validID:Ref<Regexp> = stdgo.regexp.Regexp.mustCompile("^[a-z]+\\[[0-9]+\\]$");
	stdgo.fmt.Fmt.println(_validID.matchString(Go.str("adam[23]")));
	stdgo.fmt.Fmt.println(_validID.matchString(Go.str("eve[7]")));
	stdgo.fmt.Fmt.println(_validID.matchString(Go.str("Job[48]")));
	stdgo.fmt.Fmt.println(_validID.matchString(Go.str("snakey")));
}

function exampleMatch():Void {
	var __tmp__ = stdgo.regexp.Regexp.match("foo.*", ("seafood" : Slice<GoByte>)),
		_matched:Bool = __tmp__._0,
		_err:Error = __tmp__._1;
	stdgo.fmt.Fmt.println(_matched, _err);
	{
		var __tmp__ = stdgo.regexp.Regexp.match("bar.*", ("seafood" : Slice<GoByte>));
		_matched = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.println(_matched, _err);
	{
		var __tmp__ = stdgo.regexp.Regexp.match("a(b", ("seafood" : Slice<GoByte>));
		_matched = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.println(_matched, _err);
}

function exampleMatchString():Void {
	var __tmp__ = stdgo.regexp.Regexp.matchString("foo.*", Go.str("seafood")),
		_matched:Bool = __tmp__._0,
		_err:Error = __tmp__._1;
	stdgo.fmt.Fmt.println(_matched, _err);
	{
		var __tmp__ = stdgo.regexp.Regexp.matchString("bar.*", Go.str("seafood"));
		_matched = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.println(_matched, _err);
	{
		var __tmp__ = stdgo.regexp.Regexp.matchString("a(b", Go.str("seafood"));
		_matched = __tmp__._0;
		_err = __tmp__._1;
	};
	stdgo.fmt.Fmt.println(_matched, _err);
}

function exampleQuoteMeta():Void {
	stdgo.fmt.Fmt.println(stdgo.regexp.Regexp.quoteMeta("Escaping symbols like: .+*?()|[]{}^$"));
}

function exampleRegexp_Find():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo.?");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.find(("seafood fool" : Slice<GoByte>))));
}

function exampleRegexp_FindAll():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo.?");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAll(("seafood fool" : Slice<GoByte>), (-1 : GoInt))));
}

function exampleRegexp_FindAllSubmatch():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo(.?)");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAllSubmatch(("seafood fool" : Slice<GoByte>), (-1 : GoInt))));
}

function exampleRegexp_FindSubmatch():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo(.?)");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findSubmatch(("seafood fool" : Slice<GoByte>))));
}

function exampleRegexp_Match():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo.?");
	stdgo.fmt.Fmt.println(_re.match(("seafood fool" : Slice<GoByte>)));
	stdgo.fmt.Fmt.println(_re.match(("something else" : Slice<GoByte>)));
}

function exampleRegexp_FindString():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("foo.?");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findString(Go.str("seafood fool"))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findString(Go.str("meat"))));
}

function exampleRegexp_FindStringIndex():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("ab?");
	stdgo.fmt.Fmt.println(_re.findStringIndex(Go.str("tablett")));
	stdgo.fmt.Fmt.println(_re.findStringIndex(Go.str("foo")) == null);
}

function exampleRegexp_FindStringSubmatch():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b(y|z)c");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findStringSubmatch(Go.str("-axxxbyc-"))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findStringSubmatch(Go.str("-abzc-"))));
}

function exampleRegexp_FindAllString():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a.");
	stdgo.fmt.Fmt.println(_re.findAllString(Go.str("paranormal"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllString(Go.str("paranormal"), (2 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllString(Go.str("graal"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllString(Go.str("none"), (-1 : GoInt)));
}

function exampleRegexp_FindAllStringSubmatch():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAllStringSubmatch(Go.str("-ab-"), (-1 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAllStringSubmatch(Go.str("-axxb-"), (-1 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAllStringSubmatch(Go.str("-ab-axb-"), (-1 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.findAllStringSubmatch(Go.str("-axxb-ab-"), (-1 : GoInt))));
}

function exampleRegexp_FindAllStringSubmatchIndex():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.println(_re.findAllStringSubmatchIndex(Go.str("-ab-"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllStringSubmatchIndex(Go.str("-axxb-"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllStringSubmatchIndex(Go.str("-ab-axb-"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllStringSubmatchIndex(Go.str("-axxb-ab-"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllStringSubmatchIndex(Go.str("-foo-"), (-1 : GoInt)));
}

function exampleRegexp_FindSubmatchIndex():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.println(_re.findSubmatchIndex((Go.str("-ab-") : Slice<GoByte>)));
	stdgo.fmt.Fmt.println(_re.findSubmatchIndex((Go.str("-axxb-") : Slice<GoByte>)));
	stdgo.fmt.Fmt.println(_re.findSubmatchIndex((Go.str("-ab-axb-") : Slice<GoByte>)));
	stdgo.fmt.Fmt.println(_re.findSubmatchIndex((Go.str("-axxb-ab-") : Slice<GoByte>)));
	stdgo.fmt.Fmt.println(_re.findSubmatchIndex((Go.str("-foo-") : Slice<GoByte>)));
}

function exampleRegexp_Longest():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(|b)");
	stdgo.fmt.Fmt.println(_re.findString(Go.str("ab")));
	_re.longest();
	stdgo.fmt.Fmt.println(_re.findString(Go.str("ab")));
}

function exampleRegexp_MatchString():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("(gopher){2}");
	stdgo.fmt.Fmt.println(_re.matchString(Go.str("gopher")));
	stdgo.fmt.Fmt.println(_re.matchString(Go.str("gophergopher")));
	stdgo.fmt.Fmt.println(_re.matchString(Go.str("gophergophergopher")));
}

function exampleRegexp_NumSubexp():Void {
	var _re0 = stdgo.regexp.Regexp.mustCompile("a.");
	stdgo.fmt.Fmt.printf(Go.str("%d\n"), Go.toInterface(_re0.numSubexp()));
	var _re = stdgo.regexp.Regexp.mustCompile("(.*)((a)b)(.*)a");
	stdgo.fmt.Fmt.println(_re.numSubexp());
}

function exampleRegexp_ReplaceAll():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(_re.replaceAll((Go.str("-ab-axxb-") : Slice<GoByte>), (Go.str("T") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(_re.replaceAll((Go.str("-ab-axxb-") : Slice<GoByte>), (Go.str("$$1") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(_re.replaceAll((Go.str("-ab-axxb-") : Slice<GoByte>), (Go.str("$$1W") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(_re.replaceAll((Go.str("-ab-axxb-") : Slice<GoByte>), (Go.str("$${1}W") : Slice<GoByte>))));
}

function exampleRegexp_ReplaceAllLiteralString():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.println(_re.replaceAllLiteralString(Go.str("-ab-axxb-"), Go.str("T")));
	stdgo.fmt.Fmt.println(_re.replaceAllLiteralString(Go.str("-ab-axxb-"), Go.str("$$1")));
	stdgo.fmt.Fmt.println(_re.replaceAllLiteralString(Go.str("-ab-axxb-"), Go.str("$${1}")));
}

function exampleRegexp_ReplaceAllString():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("a(x*)b");
	stdgo.fmt.Fmt.println(_re.replaceAllString(Go.str("-ab-axxb-"), Go.str("T")));
	stdgo.fmt.Fmt.println(_re.replaceAllString(Go.str("-ab-axxb-"), Go.str("$$1")));
	stdgo.fmt.Fmt.println(_re.replaceAllString(Go.str("-ab-axxb-"), Go.str("$$1W")));
	stdgo.fmt.Fmt.println(_re.replaceAllString(Go.str("-ab-axxb-"), Go.str("$${1}W")));
}

function exampleRegexp_ReplaceAllStringFunc():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("[^aeiou]");
	stdgo.fmt.Fmt.println(_re.replaceAllStringFunc(Go.str("seafood fool"), stdgo.strings.Strings.toUpper));
}

function exampleRegexp_SubexpNames():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)");
	stdgo.fmt.Fmt.println(_re.matchString(Go.str("Alan Turing")));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(_re.subexpNames()));
	var _reversed:GoString = stdgo.fmt.Fmt.sprintf(Go.str("$${%s} $${%s}"), Go.toInterface(_re.subexpNames()[(2 : GoInt)]),
		Go.toInterface(_re.subexpNames()[(1 : GoInt)]));
	stdgo.fmt.Fmt.println(_reversed);
	stdgo.fmt.Fmt.println(_re.replaceAllString(Go.str("Alan Turing"), _reversed));
}

function exampleRegexp_SubexpIndex():Void {
	var _re = stdgo.regexp.Regexp.mustCompile("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)");
	stdgo.fmt.Fmt.println(_re.matchString(Go.str("Alan Turing")));
	var _matches = _re.findStringSubmatch(Go.str("Alan Turing"));
	var _lastIndex:GoInt = _re.subexpIndex(Go.str("last"));
	stdgo.fmt.Fmt.printf(Go.str("last => %d\n"), Go.toInterface(_lastIndex));
	stdgo.fmt.Fmt.println(_matches[_lastIndex]);
}

function exampleRegexp_Split():Void {
	var _a = stdgo.regexp.Regexp.mustCompile("a");
	stdgo.fmt.Fmt.println(_a.split(Go.str("banana"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_a.split(Go.str("banana"), (0 : GoInt)));
	stdgo.fmt.Fmt.println(_a.split(Go.str("banana"), (1 : GoInt)));
	stdgo.fmt.Fmt.println(_a.split(Go.str("banana"), (2 : GoInt)));
	var _zp = stdgo.regexp.Regexp.mustCompile("z+");
	stdgo.fmt.Fmt.println(_zp.split(Go.str("pizza"), (-1 : GoInt)));
	stdgo.fmt.Fmt.println(_zp.split(Go.str("pizza"), (0 : GoInt)));
	stdgo.fmt.Fmt.println(_zp.split(Go.str("pizza"), (1 : GoInt)));
	stdgo.fmt.Fmt.println(_zp.split(Go.str("pizza"), (2 : GoInt)));
}

function exampleRegexp_Expand():Void {
	var _content = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : Slice<GoByte>);
	var _pattern = stdgo.regexp.Regexp.mustCompile("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$");
	var _template = (Go.str("$$key=$$value\n") : Slice<GoByte>);
	var _result = (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>);
	for (_0 => _submatches in _pattern.findAllSubmatchIndex(_content, (-1 : GoInt))) {
		_result = _pattern.expand(_result, _template, _content, _submatches);
	};
	stdgo.fmt.Fmt.println((_result : GoString));
}

function exampleRegexp_ExpandString():Void {
	var _content:GoString = "\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n";
	var _pattern = stdgo.regexp.Regexp.mustCompile("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$");
	var _template:GoString = Go.str("$$key=$$value\n");
	var _result = (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>);
	for (_0 => _submatches in _pattern.findAllStringSubmatchIndex(_content, (-1 : GoInt))) {
		_result = _pattern.expandString(_result, _template, _content, _submatches);
	};
	stdgo.fmt.Fmt.println((_result : GoString));
}

function exampleRegexp_FindIndex():Void {
	var _content = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : Slice<GoByte>);
	var _pattern = stdgo.regexp.Regexp.mustCompile("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$");
	var _loc = _pattern.findIndex(_content);
	stdgo.fmt.Fmt.println(_loc);
	stdgo.fmt.Fmt.println(((_content.__slice__(_loc[(0 : GoInt)], _loc[(1 : GoInt)]) : Slice<GoUInt8>) : GoString));
}

function exampleRegexp_FindAllSubmatchIndex():Void {
	var _content = ("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : Slice<GoByte>);
	var _pattern = stdgo.regexp.Regexp.mustCompile("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$");
	var _allIndexes = _pattern.findAllSubmatchIndex(_content, (-1 : GoInt));
	for (_0 => _loc in _allIndexes) {
		stdgo.fmt.Fmt.println(_loc);
		stdgo.fmt.Fmt.println(((_content.__slice__(_loc[(0 : GoInt)], _loc[(1 : GoInt)]) : Slice<GoUInt8>) : GoString));
		stdgo.fmt.Fmt.println(((_content.__slice__(_loc[(2 : GoInt)], _loc[(3 : GoInt)]) : Slice<GoUInt8>) : GoString));
		stdgo.fmt.Fmt.println(((_content.__slice__(_loc[(4 : GoInt)], _loc[(5 : GoInt)]) : Slice<GoUInt8>) : GoString));
	};
}

function exampleRegexp_FindAllIndex():Void {
	var _content = (Go.str("London") : Slice<GoByte>);
	var _re = stdgo.regexp.Regexp.mustCompile("o.");
	stdgo.fmt.Fmt.println(_re.findAllIndex(_content, (1 : GoInt)));
	stdgo.fmt.Fmt.println(_re.findAllIndex(_content, (-1 : GoInt)));
}
