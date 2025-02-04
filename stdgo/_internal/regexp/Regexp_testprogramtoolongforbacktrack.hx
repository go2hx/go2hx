package stdgo._internal.regexp;
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _longRegex = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("(one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty|twentyone|twentytwo|twentythree|twentyfour|twentyfive|twentysix|twentyseven|twentyeight|twentynine|thirty|thirtyone|thirtytwo|thirtythree|thirtyfour|thirtyfive|thirtysix|thirtyseven|thirtyeight|thirtynine|forty|fortyone|fortytwo|fortythree|fortyfour|fortyfive|fortysix|fortyseven|fortyeight|fortynine|fifty|fiftyone|fiftytwo|fiftythree|fiftyfour|fiftyfive|fiftysix|fiftyseven|fiftyeight|fiftynine|sixty|sixtyone|sixtytwo|sixtythree|sixtyfour|sixtyfive|sixtysix|sixtyseven|sixtyeight|sixtynine|seventy|seventyone|seventytwo|seventythree|seventyfour|seventyfive|seventysix|seventyseven|seventyeight|seventynine|eighty|eightyone|eightytwo|eightythree|eightyfour|eightyfive|eightysix|eightyseven|eightyeight|eightynine|ninety|ninetyone|ninetytwo|ninetythree|ninetyfour|ninetyfive|ninetysix|ninetyseven|ninetyeight|ninetynine|onehundred)" : stdgo.GoString));
        if (!@:check2r _longRegex.matchString(("two" : stdgo.GoString))) {
            @:check2r _t.errorf(("longRegex.MatchString(\"two\") was false, want true" : stdgo.GoString));
        };
        if (@:check2r _longRegex.matchString(("xxx" : stdgo.GoString))) {
            @:check2r _t.errorf(("longRegex.MatchString(\"xxx\") was true, want false" : stdgo.GoString));
        };
    }
